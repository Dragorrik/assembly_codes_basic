.model small
.stack 100h
.code
main proc
mov ax, 26 ; Dividend
mov bl, 5   ; Divisor stored in BL

div bl      ; AX / BL, quotient in AL, remainder in AH

mov dl, al  ; Quotient print in terminal
add dl, 48  ; Convert to ASCII
mov ah, 2
int 21h

mov dl, ah  ; Remainder in terminal
add dl, 48
mov ah, 2
int 21h

main endp
end main