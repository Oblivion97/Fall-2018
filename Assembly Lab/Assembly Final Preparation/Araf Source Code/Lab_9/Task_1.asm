
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt


;string lenght

org 100h
.stack 100h
.data

msg db 'hello world$'
len dw 0

.code

main proc
    mov dx, @data
    mov ds,dx
        
    lea si,msg
    L1:
        mov al,[si]
        cmp al,'$'
        je exit
        
        inc len
        inc si
        
        jmp L1
    
    exit:
        
    mov ah,4ch
    int 21h
    
endp main
end main




