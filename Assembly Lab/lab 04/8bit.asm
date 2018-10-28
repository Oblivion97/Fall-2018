.model small
.stack 100h;stack starting position
.data
.code
main proc
    mov ax,1000
    mov cl,0
    
    ;16 bit/8bit 
    ;ax=16, bit al=div value
    ;ah=reminder
    
    _loop:
         mov bl,10
         div bl
         
         mov bl,ah;move bx,ah[not accepted 16 bit/8 bit] ;putting value into 8 bit reg 
         mov bh,0 ;garbage value wipe
         
         ;stack always push 16 bit value.
         push bx
         inc cl
         
         cmp al,0;check div vlaue 0
         je display
         
         mov ah,0;clear ah after push to stack         
    
    jmp _loop
    
    display:
       cmp cl,0
       je exit
       
       pop dx
       add dx,30h ;direct number doesn't print so add by hexa to genarate their ascci code
       mov ah,2
       int 21h
       
       dec cl
    jmp display
    
    
    
    
    exit:
    end main
main endp