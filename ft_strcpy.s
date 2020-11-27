section .text
        global _ft_strcpy

_ft_strcpy:
        mov rax, -1

copy:
        mov BYTE[rdi + rax], dl
while:
        inc rax
        mov dl, BYTE[rsi+rax]
        cmp dl, 0
        jne copy
        mov BYTE[rdi + rax], dl
        mov rax, rdi
        ret   