#!/usr/bin/env python3

import rospy
from controller.srv import ToggleMode, ToggleModeResponse

def handle_toggle_mode(req):
    if req.mode in ["Day", "Night"]:
        rospy.set_param("/traffic_light/current_mode", req.mode)
        rospy.loginfo(f"Mode set to: {req.mode}")
        return ToggleModeResponse(status=req.mode)
    else:
        rospy.logerr(f"Unknown mode: {req.mode}")
        return ToggleModeResponse(status="Unknown")        

def toggle_mode_service():
    rospy.init_node("mode_toggle_service")
    rospy.Service("toggle_mode", ToggleMode, handle_toggle_mode)
    default_mode = rospy.get_param("~default_mode", "Day")
    rospy.set_param("/traffic_light/current_mode", default_mode)
    rospy.loginfo("Initialized mode toggle service")
    rospy.spin()

if __name__ == "__main__":
    try:
        toggle_mode_service()
    except rospy.ROSInterruptException:
        pass
