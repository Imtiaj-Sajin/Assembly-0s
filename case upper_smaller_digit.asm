;case: if smal convert upper case, if upper convert to smaller, if digit print digit
.model small
.stack 100h

.data  

      msg1 db "Enter a numer: $"
      msg2 db 10,13,"Upper -->$"
       msg3 db 10,13,"Smaller -->$"
       msg4 db 10,13,"it is digit $"   
           
         num1 db ?
         num2 db ?



.code

main proc
   
   mov ax, @data
   mov ds,ax
   
             
    
    mov ah,9
    lea dx,msg1
    int 21h
    
    
    mov ah,1
    
    int 21h
    mov num1,al 
           
    cmp num1,7Ah
    JA exit
    
    cmp num1,61h
    JAE case_smaller
    
    cmp num1,5Ah
    JA exit       
    
    cmp num1,41h
    JAE case_upper
      
    
    cmp num1,39h
    JA exit
    
    cmp num1, 30h
    JA case_digit       
    
    
   jmp exit 
     
 case_digit:
      
    mov ah,9
    lea dx,msg4
    int 21h
       jmp exit
     
      
 case_upper:
      
    mov ah,9
    lea dx,msg2
    int 21h 
    
    add num1,20h
    mov ah,2
    mov dl,num1
    int 21h
    
      jmp exit
       
             
 case_smaller:
      
    mov ah,9
    lea dx,msg3
    int 21h  
    
    sub num1,20h
    mov ah,2
    mov dl,num1
    int 21h
      jmp exit
       
   exit:
     mov ah, 4ch
     int 21h
     
     
  main endp
       end main
