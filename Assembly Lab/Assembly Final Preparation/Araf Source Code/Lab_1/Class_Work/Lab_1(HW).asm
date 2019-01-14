org 100h

.stack 100h

.data
nam db "Name: Md. Araf Hasan$"
sch db "School: Palashbari S.M. Pilot High School$"
col db "College: Bogra Cantonment Public School & College$"
id db "ID: 011 152 042$"
by db "Good Bye...!!!$"
ex db "Press any key to Exit$" 
nl db 10, 13, '$'
l db ?


.code
mov ah, 9
mov dx, offset nam
int 21h

mov ah, 9
mov dx, offset nl
int 21h

mov ah, 9
mov dx, offset sch
int 21h 

mov ah, 9
mov dx, offset nl
int 21h

mov ah, 9
mov dx, offset col
int 21h 

mov ah, 9
mov dx, offset nl
int 21h

mov ah, 9
mov dx, offset id
int 21h

mov ah, 9
mov dx, offset nl
int 21h
mov ah, 9
mov dx, offset nl
int 21h

mov ah, 9
mov dx, offset ex
int 21h

mov ah, 9
mov dx, offset nl
int 21h

mov ah, 8            ;It wait for a input but not echo
int 21h
mov l, al

mov ah, 9
mov dx, offset nl
int 21h

mov ah, 9
mov dx, offset by
int 21h


ret