org 100h

.stack 100h

.data
   starString db '*$'
   
   stars db 0
   lines db 0
   
   starCount db 5
   lineCount db 5
   
   nl db 10, 13, '$'
   
.code

proc main
    
    outerInit:
        mov lines, 1
    outerCondition: 
        mov dl, lineCount
        cmp lines, dl
        jle outerIter
        jmp outerExit
    
    outerIter:
        innerInit:
            mov stars, 5
        
        innerCondition: 
            mov bl, lines
            cmp stars, bl
            jge innerIter
            jmp innerExit
        
        innerIter:
            lea dx, starString
            mov ah, 9
            int 21h
        
        innerPost:
            sub stars, 1
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
      
endp main
end main
                                                         
                                                         
;Output Pattern
;*****
;****
;***
;**
;*                                   

;for(i=1; i<=5; i++)
    ;for(j=5; j>=i; j--)
        ;printf("*")