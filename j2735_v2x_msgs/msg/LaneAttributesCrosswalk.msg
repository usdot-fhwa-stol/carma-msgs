#
# LaneAttributesCrosswalk.msg
#
# J2735 2024 message format.
#
# @author Mae Fromm
# @version 0.1
#

# LaneAttributes-Crosswalk ::= BIT STRING {
# 	-- With bits as defined:
# 	-- MUTCD provides no suitable "types" to use here
# 	crosswalkRevocableLane (0),
# 		-- this lane may be activated or not based
# 		-- on the current SPAT message contents
# 		-- if not asserted, the lane is ALWAYS present
# 	bicyleUseAllowed (1),
# 		-- The path allows bicycle traffic,
# 		-- if not set, this mode is prohibited
# 	isXwalkFlyOverLane (2),
# 		-- path of lane is not at grade
# 	fixedCycleTime (3),
# 		-- ped walk phases use preset times
# 		-- i.e. there is not a 'push to cross' button
# 	biDirectionalCycleTimes (4),
# 		-- ped walk phases use different SignalGroupID
# 		-- for each direction. The first SignalGroupID
# 		-- in the first Connection represents 'inbound'
# 		-- flow (the direction of travel towards the first
# 		-- node point) while second SignalGroupID in the
# 		-- next Connection entry represents the 'outbound'
# 		-- flow. And use of RestrictionClassID entries
# 		-- in the Connect follow this same pattern in pairs.
# 	hasPushToWalkButton (5),
# 		-- Has a demand input
# 	audioSupport (6),
# 		-- audio crossing cues present
# 	rfSignalRequestPresent (7),
# 		-- Supports RF push to walk technologies
# 	unsignalizedSegmentsPresent (8)
# 		-- The lane path consists of one of more segments
# 		-- which are not part of a signal group ID
# } (SIZE (16))

uint16 lane_attributes_crosswalk

# Bit flags
uint16 CROSSWALK_REVOCABLE_LANE=1
uint16 BICYLE_USE_ALLOWED=2
uint16 IS_XWALK_FLY_OVER_LANE=4
uint16 FIXED_CYCLE_TIME=8
uint16 BI_DIRECTIONAL_CYCLE_TIMES=16
uint16 HAS_PUSH_TO_WALK_BUTTON=32
uint16 AUDIO_SUPPORT=64
uint16 RF_SIGNAL_REQUEST_PRESENT=128
uint16 UNSIGNALIZED_SEGMENTS_PRESENT=256