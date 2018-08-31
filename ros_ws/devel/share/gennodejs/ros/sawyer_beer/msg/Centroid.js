// Auto-generated. Do not edit!

// (in-package sawyer_beer.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Centroid {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x_center = null;
      this.y_center = null;
      this.width = null;
      this.height = null;
    }
    else {
      if (initObj.hasOwnProperty('x_center')) {
        this.x_center = initObj.x_center
      }
      else {
        this.x_center = 0;
      }
      if (initObj.hasOwnProperty('y_center')) {
        this.y_center = initObj.y_center
      }
      else {
        this.y_center = 0;
      }
      if (initObj.hasOwnProperty('width')) {
        this.width = initObj.width
      }
      else {
        this.width = 0;
      }
      if (initObj.hasOwnProperty('height')) {
        this.height = initObj.height
      }
      else {
        this.height = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Centroid
    // Serialize message field [x_center]
    bufferOffset = _serializer.int32(obj.x_center, buffer, bufferOffset);
    // Serialize message field [y_center]
    bufferOffset = _serializer.int32(obj.y_center, buffer, bufferOffset);
    // Serialize message field [width]
    bufferOffset = _serializer.int32(obj.width, buffer, bufferOffset);
    // Serialize message field [height]
    bufferOffset = _serializer.int32(obj.height, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Centroid
    let len;
    let data = new Centroid(null);
    // Deserialize message field [x_center]
    data.x_center = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [y_center]
    data.y_center = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [width]
    data.width = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [height]
    data.height = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sawyer_beer/Centroid';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '58d67e1619b82cd9993c819da03f5871';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    int32 x_center
    int32 y_center
    int32 width
    int32 height
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Centroid(null);
    if (msg.x_center !== undefined) {
      resolved.x_center = msg.x_center;
    }
    else {
      resolved.x_center = 0
    }

    if (msg.y_center !== undefined) {
      resolved.y_center = msg.y_center;
    }
    else {
      resolved.y_center = 0
    }

    if (msg.width !== undefined) {
      resolved.width = msg.width;
    }
    else {
      resolved.width = 0
    }

    if (msg.height !== undefined) {
      resolved.height = msg.height;
    }
    else {
      resolved.height = 0
    }

    return resolved;
    }
};

module.exports = Centroid;
