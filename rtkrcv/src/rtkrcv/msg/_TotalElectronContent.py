"""autogenerated by genpy from rtkrcv/TotalElectronContent.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import genpy

class TotalElectronContent(genpy.Message):
  _md5sum = "83696db70a6f8d6f1ed8b31abf7c41dd"
  _type = "rtkrcv/TotalElectronContent"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """# TEC type

time time                # epoch time (GPST)

int32[] ndata            # TEC grid data size {nlat,nlon,nhgt}

float64 rb               # earth radius (km)
float64[] lats           # latitude start/interval (deg)
float64[] lons           # longitude start/interval (deg)
float64[] hgts           # heights start/interval (km)
float64[] data           # TEC grid data (tecu)
float32[] rms            # RMS values (tecu)
"""
  __slots__ = ['time','ndata','rb','lats','lons','hgts','data','rms']
  _slot_types = ['time','int32[]','float64','float64[]','float64[]','float64[]','float64[]','float32[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       time,ndata,rb,lats,lons,hgts,data,rms

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(TotalElectronContent, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.time is None:
        self.time = genpy.Time()
      if self.ndata is None:
        self.ndata = []
      if self.rb is None:
        self.rb = 0.
      if self.lats is None:
        self.lats = []
      if self.lons is None:
        self.lons = []
      if self.hgts is None:
        self.hgts = []
      if self.data is None:
        self.data = []
      if self.rms is None:
        self.rms = []
    else:
      self.time = genpy.Time()
      self.ndata = []
      self.rb = 0.
      self.lats = []
      self.lons = []
      self.hgts = []
      self.data = []
      self.rms = []

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_struct_2I.pack(_x.time.secs, _x.time.nsecs))
      length = len(self.ndata)
      buff.write(_struct_I.pack(length))
      pattern = '<%si'%length
      buff.write(struct.pack(pattern, *self.ndata))
      buff.write(_struct_d.pack(self.rb))
      length = len(self.lats)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.pack(pattern, *self.lats))
      length = len(self.lons)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.pack(pattern, *self.lons))
      length = len(self.hgts)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.pack(pattern, *self.hgts))
      length = len(self.data)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.pack(pattern, *self.data))
      length = len(self.rms)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(struct.pack(pattern, *self.rms))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(_x))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(_x))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.time is None:
        self.time = genpy.Time()
      end = 0
      _x = self
      start = end
      end += 8
      (_x.time.secs, _x.time.nsecs,) = _struct_2I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%si'%length
      start = end
      end += struct.calcsize(pattern)
      self.ndata = struct.unpack(pattern, str[start:end])
      start = end
      end += 8
      (self.rb,) = _struct_d.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.lats = struct.unpack(pattern, str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.lons = struct.unpack(pattern, str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.hgts = struct.unpack(pattern, str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.data = struct.unpack(pattern, str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      end += struct.calcsize(pattern)
      self.rms = struct.unpack(pattern, str[start:end])
      self.time.canon()
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_struct_2I.pack(_x.time.secs, _x.time.nsecs))
      length = len(self.ndata)
      buff.write(_struct_I.pack(length))
      pattern = '<%si'%length
      buff.write(self.ndata.tostring())
      buff.write(_struct_d.pack(self.rb))
      length = len(self.lats)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.lats.tostring())
      length = len(self.lons)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.lons.tostring())
      length = len(self.hgts)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.hgts.tostring())
      length = len(self.data)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.data.tostring())
      length = len(self.rms)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(self.rms.tostring())
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(_x))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(_x))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.time is None:
        self.time = genpy.Time()
      end = 0
      _x = self
      start = end
      end += 8
      (_x.time.secs, _x.time.nsecs,) = _struct_2I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%si'%length
      start = end
      end += struct.calcsize(pattern)
      self.ndata = numpy.frombuffer(str[start:end], dtype=numpy.int32, count=length)
      start = end
      end += 8
      (self.rb,) = _struct_d.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.lats = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.lons = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.hgts = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.data = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      end += struct.calcsize(pattern)
      self.rms = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=length)
      self.time.canon()
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_2I = struct.Struct("<2I")
_struct_d = struct.Struct("<d")
