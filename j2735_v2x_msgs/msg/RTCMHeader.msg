#
# RTCMHeader.msg
#
# J2735 2016 message format.
#

# RTCMheader ::= SEQUENCE {
#    status     GNSSstatus,
#    offsetSet  AntennaOffsetSet
#    }
j2735_v2x_msgs/GNSSStatus status

# AntennaOffsetSet ::= SEQUENCE { 
#    antOffsetX  Offset-B12, -- a range of +- 20.47 meters
#    antOffsetY  Offset-B09, -- a range of +- 2.55 meters
#    antOffsetZ  Offset-B10  -- a range of +- 5.11 meters
#   }
j2735_v2x_msgs/OffsetB12 ant_offset_x
j2735_v2x_msgs/OffsetB09 ant_offset_y
j2735_v2x_msgs/OffsetB10 ant_offset_z