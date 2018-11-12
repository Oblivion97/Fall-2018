; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
;rotation 
org 100h
.stack 100h
.data

ones db 0
i db 0

.code
proc main
    mov dx, @data
    mov ds, dx
    
    mov ax,250
    mov bx,218
   
    
    mul bx
    
    mov cx,0
 
    
    _loop:
         mov bx,10 
         mov dx,0
         div bx
         
         
         push dx
         inc cx
         
         cmp ax,0
         je dis        
    
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

endp main

end main
