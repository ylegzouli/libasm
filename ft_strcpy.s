section .text
	global _ft_strcpy

_ft_strcpy:
	xor rcx,rcx
	xor rax,rax
	jmp copy

copy:
	cmp [rsi + rcx], BYTE 0x0
	je end
	mov cl,BYTE [rsi + rcx]
	mov BYTE [rdi + rcx],cl
	inc rcx
	jmp copy

end:
	mov cl,BYTE 0x0
	mov BYTE [rdi + rcx],cl
	mov rax,rdi
	ret
