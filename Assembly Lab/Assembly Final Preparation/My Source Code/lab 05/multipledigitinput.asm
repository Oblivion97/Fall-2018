; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
;print multiple digit from procedure.& call a funtion from above.
org 100h
.stack 100h
.data 

.code

jmp main

;pushall macro
;    push ax
 ;   push bx
 ;   push cx
 ;   push dx
;endm
;popall macro
;    pop ax
;    pop bx
;    pop cx
;    pop dx
;endm

addition proc
    mov dx,10
    mov bx,20
    add bx,dx
    
    ret
endp


main proc
    
    mov dx,@data
    mov ds,dx

    
    mov ax,124
    mov dx,0
    
    mov cl,0
    
    call input
    call printax
    
    ;call addition
    mov ah,4ch
    int 21h
endp main;end main procedure.

input proc
    push bx
    push cx
    push dx
    
    values dw 0
    newvalues dw 0
    
    mov bx,10
    
    inputloop:
        mov ah,1
        int 21h
        cmp al,13
        
        je exitinput
        
        mov ah,0
        sub al,48;newvalue
        
        mov newvalue,ax
        mov ax,value
        
        mul bx         ;dx:ax=value*10
        
        add ax,newvalue;ax=value*10+newvalue
        add dx,newvalue;
                       ;value=value*10+newvalue
        
        mov value,dx
        
        jmp inputloop
        
    exitinput:
    mov ax,value
    pop bx
    pop cx
    pop dx
    ret
endp


printax proc
    
    pushall;macro
    
    _loop:
         mov bx,10 
         div bx
        
         push dx
         inc cl
         ;ax:div value|dx:reminder
         ;check result is zero or not
         cmp ax,0
         je dis
         
         ;clear remainder which is stored in DX register
         mov dx,0         
    
    jmp _loop
    
    dis:
       cmp cl,0
       je exit
       
       pop dx
       add dx,30h
       mov ah,2
       int 21h
       
       dec cx
    jmp dis
    
    exit:
    
    popall;macro
    
    ret
endp


end main;last line of a file terminate process.