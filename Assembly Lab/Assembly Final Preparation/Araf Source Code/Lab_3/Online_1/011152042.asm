org 100h

.stack 100h

.data
   sum db 0
.code      
    
    mov bx, @data
    mov ds, bx
    
    mov cl, 1
    
  L1:
    mov al, sum
    add al, cl
    mov sum, al
    
    
    add cl, 1
    cmp cl, 2   ; My id is '011 152 042' and last degit is '2'
  jle L1
  
 mov ah, 4ch
 int 21h

endp main
end main

