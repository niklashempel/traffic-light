#!/usr/bin/env python3

import rospy
from controller.msg import TrafficLightState
from controller.srv import ToggleMode

'''
Publishes traffic light states and changes states
'''
def traffic_light_controller():
    rospy.init_node("traffic_light_controller", anonymous=True)
    rospy.loginfo("Initialized traffic_light_controller")
        
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
        states = ["Red-Red", "Yellow-Red", "Green-Red", "Yellow-Red", "Red-Red", "Red-Yellow", "Red-Green", "Red-Yellow"]
        durations = [3, 1, 5, 1, 3, 1, 5, 1]
        return [states, durations]
    elif current_mode == "Night":
        states = ["Black-Yellow", "Black-Black"]
        durations = [2, 2]
        return [states, durations]
    else:
        rospy.logerr(f"Unknown mode: {current_mode}")
        return [], []
        
if __name__ == "__main__":
    try:
        traffic_light_controller()
    except rospy.ROSInterruptException:
        pass