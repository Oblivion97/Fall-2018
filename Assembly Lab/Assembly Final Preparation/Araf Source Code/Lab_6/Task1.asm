 
org 100h
.stack 100h
.data
    
.code
 main proc
    mov dx, @data
    mov ds, dx
    
    mov ax, 5
    call sum
    mov ah, 4ch
    int 21h
    
    ret
 endp main
 
 sum proc
    cmp ax, 1
    jle base
    jmp recursive
    base:
        mov dx, 1
        ret
    recursive: 
        push ax
        dec ax 
        call sum  ; dx = sum(n-1)
        pop ax
        add dx, ax ; sum(n-1) * (n-1)
        
        ret 
        endp
end main

