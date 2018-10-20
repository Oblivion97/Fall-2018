org 100h

.stack 100h
.data     

_name db "HM Mahmudul Hasan$" 
_studentid db "011 152 041$"
_school db "Chandpur M A Khaleque Memorial High School$"
_college db "Ideal College, Dhanmondi, Dhaka$"
_nl db 10, 13, '$'
.code

mov ah, 9
mov dx, offset _name 
int 21h    
         
mov ah, 9
lea dx, _nl
int 21h

mov ah, 9
mov dx, offset _studentid
int 21h    
         
mov ah, 9
lea dx, _nl
int 21h

mov ah, 9
mov dx, offset _school 
int 21h    
         
mov ah, 9
lea dx, _nl
int 21h

mov ah, 9
mov dx, offset _college
int 21h    
         
mov ah, 9
lea dx, _nl
int 21h

ret



