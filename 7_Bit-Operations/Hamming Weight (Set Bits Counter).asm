[org 0x100]

mov ax, [num]
mov cx, 0

start:
cmp ax, 0
jz save

shr ax, 1
jnc start

inc cx
jmp start

save:
mov [BitCount], cx

terminate:
    mov ax, 0x4c00
    int 0x21

num: dw 0x6F2B
BitCount: dw 0
