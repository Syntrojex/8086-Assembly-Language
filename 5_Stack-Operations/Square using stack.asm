[org 0x0100]

jmp start
num: dw 3
result: dw 0

square:
    push bp
    mov bp, sp
    push ax
    mov ax, [bp+4]

    mul ax

    mov [result], ax
    pop ax
    pop bp

    ret


start:
    mov ax , [num]
    push ax
    call square

    pop word [result]

mov ax, 0x4c00
int 0x21