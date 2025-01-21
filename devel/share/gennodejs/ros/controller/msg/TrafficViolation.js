// Auto-generated. Do not edit!

// (in-package controller.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class TrafficViolation {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.location = null;
      this.violation_detected = null;
      this.timestamp = null;
    }
    else {
      if (initObj.hasOwnProperty('location')) {
        this.location = initObj.location
      }
      else {
        this.location = '';
      }
      if (initObj.hasOwnProperty('violation_detected')) {
        this.violation_detected = initObj.violation_detected
      }
      else {
        this.violation_detected = false;
      }
      if (initObj.hasOwnProperty('timestamp')) {
        this.timestamp = initObj.timestamp
      }
      else {
        this.timestamp = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrafficViolation
    // Serialize message field [location]
    bufferOffset = _serializer.string(obj.location, buffer, bufferOffset);
    // Serialize message field [violation_detected]
    bufferOffset = _serializer.bool(obj.violation_detected, buffer, bufferOffset);
    // Serialize message field [timestamp]
    bufferOffset = _serializer.float32(obj.timestamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrafficViolation
    let len;
    let data = new TrafficViolation(null);
    // Deserialize message field [location]
    data.location = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [violation_detected]
    data.violation_detected = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [timestamp]
    data.timestamp = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.location);
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'controller/TrafficViolation';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b565cc422536c9871f3e727883ef5afb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string location
    bool violation_detected
    float32 timestamp
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TrafficViolation(null);
    if (msg.location !== undefined) {
      resolved.location = msg.location;
    }
    else {
      resolved.location = ''
    }

    if (msg.violation_detected !== undefined) {
      resolved.violation_detected = msg.violation_detected;
    }
    else {
      resolved.violation_detected = false
    }

    if (msg.timestamp !== undefined) {
      resolved.timestamp = msg.timestamp;
    }
    else {
      resolved.timestamp = 0.0
    }

    return resolved;
    }
};

module.exports = TrafficViolation;
