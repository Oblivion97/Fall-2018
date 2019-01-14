
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.stack 100h

.data

.code 
jmp main



main proc
    mov dx, @data
    mov ds, dx
    
    mov ax, 123
    call printax
    
    mov ah, 4ch
    int 21h
endp main

printax proc
    mov cx, 0
    mov bx, 10
    L1:
        mov dx, 0
        ;mov bx, 10
        div bx
        push dx
        inc cx
        cmp ax, 0
        jne L1         
    L2:
        pop dx
        add dx, '0'
        mov ah, 2
        int 21h
        loop L2
    ret
end
