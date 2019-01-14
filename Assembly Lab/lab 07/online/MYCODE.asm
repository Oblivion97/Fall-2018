
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

;drawing pixel line 

org 100h
.model small
.stack 100h
.data

x dw 101
y dw 101
a dw 101
b dw 151
e dw 151
f dw 101


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
        
        inc y
        cmp y,200
        jl L1
        
    L2:    
        mov ah,0ch
        mov al,15   
        mov bh,0
        mov cx,a ;mov cx,100
        mov dx,b ;mov dx,100
        int 10h
        
        inc a
        cmp a,150
        jl L2
    L3:    
        mov ah,0ch
        mov al,15   
        mov bh,0
        mov cx,e ;mov cx,100
        mov dx,f ;mov dx,100
        int 10h
        
        inc f
        cmp f,200
        jl L3
        
        mov ah,4ch
        int 21h
        
    
    ;AH = 0C
	;AL = color value 
	;BH = page number
	;CX = column number 
	;DX = row number
    
   endp main
end main    

;dosbox mechine speed-
;CLTR+f12-increase
;CLTR+f11-decrease


