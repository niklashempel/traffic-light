#!/usr/bin/env python3

import rospy
from controller.msg import TrafficLightState
from visualization_msgs.msg import Marker

def traffic_light_visualization():
    rospy.init_node("traffic_light_visualization", anonymous=True)
    rospy.loginfo("Initialized traffic_light_visualization")

    marker_pub = rospy.Publisher("/traffic_light/markers", Marker, queue_size=10)

    marker1 = Marker(id = 0)
    marker2 = Marker(id = 1)
    marker3 = Marker(id = 2)
    marker4 = Marker(id = 3)
    markers = [marker1, marker2, marker3, marker4]
    
    # Set common properties
    for marker in markers:
        marker.header.stamp = rospy.Time.now()
        marker.header.frame_id = "map"
        marker.ns      = "traffic_light"
        marker.type    = marker.SPHERE
        marker.action  = marker.ADD
        marker.scale.x = 0.1
        marker.scale.y = 0.1
        marker.scale.z = 0.1
        marker.color.r = 1.0
        marker.color.g = 0.0
        marker.color.b = 0.0
        marker.color.a = 1.0
        marker.pose.position.x = 0.0
        marker.pose.position.y = 0.0
        marker.pose.position.z = 0.0
    
    marker1.pose.position.x = 2.0
    marker2.pose.position.x = -2.0
    marker3.pose.position.y = 2.0
    marker4.pose.position.y = -2.0
    
    marker_pub.publish(marker1)
    marker_pub.publish(marker2)
    marker_pub.publish(marker3)
    marker_pub.publish(marker4)

    # Callback function to update markers based on traffic light state
    def traffic_light_callback(msg: TrafficLightState):
        if msg.direction == "North-South":
            if msg.state == "Red":
                marker1.color.r = marker2.color.r = 1.0  # Red
                marker1.color.g = marker2.color.g = 0.0
                marker1.color.b = marker2.color.b = 0.0
            elif msg.state == "Yellow":
                marker1.color.r = marker2.color.r = 1.0  # Yellow
                marker1.color.g = marker2.color.g = 1.0
                marker1.color.b = marker2.color.b = 0.0
            elif msg.state == "Green":
                marker1.color.r = marker2.color.r = 0.0  # Green
                marker1.color.g = marker2.color.g = 1.0
                marker1.color.b = marker2.color.b = 0.0
            marker_pub.publish(marker1)
            marker_pub.publish(marker2)
        elif msg.direction == "East-West":
            if msg.state == "Red":
                marker3.color.r = marker4.color.r = 1.0  # Red
                marker3.color.g = marker4.color.g = 0.0
                marker3.color.b = marker4.color.b = 0.0
            elif msg.state == "Yellow":
                marker3.color.r = marker4.color.r = 1.0  # Yellow
                marker3.color.g = marker4.color.g = 1.0
                marker3.color.b = marker4.color.b = 0.0
            elif msg.state == "Green":
                marker3.color.r = marker4.color.r = 0.0  # Green
                marker3.color.g = marker4.color.g = 1.0
                marker3.color.b = marker4.color.b = 0.0
            marker_pub.publish(marker3)
            marker_pub.publish(marker4)
            

    rospy.Subscriber("/traffic_light/state", TrafficLightState, traffic_light_callback)
    rospy.spin()

if __name__ == "__main__":
    try:
        traffic_light_visualization()
    except rospy.ROSInterruptException:
        pass
