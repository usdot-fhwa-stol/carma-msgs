#
# Attachment.msg
#
# J2735 2016 message format.
#
# Parsed description of Attachment from the SAE J2735 2016 specification.
# For further usage details consult the specification.
#
# Attachment ::= ENUMERATED { 
#    unavailable                  (0), -- has some unknown attachment type
#    stroller                     (1),
#    bicycleTrailer               (2),
#    cart                         (3),
#    wheelchair                   (4), 
#    otherWalkAssistAttachments   (5),
#    pet                          (6),
#    ...
#    }

uint8 type

uint8 UNAVAILABLE = 0
uint8 STROLLER = 1
uint8 BICYCLE_TRAILER = 2
uint8 CART = 3
uint8 WHEELCHAIR = 4
uint8 OTHER_WALK_ASSIST_ATTACHMENTS = 5
uint8 PET = 6