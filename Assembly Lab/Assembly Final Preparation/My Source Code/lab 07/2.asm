
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

;drawing pixel line 

org 100h
.model small
.stack 100h
.data

x dw 100
y dw 100

.code

main proc
    mov dx,@data
    mov ds,dx

    mov ah,0
    mov al,12h
    int 10h
    
    L1:    
        mov ah,0ch
        mov al,15   
        mov bh,0
        mov cx,x ;mov cx,100
        mov dx,y ;mov dx,100
        int 10h
        
        inc x
        cmp x,500
        jl L1
    
    ;AH = 0C
	;AL = color value 
	;BH = page number
	;CX = column number 
	;DX = row number
    
ret
endp main
end main    

;dosbox mechine speed-
;CLTR+f12-increase
;CLTR+f11-decrease


