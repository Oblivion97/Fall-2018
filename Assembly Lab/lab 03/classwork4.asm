
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
.stack 100h
.data
number dw 4567
.code
proc main
    mov dx, @data
    mov ds, dx
    
    mov Ax ,number
    mov bx,10
    mov dx,0
    div bx
    
    mov ah, 9
    mov cx,dx
    int 21h 
    
    
endp main

end main

