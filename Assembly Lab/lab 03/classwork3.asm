
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
;innerloop
org 100h
.stack 100h

.data

starstring db 0
stars db 0
starcount db 5
lines db 0
linescount db 5
_nl db 10, 13, '$'

.code
proc main
    mov dx, @data
    mov ds, dx
    outerinit:
        mov lines,1
    outercond:
        mov bl,linescount
        cmp lines,bl
        jle outeriter
        jmp outerexit
    outeriter:
        mov al,lines
        mov starcount,al
        
        innerinit:
            mov stars, 1
        innercondition: ;cannot compare 2 variables.we need atleast one registers.line:19-20
            mov dl,starcount
            cmp stars, dl
            jle inneriter
            jmp innerexit
        inneriter:
            ;printf("*");
            add starstring,1
            lea dl,starstring 
            mov ah,2
            int 21h

        innerpost:
            add stars,1
             ;inc stars
                        ;jle iter
            jmp innercondition
         innerexit:
            mov ah, 9
            lea dx, _nl
            int 21h
    outerpost:
            add lines,1
            jmp outercond
    outerexit:
            mov ah,4ch
            int 21h
    
    ;lea dx,starstring 
    ;mov ah,9
    ;int 21h
            

endp main

end main

