org 100h
.model small
.stack 100h

.data
   
   col dw 35
   row dw 400
   n dw 0
   m dw 0
   valDX dw ? 
   
   ;x dw 0
   
.code

jmp Main

drawBorder Proc
    
    mov cx, 30
    mov dx, 30
    
    mov ah, 0Ch
    mov al, 10
    
    leftBorder:
        inc dx
        int 10h
        cmp dx, 400
        jle leftBorder
        ;mov dx, 30
    
    bottomBorder:
        inc cx
        int 10h
        cmp cx, 600
        jle bottomBorder
    
    rightBorder:
        dec dx
        int 10h
        cmp dx, 30
        jge rightBorder
        
    upBorder:
        dec cx
        int 10h
        cmp cx, 30
        jge upBorder
            
        
        
     ret    
drawBorder endp


drawBox Proc
    
   mov ah, 0Ch
   mov al, 15 
   
   mov n, 0
   ;push row
   L1:
     mov bx, row
     sub bx, n
     mov dx, bx
     mov valDx, dx
     mov m, 0
     L2:
        mov bx, col
        add bx, m
        mov cx, bx
        
        int 10h
        
        inc m
        cmp m, 20
        jl L2
     inc n
     cmp n, 20
     jl L1   
   
   call moveBox  
    
drawBox endp

moveBox proc
  mov ah, 0Ch
  mov al, 0
  mov n, 0
  
  delRow:
    mov bx, row
    sub bx, n
    mov dx, bx
    mov m, 0
    delCol:
        mov bx, col
        add bx, m
        mov cx, bx
        int 10h
        inc m
        cmp m, 20
        jl delCol
    inc n
    cmp n, 5
    jl delRow
    
    
  mov al, 15
  mov n, 0
  sub row, 20
  
  printRow:
    ;mov bx, valDx
    mov bx, row
    sub bx, n
    mov dx, bx
    ;mov row, dx
    mov m, 0
    printCol:
        mov bx, col
        add bx, m
        mov cx, bx
        int 10h
        inc m
        cmp m, 20
        jl printCol
    inc n
    cmp n, 5
    jl printRow
        
    call moveBoxTimer    
          
        
    
   
    
        
moveBox endp


stop proc
    mov ah, 1
    int 21h
    
    mov ah, 4ch
    int 21h
    
stop endp 

moveBoxTimer proc
     
    
    
   mov dx, 4240h
   mov cx, 50  ;microseconds 
   mov ah, 86h
   int 15h 
        
moveBoxTimer endp



Main proc
    
    mov dx, @data
    mov ds, dx
    
    mov ah, 0
    mov al, 12h
    int 10h
    
    
    call drawBorder
    call drawBox
    call stop
    

    
    
main endp

end Main