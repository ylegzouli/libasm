section .text
	global _ft_bzero

_ft_bzero:
;	cmp rsi,QWORD 0x0
;	jle end
	xor rcx,rcx
	xor rdx,rdx
	jmp apply
	
apply:
	cmp rdx,rsi
	je end	
	mov [rdi + rdx],BYTE 0x0
	inc rdx
	jmp apply

end:
	ret
