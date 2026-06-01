# j2735_v2x_msgs

This package contains ROS2 messages that are used for V2X communication in CARMA Platform and exactly match their associated ASN.1 specifications as defined in SAE J2735. If a message does not exactly match an ASN.1 specified message, it should be defined in carma_v2x_msgs instead of here.

## J2735 2024 Updates

Messages in this package have been updated from J2735 201603 to J2735 202409. Key changes include:

- **Deprecated fields removed**: Fields marked `doNotUse` in the 2024 standard have been removed from `SupplementalVehicleExtensions` (weatherReport, weatherProbe, obstacle, speedProfile, theRTCM), `SpecialVehicleExtensions` (trailers), `VehicleData` (trailerWeight), and `TrailerData` (sspIndex).
- **New extension fields**: `IntersectionGeometry` and `IntersectionState` gain `roadAuthorityID`; `SupplementalVehicleExtensions` gains `fhwaVehicleClass`, `trailers` (J2945/1B), and `schoolBus` (J2945/1C).
- **TimeMark range**: Updated from `0..36001` to `0..36111` in `TimeChangeDetails` and related types.
- **VehicleEventFlags**: Added `eventJackKnife` (bit 13); size grows from 13 to 14 bits.
- **LaneSharing**: Bit 9 renamed from `pedestrianTraffic` to `reserved`.
- **ITIS enums**: Value corrections and additions in `ITISGenericLocations`, `ITISResponderGroupAffected`, and `ITISVehicleGroupAffected`.
- **New message types**: `Axles`, `RoadAuthorityID`, `RptVehicleClass`, `SchoolBusJ2945Slash1C`, `TrailersJ2945Slash1B`, `TrailerUnitDescJ2945Slash1B`.