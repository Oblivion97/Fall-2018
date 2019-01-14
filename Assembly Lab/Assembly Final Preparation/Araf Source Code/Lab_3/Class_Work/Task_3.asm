org 100h

.stack 100h

.data
   starstring db '*$'
   stars db 0
   starcount db 5
   lines db 0
   linecount db 5
   nl db 10, 13, '$'
.code             
    proc main
        mov bx, @data
        mov ds, bx
        
        outerInit:
            mov lines, 1
        outerCondition:
            mov bl, linecount
            cmp lines, bl
            jle outerIter
            jmp outerExit
        outerIter:    
            mov al, lines
            mov starcount, al
            
            innerInit:
                mov stars, 1
            
            innerCondition:
                mov dl, starcount
                cmp stars, dl
                jle innerIter
                jmp innerExit
            innerIter:
                lea dx, starstring
                mov ah, 9
                int 21h
                ;add starstring, 1
                ;mov dl, starstring
                ;mov ah, 2
                ;int 21h
                
           innerPost:
                add stars, 1
                jmp innerCondition
           innerExit:
           
           mov ah, 9
           lea dx, nl
           int 21h
           
        outerPost:
            add lines, 1
            jmp outerCondition
        outerExit:
        
        mov ah, 4ch
        int 21h
    endp main
  end main
        