; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
;print multiple digit from procedure.& call a funtion from above.
org 100h
.stack 100h
.data 

.code

jmp main

addition proc
    mov dx,10
    mov bx,20
    add bx,dx
    
    ret
endp


main proc
    
    mov dx,@data
    mov ds,dx

    
    mov ax,124
    mov dx,0
    
    mov cl,0
    call printax
    
    ;call addition
    mov ah,4ch
    int 21h
endp main;end main procedure.

printax proc
    _loop:
         mov bx,10 
         div bx
        
         push dx
         inc cl
         ;ax:div value|dx:reminder
         ;check result is zero or not
         cmp ax,0
         je dis
         
         ;clear remainder which is stored in DX register
         mov dx,0         
    
    jmp _loop
    
    dis:
       cmp cl,0
       je exit
       
       pop dx
       add dx,30h
       mov ah,2
       int 21h
       
       dec cx
    jmp dis
    
    exit:
    
    ret
endp


end main;last line of a file terminate process.