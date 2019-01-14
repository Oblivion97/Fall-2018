
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

;pixel print

org 100h
.data
.code

main proc
    mov dx,@data
    mov ds,dx

    mov ah,0
    mov al,12h
    int 10h
    
    
    mov ah,0ch
    mov al,15   
    mov bh,0
    mov cx,500
    mov dx,400
    int 10h
    
    ;AH = 0C
	;AL = color value 
	;BH = page number
	;CX = column number 
	;DX = row number
    
ret
endp main
end main



