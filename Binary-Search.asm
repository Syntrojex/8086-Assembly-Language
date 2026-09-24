[org 0x0100]

jmp start

data:   dw 2, 5, 8, 12, 16, 23, 38, 56, 72, 91  ; Sorted Array
search: dw 23                                    ; Search Element
found:  dw 0

start:
    mov si, 0           ; Low index = 0
    mov di, 9           ; High index = 9
    mov bx, [search]

binary_search:
    cmp si, di
    jg not_found        ; High ho jaye toh element nahi mila

    mov ax, si
    add ax, di
    shr ax, 1           ; Mid = (Low + High) / 2
    
    mov cx, ax          ; Mid index saved
    shl ax, 1           ; Word offset (Mid * 2)
    mov bp, ax

    cmp bx, [data+bp]
    je is_found
    jl search_left

    ; Search Right
    inc cx
    mov si, cx
    jmp binary_search

search_left:
    dec cx
    mov di, cx
    jmp binary_search

is_found:
    mov ax, 1           ; AX = 1 (Found)
    jmp end_prog

not_found:
    mov ax, 0           ; AX = 0 (Not Found)

end_prog:
    mov [found], ax
    mov ax, 0x4c00
    int 0x21