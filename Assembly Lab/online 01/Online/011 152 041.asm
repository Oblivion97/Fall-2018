.model small
.stack 100h
.data
    sum db 0
    n db  14   ; id: 011 152 041  so, n=15-1=14
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov al,1
    _while:
       
        cmp al,n
        jg exit
        
        add sum,al
        
        add al,1
    jmp _while
    
    exit:
    
    main endp
end main