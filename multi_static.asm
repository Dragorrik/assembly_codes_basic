.model small
.stack 100h
.code

main proc
    mov al,4
    mov bl,3
    mul bl
    
    mov ah,2
    mov dl,al
    add dl,48
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main