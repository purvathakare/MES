ORG 0000H
MOV A, #10H        
ORL A, #05H        
MOV R6, A          
MOV A, #0FFH       
ANL A, #0F9H       
CLR ACC.0          
MOV R7, A          
MOV A, R7          
END
