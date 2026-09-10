[org 0x0100]

mov ax, 5   ;AX = 5
mov bx, 15  ;BX = 15
mov cx, 25  ;CX = 25

mov dx, ax  ;Moving AX to temporrary DX
mov ax, bx  ;moving bx into ax
mov bx, cx  ;moving cx to bx
mov cx, dx  ;moving ax to cx using temporrary dx register

;Program terminate
mov ax, 0x4c00 
int 0x21