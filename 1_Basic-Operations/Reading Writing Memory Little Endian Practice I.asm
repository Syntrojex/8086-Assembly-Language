; a program to add three numbers directly in memory

[org 0x0100]

mov ax, [num1]		;load num 1 in ax 
mov [num1+6], ax	;write data from ax in number 4
mov ax, [num1+2]	;load num 2 in ax
add [num1+6], ax	;add 2 numbers
mov ax, [num1+4]	;load num 3 in ax
add [num1+6], ax	;add 2 numbers

mov ax, 0x4c00	;terminate the program
int 0x21

num1:	dw 0xabcd, 1, 2, 0	