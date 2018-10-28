
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
.stack 100h
.data

.code
proc main
    mov dx, @data
    mov ds, dx
    
    mov ax,1
    mov bx, 2
    mov cx, 3
    
    push ax
    push bx
    push cx
    
    pop dx
    pop ax
    pop bx
    
endp main

end main

