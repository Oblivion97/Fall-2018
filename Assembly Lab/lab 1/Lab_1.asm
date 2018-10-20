org 100h

.stack 100h
.data     

msg db "hello world$" 
nl db 10, 13, '$'
msg1 db "By bye wold$"
.code

mov ah, 9
mov dx, offset msg
int 21h    
         
mov ah, 9
lea dx, nl
int 21h

mov ah, 9
mov dx, offset msg1
int 21h


ret




