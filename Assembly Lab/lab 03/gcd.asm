.model small
.stack 100h
.data
    n1 db 9
    n2 db 4
.code
main proc
   mov ax,@data
   mov ds,ax
   
   _while:
        mov al,n1
        mov bl,n2
        
        cmp al,bl
        je dis_gcd
        
        cmp al,bl
        jg if
        
        else:
        sub bl,al
        mov n2,bl
       
   
   jmp _while 
    
   if:
     sub al,bl
     mov n1,al
     jmp _while 
    
   dis_gcd:
      mov dl,n1
      add dl,30h
      mov ah,2
      int 21h
      
    
    main endp
end main