[org 0x0100]

mov si, 0
mov bx, 0
mov cx, 10

L1:
mov ax, [array+si]
cmp ax, 2
jne L2
inc bx

L2:
add si, 2
dec cx
jnz L1



mov [freq], bx

mov ax, 0x4C00 ; Terminate program
int 0x21

array: dw 1,2,3,4,5,6,7,8,9,10
freq: dw 0