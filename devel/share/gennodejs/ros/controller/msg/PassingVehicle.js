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

class PassingVehicle {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.location = null;
      this.is_passing = null;
    }
    else {
      if (initObj.hasOwnProperty('location')) {
        this.location = initObj.location
      }
      else {
        this.location = '';
      }
      if (initObj.hasOwnProperty('is_passing')) {
        this.is_passing = initObj.is_passing
      }
      else {
        this.is_passing = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PassingVehicle
    // Serialize message field [location]
    bufferOffset = _serializer.string(obj.location, buffer, bufferOffset);
    // Serialize message field [is_passing]
    bufferOffset = _serializer.bool(obj.is_passing, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PassingVehicle
    let len;
    let data = new PassingVehicle(null);
    // Deserialize message field [location]
    data.location = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [is_passing]
    data.is_passing = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.location);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'controller/PassingVehicle';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '662c35d407630f0948e461ff439fcd61';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string location # North, East, South, West
    bool is_passing
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PassingVehicle(null);
    if (msg.location !== undefined) {
      resolved.location = msg.location;
    }
    else {
      resolved.location = ''
    }

    if (msg.is_passing !== undefined) {
      resolved.is_passing = msg.is_passing;
    }
    else {
      resolved.is_passing = false
    }

    return resolved;
    }
};

module.exports = PassingVehicle;
