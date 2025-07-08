.model small
.stack 100h
.code
main proc
    mov ax, 26      ; Dividend and Divisor
    mov bl, 5       ; Dividend stored in ax and
                    ; divisor in bl

    div bl          ; AX / BL
                    ; AX gets divided into two part AH and AL
                    ; Qoutient goes in AH and Remainder in AL by default

    mov dl, al      ; Qoutient Print in Terminal
    add dl, 48      ; Convert to ASCII
    mov ah, 2
    int 21h

    mov dl, ah      ; Remainder Print in Terminal
    add dl, 48      ; Convert to ASCII
    mov ah, 2
    int 21h

main endp
end main