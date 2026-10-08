[org 0x0100]

jmp start

source: db 'hello'
target: db 0,0,0,0,0

start:
    mov si, 4
    mov di, 0
    mov cx, 5

reverse_loop:
    mov al, [source + si]
    mov [target + di], al
    
    dec si
    inc di
    
    loop reverse_loop

mov ax, 0x4c00
int 0x21