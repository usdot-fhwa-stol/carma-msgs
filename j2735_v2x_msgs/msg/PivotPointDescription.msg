#
# PivotPointDescription.msg
#
# J2735 2016 message format.
#

#    pivotOffset  Offset-B11,   
#                 -- This gives a +- 10m range from the edge of the outline
#                 -- measured from the edge of the length of this unit
#                 -- a negative value is offset to inside the units
#                 -- a positive value is offset beyond the unit
j2735_v2x_msgs/OffsetB11 pivot_offset

#    pivotAngle   Angle,
#                 -- Measured between the center-line of this unit 
#                 -- and the unit ahead which is pulling it.
#                 -- This value is required to project the units relative position
j2735_v2x_msgs/Angle pivot_angle

#    pivots       PivotingAllowed,
#                 -- true if this unit can rotate about the pivot connection point
j2735_v2x_msgs/PivotingAllowed pivots