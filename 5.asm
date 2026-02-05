ORG 0000H
MOV 40H, #0AAH
MOV 41H, #0FFH    
MOV 42H, #0BBH
MOV 43H, #0FFH    
MOV 44H, #0CCH
MOV R0, #40H      
MOV R1, #40H      
SCAN_LOOP:
    CJNE R1, #60H, CHECK_VAL 
    SJMP FILL_ZERO     
CHECK_VAL:
    MOV A, @R1        
    XRL A, #0FFH      
    JZ SKIP_BYTE      
    MOV A, @R1
    MOV @R0, A        
    INC R0            
    
SKIP_BYTE:
    INC R1            
    SJMP SCAN_LOOP

FILL_ZERO:
    CJNE R0, #60H, WRITE_0 
    SJMP EXIT

WRITE_0:
    MOV @R0, #00H
    INC R0
    SJMP FILL_ZERO

EXIT:
    SJMP $
END
