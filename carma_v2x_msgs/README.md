# carma_v2x_msgs

This package is for CARMA message specs that are used in the v2x subsystem or its provided interfaces.

## J2735 2024 Updates

Messages in this package have been updated to align with J2735 202409. These messages use SI units (m, s, etc.) where applicable, diverging from raw ASN.1 representations. Key changes include:

- **Deprecated fields removed**: Fields marked `doNotUse` in the 2024 standard have been removed from `SupplementalVehicleExtensions` (weatherReport, weatherProbe, obstacle, speedProfile, theRTCM), `SpecialVehicleExtensions` (trailers), `VehicleData` (trailerWeight), and `TrailerData` (sspIndex).
- **New extension fields**: `IntersectionGeometry` and `IntersectionState` gain `roadAuthorityID`; `SupplementalVehicleExtensions` gains `fhwaVehicleClass`, `trailers` (J2945/1B), and `schoolBus` (J2945/1C).
- **TimeMark range**: Updated from `0..3600.1` to `0..3611.1` (SI-converted seconds) in `TimeChangeDetails`.
- **New message types**: `TrailersJ2945Slash1B`, `TrailerUnitDescJ2945Slash1B`. 