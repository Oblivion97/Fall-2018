.model small
.stack 100h
.data
    sum dw 0
.code
    mov ax,@data
    mov ds,ax
    
    mov cx,13
    jcxz exit
    
    l1:
    
      mov ax,sum
      add ax,cx
      mov sum,ax
    
    
    loop l1
    
    exit:
    

    
    
    
 

