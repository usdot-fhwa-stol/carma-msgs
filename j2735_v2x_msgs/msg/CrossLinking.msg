#
# CrossLinking.msg
#
# J2735 2024 message format.
#

# CrossLinking ::= SEQUENCE {
#    audioLinks      SEQUENCE (SIZE(1..4, ...)) OF AudioLink         OPTIONAL,
#    visualLink      SEQUENCE (SIZE(1..4, ...)) OF VisualLink        OPTIONAL,
#    rsmLink         SEQUENCE (SIZE(1..4, ...)) OF EventIdentifier   OPTIONAL,
#    ...
#    }

uint8 presence_vector

uint8 HAS_AUDIO_LINKS = 1
uint8 HAS_VISUAL_LINK = 2
uint8 HAS_RSM_LINK = 4

j2735_v2x_msgs/AudioLink[] audio_links

uint8 AUDIO_LINKS_MIN_SIZE = 1
uint8 AUDIO_LINKS_MAX_SIZE = 4

j2735_v2x_msgs/VisualLink[] visual_link

uint8 VISUAL_LINK_MIN_SIZE = 1
uint8 VISUAL_LINK_MAX_SIZE = 4

j2735_v2x_msgs/EventIdentifier[] rsm_link

uint8 RSM_LINK_MIN_SIZE = 1
uint8 RSM_LINK_MAX_SIZE = 4
