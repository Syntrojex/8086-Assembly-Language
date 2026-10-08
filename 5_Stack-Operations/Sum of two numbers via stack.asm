[org 0x0100]

jmp start

num1: dw 2
num2: dw 3
result: dw 0

sum:
    push bp
    mov bp, sp
    push ax
    push bx

    mov ax, [bp+6]
    mov bx, [bp+4]

    add ax, bx

    pop bx
    pop ax
    pop bp

    ret 2

start:
    mov ax, [num1]
    push ax
    mov bx, [num2]
    push bx

    call sum

    pop word [result]


mov ax, 0x4c00
int 0x21