

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
    
    mov bx,64
    
   _loop: 
        test bx,1
        jz lastbitzero
        jmp lastbitone
        
        lastbitzero:
            jmp condition
        lastbitone:
            inc ones
            jmp condition
        condition:
            shr bx,1
            cmp bx,0
            
            jnz _loop
            jmp exit
        
    exit:
        mov ah,4ch
        int 21h
endp main

end main

