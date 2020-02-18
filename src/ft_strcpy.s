section .text
	global _ft_strcpy

_ft_strcpy:
	xor rcx,rcx
	xor rax,rax
	jmp copy

copy:
	cmp [rsi + rcx], BYTE 0x0
	je end
	mov dl,BYTE [rsi + rcx]
	mov [rdi + rcx],dl
	inc rcx
	jmp copy

end:
	mov dl,BYTE 0x0
	mov BYTE [rdi + rcx],dl
	mov rax,rdi
	ret
