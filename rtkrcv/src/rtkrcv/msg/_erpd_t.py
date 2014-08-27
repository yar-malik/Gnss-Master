"""autogenerated by genpy from rtkrcv/erpd_t.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class erpd_t(genpy.Message):
  _md5sum = "875080b448f19fe62905bc31b42ff310"
  _type = "rtkrcv/erpd_t"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """# earth rotation parameter data type

float64 mjd                 # mjd (days)
float64 xp
float64 yp                  # pole offset (rad)
float64 xpr
float64 ypr                 # pole offset rate (rad/day)
float64 ut1_utc             # ut1-utc (s)
float64 lod                 # length of day (s/day)
"""
  __slots__ = ['mjd','xp','yp','xpr','ypr','ut1_utc','lod']
  _slot_types = ['float64','float64','float64','float64','float64','float64','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       mjd,xp,yp,xpr,ypr,ut1_utc,lod

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(erpd_t, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.mjd is None:
        self.mjd = 0.
      if self.xp is None:
        self.xp = 0.
      if self.yp is None:
        self.yp = 0.
      if self.xpr is None:
        self.xpr = 0.
      if self.ypr is None:
        self.ypr = 0.
      if self.ut1_utc is None:
        self.ut1_utc = 0.
      if self.lod is None:
        self.lod = 0.
    else:
      self.mjd = 0.
      self.xp = 0.
      self.yp = 0.
      self.xpr = 0.
      self.ypr = 0.
      self.ut1_utc = 0.
      self.lod = 0.

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
      buff.write(_struct_7d.pack(_x.mjd, _x.xp, _x.yp, _x.xpr, _x.ypr, _x.ut1_utc, _x.lod))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(_x))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(_x))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      _x = self
      start = end
      end += 56
      (_x.mjd, _x.xp, _x.yp, _x.xpr, _x.ypr, _x.ut1_utc, _x.lod,) = _struct_7d.unpack(str[start:end])
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
      buff.write(_struct_7d.pack(_x.mjd, _x.xp, _x.yp, _x.xpr, _x.ypr, _x.ut1_utc, _x.lod))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(_x))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(_x))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      _x = self
      start = end
      end += 56
      (_x.mjd, _x.xp, _x.yp, _x.xpr, _x.ypr, _x.ut1_utc, _x.lod,) = _struct_7d.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_7d = struct.Struct("<7d")