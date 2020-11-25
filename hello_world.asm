default rel 
section .data
        digit db 0,10
        name db "123456789",0
; section .bss
;     name resb 16
section .text
        global start
; test_print:
;     mov rax, 0x02000004
;     mov rdi, 1
;     mov rsi, name
;     mov rdx, 5
;     syscall
;     ret

start:
    ;mov rax, 7
    ;call printDigit
    ;call test_print
    mov rax, name
    call print
    mov rax, rbx
    call printDigit

    ; mov rax, 0x02000001
    ; xor rdi, rdi
    mov rax, 0x02000001
    mov rdi, 0
    syscall

print:
    push rax
    mov rbx, 0
printloop:
    inc rax
    inc rbx
    mov cl, [rax]
    cmp cl, 0
    jne printloop

    mov rax, 0x2000004
    mov rdi, 1
    pop rsi
    mov rdx, rbx
    syscall

    ret

printDigit:
    add rax, 48
    add [digit], al
    mov rax, 0x02000004
    mov rdi, 1
    mov rsi, digit
    mov rdx, 2
    syscall
    ret
