.data
       msgCorrect db "Credentials Correct","$"
       msgBad  db "Credentials BAD","$"
.code
main proc
 
MOV       BL,"d"                  ;Put string in BL to Compare
              MOV       BH,"e"                  ;Put string in BH to compare
              CMP       BH,BL                   ;Compare BH and BL
              JNE        BadCredentials      ;Jump if not equal
 
              MOV AX, SEG msgCorrect   ;Move Segment Number into AX
              MOV DS, AX                       ;Move Segment number into DS
              MOV AH, 09h                      ;Function 09 of INT21,Prnt String
              LEA DX, msgCorrect           ;Load Effective Address of string
              INT 21h                             ;Execute Print String
 
              MOV AH, 4Ch                     ;Function 4C of INT21, exit dos
              INT 21h                             ;Execute Exit Dos
 
BadCredentials:
              ;DO SOMETHING LIKE DISPLAY A BAD LOGIN MESSAGE
               MOV AX, SEG msgBad
               MOV DS, AX
               MOV AH, 09h
               LEA DX, msgBad
               INT 21h
               
               MOV AH, 4Ch   ;Function 4C of INT21, exit dos
               INT 21h   ;Execute Exit Dos
 
main endp
end main