
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h   
.model small
.stack 100h 
.data

.code
main proc
  mov cx, 50
  l1:
    
    mov ah, 1  ;zf = 0 keypress
    int 16h
    
    jz nokeypress
    jnz keypress 
     
    nokeypress:
        mov ah, 2
        mov dl, '*'
        int 21h
        jmp exit
        
    keypress: 
    
        mov ah, 0
        int 16h
        mov dl, al
        mov ah,2
        
        
        int 21h
        
    
    exit:
    loop l1
endp 


end main



