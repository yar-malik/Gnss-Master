/* Auto-generated by genmsg_cpp for file /home/asfandyar/gnss-master/rtkrcv/msg/Ephemeris.msg */
#ifndef RTKRCV_MESSAGE_EPHEMERIS_H
#define RTKRCV_MESSAGE_EPHEMERIS_H
#include <string>
#include <vector>
#include <map>
#include <ostream>
#include "ros/serialization.h"
#include "ros/builtin_message_traits.h"
#include "ros/message_operations.h"
#include "ros/time.h"

#include "ros/macros.h"

#include "ros/assert.h"


namespace rtkrcv
{
template <class ContainerAllocator>
struct Ephemeris_ {
  typedef Ephemeris_<ContainerAllocator> Type;

  Ephemeris_()
  : sat(0)
  {
  }

  Ephemeris_(const ContainerAllocator& _alloc)
  : sat(0)
  {
  }

  typedef int32_t _sat_type;
  int32_t sat;


  typedef boost::shared_ptr< ::rtkrcv::Ephemeris_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rtkrcv::Ephemeris_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct Ephemeris
typedef  ::rtkrcv::Ephemeris_<std::allocator<void> > Ephemeris;

typedef boost::shared_ptr< ::rtkrcv::Ephemeris> EphemerisPtr;
typedef boost::shared_ptr< ::rtkrcv::Ephemeris const> EphemerisConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::rtkrcv::Ephemeris_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::rtkrcv::Ephemeris_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace rtkrcv

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::rtkrcv::Ephemeris_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::rtkrcv::Ephemeris_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::rtkrcv::Ephemeris_<ContainerAllocator> > {
  static const char* value() 
  {
    return "62f89a1b367ce484104ddb6031cf3a54";
  }

  static const char* value(const  ::rtkrcv::Ephemeris_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x62f89a1b367ce484ULL;
  static const uint64_t static_value2 = 0x104ddb6031cf3a54ULL;
};

template<class ContainerAllocator>
struct DataType< ::rtkrcv::Ephemeris_<ContainerAllocator> > {
  static const char* value() 
  {
    return "rtkrcv/Ephemeris";
  }

  static const char* value(const  ::rtkrcv::Ephemeris_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::rtkrcv::Ephemeris_<ContainerAllocator> > {
  static const char* value() 
  {
    return "# GPS/QZS/GAL broadcast ephemeris type\n\
\n\
int32 sat             # satellite number\n\
";
  }

  static const char* value(const  ::rtkrcv::Ephemeris_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct IsFixedSize< ::rtkrcv::Ephemeris_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::rtkrcv::Ephemeris_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.sat);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct Ephemeris_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rtkrcv::Ephemeris_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::rtkrcv::Ephemeris_<ContainerAllocator> & v) 
  {
    s << indent << "sat: ";
    Printer<int32_t>::stream(s, indent + "  ", v.sat);
  }
};


} // namespace message_operations
} // namespace ros

#endif // RTKRCV_MESSAGE_EPHEMERIS_H

