
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h   
.model small
.stack 100h 
.data

.code
main proc
    mov ax, 0
    int 33h
 
    l1:
        mov ax, 3
        int 33h
  
        
   
endp 


end main



