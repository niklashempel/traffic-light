#!/usr/bin/env python3

import rospy
from controller.srv import ToggleMode, ToggleModeResponse

# Global variable to store the current mode
current_mode = "Day"

def handle_toggle_mode(req):
    global current_mode
    
    # Check the requested mode and update the current_mode variable
    if req.mode == "Day":
        current_mode = "Day"
        rospy.loginfo("Switched to Day mode")
    elif req.mode == "Night":
        current_mode = "Night"
        rospy.loginfo("Switched to Night mode")
    elif req.mode == "":
        pass
    else:
        rospy.logerr(f"Unknown mode: {req.mode}")
        
    # Return the current mode as the response
    return ToggleModeResponse(status=current_mode)

def toggle_mode_service():
    # Initialize the ROS node
    rospy.init_node("mode_toggle_service")
    
    # Create the service and bind it to the handle_toggle_mode function
    rospy.Service("toggle_mode", ToggleMode, handle_toggle_mode)
    
    rospy.loginfo("Initialized mode toggle service")
    rospy.spin()

if __name__ == "__main__":
    try:
        toggle_mode_service()
    except rospy.ROSInterruptException:
        pass
