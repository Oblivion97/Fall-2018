 .model small

.stack 100h

.data

New_Timer_Vec dw ?
Old_Timer_Vec dw ?
Timer_Flag db 0
Vel_X dw -6
Vel_Y dw -1

DRAW_ROW MACRO X
    Local L1
;Draw a line in row X from column 10 to column 300
    mov ah, 0Ch    ;Draw pixel
    mov al, 1      ;CYAN
    mov cx, 10     ;Column 10
    mov dx, X      ;row X
 L1:
    int 10h
    inc cx         ;next column
    cmp cx, 301    ;Beyond column 300 ?
    jl L1          ;No, repeat
endm

DRAW_COLUMN MACRO Y
    Local L2
;Draw a line in column Y from row 10 to row 189
    mov ah, 0Ch    ;draw pixel
    mov al, 1      ;CYAN
    mov cx, Y      ;column Y
    mov dx, 10     ;row 10
 L2:
    int 10h
    inc dx         ;next row
    cmp dx, 190    ;beyond row 189 ?
    jl L2          ;No, repeat
endm



.code


Set_Display_Mode proc
    mov ah, 0      ;set mode
    mov al, 04h    ;mode 4, 320 X 200 4 color
    int 10h
    mov ah, 0Bh    ;Select palette
    mov bh, 1
    mov bl, 1      ;pallet 1
    int 10h
    mov bh, 0      ;Set background color
    mov bl, 2      ;green
    int 10h
; draw boundary
    DRAW_ROW 10    ;Draw row 10
    DRAW_ROW 189   ;Draw row 189
    DRAW_COLUMN 10 ;Draw column 10
    DRAW_COLUMN 300;Draw column 300
    ret
Set_Display_Mode endp




Display_Ball proc
;Displays ball at colun CX and row DX with color given
;in AL
;input: AL = color of ball
;       CX = Column
;       DX = row

    mov ah, 0Ch   ;Write pixel
    int 10h
    inc cx        ;pixel on next column
    int 10h
    inc dx        ;Down 1 row
    int 10h
    dec cx        ;Previous column
    int 10h
    dec dx        ;Restore DX
    
    ret
Display_Ball endp
 




Timer_Tick proc 
;save registers
    push ds    ;save DS
    push ax
    
    mov ax, seg Timer_Flag  ;get segment of flag
    mov ds, ax              ;put in DS
    mov Timer_Flag, 1       ;set flag
    
    pop ax
    pop ds                  ;restore DS
    iret
Timer_Tick endp             ;End timer routin




Move_Ball proc
;erease ball at current position and display ball at new position
;input: 
;      CX = column of ball position 
;      DX = row of ball position
;erease ball

    mov al, 0          ;color 0 is background color
    call display_Ball  ;erease ball

;get new position    
    add cx, Vel_X
    add dx, Vel_Y

;Check boundary    
    call Check_Boundary

;Wait for 1 timer tick to display ball    
    Test_Timer:
        cmp Timer_Flag, 1  ;Timer ticked ?
        jne Test_Timer     ;No, keep testing
        mov Timer_Flag, 0  ;Yes, reset flag
        mov al, 3          ;white color
        call Display_Ball  ;show ball
        ret
Move_Ball endp

   
   
   

Check_Boundary proc
;Determine if the ball is outside of the screen, if so move it
;back in and change the ball direction
;input: 
;     CX = column of ball position
;     DX = row of ball position
;output:
;     CX = COlumn of ball position
;     DX = row of ball position
;Check column value
    
    cmp cx, 11   ;left of 11 ?
    jg L3        ;no, go check right margin
    mov cx, 11   ;yes, set to 11
    neg Vel_X    ;change direction
    jmp L4       ;go test row boundary
 L3:
    cmp cx, 298  ;Beyond right margin ?
    jl L3        ;no, go test row boundary
    mov cx, 298  ;set column to 298
    neg Vel_X    ;change direction
;Check row value
 L4:
    cmp dx, 11   ;Above top margin ?
    jg L5        ;No, check bottom margin
    mov dx, 11   ;set to 11
    neg Vel_Y    ;Change direction
    jmp done     ;done
 L5:
    cmp dx, 187  ;Bellow bottom margin ?
    jl Done      ;No, done
    mov dx, 187  ;Yes, set to 187
    neg Vel_Y    ;Change direction
 Done:
    ret
Check_Boundary endp




Setup_Int proc 
;Saves old vector and sets new vector
;input:  AL = interrupt number
;        DI = address of buffer for old vector
;        SI = address of buffer containing new vector
;Save old interrupt vector

    mov ah, 35h    ;function 35h, get vector
    int 21h        ;ES:BX = vector
    mov [di], bx   ;save offset
    mov [di+2], es ;save segment
    
;Setup nwe vactor
    mov dx, [si]   ;DX has offset
    push ds        ;save DS
    mov ds, [si+2] ;DS has segment number
    mov ah, 25h    ;function 25h, set vector
    int 21h
    pop ds         ;restore DS
    ret
Setup_Int endp





Main proc
    mov ax, @data
    mov ds, ax      ;initialize DS
    

;Set graphics Mode and Draw Border
    call Set_Display_Mode

;Setup timer interrupt vector    
    mov New_Timer_Vec, offset Timer_Tick ;offset
    mov New_Timer_Vec+2, cs              ;segment
    mov al, 1Ch                          ;interrupt type
    lea di, Old_Timer_Vec                ;DI points to vector buffer
    lea si, New_Timer_Vec                ;SI points to new Vector
    call Setup_Int

;start ball at column =298, row = 100
;For the rest of the program CX will be column position of ball and DX will be row position    
    mov cx, 150
    mov dx, 100
    
    mov al, 3          ;White Ball 
    call Display_Ball
    
;Wait for timer before moving the ball
Test_Timer_1:   
    cmp Timer_Flag, 1  ;Timer ticked ?
    jne Test_Timer_1   ;No, keep testing
    mov Timer_Flag, 0  ;Yes, clear flag
    call Move_Ball     ;Move to new position
    
;Delay 1 timer tick    
 Test_Timer_2:
    cmp Timer_Flag, 1  ;Timer ticked ?
    jne Test_Timer_2   ;No, Keep testing
    mov Timer_Flag, 0  ;Yes, clear flag
    jmp Test_Timer_1   ;Go get next position
   
    
 ;_loop:
;    mov al, 3
;    call Display_Ball
;    mov al, 0
;    call Display_Ball
;    add cx, Vel_X
;    add dx, Vel_Y
;    mov al, 3
;    call Display_Ball    
;  jmp _loop
    

main endp

end Main
