#
# VehicleMass.msg
#
# Modified J2735 2016 message format, adjusted to use base SI units (m,s, etc) in most case.
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
uint32 vehicle_mass

uint32 MASS_MIN=0
uint32 MASS_MAX=170000

# If true the vehicle mass is unset
bool unavailable