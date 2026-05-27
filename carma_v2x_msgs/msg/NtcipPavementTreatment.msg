#
# NtcipPavementTreatment.msg
#
# carma_v2x_msgs: SI-converted version.
#

# NtcipPavementTreatment with lat/lon converted to float64 degrees

uint8 presence_vector

uint8 HAS_PRODUCT_TYPE = 1
uint8 HAS_FORM = 2
uint8 HAS_PERCENTAGE = 4
uint8 HAS_AMOUNT = 8
uint8 HAS_WIDTH = 16

float64 latitude

float64 longitude

string location

j2735_v2x_msgs/NTCIPEssPaveTreatProductType product_type

j2735_v2x_msgs/NTCIPEssPaveTreatProductForm form

j2735_v2x_msgs/NTCIPEssPercentProductMix percentage

j2735_v2x_msgs/NTCIPEssPaveTreatmentAmount amount

j2735_v2x_msgs/NTCIPEssPaveTreatmentWidth width
