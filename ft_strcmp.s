
; section .bss
;     name resb 16
section .text
        global _ft_strcmp

_ft_strcmp:
        mov rax, -1
while:
        inc rax
        mov dl, BYTE[rsi+rax]
        mov bl, BYTE[rdi+rax]
        cmp dl, 0
        je end
        cmp bl, 0
        je end
        cmp bl, dl
        je while

end:
        sub bl, dl
        movsx rax, dl
        ret     
; _test_print:
;     mov rax, 0x02000004
;     mov rdi, 1
;     mov rsi, "salah"
;     mov rdx, 5
;     syscall
;     ret

; print_str:
;     mov rax, 0x02000004
;     mov rdi, 1
;     pop rsi
;     mov rdx, rdi
;     ret

; print:
;     mov rdi, name
;     mov rbx, 0
;     ;mov rax, 0
;     ; call ft_strcpy
;     ; ret
; ft_strlen:
;     ;inc rdi
;     inc rax
;     inc rdi
;     inc rbx
;     mov dl, [rdi]
;     mov rax, dl
;     ;mov d, [rdi]
;     cmp BYTE[rdi], 0
;     ;inc rax
;     jne ft_strlen
;     ;mov rax, rdi
;     mov rax, 0x2000004
;     mov rdi, 1
;     pop rsi
;     mov rdx, rbx
;     syscall
;     ret

; ft_strcpy:
;     push rax
    
; while_not_equal_zero:

; printDigit:
;     add rax, 48
;     add [digit], al
;     mov rax, 0x02000004
;     mov rdi, 1
;     mov rsi, digit
;     mov rdx, 2
;     syscall
;     ret
