#!/usr/bin/env python3

from controller.srv import PedestrianCrossing, PedestrianCrossingResponse
import rospy
from controller.msg import TrafficLightState
from controller.srv import ToggleMode, PedestrianCrossing

# Shared flag for pedestrian crossing
pedestrian_active = False
pedestrian_direction = ""

def handle_pedestrian_request(req):
    global pedestrian_active, pedestrian_direction

    if pedestrian_active:
        rospy.logwarn("Another crossing is already active")
        return PedestrianCrossingResponse(success=False)

    if req.direction not in ["North-South", "East-West"]:
        rospy.logerr(f"Invalid direction: {req.direction}")
        return PedestrianCrossingResponse(success=False)

    pedestrian_active = True
    pedestrian_direction = req.direction
    rospy.loginfo(f"Pedestrian crossing activated for {pedestrian_direction}")
    return PedestrianCrossingResponse(success=True)

'''
Publishes traffic light states and changes states
'''
def traffic_light_controller():
    global pedestrian_active, pedestrian_direction

    rate = rospy.Rate(1) # 1 Hz
    pub = rospy.Publisher("/traffic_light/state", TrafficLightState, queue_size=10)

    while not rospy.is_shutdown():
        if rospy.has_param("/traffic_light/current_mode"):
            current_mode = rospy.get_param("/traffic_light/current_mode")
        else:
            rospy.logerr("param '/traffic_light/current_mode' not set")
            rate.sleep()
            continue

        [states, durations] = get_states(current_mode, pedestrian_active, pedestrian_direction)
        pedestrian_active = False

        for i, state in enumerate(states):
            directions = state.split("-")
            north_south = TrafficLightState(direction = "North-South", state = directions[0], duration = durations[i])
            east_west = TrafficLightState(direction = "East-West", state = directions[1], duration = durations[i])

            pub.publish(north_south)
            pub.publish(east_west)

            # Wait for the duration of the current state
            rospy.sleep(durations[i])

        rate.sleep()

def get_states(current_mode, pedestrian_active, pedestrian_direction):
    if current_mode == "Day":
        if pedestrian_active:
            rospy.loginfo(f"Pedestrian crossing for {pedestrian_direction}")
            states = rospy.get_param("~pedestrian_crossing_north_south/states", []) if pedestrian_direction == "North-South" else rospy.get_param("~pedestrian_crossing_east_west/states", [])
            durations = rospy.get_param("~pedestrian_crossing_north_south/durations", []) if pedestrian_direction == "North-South" else rospy.get_param("~pedestrian_crossing_east_west/durations", [])
        else:
            states = rospy.get_param("~day_mode/states", [])
            durations = rospy.get_param("~day_mode/durations", [])
    elif current_mode == "Night":
        states = rospy.get_param("~night_mode/states", [])
        durations = rospy.get_param("~night_mode/durations", [])
    else:
        rospy.logerr(f"Unknown mode: {current_mode}")
        return [], []
    if not states or not durations:
        rospy.logerr(f"Parameters for {current_mode} mode are missing or empty!")
        return [], []

    return [states, durations]

def validate_parameters():
    for mode in ["day_mode", "night_mode", "pedestrian_crossing_north_south", "pedestrian_crossing_east_west"]:
        if not rospy.has_param(f"~{mode}/states") or not rospy.has_param(f"~{mode}/durations"):
            rospy.logfatal(f"Missing required private parameters for {mode}!")
            return False

        states = rospy.get_param(f"~{mode}/states", [])
        durations = rospy.get_param(f"~{mode}/durations", [])

        if len(states) != len(durations):
            rospy.logfatal(f"States and durations length mismatch in private parameters for {mode}!")
            return False

    return True

if __name__ == "__main__":
    try:
        rospy.init_node("traffic_light_controller", anonymous=True)
        if not validate_parameters():
            rospy.signal_shutdown("Invalid private parameters!")
        else:
            rospy.Service("pedestrian_crossing", PedestrianCrossing, handle_pedestrian_request)
            rospy.loginfo("Initialized traffic_light_controller")
            traffic_light_controller()
    except rospy.ROSInterruptException:
        pass