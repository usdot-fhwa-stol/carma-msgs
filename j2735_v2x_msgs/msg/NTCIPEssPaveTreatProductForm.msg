#
# NTCIPEssPaveTreatProductForm.msg
#
# J2735 2024 message format.
#

# NTCIPEssPaveTreatProductForm ::= ENUMERATED {
#    other (1),
#    dry (2),
#    prewet (3),
#    liquid (4),
#    ...
#    }

uint8 OTHER = 1
uint8 DRY = 2
uint8 PREWET = 3
uint8 LIQUID = 4

uint8 product_form
