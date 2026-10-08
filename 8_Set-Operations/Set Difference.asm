[org 0x100]

mov si, 0

outer_loop:
mov di, 0

inner_loop:
mov ax, [arrA+si]
mov bx, [arrB+di]
cmp ax, bx
jz match_found

mov [arrC+si], ax
jmp next_element

match_found:
jmp next_element

next_element:
add si, 2
cmp si, 10
jne outer_loop

terminate:
mov ax, 0x4c00
int 0x21

arrA: dw 1, 2, 3, 4, 5
arrB: dw 3, 5, 6
arrC: dw 0, 0, 0
