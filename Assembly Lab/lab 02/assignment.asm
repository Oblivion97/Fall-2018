org 100h

.stack 100h
.data     

_name db "HM Mahmudul Hasan$" 
_studentid db "011 152 041$"
_school db "Chandpur M A Khaleque Memorial High School$"
_college db "Ideal College, Dhanmondi, Dhaka$"
_msg db "press any key to continue....$"
_nl db 10, 13, '$'
.code

;load effective address.=lea

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

;print msg
lea dx,_msg
mov ah,9
int 21h

mov ah, 9
lea dx, _nl
int 21h 
    
;wait for input
mov ah,1
int 21h
    
;after getting input go to exit levle
exit:

ret