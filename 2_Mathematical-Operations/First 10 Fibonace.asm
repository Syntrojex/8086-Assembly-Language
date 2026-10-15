[org 0x0100]

mov ax, 0  
mov bx, 1 
mov cx, 10 
mov si, 0 

L1:
mov [Fib+si], ax 
add si, 2
mov dx, ax
add ax, bx
mov bx, dx 
dec cx
jnz L1 

mov ax, 0x4C00      ; Program end
int 0x21

Fib: dw 0,0,0,0,0,0,0,0,0,0
