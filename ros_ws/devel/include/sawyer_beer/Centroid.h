// Generated by gencpp from file sawyer_beer/Centroid.msg
// DO NOT EDIT!


#ifndef SAWYER_BEER_MESSAGE_CENTROID_H
#define SAWYER_BEER_MESSAGE_CENTROID_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace sawyer_beer
{
template <class ContainerAllocator>
struct Centroid_
{
  typedef Centroid_<ContainerAllocator> Type;

  Centroid_()
    : x_center(0)
    , y_center(0)
    , width(0)
    , height(0)  {
    }
  Centroid_(const ContainerAllocator& _alloc)
    : x_center(0)
    , y_center(0)
    , width(0)
    , height(0)  {
  (void)_alloc;
    }



   typedef int32_t _x_center_type;
  _x_center_type x_center;

   typedef int32_t _y_center_type;
  _y_center_type y_center;

   typedef int32_t _width_type;
  _width_type width;

   typedef int32_t _height_type;
  _height_type height;





  typedef boost::shared_ptr< ::sawyer_beer::Centroid_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::sawyer_beer::Centroid_<ContainerAllocator> const> ConstPtr;

}; // struct Centroid_

typedef ::sawyer_beer::Centroid_<std::allocator<void> > Centroid;

typedef boost::shared_ptr< ::sawyer_beer::Centroid > CentroidPtr;
typedef boost::shared_ptr< ::sawyer_beer::Centroid const> CentroidConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::sawyer_beer::Centroid_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::sawyer_beer::Centroid_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace sawyer_beer

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'intera_core_msgs': ['/home/parallels/ros_ws/src/intera_common/intera_core_msgs/msg', '/home/parallels/ros_ws/devel/share/intera_core_msgs/msg'], 'sawyer_beer': ['/home/parallels/ros_ws/src/sawyer_beer-final_demo/msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::sawyer_beer::Centroid_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::sawyer_beer::Centroid_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::sawyer_beer::Centroid_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::sawyer_beer::Centroid_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sawyer_beer::Centroid_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sawyer_beer::Centroid_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::sawyer_beer::Centroid_<ContainerAllocator> >
{
  static const char* value()
  {
    return "58d67e1619b82cd9993c819da03f5871";
  }

  static const char* value(const ::sawyer_beer::Centroid_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x58d67e1619b82cd9ULL;
  static const uint64_t static_value2 = 0x993c819da03f5871ULL;
};

template<class ContainerAllocator>
struct DataType< ::sawyer_beer::Centroid_<ContainerAllocator> >
{
  static const char* value()
  {
    return "sawyer_beer/Centroid";
  }

  static const char* value(const ::sawyer_beer::Centroid_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::sawyer_beer::Centroid_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
int32 x_center\n\
int32 y_center\n\
int32 width\n\
int32 height\n\
";
  }

  static const char* value(const ::sawyer_beer::Centroid_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::sawyer_beer::Centroid_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x_center);
      stream.next(m.y_center);
      stream.next(m.width);
      stream.next(m.height);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Centroid_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::sawyer_beer::Centroid_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::sawyer_beer::Centroid_<ContainerAllocator>& v)
  {
    s << indent << "x_center: ";
    Printer<int32_t>::stream(s, indent + "  ", v.x_center);
    s << indent << "y_center: ";
    Printer<int32_t>::stream(s, indent + "  ", v.y_center);
    s << indent << "width: ";
    Printer<int32_t>::stream(s, indent + "  ", v.width);
    s << indent << "height: ";
    Printer<int32_t>::stream(s, indent + "  ", v.height);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SAWYER_BEER_MESSAGE_CENTROID_H
