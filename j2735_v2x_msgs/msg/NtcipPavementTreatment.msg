#
# NtcipPavementTreatment.msg
#
# J2735 2024 message format.
#

# NtcipPavementTreatment ::= SEQUENCE {
#    latitude    NTCIPEssPavementTreatmentLatitude,
#    longitude   NTCIPEssPavementTreatmentLongitude,
#    location    NTCIPEssPavementTreatmentLocation,
#    productType NTCIPEssPaveTreatProductType        OPTIONAL,
#    form        NTCIPEssPaveTreatProductForm         OPTIONAL,
#    percentage  NTCIPEssPercentProductMix            OPTIONAL,
#    amount      NTCIPEssPaveTreatmentAmount          OPTIONAL,
#    width       NTCIPEssPaveTreatmentWidth           OPTIONAL,
#    ...
#    }

uint8 presence_vector

uint8 HAS_PRODUCT_TYPE = 1
uint8 HAS_FORM = 2
uint8 HAS_PERCENTAGE = 4
uint8 HAS_AMOUNT = 8
uint8 HAS_WIDTH = 16

j2735_v2x_msgs/NTCIPEssPavementTreatmentLatitude latitude

j2735_v2x_msgs/NTCIPEssPavementTreatmentLongitude longitude

j2735_v2x_msgs/NTCIPEssPavementTreatmentLocation location

j2735_v2x_msgs/NTCIPEssPaveTreatProductType product_type

j2735_v2x_msgs/NTCIPEssPaveTreatProductForm form

j2735_v2x_msgs/NTCIPEssPercentProductMix percentage

j2735_v2x_msgs/NTCIPEssPaveTreatmentAmount amount

j2735_v2x_msgs/NTCIPEssPaveTreatmentWidth width
