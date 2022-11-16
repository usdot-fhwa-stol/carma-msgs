#
# VehicleMass.msg
#
# J2735 2016 message format.
#

# VehicleMass ::= INTEGER (0..255)
#     -- Values 000 to 080 in steps of 50kg
#     -- Values 081 to 200 in steps of 500kg
#     -- Values 201 to 253 in steps of 2000kg
#     -- The Value 254 shall be used for weights above 170000 kg
#     -- The Value 255 shall be used when the value is unknown or unavailable
#     -- Encoded such that the values:
#     --  81 represents   4500 kg
#     -- 181 represents  54500 kg
#     -- 253 represents 170000 kg
uint8 vehicle_mass

uint8 MASS_UNAVAILABLE=255