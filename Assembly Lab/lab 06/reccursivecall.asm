
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
.stack 100h
.data 

.code
main proc
    
    mov dx,@data
    mov ds,dx

    mov ax,5
    ;mov bx,10
    ;call fy
    ;mov bx,5
    call sum
    mov ah,4ch
    int 21h
    
    ret
endp main

sum proc
    cmp ax,1
    jle base
    jmp recursive
    
    base: 
        mov dx,1
        ret
        
    recursive:
        push ax              
        dec ax
        
        call sum
        
        pop ax
        mul dx
        
        mov dx,ax
        ;push ax
        
        
        ret
        endp

;fx proc
;    add ax,bx
;    ret
;    endp
;
;fy proc
;    call fx
;    mov cx,20
;    add cx,ax
;    ret
;    endp
;
;end main
;
;
;
;
;
;
;
;
;
;