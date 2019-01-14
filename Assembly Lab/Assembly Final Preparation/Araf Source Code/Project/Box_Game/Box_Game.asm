org 100h
.model small
.stack 100h

.data
   
   col dw 35
   row dw 400
   n dw 0
   m dw 0
   valDX dw ?
   scSize dw 0
   
   ;Variables for box moving
   i db 1
   j db 1
   initRow dw 400
   afterOp dw 0
   
   ;Variables for scores
   score db 'Score: 0' 
   
   
.code

jmp Main

drawBorder Proc
    
    mov cx, 30
    mov dx, 30
    
    mov ah, 0Ch  ;Write pixel function
    mov al, 10   ;Set Color 'Light Green'
    
    leftBorder:
        int 10h
        inc dx
        cmp dx, 400
        jle leftBorder
        ;mov dx, 30
    
    bottomBorder:
        int 10h
        inc cx
        cmp cx, 600
        jle bottomBorder
    
    rightBorder:
        int 10h
        dec dx
        cmp dx, 30
        jge rightBorder
        
    upBorder:
        int 10h
        dec cx
        cmp cx, 30
        jge upBorder
        
        mov cx, 500
        mov dx, 30
        
    drwLifeLine:
       
        int 10h
        inc dx
        cmp dx, 400
        jle drwLifeLine
    
            
     ret    
drawBorder endp


scoreBoard proc
     mov cx, 30
     mov dx, 402
     mov scSize, 290
     
     mov ah, 0Ch
     mov al, 14
     
     
     scoreRow:
       scoreColumn:
            int 10h
            inc cx
            cmp cx, 601
            jle scoreColumn
     
     inc dx
     mov cx, scSize
     inc scSize 
     cmp dx, 445
     jle ScoreRow
     
     
     
     mov si, @data  ;http://stanislavs.org/helppc/int_10-13.html
     
     mov ah, 13h
     mov al, 1
     mov bh, 0
     mov bl, 11101010b
     mov cx, 8
     
     mov dh, 26
     mov dl, 52
     mov es, si
     mov bp, offset score
     int 10h
     
     
     ret
    
scoreBoard endp 





drawBox Proc
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
        
        call moveBox        
      
drawBox endp


moveBoxTimer proc
   mov dx, 4246h
   mov cx, 0
   mov ah, 86h
   int 15h 
    
moveBoxTimer endp



moveBox proc
    ;Delete some row from the bottom of the row
    mov dx, initRow
    mov i, 1
    mov j, 1
    
    mov ah, 0Ch
    mov al, 0
    
    ;Deleting Loop
    
    delRow:
       mov cx, 35
       mov j, 0
        delCol:
            int 10h
            inc cx
            inc j
            cmp j, 20
            jle delCol
       
       dec dx
       inc i
       cmp i, 5
       jle delRow
       mov initRow, dx
       
       cmp initRow, 30
       je stop
       
       cmp afterOp, 30
       je delRow
       
     ;Appear some row to the upper side of the box
     mov dx, afterOp
     mov i, 1
     mov j, 1
     
     mov ah, 0Ch
     mov al, 15
     
     ;Appearing Loop
     appRow:
        mov cx, 35
        mov j, 0
        appCol:
            int 10h
            inc cx
            inc j
            cmp j, 20
            jle appCol
        
        dec dx
        inc i
        cmp i, 5
        jle appRow
        mov afterOp, dx
        
        call moveBoxTimer       
    
moveBox endp




stop proc
    mov ah, 1
    int 21h
    
    mov ah, 4ch
    int 21h
    
stop endp 





Main proc
    
    mov dx, @data
    mov ds, dx
    
    ;Set Video Mode
    mov ah, 0      ;int 10, 0   AH = 00
    mov al, 12h    ;            AL = 12h 640X400 color graphics (VGA)
    int 10h        ;Monitor Intruption
    
    
    
    
    call drawBorder
    call scoreBoard
    call drawBox
    call stop
        
main endp

end Main