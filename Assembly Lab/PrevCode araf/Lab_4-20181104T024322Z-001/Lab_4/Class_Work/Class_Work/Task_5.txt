

; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
;rotation 
org 100h
.stack 100h
.data

ones db 0
i db 0

.code
proc main
    mov dx, @data
    mov ds, dx
    
    mov ax,2000
    mov bx,2018
   
    
    mul bx
    
    ;mov cf,1
    mov i,0
   _loop: 
        test dx,1
        jz condition
        inc ones
        condition:
            ror dx,1
            inc i
            cmp i,16
            
            jne _loop
    
    mov i,0      
    
    _loop1:
        test ax,1
        jz condition1
        inc ones
        condition1:
            ror ax,1
            inc i
            cmp i,16
            jne _loop1
            
     
        
    exit:

endp main

end main

