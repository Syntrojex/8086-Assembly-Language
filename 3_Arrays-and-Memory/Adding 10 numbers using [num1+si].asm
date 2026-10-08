; a program to add ten numbers using num1+si

[org 0x0100]

mov si, 0		; initialize index to 0
mov cx, 10		; load total count in cx
mov ax, 0		; initialize sum to 0

l1: 	add ax, [num1+si]		; add ith number in ax; di
		add si, 2		; increment index by 2
		sub cx, 1		; decrement counter by 1
		jnz l1			; JUMP to l1 if ZERO FLAG is not Set
						; Zero flag is set if last arithmetic/logical 
						; operation produces zero in its destination

mov [total], ax		; save sum in total

mov ax, 0x4c00		;terminate the program
int 0x21

num1:	dw 1, 2, 3, 4, 5, 1, 2, 3, 4, 5
total:	dw 0