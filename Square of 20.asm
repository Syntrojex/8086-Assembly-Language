[org 0x0100] 

mov ax, 0 
mov cx, 20 ; Loop counter = 20 

l1: 
add ax, 20 
sub cx, 1 
jnz l1

mov ax, 0x4c00 
int 0x21