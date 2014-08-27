/* Auto-generated by genmsg_cpp for file /home/asfandyar/gnss-master/rtkrcv/msg/satellitedata.msg */
#ifndef RTKRCV_MESSAGE_SATELLITEDATA_H
#define RTKRCV_MESSAGE_SATELLITEDATA_H
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

#include "std_msgs/Header.h"
#include "rtkrcv/satellite.h"

namespace rtkrcv
{
template <class ContainerAllocator>
struct satellitedata_ {
  typedef satellitedata_<ContainerAllocator> Type;

  satellitedata_()
  : header()
  , sat()
  {
  }

  satellitedata_(const ContainerAllocator& _alloc)
  : header(_alloc)
  , sat(_alloc)
  {
  }

  typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
   ::std_msgs::Header_<ContainerAllocator>  header;

  typedef std::vector< ::rtkrcv::satellite_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::rtkrcv::satellite_<ContainerAllocator> >::other >  _sat_type;
  std::vector< ::rtkrcv::satellite_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::rtkrcv::satellite_<ContainerAllocator> >::other >  sat;


  typedef boost::shared_ptr< ::rtkrcv::satellitedata_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rtkrcv::satellitedata_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct satellitedata
typedef  ::rtkrcv::satellitedata_<std::allocator<void> > satellitedata;

typedef boost::shared_ptr< ::rtkrcv::satellitedata> satellitedataPtr;
typedef boost::shared_ptr< ::rtkrcv::satellitedata const> satellitedataConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::rtkrcv::satellitedata_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::rtkrcv::satellitedata_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace rtkrcv

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::rtkrcv::satellitedata_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::rtkrcv::satellitedata_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::rtkrcv::satellitedata_<ContainerAllocator> > {
  static const char* value() 
  {
    return "07e86fa56a81ff89048619cca509e531";
  }

  static const char* value(const  ::rtkrcv::satellitedata_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x07e86fa56a81ff89ULL;
  static const uint64_t static_value2 = 0x048619cca509e531ULL;
};

template<class ContainerAllocator>
struct DataType< ::rtkrcv::satellitedata_<ContainerAllocator> > {
  static const char* value() 
  {
    return "rtkrcv/satellitedata";
  }

  static const char* value(const  ::rtkrcv::satellitedata_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::rtkrcv::satellitedata_<ContainerAllocator> > {
  static const char* value() 
  {
    return "#Array of satellites\n\
\n\
  Header header\n\
  satellite[] sat\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.secs: seconds (stamp_secs) since epoch\n\
# * stamp.nsecs: nanoseconds since stamp_secs\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: rtkrcv/satellite\n\
#Characteristics of on one satellite   \n\
\n\
  int32 id\n\
  int32 vs\n\
  float64 elevation\n\
  float64 asimuth\n\
";
  }

  static const char* value(const  ::rtkrcv::satellitedata_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct HasHeader< ::rtkrcv::satellitedata_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct HasHeader< const ::rtkrcv::satellitedata_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::rtkrcv::satellitedata_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.header);
    stream.next(m.sat);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct satellitedata_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rtkrcv::satellitedata_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::rtkrcv::satellitedata_<ContainerAllocator> & v) 
  {
    s << indent << "header: ";
s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "sat[]" << std::endl;
    for (size_t i = 0; i < v.sat.size(); ++i)
    {
      s << indent << "  sat[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::rtkrcv::satellite_<ContainerAllocator> >::stream(s, indent + "    ", v.sat[i]);
    }
  }
};


} // namespace message_operations
} // namespace ros

#endif // RTKRCV_MESSAGE_SATELLITEDATA_H
