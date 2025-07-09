.model small
.stack 100h
.data
leftShift db ?
leftRotate db ?
rightShift db ?
rightRotate db ?

.code

main proc

; Showing results in designated variables

mov ax, @data
mov ds,ax

mov al, 10100101b
rol al,3      ;Three Times rotate left

mov leftRotate, al

mov al, 10100101b
ror al,3      ;Three Times Rotate Right

mov rightRotate, al

mov al, 10100101b
shl al,3      ;Three Times Left Shift

mov leftShift, al

mov al, 10100101b
shr al,3      ;Three Times Right Shift|

mov rightShift, al

main endp
end main