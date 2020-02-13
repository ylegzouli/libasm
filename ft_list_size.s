section .text
	global _ft_list_size

_ft_list_size:
	mov rax,0x0
	cmp rdi,BYTE 0x0
	je end
	inc rax
	jmp count

count:
	cmp [rdi + 8],BYTE 0x0
	je end
	mov rdi,[rdi + 8]
	inc rax
	jmp count

end:
	ret
