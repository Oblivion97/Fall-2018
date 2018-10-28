.model small
.stack 100h
.data
.code
main proc
    mov ax,124
    mov cx,0
    
    _loop:
         mov bl,10
         div bl
         
         mov bl,ah
         mov bh,0
         
         push bx
         inc cx
         
         cmp al,0
         je dis
         
         mov ah,0         
    
    jmp _loop
    
    dis:
       cmp cx,0
       je exit
       
       pop dx
       add dx,30h
       mov ah,2
       int 21h
       
       dec cx
    jmp dis
    
    
    
    
    exit:
    end main
main endp