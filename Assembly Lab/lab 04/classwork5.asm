

; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
.stack 100h
.data

ones db 0

.code
proc main
    mov dx, @data
    mov ds, dx
    
    mov ax,01110011b
    ror ax,1
    
    mov ah,4ch
    int 21h
endp main

end main

