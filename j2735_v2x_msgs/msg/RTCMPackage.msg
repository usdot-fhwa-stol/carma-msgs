#
# RTCMPackage.msg
#
# Modified J2735 2016 message format, adjusted to use base SI units (m,s, etc) in most case.
#

# RTCMPackage ::= SEQUENCE {  
#    -- precise antenna position and noise data for a rover
#    rtcmHeader  RTCMheader OPTIONAL,  
#                     
#    -- one or more RTCM messages
#    msgs        RTCMmessageList,
#    ...  
#    }

# A BIT STRING defining the presence of optional fields.
# Compare with bitwise-and
# if (presence_vector & HAS_RTCM_HEADER) etc.
# Create with bitwise-or
# presence_vector = presence_vector | HAS_RTCM_HEADER
uint16 presence_vector

uint16 HAS_RTCM_HEADER = 1

j2735_v2x_msgs/RTCMHeader rtcm_header

# The RTCMmessage data element contains the stream of octets of the actual RTCM message that is being sent. The
# message’s contents are defined in RTCM Standard 10403.1 and in RTCM Standard 10402.1 and its successors. Note that
# most RTCM messages are considerably smaller than the size limit defined here, but that some messages may need to be
# broken into smaller messages (as per the rules defined in the RTCM work) in order to be transmitted using V2X
#communications.
uint8[] messages

