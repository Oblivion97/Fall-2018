.model small
.stack 100h
.data

left  db 'LEFT BUTTON PRESSED',13,10,'$'
right db 'RIGHT BUTTON PRESSED',13,10,'$'

.code
  mov  ax, @data
  mov  ds, ax

  mov  ax, 0     ;?¦¦ START MOUSE.
  int  33h

  mov  ax, 1     ;?¦¦ DISPLAY MOUSE CURSOR.
  int  33h  

while:  ;?¦¦ REPEAT UNTIL A KEY IS PRESSED.                   
;GET MOUSE STATE.
  mov  ax, 3
  int  33h    ;?¦¦ STATE RETURNS IN BX.
;CHECK LEFT BUTTON STATE.
  mov  ax, bx  ;?¦¦ PRESERVE BX.
  and  ax, 0000000000000001b ;?¦¦ BIT 0 : LEFT BUTTON.
  jz   check_right  ;?¦¦ IF BIT 0 == 0 : NO LEFT BUTTON.
  mov  ah, 9      ;?¦¦ DISPLAY "LEFT BUTTON PRESSED"
  lea  dx, left
  int  21h
check_right:
;CHECK RIGHT BUTTON STATE.
  mov  ax, bx  ;?¦¦ PRESERVE BX.
  and  ax, 0000000000000010b ;?¦¦ BIT 1 : RIGHT BUTTON.
  jz   check_key  ;?¦¦ IF BIT 1 == 0 : NO RIGHT BUTTON.
  mov  ah, 9      ;?¦¦ DISPLAY "RIGHT BUTTON PRESSED"
  lea  dx, right
  int  21h
check_key:
;CHECK IF A KEY WAS PRESSED.
  mov  ah, 0bh
  int  21h                                     
  cmp  al, 0       ;?¦¦ AL==0 : NO KEY.
  jz   while

  mov  ax, 4c00h   ;?¦¦ FINISH PROGRAM.
  int  21h