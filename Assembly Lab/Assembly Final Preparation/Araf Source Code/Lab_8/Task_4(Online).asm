
org 100h

.stack 100h

.data
  

  matrix db 1,0,0                      ;1,0,0,0,1,0,0,0,1
         db 0,1,0
         db 0,0,1
  m dw 1 ;row                            ;[0][1]
  n dw 1 ;col
   
.code
main proc
    mov dx, @data
    mov ds, dx
    
    ;mov cx, 5
;    lea si, n
   L1: 
    lea si, matrix
    ;add si, m   ;matrix [0][1] [m][n]
    ;Matrix offset:
    ;matrix [i][j] = i[m] * rowsize +j[n]
    
    mov ax, m
    mov bx, 3
    mul bx
    add n, ax
    
    add si, n

    
    
    
    mov dl, [si]
    add dl, '0'
    mov ah, 2

    
    int 21h
    
    
    
    mov ah, 4ch
    int 21h
endp main
end main
