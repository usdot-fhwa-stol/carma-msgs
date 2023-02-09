#
# HeadingSlice.msg
#
# J2735 2016 message format.
#

# HeadingSlice ::= BIT STRING {
#    -- Each bit 22.5 degree starting from 
#    -- North and moving Eastward (clockwise) as one bit
#    -- a value of noHeading means no bits set, while a 
#    -- a value of allHeadings means all bits would be set             
#       
#    from000-0to022-5degrees  (0),   
#    from022-5to045-0degrees  (1),   
#    from045-0to067-5degrees  (2),   
#    from067-5to090-0degrees  (3),   
#    
#    from090-0to112-5degrees  (4),   
#    from112-5to135-0degrees  (5),   
#    from135-0to157-5degrees  (6),   
#    from157-5to180-0degrees  (7),   
#    
#    from180-0to202-5degrees  (8),   
#    from202-5to225-0degrees  (9),   
#    from225-0to247-5degrees  (10),  
#    from247-5to270-0degrees  (11),  
#    
#    from270-0to292-5degrees  (12),  
#    from292-5to315-0degrees  (13),  
#    from315-0to337-5degrees  (14),  
#    from337-5to360-0degrees  (15)  
#    }  (SIZE (16))

uint16 heading_slice

uint16 NO_HEADING = 0
uint16 FROM_000_0_TO_022_5_DEGREES=1
uint16 FROM_022_5_TO_045_0_DEGREES=2
uint16 FROM_045_0_TO_067_5_DEGREES=4
uint16 FROM_067_5_TO_090_0_DEGREES=8
uint16 FROM_090_0_TO_112_5_DEGREES=16
uint16 FROM_112_5_TO_135_0_DEGREES=32
uint16 FROM_135_0_TO_157_5_DEGREES=64
uint16 FROM_157_5_TO_180_0_DEGREES=128
uint16 FROM_180_0_TO_202_5_DEGREES=256
uint16 FROM_202_5_TO_225_0_DEGREES=512
uint16 FROM_225_0_TO_247_5_DEGREES=1024
uint16 FROM_247_5_TO_270_0_DEGREES=2048
uint16 FROM_270_0_TO_292_5_DEGREES=4096
uint16 FROM_292_5_TO_315_0_DEGREES=8192
uint16 FROM_315_0_TO_337_5_DEGREES=16384
uint16 FROM_337_5_TO_360_0_DEGREES=32768
uint16 ALL_HEADINGS=65535