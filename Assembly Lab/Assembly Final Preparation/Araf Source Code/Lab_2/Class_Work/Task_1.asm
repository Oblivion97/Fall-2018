org 100h

.stack 100h

.data
    x db ?  
    red db 10, 13, 'red$'
    green db 10, 13,  'green$'
    blue db 10, 13, 'blue$'
    valid db 0
.code

proc main
        mov bx, @data
        mov ds, bx  
        
        L1:
        mov ah, 1
        int 21h
        mov x, al
        
        cmp x, 'r'
        je printred
        ;jmp exit
        
        cmp x, 'g'
        je printgreen
        ;jmp exit 
        
        cmp x, 'b'
        je printblue
        ;jmp exit
        jmp L1
        
        printred:
           lea dx, red
           mov ah, 9
           int 21h
           jmp exit
           
        printgreen:
           lea dx, green
           mov ah, 9
           int 21h
           jmp exit
           
        printblue:
           lea dx, blue
           mov ah, 9
           int 21h
           jmp exit 
        exit:
            mov ah, 4ch
            int 21h
  endp main
end main