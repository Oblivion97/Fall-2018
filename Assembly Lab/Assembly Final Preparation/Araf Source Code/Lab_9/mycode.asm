
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt


;string copy

org 100h
.stack 100h
.data

source db 'abc$'
dest db 'abc$'
;dest db 5 dup('abce')
;grab db 'b'

.code

main proc
    mov dx, @data
    mov ds,dx
    mov es, dx
        
    lea si,source
    lea di, dest
    cld
    L1:
        
        
        ;lodsb
        
        ;mov [di],  al
        ;inc di
        
        ;mov al, [si] 
        ;inc si
        
        ;stosb
        
        ;lodsb
;        stosb

        ;movsb
        
        
        ;cmpsb
        ;je Equal
        ;cmp si, di
        
        ;cmp al, '$'
        ;jne L1
        
        ;mov ah, 9
;        lea dx, dest
;        int 21h

;     Equal:
;        mov dl, '0'
;        mov ah, 2
;        int 21h
     
     repe cmpsb
     L2:  
       ;mov cx, '3'
        
       
       mov al, [si]
       inc si
       mov bl, [di]
       inc di
       jmp L2
       
       jnz notEqual
       mov dl, '0'
        mov ah, 2
        int 21h 
    
    notEqual:
        mov dl, '1'
        mov ah, 2
        int 21h

            
        
        
     
    
    exit:
        
    mov ah,4ch
    int 21h
    
endp main
end main




