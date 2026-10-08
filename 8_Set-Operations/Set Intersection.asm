[org 0x100]

mov si, 0

outer_loop:
mov di, 0

inner_loop:
mov ax, [arrA+si]
mov bx, [arrB+di]
cmp ax, bx
jz found

not_found:
add di, 2
cmp di, 10
jne inner_loop
jmp next_element

found:
mov [arrC+si], ax

next_element:
add si, 2
cmp si, 10
jne outer_loop

terminate:
mov ax, 0x4c00
int 0x21

arrA: dw 1, 2, 3, 4, 5
arrB: dw 3, 4, 6, 7, 8
arrC: dw 0, 0, 0, 0, 0
