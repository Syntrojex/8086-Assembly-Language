[org 0x0100]

mov si, 0              ; array index
mov word [sum], 0

next:
    cmp si, 20         
    jge done

    mov ax, [arr+si]   

    mov bx, 0
    mov dx, 1

check:
    cmp bx, ax
    je found            
    jg not_found

    mov cx, bx
    add cx, dx       
    mov bx, dx
    mov dx, cx

    jmp check

found:
    add [sum], ax

not_found:
    add si, 2
    jmp next

done:
    mov ax, 0x4c00
    int 0x21


arr: dw 4, 5, 8, 13, 15, 21, 22, 34, 40, 55
sum: dw 0