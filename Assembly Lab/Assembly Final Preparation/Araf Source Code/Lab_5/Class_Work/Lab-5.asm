
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
.stack 100h
.data   
.code
jmp main  


main proc
    mov dx, @data
    mov ds, dx  
    mov cx, 5 
    
    call scanax
    
    ;mov ah, 4ch
;    int 21h   
ret
endp main     

scanax proc
    push bx
    push cx
    push dx  
    value dw 0 
    newvalue dw 0
    
    mov bx, 10 
    inputloop:
        mov ah, 1
        int 21h  
        
        cmp al, 13
        je exitinput 
        
        mov ah, 0
        sub ax, 48 ; newvalue 
 
        mov newvalue,ax  
        mov ax, value
        
        mul bx ; dx:ax = value * 10 
        add ax, newvalue    ; ax = value * 10 + newvalue
        mov value,ax
                            ; value = value * 10 + newvalue
        jmp inputloop
        

    exitinput:
    mov ax, value
    pop dx
    pop cx
    pop bx     
    ret     
endp

               
printax proc  
    push ax
    push bx
    push cx
    push dx
    
    mov cx, 0    
    mov bx, 10
    L1:
        mov dx, 0
        div bx
        push dx   
        inc cx
        cmp ax, 0         
        jne L1       
        
   L2:         
        pop dx
        add dx, '0'  
        mov ah, 2
        int 21h      
        loop L2 
        
   pop dx
   pop cx
   pop bx
   pop ax        
   ret 
endp

               
end main



