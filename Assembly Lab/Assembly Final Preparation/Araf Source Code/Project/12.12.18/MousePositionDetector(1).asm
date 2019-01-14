
;Programme that can detect the row and collumn number of a 
;mouse position and pixel charecterstic of that position.

org 100h

.stack 100h

.model small

.data
    col dw 0   ;horizontal
    row dw 0   ;vertical
    divCol dw 0
    
    initRow dw 155
    afterOp dw 0
    
    color db 0 
    
    i db 1
    j db 1

.code
  
jmp main  
  
  
drawBox proc
    
    mov ah, 0Ch
    mov al, 15 
    
    mov dx, initRow
    
    drawRow:
        mov cx, 35
        mov j, 0
            drawCol:
                
                int 10h
                inc cx
                inc j
                cmp j, 20
                jle drawCol
            
            dec dx
            inc i
            cmp i, 20
            jle drawRow
            
            mov afterOp, dx
            
            ret
drawBox endp

        


main proc
    mov dx, @data
    mov ds, dx
    
    
    mov ah, 0
    mov al, 12h
    int 10h
    
    call drawBox
    
    L1:
        mov ax, 3
        int 33h
        
        cmp bx, 0
        jg L2
        jmp L1
    
    L2:
        mov col, cx
        mov row, dx
        
        ;cmp row, 150
        ;jge L3
    
        ;jmp L1    
    
   ; L3:
        mov ax, col
        mov bx, 2
        mov dx, 0
        div bx
        mov divCol, ax
    
        mov ah, 0Dh
        mov bh, 0
        mov cx, divCol
        mov dx, row
        int 10h
        
        cmp al, 15
        je L3
        
        mov dl, 'B'
        mov ah, 2
        int 21h
        jmp L1
      
      L3:
        mov dl, 'W'
        mov ah, 2
        int 21h
        jmp L1
        
        
        
        ;mov ah, 0Dh
;        mov bh, 0
;        mov cx, 36
;        mov dx, 156
;        int 10h
;        
;        mov ah, 0Ch
;        mov cx, 36
;        mov dx, 145
;        int 10h 
    
    
    main endp
end main
