                                   org 100h

.stack 100h

.data
    i db '0'
    
.code

proc main
        mov bx, @data
        mov ds, bx 
        
        mov cl, 0
        
        
        L1:
            mov dl, i
            mov ah, 2
            int 21h
            
            add cl, 1
            add i, 1
            cmp cl, 10 
        jne L1
        
        mov ah, 4ch
        int 21h
  endp main
end main