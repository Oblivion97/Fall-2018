DATA SEGMENT
    MSG1 DB 10,13,'ENTER FIRST STRING :- $'
    MSG2 DB 10,13,'ENTER SECOND STRING :- $'
    MSG3 DB 10,13,'LENGTH OF FIRST STRING IS :- $'  
    MSG4 DB 10,13,'LENGTH OF SECOND STRING IS :- $'
    MSG5 DB 10,13,'CONCATENATED STRING IS :- $' 
   
    P1 LABEL BYTE
    M1 DB 0FFH
    L1 DB ?
    P11 DB 0FFH DUP ('$')
   
    P2 LABEL BYTE
    M2 DB 0FFH
    L2 DB ?
    P22 DB 0FFH DUP ('$')
   
    P3 LABEL BYTE
    M3 DB 0FFH
    L3 DB ?
    P33 DB 0FFH DUP ('$')
DATA ENDS
DISPLAY MACRO MSG
    MOV AH,9
    LEA DX,MSG
    INT 21H
ENDM  
CODE SEGMENT
    ASSUME CS:CODE,DS:DATA
START:
        MOV AX,DATA
        MOV DS,AX                
               
        DISPLAY MSG1
       
        LEA DX,P1
        MOV AH,0AH    
        INT 21H
       
        DISPLAY MSG2
       
        LEA DX,P2
        MOV AH,0AH    
        INT 21H
       
        DISPLAY MSG3
       
        MOV DL,L1
        ADD DL,30H
        MOV AH,2
        INT 21H
       
        DISPLAY MSG4
       
        MOV DL,L2
        ADD DL,30H
        MOV AH,2
        INT 21H
       
        DISPLAY MSG5
               
        LEA SI,P11
        LEA DI,P33
               
        MOV CL,L1
        MOV CH,0
       
COPY1:  MOV AL,[SI]
        MOV [DI],AL
  
        INC DI
        INC SI
        LOOP COPY1
       
        LEA SI,P22
                       
        MOV CL,L2
        MOV CH,0
       
COPY2:  MOV AL,[SI]
        MOV [DI],AL
  
        INC DI
        INC SI
        LOOP COPY2           
                  
        DISPLAY P33
       
        MOV AH,4CH
        INT 21H
CODE ENDS
END START