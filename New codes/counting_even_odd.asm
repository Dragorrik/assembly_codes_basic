.model small
.stack 100h
.data
msg_1 db "Even Number: $"
msg_2 db "Odd Number: $"
arr db 11,25,15,7,29,33,16,9,1,5
len db 10
even_count db 0
odd_count db 0

.code
main proc

mov ax,@data
mov ds, ax

mov si , 0
mov cx , 10


next_element:

mov al , arr[si]
and al, 1
jz is_even
jnz is_odd

is_odd:

inc odd_count
jmp skip_even

is_even:

inc even_count

skip_even:
inc si
loop next_element


;Display Results in Terminal with messages

mov ah,9
lea dx,msg_1
int 21h

mov dl,even_count
add dl,48
mov ah,2
int 21h

mov dl,10
mov ah,2
int 21h

mov dl,13
mov ah,2
int 21h

mov ah,9
lea dx,msg_2
int 21h

mov dl,odd_count
add dl,48
mov ah,2
int 21h

main endp
end main