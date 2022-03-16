#
# PersonalDeviceUsageState.msg
#
# J2735 2016 message format.
#
# Parsed description of PersonalDeviceUsageState from the SAE J2735 2016 specification.
# For further usage details consult the specification.
#
# PersonalDeviceUsageState ::= BIT STRING {  
#    unavailable      (0), -- Not specified
#    other            (1), -- Used for states not defined below
#    idle             (2), -- Human is not interacting with device  
#    listeningToAudio (3), -- Any audio source other then calling 
#    typing           (4), -- Including texting, entering addresses 
#                          -- and other manual input activity 
#    calling          (5),   
#    playingGames     (6),   
#    reading          (7),   
#    viewing          (8)  -- Watching dynamic content, including following 
#                          -- navigation prompts, viewing videos or other 
#                          -- visual contents that are not static
#    } (SIZE (9, ...))
#    -- All bits shall be set to zero when unknown state

# A BIT STRING defining the presence of optional flags.
# Compare with bitwise-and
# if (states & IDLE) etc.
# Create with bitwise-or
# states = states | IDLE
uint16 states

uint16 UNAVAILABLE=0
uint16 OTHER=1
uint16 IDLE=2
uint16 LISTENING_TO_AUDIO=4
uint16 TYPING=8
uint16 CALLING=16
uint16 PLAYING_GAMES=32
uint16 READING=64
uint16 VIEWING=128
