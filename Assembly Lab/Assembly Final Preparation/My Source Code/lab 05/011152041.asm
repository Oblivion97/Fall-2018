.model small 
.stack 100h
.data
    n db 0
    k db 0
    newLine db 10,13,"$"
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,1
    int 21h
    
    sub al,30h
    mov n,al
            
            
    mov al,n
    mul n
    mov k,al
    mov cl,1
    
    lea dx,newLine
    mov ah,9
    int 21h
    
    _loop:
      cmp cl,k
      jg exit
      mov dl,cl
      add dl,30h
      mov ah,2
      int 21h
      inc cl
      
      jmp _loop
    
  
    
    
    
    
    
    
    exit:
    main endp
end main