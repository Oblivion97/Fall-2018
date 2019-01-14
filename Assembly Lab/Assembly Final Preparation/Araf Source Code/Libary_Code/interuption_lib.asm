org 100h

.stack 100h

.data
n db ? 
nam db "Araf Hasan$"

.code 

;mov ah, 0   ;It just terminate a programme
;int 21h 
       
;mov ah, 1  ;Read a charecter with echo
;int 21h
;mov n, al
            
;mov ah, 2  ;Display a single charecter
;mov dl, n
;int 21h

;mov ah, 5  ;Printer Service in DL register to printer
;int 21h


;mov ah, 6  ;Just display the charecter in DL register
;int 21h
;mov dl, n

;mov ah, 7  ;Just wait for a charecter in from standered input and doesn't echo
;int 21h
 
;mov ah, 8  ;Keyboard input without echo (Same as function 'ah, 1' but not echoed)
;int 21h  
             
;mov ah, 9           ;It just display a string untill $ not found
;mov dx, offset nam
;int 21h

mov ah, 10  ;'ah, 10' is just use to take a string input' 

ret                       
