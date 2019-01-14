
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h   
.model small
.stack 100h 
.data
inittime dw 0  
.code
main proc
   
   mov ah,0
   int 1ah
   
   mov inittime, dx 
   
   L1:
     mov ah, 0
     int 1ah
     
     mov ax, dx
     sub dx, inittime 
     
     cmp dx,  18
     jl L1 
     
     mov inittime, ax
     
     mov ah, 2
     mov dl, '*'
     int 21h
     
     jmp L1  
        
   
endp 


end main



