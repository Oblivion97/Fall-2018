
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
.stack 100h
.data

x db ?;uninitialized variable.

_red db 10,13,'Red$'
_green db 10,13,'Green$'
_blue db 10,13,'Blue$'
_valid db 0


.code
proc main
    mov bx,@data
    mov dx, @data
    mov ds, dx
    
    L1:;loop    
        mov ah,1
        int 21h
        mov x,al;take input to the variable.
        
        cmp x,'r'
        je printred;conditional jump
           
        cmp x,'g'
        je printgreen;conditional jump
        
        cmp x,'b'
        je printblue;conditional jump
        
        jmp L1;unconditional jump
        
        
        printred:
            lea dx,_red
            mov ah,9
            int 21h
            jmp exit
            
        printgreen:
            lea dx,_green
            mov ah,9
            int 21h
            jmp exit
        
        printblue:
            lea dx,_blue
            mov ah,9
            int 21h
            jmp exit
            
        
        exit:
            mov ah,4ch
            int 21h
endp main

end main

