[org 0x0100]

mov cx, 6
mov si, 5
mov di, 0

L1:
mov al, [Array1+si]
mov [Array2+di], al
    
dec si
inc di
loop L1  ; CX automatic decrements

mov ax, 0x4C00      ; terminate
int 0x21 

; Arrays declaration
Array1: db 1, 2, 3, 4, 5, 6
Array2: db 0, 0, 0, 0, 0, 0
