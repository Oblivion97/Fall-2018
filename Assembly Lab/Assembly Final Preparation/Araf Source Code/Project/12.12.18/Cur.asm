org 100h

.model small
.stack 100h

.data

.code

main proc
    
    mov ah, 0
    mov al, 12h
    int 10h
    
    mov ah, 4ch
    int 21h
    
    main endp
end main