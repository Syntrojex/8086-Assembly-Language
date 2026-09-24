
[org 0x0100]
    jmp start

num:    dw 5           ; Calculate Factorial of 5
result: dw 0

start:
    mov ax, 1          ; Accumulator = 1
    mov cx, [num]      ; CX = Number

    cmp cx, 0
    je done            ; Factorial(0) = 1

fact_loop:
    mul cx             ; AX = AX * CX (8088 MUL instruction)
    loop fact_loop     ; CX decrements automatically, loops until CX=0

done:
    mov [result], ax   ; Result save karein
    mov ax, 0x4c00
    int 0x21
