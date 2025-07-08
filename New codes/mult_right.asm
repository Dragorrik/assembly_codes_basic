.model small
.stack 100h
.code

main proc

    mov al, 3       ; Multiplicand
    mov bl, 2       ; Multiplier

    mul bl          ; Multiply BL and store in AL

    mov dl, al      ; Printing in Terminal
    add dl, 48
    mov ah, 2
    int 21h

    ;NB: This code only works when multiplication result is Single Digit
    ;If it is double digit Then the result gets splitted into AH and AL
    ;Then just add the print logic from AH as well

main endp
end main