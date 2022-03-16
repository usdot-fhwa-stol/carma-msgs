#
# PublicSafetyAndRoadWorkerActivity.msg
#
# J2735 2016 message format.
#
# Parsed description of PropelledInformation from the SAE J2735 2016 specification.
# For further usage details consult the specification.
#
# PublicSafetyAndRoadWorkerActivity ::= BIT STRING {
#    unavailable          (0), -- Not specified
#    workingOnRoad        (1), -- Road workers on foot, in or out of 
#                              -- a closure, performing activities like: 
#                              -- construction, land surveying, 
#                              -- trash removal, or site inspection.
#    settingUpClosures    (2), -- Road workers on foot performing
#                              -- activities like: setting up signs, 
#                              -- placing cones/barrels/pylons, or placing 
#                              -- flares.  Note: People are in the road 
#                              -- redirecting traffic, but the closure is 
#                              -- not complete, so utmost care is required 
#                              -- to determine the allowed path to take to 
#                              -- avoid entering the work zone and/or 
#                              -- harming the workers.
#    respondingToEvents   (3), -- Public safety or other road workers on
#                              -- foot performing activities like: treating 
#                              -- injured people, putting out fires, 
#                              -- cleaning chemical spills, aiding disabled 
#                              -- vehicles, criminal investigations, 
#                              -- or animal control.  Note: These events tend 
#                              -- to be more dynamic than workingOnRoad
#    directingTraffic     (4), -- Public safety or other road workers on
#                              -- foot directing traffic in situations like: 
#                              -- a traffic signal out of operation, 
#                              -- a construction or crash site with a short 
#                              -- term lane closure, a single lane flagging 
#                              -- operation, or ingress/egress to a special event.
#    otherActivities      (5)  -- Designated by regional authorities  
#    } (SIZE (6, ...))

# A BIT STRING defining the presence of optional flags.
# Compare with bitwise-and
# if (activities & SETTING_UP_CLOSURES) etc.
# Create with bitwise-or
# activities = activities | SETTING_UP_CLOSURES
uint8 activities

uint8 UNAVAILABLE=0
uint8 WORKING_ON_ROAD=1
uint8 SETTING_UP_CLOSURES=2
uint8 RESPONDING_TO_EVENTS=4
uint8 DIRECTING_TRAFFIC=8
uint8 OTHER_ACTIVITIES=16