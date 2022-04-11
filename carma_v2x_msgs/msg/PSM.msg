#
# PSM.msg
#
# Modified J2735 2016 message format, adjusted to use base SI units (m,s, etc) in most case.
#
# Parsed description of PSM from the SAE J2735 2016 specification.
# For further usage details consult the specification. See note on SI units above.
#

# A BIT STRING defining the presence of optional feilds.
# Compare with bitwise-and
# if (presence_vector & HAS_PATH_HISTORY) etc.
# Create with bitwise-or
# presence_vector = presence_vector | HAS_PATH_HISTORY
uint32 presence_vector

uint32 HAS_ACCEL_SET = 1
uint32 HAS_PATH_HISTORY = 2
uint32 HAS_PATH_PREDICTION = 4
uint32 HAS_PROPULSION = 8
uint32 HAS_USE_STATE = 16
uint32 HAS_CROSS_REQUEST = 32
uint32 HAS_CROSS_STATE = 64
uint32 HAS_CLUSTER_SIZE = 128
uint32 HAS_CLUSTER_RADIUS = 256
uint32 HAS_EVENT_RESPONDER_TYPE = 512
uint32 HAS_ACTIVITY_TYPE = 1024
uint32 HAS_ACTIVITY_SUB_TYPE = 2048
uint32 HAS_ASSIST_TYPE = 4096
uint32 HAS_SIZING = 8192
uint32 HAS_ATTACHMENT= 16384
uint32 HAS_ATTACHMENT_RADIUS = 32768
uint32 HAS_ANIMAL_TYPE = 65536
uint32 HAS_REGIONAL_EXTENSION = 131072

j2735_v2x_msgs/PersonalDeviceUserType basic_type

j2735_v2x_msgs/DSecond sec_mark

j2735_v2x_msgs/MsgCount msg_cnt

j2735_v2x_msgs/TemporaryID id

carma_v2x_msgs/Position3D position

carma_v2x_msgs/PositionalAccuracy accuracy

carma_v2x_msgs/Velocity speed

carma_v2x_msgs/Heading heading

####
# OPTIONAL FIELDS
# All fields below this section are optional.
# The presence of a given field can be idenfied by checking the precense_vector
####
carma_v2x_msgs/AccelerationSet4Way accel_set

carma_v2x_msgs/PathHistory path_history

carma_v2x_msgs/PathPrediction path_prediction

j2735_v2x_msgs/PropelledInformation propulsion

j2735_v2x_msgs/PersonalDeviceUsageState use_state

j2735_v2x_msgs/PersonalCrossingRequest cross_request

j2735_v2x_msgs/PersonalCrossingInProgress cross_state

j2735_v2x_msgs/NumberOfParticipantsInCluster cluster_size

j2735_v2x_msgs/PersonalClusterRadius cluster_radius

j2735_v2x_msgs/PublicSafetyEventResponderWorkerType event_responder_type

j2735_v2x_msgs/PublicSafetyAndRoadWorkerActivity activity_type

j2735_v2x_msgs/PublicSafetyDirectingTrafficSubType activity_sub_type

j2735_v2x_msgs/PersonalAssistive assist_type

j2735_v2x_msgs/UserSizeAndBehaviour sizing

j2735_v2x_msgs/Attachment attachment

carma_v2x_msgs/AttachmentRadius attachment_radius

j2735_v2x_msgs/AnimalType animal_type

# TODO Approach to defining regional extensions in ROS has not yet been idenfied. If it is, this field will be updated.
# regional SEQUENCE (SIZE(1..4)) OF 
#            j2735_v2x_msgs/RegionalExtension {{REGION.Reg-PersonalSafetyMessage}} OPTIONAL,
#   ...
#   }
