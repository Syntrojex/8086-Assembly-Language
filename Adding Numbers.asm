[org 0x0100] 

mov ax, 2
mov bx, 4 
add ax, bx 
mov bx, 6 
add ax, bx
mov bx, 8
add ax, bx

;Program terminate
mov ax, 0x4c00 
int 0x21