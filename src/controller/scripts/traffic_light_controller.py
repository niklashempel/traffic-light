#!/usr/bin/env python3

import rospy
from controller.msg import TrafficLightState
from controller.srv import ToggleMode

current_mode = "Day"

'''
Publishes traffic light states and changes states
'''
def traffic_light_controller():
    global current_mode
        
    rospy.init_node("traffic_light_controller", anonymous=True)
    rospy.loginfo("Initialized traffic_light_controller")
    
    rospy.wait_for_service("toggle_mode")
    toggle_service = rospy.ServiceProxy("toggle_mode", ToggleMode)
        
    rate = rospy.Rate(1) # 1 Hz
    pub = rospy.Publisher("/traffic_light/state", TrafficLightState, queue_size=10)
    
    while not rospy.is_shutdown():
        try:
            response = toggle_service("")
            current_mode = response.status
        except rospy.ServiceException as e:
            rospy.logerr(f"Service call failed: {e}")
            
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