[org 0x0100]

mov ax, 0
mov cx, [num]

L1:
add ax, [num]
dec cx
jnz L1

mov [square], ax

mov ax, 0x4C00 ; Terminate program
int 0x21

num: dw 5
square: dw 0