
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
.stack 100h
starstring db '*$'
stars db 0
starcount db 5
.data

.code
proc main
    mov dx, @data
    mov ds, dx
    init:
         mov stars, 1
    condition: ;cannot compare 2 variables.we need atleast one registers.line:19-20
         mov dl,starcount
         cmp stars, dl;
         jle iter
         jmp exit
    iter:
        ;printf("*");
        lea dx,starstring 
        mov ah,9
        int 21h

    post:
        add stars,1 ;inc stars
        ;jle iter
        jmp condition 
    ;lea dx,starstring 
    ;mov ah,9
    ;int 21h
    exit:
        mov ah,4ch
        int 21h
endp main

end main

