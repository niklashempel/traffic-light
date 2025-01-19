#!/usr/bin/env python3

import rospy
from controller.msg import TrafficLightState
from visualization_msgs.msg import Marker

def traffic_light_visualization():
    rospy.init_node("traffic_light_visualization", anonymous=True)
    rospy.loginfo("Initialized traffic_light_visualization")

    marker_pub = rospy.Publisher("/traffic_light/markers", Marker, queue_size=10)

    marker_north = Marker(id = 0) # North
    marker_south = Marker(id = 1) # South
    marker_east = Marker(id = 2) # East
    marker_west = Marker(id = 3) # West
    markers = [marker_north, marker_south, marker_east, marker_west]
    
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
    
    marker_north.pose.position.x = 2.0
    marker_south.pose.position.x = -2.0
    marker_east.pose.position.y = -2.0
    marker_west.pose.position.y = 2.0
    
    marker_pub.publish(marker_north)
    marker_pub.publish(marker_south)
    marker_pub.publish(marker_east)
    marker_pub.publish(marker_west)

    # Callback function to update markers based on traffic light state
    def traffic_light_callback(msg: TrafficLightState):
        if msg.direction == "North-South":
            if msg.state == "Red":
                marker_north.color.r = marker_south.color.r = 1.0  # Red
                marker_north.color.g = marker_south.color.g = 0.0
                marker_north.color.b = marker_south.color.b = 0.0
            elif msg.state == "Yellow":
                marker_north.color.r = marker_south.color.r = 1.0  # Yellow
                marker_north.color.g = marker_south.color.g = 1.0
                marker_north.color.b = marker_south.color.b = 0.0
            elif msg.state == "Green":
                marker_north.color.r = marker_south.color.r = 0.0  # Green
                marker_north.color.g = marker_south.color.g = 1.0
                marker_north.color.b = marker_south.color.b = 0.0
            marker_pub.publish(marker_north)
            marker_pub.publish(marker_south)
        elif msg.direction == "East-West":
            if msg.state == "Red":
                marker_east.color.r = marker_west.color.r = 1.0  # Red
                marker_east.color.g = marker_west.color.g = 0.0
                marker_east.color.b = marker_west.color.b = 0.0
            elif msg.state == "Yellow":
                marker_east.color.r = marker_west.color.r = 1.0  # Yellow
                marker_east.color.g = marker_west.color.g = 1.0
                marker_east.color.b = marker_west.color.b = 0.0
            elif msg.state == "Green":
                marker_east.color.r = marker_west.color.r = 0.0  # Green
                marker_east.color.g = marker_west.color.g = 1.0
                marker_east.color.b = marker_west.color.b = 0.0
            marker_pub.publish(marker_east)
            marker_pub.publish(marker_west)

    rospy.Subscriber("/traffic_light/state", TrafficLightState, traffic_light_callback)
    rospy.spin()

if __name__ == "__main__":
    try:
        traffic_light_visualization()
    except rospy.ROSInterruptException:
        pass
