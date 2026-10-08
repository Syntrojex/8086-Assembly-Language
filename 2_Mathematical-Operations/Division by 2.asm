[org 0x100]

mov ax, [num]
shl ax, 1
mov [result], ax

mov ax, [num]
shr ax, 1
mov [result + 2], ax

terminate:
mov ax, 0x4c00
int 0x21

num: dw 12
result: dw 0