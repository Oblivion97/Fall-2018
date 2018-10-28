.model small
.stack 100h
.data
.code
main proc
    ;value is stored in 32 register,created by    DX:AX
    mov ax,65535
    mov dx,0
    
    mov cl,0
    
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
    end main
main endp