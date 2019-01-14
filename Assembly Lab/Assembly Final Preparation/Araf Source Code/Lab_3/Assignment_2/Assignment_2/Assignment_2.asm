org 100h

.stack 100h

.data
   n dw 24578    ; Our input value is here
   i db ?       ; For keep track how many vale to push in the stack
   k db ?       ; For the range of pop operation
.code

main proc 
    
    
    pushValue:
    
        mov ax, n
        mov bx, 10
        mov dx, 0
        div bx       ; Q.tion in AX and reminder will be in DX register
        
        push dx      ; Push the reminder value in Stack
        mov n, ax
        add i, 1
        cmp ax, 0
       jne pushValue
       
       
     popValue:          ; Pop the value from stack and print the result
        mov dx, 0
        pop dx
        add dx, 48
        mov ah, 2
        int 21h
        
        add k, 1
        mov cl, k
       cmp cl, i
      jne popValue
           
    
  mov ah, 4ch
endp main
end main

    
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;                            x
;Name:      Md. Araf Hasan   x
;ID :       011 152 042      x
;Section:   B                x
;                            x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxx     
