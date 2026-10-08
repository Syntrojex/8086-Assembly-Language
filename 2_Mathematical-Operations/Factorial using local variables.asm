[org 0x0100]

jmp start

num: dw 4
result: dw 0

factorial:
    push bp
    mov bp, sp

    sub sp, 2
    
    push ax
    push cx

    mov cx, [bp+4]
    mov ax, 1
    mov [bp-2], ax

l1:
    mov ax, [bp-2]
    mul cx
    mov [bp-2], ax
    
    loop l1

    mov ax, [bp-2]
    mov [bp+4], ax

    pop cx
    pop ax
    
    add sp, 2
    
    pop bp
    ret

start:
    mov ax, [num]
    push ax

    call factorial

    pop ax
    mov [result], ax

    mov ax, 0x4c00
    int 0x21
