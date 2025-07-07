.model small
.stack 256

.data
msgEqual db ' Numbers are equal.$'

.code

main proc

    mov ax, @data
    mov ds, ax

    mov ah,1
    int 21h
    mov bl,al
    
    mov ah,1
    int 21h
    mov bh,al
    
    cmp bl,bh
    jg L1
    je L2
    jmp L3

    L1:
    mov ah,2
    mov dl,bl
    int 21h
    jmp exit

    L2:
    mov ah,9
    lea dx, msgEqual
    int 21h
    jmp exit

    L3:
    mov ah,2
    mov dl,bh
    int 21h
    jmp exit
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main