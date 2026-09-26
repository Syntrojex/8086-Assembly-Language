[org 0x0100]

jmp start

data: dw 45, 12, 89, 3, 99, 23, 67, 1, 50, 34
max:  dw 0
min:  dw 0

start:
    mov bx, 0
    mov ax, [data+bx]
    mov cx, [data+bx]
    mov bx, 2 

loop1:
    mov dx, [data+bx]
    
    ; Check for Max
    cmp dx, ax
    jbe check_min
    mov ax, dx

check_min:
    ; Check for Min
    cmp dx, cx
    jae next_elem
    mov cx, dx

next_elem:
    add bx, 2
    cmp bx, 20          ; 10 words = 20 bytes
    jne loop1

    mov [max], ax
    mov [min], cx 

    mov ax, 0x4c00
    int 0x21
