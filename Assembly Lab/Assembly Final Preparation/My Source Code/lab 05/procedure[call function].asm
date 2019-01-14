; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
.stack 100h
.data 

.code
main proc
    
    mov dx,@data
    mov ds,dx

    
    call addition

    mov ah,4ch
    int 21h
endp main;end main procedure.


addition proc
    mov dx,10
    mov bx,20
    add bx,dx
    
    ret
endp

end main;last line of a file terminate process.