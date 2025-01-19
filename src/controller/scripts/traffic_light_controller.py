#!/usr/bin/env python3

import rospy
from controller.msg import TrafficLightState
from controller.srv import ToggleMode

'''
Publishes traffic light states and changes states
'''
def traffic_light_controller():        
    rate = rospy.Rate(1) # 1 Hz
    pub = rospy.Publisher("/traffic_light/state", TrafficLightState, queue_size=10)
    
    while not rospy.is_shutdown():
        if rospy.has_param("/traffic_light/current_mode"):
            current_mode = rospy.get_param("/traffic_light/current_mode")
        else:
            rospy.logerr("param '/traffic_light/current_mode' not set")
            rate.sleep()
            continue
            
        [states, durations] = get_states(current_mode)
        for i, state in enumerate(states):
            directions = state.split("-")
            north_south = TrafficLightState(direction = "North-South", state = directions[0], duration = durations[i])
            east_west = TrafficLightState(direction = "East-West", state = directions[1], duration = durations[i])
            
            pub.publish(north_south)
            pub.publish(east_west)

            # Wait for the duration of the current state
            rospy.sleep(durations[i])
                
        rate.sleep()

def get_states(current_mode):
    if current_mode == "Day":
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
    for mode in ["day_mode", "night_mode"]:
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
            rospy.loginfo("Initialized traffic_light_controller")
            traffic_light_controller()
    except rospy.ROSInterruptException:
        pass