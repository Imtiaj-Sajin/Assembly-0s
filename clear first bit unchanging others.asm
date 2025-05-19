.model small
.stack 100h

.data  




.code

main proc
   
MOv al,1101b
ADD AL,0001b

add al,'0'     
mov dl,al
mov ah,02
int 21h
      

       
             
   
   exit:
     mov ah, 4ch
     int 21h
     
     
  main endp
       end main
