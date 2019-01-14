
org 100h

.stack 100h

.data
  

  matrix db 1,0,0
         db 0,1,0
         db 0,0,1
  m db 3
  n db 3
   
.code
main proc
    mov dx, @data
    mov ds, dx
    
    ;mov cx, 5
;    lea si, n
    
    lea si, matrix
    add si, 2   ;matrix [0][1] [m][n]
    ;Matrix offset:
    ;matrix [i][j] = i * rowsize +j
    
    
    mov dl, [si]
    add dl, '0'
    mov ah, 2
    int 21h
    
    
    mov ah, 4ch
    int 21h
endp main
end main
