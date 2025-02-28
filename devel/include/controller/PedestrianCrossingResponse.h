// Generated by gencpp from file controller/PedestrianCrossingResponse.msg
// DO NOT EDIT!


#ifndef CONTROLLER_MESSAGE_PEDESTRIANCROSSINGRESPONSE_H
#define CONTROLLER_MESSAGE_PEDESTRIANCROSSINGRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace controller
{
template <class ContainerAllocator>
struct PedestrianCrossingResponse_
{
  typedef PedestrianCrossingResponse_<ContainerAllocator> Type;

  PedestrianCrossingResponse_()
    : success(false)  {
    }
  PedestrianCrossingResponse_(const ContainerAllocator& _alloc)
    : success(false)  {
  (void)_alloc;
    }



   typedef uint8_t _success_type;
  _success_type success;





  typedef boost::shared_ptr< ::controller::PedestrianCrossingResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::controller::PedestrianCrossingResponse_<ContainerAllocator> const> ConstPtr;

}; // struct PedestrianCrossingResponse_

typedef ::controller::PedestrianCrossingResponse_<std::allocator<void> > PedestrianCrossingResponse;

typedef boost::shared_ptr< ::controller::PedestrianCrossingResponse > PedestrianCrossingResponsePtr;
typedef boost::shared_ptr< ::controller::PedestrianCrossingResponse const> PedestrianCrossingResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::controller::PedestrianCrossingResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::controller::PedestrianCrossingResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::controller::PedestrianCrossingResponse_<ContainerAllocator1> & lhs, const ::controller::PedestrianCrossingResponse_<ContainerAllocator2> & rhs)
{
  return lhs.success == rhs.success;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::controller::PedestrianCrossingResponse_<ContainerAllocator1> & lhs, const ::controller::PedestrianCrossingResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace controller

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::controller::PedestrianCrossingResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::controller::PedestrianCrossingResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::controller::PedestrianCrossingResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::controller::PedestrianCrossingResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::controller::PedestrianCrossingResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::controller::PedestrianCrossingResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::controller::PedestrianCrossingResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "358e233cde0c8a8bcfea4ce193f8fc15";
  }

  static const char* value(const ::controller::PedestrianCrossingResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x358e233cde0c8a8bULL;
  static const uint64_t static_value2 = 0xcfea4ce193f8fc15ULL;
};

template<class ContainerAllocator>
struct DataType< ::controller::PedestrianCrossingResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "controller/PedestrianCrossingResponse";
  }

  static const char* value(const ::controller::PedestrianCrossingResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::controller::PedestrianCrossingResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool success\n"
;
  }

  static const char* value(const ::controller::PedestrianCrossingResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::controller::PedestrianCrossingResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.success);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PedestrianCrossingResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::controller::PedestrianCrossingResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::controller::PedestrianCrossingResponse_<ContainerAllocator>& v)
  {
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CONTROLLER_MESSAGE_PEDESTRIANCROSSINGRESPONSE_H
