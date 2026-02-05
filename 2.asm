ORG 0000H
MOV 50H, #10       
MOV 51H, #12       
START:
    MOV R0, 50H    
    MOV R1, 51H    
COMP_LOOP:
    MOV A, R0
    JZ A_IS_ZERO   
    MOV A, R1
    JZ B_IS_ZERO   
    DEC R0
    DEC R1
    SJMP COMP_LOOP
A_IS_ZERO:
    MOV A, R1      
    JZ EQUAL       
    MOV R7, #0FFH  
    SJMP EXIT
B_IS_ZERO:
    MOV R7, #01H   
    SJMP EXIT
EQUAL:
    MOV R7, #00H   
EXIT:
    MOV 60H, R7    
    END
