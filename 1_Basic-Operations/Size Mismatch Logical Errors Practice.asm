; a program to add three numbers directly in memory

[org 0x0100]

mov al, [num1]		
mov [num1+6], ax	
mov ax, [num1+1]	
add [num1+6], al	
mov ax, [num1+4]	
add [num1+6], ah	

mov ax, 0x4c00	;terminate the program
int 0x21

num1:	dw 0xabcd, 0x1234, 0x279A, 0	