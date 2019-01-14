org 100h

.stack 100h

.data
  
  nl db 0dh, 0ah, '$'
  msg db 'h', 'e', 108, 'lo', ' ', 'world$'
  n dw 10, 20, 30, 40, 50
  x db ?
   
.code
main proc
    mov dx, @data
    mov ds, dx
    
    lea si, msg
    
  L1:
    mov al, [si]
    mov x, al
    
    cmp al, '$'
    je done
    
    mov ah, 2
    mov dl, x
    int 21h
    
    inc si
    jmp L1
  done:
    mov ah, 4ch
    int 21h
endp main
end main
