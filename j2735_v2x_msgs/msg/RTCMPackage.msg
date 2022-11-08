#
# RTCMPackage.msg
#
# J2735 2016 message format.
#
# @version 0.1
#

# RTCMPackage ::= SEQUENCE {  
#    -- precise antenna position and noise data for a rover
#    rtcmHeader  RTCMheader OPTIONAL,  
#                     
#    -- one or more RTCM messages
#    msgs        RTCMmessageList,
#    ...  
#    }

j2735_v2x_msgs/RTCMHeader rtcm_header

# The RTCMmessage data element contains the stream of octets of the actual RTCM message that is being sent. The
# message’s contents are defined in RTCM Standard 10403.1 and in RTCM Standard 10402.1 and its successors. Note that
# most RTCM messages are considerably smaller than the size limit defined here, but that some messages may need to be
# broken into smaller messages (as per the rules defined in the RTCM work) in order to be transmitted using V2X
#communications.
uint8[] messages

