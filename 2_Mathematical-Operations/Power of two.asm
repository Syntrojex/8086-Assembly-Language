[org 0x100]

mov ax, [num]
mov cx, 0 

start:
cmp ax, 0
jz loop1
shr ax, 1
jnc start

loop1:
cmp cx, 1
jnz terminate
mov word [result], 1

terminate:
    mov ax, 0x4c00
    int 0x21

num: dw 8
result: dw 0