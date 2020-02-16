section .text
	global _ft_strcmp

_ft_strcmp:
	xor rcx,rcx
	xor rax,rax
	jmp cmp

cmp:
	cmp [rdi + rcx],BYTE 0x0
	je end
	cmp [rsi + rcx],BYTE 0x0
	je end
	mov r9, [rsi + rcx]
	cmp [rdi + rcx],r9
	jne end
	inc rcx
	jmp cmp

end:
	xor cl, cl
	mov cl,BYTE [rdi + rcx]
	mov rdx, [rsi + rcx]
	cmp cl,BYTE 0x0
	je casenull
	xor cl, cl
	mov cl,BYTE [rsi + rcx]
	cmp cl,BYTE 0x0
	je casenull
	cmp [rdi + rcx],rdx
	je equal
	cmp [rdi + rcx],cl
	ja greater
	cmp [rdi + rcx],rdx
	ja greater
	cmp [rdi + rcx],rdx
	jb smaller

test:
	mov rax, 33
	ret

equal:
	mov rax, 0
	ret

smaller:
	mov rax,-1
	ret

greater:
	mov rax,1
	ret

casenull:
	cmp [rdi + rcx], rdx
	je equal
	cmp [rdi + rcx], BYTE 0x0
	je smaller
	cmp [rsi + rcx], BYTE 0x0
	je greater
