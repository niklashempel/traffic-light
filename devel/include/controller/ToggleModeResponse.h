// Generated by gencpp from file controller/ToggleModeResponse.msg
// DO NOT EDIT!


#ifndef CONTROLLER_MESSAGE_TOGGLEMODERESPONSE_H
#define CONTROLLER_MESSAGE_TOGGLEMODERESPONSE_H


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
struct ToggleModeResponse_
{
  typedef ToggleModeResponse_<ContainerAllocator> Type;

  ToggleModeResponse_()
    : status()  {
    }
  ToggleModeResponse_(const ContainerAllocator& _alloc)
    : status(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _status_type;
  _status_type status;





  typedef boost::shared_ptr< ::controller::ToggleModeResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::controller::ToggleModeResponse_<ContainerAllocator> const> ConstPtr;

}; // struct ToggleModeResponse_

typedef ::controller::ToggleModeResponse_<std::allocator<void> > ToggleModeResponse;

typedef boost::shared_ptr< ::controller::ToggleModeResponse > ToggleModeResponsePtr;
typedef boost::shared_ptr< ::controller::ToggleModeResponse const> ToggleModeResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::controller::ToggleModeResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::controller::ToggleModeResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::controller::ToggleModeResponse_<ContainerAllocator1> & lhs, const ::controller::ToggleModeResponse_<ContainerAllocator2> & rhs)
{
  return lhs.status == rhs.status;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::controller::ToggleModeResponse_<ContainerAllocator1> & lhs, const ::controller::ToggleModeResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace controller

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::controller::ToggleModeResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::controller::ToggleModeResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::controller::ToggleModeResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::controller::ToggleModeResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::controller::ToggleModeResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::controller::ToggleModeResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::controller::ToggleModeResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4fe5af303955c287688e7347e9b00278";
  }

  static const char* value(const ::controller::ToggleModeResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4fe5af303955c287ULL;
  static const uint64_t static_value2 = 0x688e7347e9b00278ULL;
};

template<class ContainerAllocator>
struct DataType< ::controller::ToggleModeResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "controller/ToggleModeResponse";
  }

  static const char* value(const ::controller::ToggleModeResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::controller::ToggleModeResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string status\n"
;
  }

  static const char* value(const ::controller::ToggleModeResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::controller::ToggleModeResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.status);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ToggleModeResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::controller::ToggleModeResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::controller::ToggleModeResponse_<ContainerAllocator>& v)
  {
    s << indent << "status: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.status);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CONTROLLER_MESSAGE_TOGGLEMODERESPONSE_H
