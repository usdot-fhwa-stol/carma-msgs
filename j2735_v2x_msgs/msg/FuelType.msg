#
# FuelType.msg
#
# J2735 2016 message format.
#

# FuelType ::= INTEGER (0..15)
#    unknownFuel   FuelType::=  0 -- Gasoline Powered
#    gasoline      FuelType::=  1 
#    ethanol       FuelType::=  2 -- Including blends
#    diesel        FuelType::=  3 -- All types
#    electric      FuelType::=  4  
#    hybrid        FuelType::=  5 -- All types 
#    hydrogen      FuelType::=  6  
#    natGasLiquid  FuelType::=  7 -- Liquefied
#    natGasComp    FuelType::=  8 -- Compressed
#    propane       FuelType::=  9  

uint8 fuel_type

# Enumeration values for fuel_type
uint8 UNKNOWN_FUEL=0
uint8 GASOLINE=1
uint8 ETHANOL=2
uint8 DIESEL=3
uint8 ELECTRIC=4
uint8 HYBRID=5
uint8 HYDROGEN=6
uint8 NAT_GAS_LIQUID=7
uint8 NAT_GAS_COMP=8
uint8 PROPANE=9