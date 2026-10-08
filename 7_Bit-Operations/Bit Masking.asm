[org 0x100]

mov bx, 15
mov ax, 5
mov dx, 1
mov cx, 0

start:
    shr bx, 1
    jc counter

check_end:
    cmp bx, 0
    jnz start
    jz operation

counter:
    add cx, 1
    jmp check_end

operation:
    shl dx, cl
    dec dx
    xor ax, dx

terminate:
    mov ax, 0x4c00
    int 0x21
