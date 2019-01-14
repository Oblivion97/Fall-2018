org 100h

.stack 100h

.data
    starString db '*$'
    
    starCount db 5
    lineCount db 5
    
    stars db 0
    lines db 0
    
    nl db 10, 13, '$'
    
.code

proc main
    
    mov bx, @data
    mov ds, bx
     
     outerInit:
        mov lines, 1
        
     outerCondition:
        mov dl, lineCount
        cmp lines, dl
        jle outerIter
        jmp outerExit
     
     outerIter:
        innerInit:
            mov stars, 1
        innerCondition:
            mov bl, lines
            cmp stars, bl
            jle innerIter
            jmp innerExit
 
        innerIter:
            lea dx, starString
            mov ah, 9
            int 21h
        
        innerPost:
            add stars, 1
            jmp innerCondition
            
        innerExit:
            lea dx, nl
            mov ah, 9
            int 21h
     
     outerPost:
        add lines, 1
        jmp outerCondition
     
     outerExit:
        mov ah, 4ch
        int 21h
        
main endp
end main                     



;xxxxxxxxxxxxxxxxxxx

;Output Pattern

;*
;**
;***
;****
;*****