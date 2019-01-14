org 100h

.stack 100h


.data     

msg db "hello world$" 
nl db 10, 13, '$'
msg1 db "By bye wold$" 
letter db ?

.code

mov ah, 1
int 21h
mov letter, al

mov ah, 9
lea dx, nl
int 21h

mov ah, 2
mov dl, letter
int 21h 

ret




