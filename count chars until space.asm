.MODEL small
.STACK 100h
.DATA  
    counter db 0
    space db '$'
.CODE
 MAIN PROC
    MOV AX,@DATA
    MOV DS, AX

         
    MOV CL, 0
    
 LP: 
    MOV Ah,01
    int 21h
    
    CMP AL,' '
    JE PRINt
    
    inc CL
    
    jmp LP
    
    
    
END_IF:   
    MOV AH,4CH 
    INT 21H    
    
    
PRINt:
    MOV DL, 0Dh    
    MOV AH, 2
    INT 21h

    MOV DL, 0Ah   
    MOV AH, 2
    INT 21h

    ADD CL, '0'    
    MOV DL, CL
    MOV AH, 2
    INT 21h

    JMP END_IF

   
    
    
    
    MAIN ENDP
    END main
    
    
    
