section .text
	global _ft_strcmp

_ft_strcmp:
;		push rcx
		mov	rcx, -1

loop:	
		inc	rcx
		mov	al, byte [rdi + rcx]
		mov	bl, byte [rsi + rcx]
		cmp	al, 0
		je	end
		cmp	bl, 0
		je	end
		cmp	al, bl
    	je	loop
		jmp	end

end:
;		pop	rcx
		sub	rax, rbx
		cmp rax, 0
		jg greater
		cmp rax, 0
		jl smaller
		ret

smaller:
		mov rax, -1
		ret
	
greater:
		mov rax, 1
		ret
