.model small
.stack 100h

.data
    _name db "HM Mahmudul Hasan Hredoy $"
    id db 10,13,"011 152 042 $"
    uniName db 10,13,"United International University $"
   
    _name1 db "Kamal $"
    id1 db 10,13,"011 152 134 $"
    uniName1 db 10,13,"United International University $"


.code
main proc
    mov ax,@data
    mov ds,ax
    
    lea dx,_name
    mov ah,9
    int 21h

    lea dx,id
    mov ah,9
    int 21h
    
    lea dx,uniName
    mov ah,9
    int 21h
    
    lea dx,_name1
    mov ah,9
    int 21h

    lea dx,id1
    mov ah,9
    int 21h
    
    lea dx,uniName1
    mov ah,9
    int 21h
    
    
    main endp
end main