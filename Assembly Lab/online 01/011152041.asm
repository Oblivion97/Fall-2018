org 100h
.stack 100h
.data
    sum db 0
    n db  14   ; id: 011 152 041  so, n=15-1=14
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov al,2
    _while:
       
        cmp al,n
        jg exit ;jg-Jump if greater
        
        add sum,al
        
        add al,2
    jmp _while
    
    exit:
        mov ah,4ch
        int 21h
    
    main endp
end main