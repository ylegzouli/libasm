section.text:
	global _ft_strlen

_ft_strlen:
	xor rax, rax

start:
	cmp [rdi + rax],BYTE 0x0
	je end
	inc rax
	jmp start

end:
	ret
