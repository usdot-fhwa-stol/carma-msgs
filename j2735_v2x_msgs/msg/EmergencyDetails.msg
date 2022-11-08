#
# EmergencyDetails.msg
#
# J2735 2016 message format.
#
# @version 0.1
#
#

# EmergencyDetails ::= SEQUENCE {
#  notUsed SSPindex,
# -- always set to 0 and carries no meaning;
# -- legacy field maintained for backward compatibility
#  sirenUse SirenInUse,
#  lightsUse LightbarInUse,
#  multi MultiVehicleResponse,
#  events PrivilegedEvents OPTIONAL,
#  responseType ResponseType OPTIONAL,
#  ...
# }

uint8 SSPIndex = 0

# SirenInUse ::= ENUMERATED {
#   unavailable (0), -- Not Equipped or unavailable
#   notInUse (1),
#   inUse (2),
#   reserved (3) -- for future use
# }
j2735_v2x_msgs/SirenInUse siren_use


#  LightbarInUse ::= ENUMERATED {
#  unavailable (0), -- Not Equipped or unavailable
#  notInUse (1), -- none active
#  inUse (2),
#  yellowCautionLights (3),
#  schoolBusLights (4),
#  arrowSignsActive (5),
#  slowMovingVehicle (6),
#  freqStops (7)
#  }
j2735_v2x_msgs/LightbarInUse lights_use

# MultiVehicleResponse ::= ENUMERATED {
#      unavailable   (0), -- Not Equipped or unavailable
#      singleVehicle (1),  
#      multiVehicle  (2),  
#      reserved      (3)  -- for future use
#      }
j2735_v2x_msgs/MultiVehicleResponse multi

#  PrivilegedEvents ::= SEQUENCE {
#  notUsed SSPindex,
#  -- always set to 0 and carries no meaning;
#  -- legacy field maintained for backward compatibility
#  -- The active event list
#  event PrivilegedEventFlags,
#  ...
#  }
j2735_v2x_msgs/PrivilegedEvents events
bool events_available

#  ResponseType ::= ENUMERATED {
#  notInUseOrNotEquipped (0),
#  emergency (1), -- active service call at emergency level
#  nonEmergency (2), -- also used when returning from service call
#  pursuit (3), -- sender driving may be erratic
#  stationary (4), -- sender is not moving, stopped along roadside
#  slowMoving (5), -- such a mowers, litter trucks, etc.
#  stopAndGoMovement (6), -- such as school bus or garbage truck
#  ...
#  }
j2735_v2x_msgs/ResponseType response_type
bool response_type_available