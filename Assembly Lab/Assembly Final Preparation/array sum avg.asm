data segment
  a db 0,3,5,7,5 
  average db ?
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:    
mov ax,@data
mov ds,ax
mov es,ax

mov ax,0
mov bl,5
mov cx,5
lea si,a

dong:
add ax,[si]
inc si
dec cx
cmp cx,0
jne dong
jmp bak

bak:    
div bl           ;ax/5=al
mov average,al
mov ax, 4c00h
int 21h  
ends

end start