
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt


;string copy

org 100h
.stack 100h
.data

source db 'hello$'
dest db 5 dup (?)
grab db 'b'

.code

main proc
    mov dx, @data
    mov ds,dx 
    mov es,dx
        
    mov ah,9
    lea dx, source
    int 21h
    
    lea si,source
    lea di,dest
    
    cld  ;clear direction flag
    
    L1:
        lodsb
        
        
        ;mov al, [si] 
        ;mov [di],al
         
        
        stosb
        ;inc si
        ;inc di
        
        cmp al,'$'
        
        jne L1
              
        mov ah,9
        lea dx, dest
        int 21h
    
    exit:
        
    mov ah,4ch
    int 21h
    
endp main
end main




