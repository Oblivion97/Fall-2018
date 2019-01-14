org 100h

.stack 100h

.data
  
  nl db 0dh, 0ah, '$'
  msg db 'h', 'e', 108, 'lo', ' ', 'world$'
  n dw 10, 20, 30, 40, 50
  x db ?
  
  sum dw 0
   
.code
main proc
    mov dx, @data
    mov ds, dx
    
    mov cx, 5
    lea si, n
    
  L1:
    mov ax, [si]
    

    add sum, ax
    
    inc si
    inc si
    loop L1
    
    
    mov ah, 4ch
    int 21h
endp main
end main
