org 100h

.stack 100h

.data
    i db '0'
    
.code

proc main
        mov bx, @data
        mov ds, bx 
        
        mov cx, 10
        
        
        L1:
            mov dl, i
            mov ah, 2
            int 21h
 
            add i, 1
        
        loop L1    ; Decrese cx
                   ; cmp cx, 0
                   ;jne L1
        
        mov ah, 4ch
        int 21h
  endp main
end main