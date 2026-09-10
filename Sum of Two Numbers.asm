; a program to add ten numbers using bx+si

[org 0x0100]

mov ax, 5
mov bx, 10		

add ax, bx

mov ax, 0x4c00		;terminate the program
int 0x21