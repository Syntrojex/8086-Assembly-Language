[org 0x0100]

mov si, 0          ; index = 0

outer:
    mov di, si    
    mov bx, si
    add bx, 2     

inner:
    cmp bx, 12
    jge swap       

    mov ax, [arr+bx]
    cmp ax, [arr+di]
    jle next       

    mov di, bx     

next:
    add bx, 2
    jmp inner

swap:
    mov ax, [arr+si]
    mov dx, [arr+di]

    mov [arr+si], dx
    mov [arr+di], ax

    add si, 2
    cmp si, 10
    jl outer

mov ax, 0x4c00
int 0x21


arr: dw 5, 2, 9, 1, 7, 3