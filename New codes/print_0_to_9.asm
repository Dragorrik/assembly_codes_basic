.model small
.stack 100h
.code

main proc
;We are trying to print 0123456789 in terminal

mov cx, 10 ; CX is counter register, 10 means loop will execute 10 times

mov dx, 48 ; We are starting from 0 so 0's ASCII 48

; We must Use DX here as only DX,DH or DL is used for printing in terminal
; By Default

printloop: ;Use any label you want just like jmp

mov ah,2 ;Logic of printing
int 21h

add dx,1 ; We are increasing it by 1, we can use other intervals as well

loop printloop ; loop label

main endp
end main