/* Auto-generated by genmsg_cpp for file /home/asfandyar/gnss-master/rtkrcv/msg/DifferentialGnss.msg */
#ifndef RTKRCV_MESSAGE_DIFFERENTIALGNSS_H
#define RTKRCV_MESSAGE_DIFFERENTIALGNSS_H
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
struct DifferentialGnss_ {
  typedef DifferentialGnss_<ContainerAllocator> Type;

  DifferentialGnss_()
  : t0()
  , prc(0.0)
  , rrc(0.0)
  , iod(0)
  , udre(0.0)
  {
  }

  DifferentialGnss_(const ContainerAllocator& _alloc)
  : t0()
  , prc(0.0)
  , rrc(0.0)
  , iod(0)
  , udre(0.0)
  {
  }

  typedef ros::Time _t0_type;
  ros::Time t0;

  typedef double _prc_type;
  double prc;

  typedef double _rrc_type;
  double rrc;

  typedef int32_t _iod_type;
  int32_t iod;

  typedef double _udre_type;
  double udre;


  typedef boost::shared_ptr< ::rtkrcv::DifferentialGnss_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rtkrcv::DifferentialGnss_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct DifferentialGnss
typedef  ::rtkrcv::DifferentialGnss_<std::allocator<void> > DifferentialGnss;

typedef boost::shared_ptr< ::rtkrcv::DifferentialGnss> DifferentialGnssPtr;
typedef boost::shared_ptr< ::rtkrcv::DifferentialGnss const> DifferentialGnssConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::rtkrcv::DifferentialGnss_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::rtkrcv::DifferentialGnss_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace rtkrcv

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::rtkrcv::DifferentialGnss_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::rtkrcv::DifferentialGnss_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::rtkrcv::DifferentialGnss_<ContainerAllocator> > {
  static const char* value() 
  {
    return "512aa2736c1354bc1ba3a9dc20331f42";
  }

  static const char* value(const  ::rtkrcv::DifferentialGnss_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x512aa2736c1354bcULL;
  static const uint64_t static_value2 = 0x1ba3a9dc20331f42ULL;
};

template<class ContainerAllocator>
struct DataType< ::rtkrcv::DifferentialGnss_<ContainerAllocator> > {
  static const char* value() 
  {
    return "rtkrcv/DifferentialGnss";
  }

  static const char* value(const  ::rtkrcv::DifferentialGnss_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::rtkrcv::DifferentialGnss_<ContainerAllocator> > {
  static const char* value() 
  {
    return "# DGPS/GNSS correction type\n\
\n\
time t0             # correction time\n\
float64 prc         # pseudorange correction (PRC) (m)\n\
float64 rrc         # range rate correction (RRC) (m/s)\n\
int32 iod           # issue of data (IOD)\n\
float64 udre        # UDRE\n\
";
  }

  static const char* value(const  ::rtkrcv::DifferentialGnss_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct IsFixedSize< ::rtkrcv::DifferentialGnss_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::rtkrcv::DifferentialGnss_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.t0);
    stream.next(m.prc);
    stream.next(m.rrc);
    stream.next(m.iod);
    stream.next(m.udre);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct DifferentialGnss_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rtkrcv::DifferentialGnss_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::rtkrcv::DifferentialGnss_<ContainerAllocator> & v) 
  {
    s << indent << "t0: ";
    Printer<ros::Time>::stream(s, indent + "  ", v.t0);
    s << indent << "prc: ";
    Printer<double>::stream(s, indent + "  ", v.prc);
    s << indent << "rrc: ";
    Printer<double>::stream(s, indent + "  ", v.rrc);
    s << indent << "iod: ";
    Printer<int32_t>::stream(s, indent + "  ", v.iod);
    s << indent << "udre: ";
    Printer<double>::stream(s, indent + "  ", v.udre);
  }
};


} // namespace message_operations
} // namespace ros

#endif // RTKRCV_MESSAGE_DIFFERENTIALGNSS_H
