.MODEL SMALL
.STACK 100H
.DATA
    n DW 5        ; Number of elements
    numbers DW 1, 2, 3, 4, 5 ; Example numbers
    sum DW ?      ; Variable to store the sum
.CODE
START:
    MOV AX, @DATA
    MOV DS, AX

    MOV CX, n     ; Load the number of elements into CX (loop counter)
    XOR BX, BX    ; Initialize BX (sum) to 0
    MOV SI, OFFSET numbers ; Load the starting address of the array into SI

    LOOP_START:
    ADD BX, [SI]  ; Add the current number to the sum
    ADD SI, 2     ; Move to the next number (2 bytes for DW)
    LOOP LOOP_START ; Decrement CX and jump back if not zero

    MOV sum, BX   ; Store the final sum

    ; Output the sum
    MOV AH, 02h   ; Function to display a character
    MOV DL, BYTE PTR sum   ; Move the lower byte of sum into DL
    INT 21h       ; Call DOS interrupt to display the character

    ; Exit the program
    MOV AH, 4Ch
    INT 21h
END START