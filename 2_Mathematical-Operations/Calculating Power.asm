[org 0x0100] 

jmp start 

num: dw 2 
power: dw 3 
result: dw 0 

calculate: 
    push bp 
    mov bp, sp 
    push ax 
    push bx 
    push cx

    mov ax, [bp+6]
    mov bx, ax
    mov cx, [bp+4]
    dec cx

l1: 
    mul bx
    loop l1

    mov [result], ax
    
    pop cx
    pop bx 
    pop ax 
    pop bp 
    ret 4 

start: 
    mov ax, [num] 
    push ax 
    mov bx, [power] 
    push bx 
    
    call calculate 
    
mov ax, 0x4c00
int 0x21
