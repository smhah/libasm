
section .data
        message db "Print your name",10
        hello db "Hello "

section .bss
    name resb 16
section .text
        global start
start:
    call    print_your_name
    call    get_name
    call    print_hello
    call    print_name

    mov       rax, 0x02000001
    xor       rdi, rdi
    syscall
 
print_your_name:
    mov       rax, 0x02000004
    mov       rdi, 1
    mov       rsi, message
    mov       rdx, 16
    syscall
    ret

print_hello:
    mov     rax, 0x02000004
    mov     rdi, 1
    mov     rsi, hello
    mov     rdx, 6
    syscall
    ret

print_name:
    mov     rax, 0x02000004
    mov     rdi, 1
    mov     rsi, name
    mov     rdx, 16
    syscall
    ret

get_name:
    mov     rax, 0x02000003
    mov     rdi, 0
    mov     rsi, name
    mov     rdx, 16
    syscall
    ret


