
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

;G:\ \github\Fall-2018\Assembly Lab\lab 06


org 100h
.stack 100h
.data 

.code
main proc
    
    mov dx,@data
    mov ds,dx

    mov ax,5
    mov bx,10
    call fy
    mov bx,5

    mov ah,4ch
    int 21h
    
    ret
endp main

fx proc
    add ax,bx
    ret
    endp

fy proc
    call fx
    mov cx,20
    add cx,ax
    ret
    endp

end main




