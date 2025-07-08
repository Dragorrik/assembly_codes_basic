.model small
.stack 100h
.data
a db "Vagfol: $"
b db "Vagshesh: $"
.code

main proc
    mov ax,@data
    mov ds,ax
    
    mov al,26
    mov ah,0
    mov bl,7
    div bl
    
    mov cl,al
    mov ch,ah
    
    mov ah,9
    lea dx,a
    int 21h
    
    mov ah,2
    mov dl,cl
    add dl,48
    int 21h
    
    mov ah,2
    mov dl,13
    int 21h
    mov dl,10
    int 21h
    
    
    mov ah,9
    lea dx,b
    int 21h
    
    mov ah,2
    mov dl,ch
    add dl,48
    int 21h
    
    mov ah,4ch
    int 21h
    main endp
end main