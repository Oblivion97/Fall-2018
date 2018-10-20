.model small
.stack 100h

.data
    _name db "HM Mahmudul Hasan Hredoy $"

.code
main proc
    mov ax,@data
    mov ds,ax
    
    lea dx,_name
    mov ah,9
    int 21h
    
    
    
    main endp
end main