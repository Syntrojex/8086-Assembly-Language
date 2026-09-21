; a program to add ten numbers using bx+si

[org 0x0100]

mov bx, num1			; save base address in bx
mov si, 0			; initialize index to 0
mov cx, 5			; load total count in cx
mov ax, 0			; initialize sum to 0

l1: 	add ax, [bx+si]			; add ith number in ax si--> Source Index ; bx+di
		add si, 2		; increment index by 2
		sub cx, 1		; decrement counter by 1
		jnz l1			; JUMP to l1 if ZERO FLAG is not Set
						; Zero flag is set if last arithmetic/logical 
						; operation produces zero in its destination

mov [total], ax		; save sum in total

mov ax, 0x4c00		;terminate the program
int 0x21

num1:	dw 1, 2, 3, 4, 5
total:	dw 0