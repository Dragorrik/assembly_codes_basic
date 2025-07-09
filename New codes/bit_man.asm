.model small
.stack 100h
.data
inputBin db 10101101b ; binary number to shift
initial_mask db 00000001b ; to store shifted result
shifted_mask db ?
msg1 db 'Enter the bit to specify (1-8): $'
set_bit db ?
clear_bit db ?
toggle_bit db ?

.code
main proc

mov ax, @data
mov ds, ax

lea dx, msg1
mov ah, 09H
int 21H

mov ah, 1
int 21H

sub al, 48
sub al, 1

mov cl, al

mov al, initial_mask
shl al, cl

mov shifted_mask, al

mov bl, inputBin
or al, bl
mov set_bit, al

mov al, shifted_mask
not al
and al, bl
mov clear_bit, al
mov al, shifted_mask

xor al, bl
mov toggle_bit, al

main endp
end main