[org 0x100]

mov al, [num]

xor al, 0x55

mov [num], al

terminate:
mov ax, 0x4c00
int 0x21

num: db 0xAA