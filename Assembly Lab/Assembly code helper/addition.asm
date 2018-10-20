.model small
.stack 100h
.data
    msg db 10,13,"press any key to continue....$"
.code
main proc
    
    mov ax,@data
    mov ds,ax
    
    mov al,6
    mov bl,3  
    
    ;add al 1+bl
    add al,bl
    
    add al,30h
    
    ;display result
    mov dl,al
    mov ah,2
    int 21h
    
    ;print msg
    lea dx,msg
    mov ah,9
    int 21h 
    
    ;wait for input
    mov ah,1
    int 21h
    
    ;after getting input go to exit levle
    exit:
    main endp
end main