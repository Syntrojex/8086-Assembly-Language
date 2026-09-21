; ex:2.1 - a program to add three numbers using memory variables

[org 0x0100]	;What is this line doing?

mov ax, [num1]	;load num1 in ax
mov bx, [num2]	;load num2 in bx
add ax, bx	;ax = ax + bx
mov bx, [num3]	;load num3 in bx
add ax, bx	;ax = ax + bx
mov [num4], ax	;write sum in num4

mov ax, 0x4c00	;terminate the program
int 0x21

		; data is being stored after code
num1: dw 5	; label num1 is defined as a word (16bits) and 5 will be stored there
num2: dw 10
num3: dw 15
num4: dw 0