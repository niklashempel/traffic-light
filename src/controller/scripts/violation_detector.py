#!/usr/bin/env python3

import rospy
from controller.msg import TrafficViolation, TrafficLightState, PassingVehicle

# Current light states for each direction
traffic_light_states = {"North": "Red", "East": "Red", "South": "Red", "West": "Red"}

def traffic_light_state_callback(msg):
    global traffic_light_states
    # Split direction into two parts
    direction = msg.direction.split("-")
    traffic_light_states[direction[0]] = msg.state
    traffic_light_states[direction[1]] = msg.state

def violation_detector():
    global pub
    rospy.init_node("violation_detector", anonymous=True)
    pub = rospy.Publisher("/traffic_violation", TrafficViolation, queue_size=10)
    rospy.Subscriber("/traffic_light/state", TrafficLightState, traffic_light_state_callback)
    
    def passing_vehicle_callback(msg):
        global traffic_light_states
        # Check if the vehicle is passing a red light
        if traffic_light_states[msg.location] == "Red":
            violation = TrafficViolation()
            violation.location = msg.location
            violation.timestamp = rospy.get_time()
            violation.violation_detected = True
            pub.publish(violation)
    
    rospy.Subscriber("/passing_vehicle", PassingVehicle, passing_vehicle_callback)
    rospy.loginfo("Initialized violation_detector")
    
    while not rospy.is_shutdown():
        rospy.spin()
        
if __name__ == "__main__":
    try:
        violation_detector()
    except rospy.ROSInterruptException:
        pass
    