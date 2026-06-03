#
# SchoolBusJ2945Slash1C.msg
#
# J2735 2024 message format.
#

# SchoolBusJ2945Slash1C ::= SEQUENCE {
#    flashingAmberLights     BOOLEAN,
#    flashingRedLights       BOOLEAN,
#    studentsCrossingFront   BOOLEAN OPTIONAL,
#    studentsCrossingBehind  BOOLEAN OPTIONAL,
#    studentsLoading         BOOLEAN OPTIONAL,
#    studentsUnloading       BOOLEAN OPTIONAL,
#    wheelchairLiftInUse     BOOLEAN OPTIONAL,
#    emergencyExitOpen       BOOLEAN OPTIONAL,
#    emergencyRequestMedical BOOLEAN OPTIONAL,
#    emergencyRequestFire    BOOLEAN OPTIONAL,
#    emergencyRequestPolice  BOOLEAN OPTIONAL,
#    ...
#    }

uint16 presence_vector

uint16 HAS_STUDENTS_CROSSING_FRONT = 1
uint16 HAS_STUDENTS_CROSSING_BEHIND = 2
uint16 HAS_STUDENTS_LOADING = 4
uint16 HAS_STUDENTS_UNLOADING = 8
uint16 HAS_WHEELCHAIR_LIFT_IN_USE = 16
uint16 HAS_EMERGENCY_EXIT_OPEN = 32
uint16 HAS_EMERGENCY_REQUEST_MEDICAL = 64
uint16 HAS_EMERGENCY_REQUEST_FIRE = 128
uint16 HAS_EMERGENCY_REQUEST_POLICE = 256

bool flashing_amber_lights
bool flashing_red_lights
bool students_crossing_front
bool students_crossing_behind
bool students_loading
bool students_unloading
bool wheelchair_lift_in_use
bool emergency_exit_open
bool emergency_request_medical
bool emergency_request_fire
bool emergency_request_police
