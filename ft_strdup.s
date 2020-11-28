			section	.text
			global	_ft_strdup
			extern	_malloc
            extern  ___error

; delete RDX, RCX, RAX and everything that malloc destroy

_ft_strdup:									; rdi = src
			cmp		rdi, 0
			jc      exit					; src is NULL
len_start:
			xor		rcx, rcx				; i = 0
			jmp		len_compare
len_increment:
			inc		rcx						; i++
len_compare:
			cmp		BYTE [rdi + rcx], 0		; str[i] == 0
			jne		len_increment
malloc_start:
			inc		rcx						; length++
			push	rdi						; save src
			mov		rdi, rcx
			call	_malloc					; rax = _malloc(length)
			pop		rdi						; restore src
			cmp		rax, 0
            jc      exit			; malloc return NULL
copy_start:
			xor		rcx, rcx				; i = 0
			xor		rdx, rdx				; tmp = 0
			jmp		copy_copy
copy_increment:
			inc		rcx
exit:
            mov         r15, rax            ; save errno
            call        ___error            ; retrieve address to errno
            mov         [rax], r15          ; put errno in return value of __error (pointer to errno)
            mov         rax, -1
            ret
copy_copy:
			mov		dl, BYTE [rdi + rcx]
			mov		BYTE [rax + rcx], dl
			cmp		dl, 0
			jnz		copy_increment
			jmp		return
return:
			ret