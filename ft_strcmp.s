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
	cmp [rdi + rcx],[rsi + rcx]
	jne end
	inc rcx
	jmp cmp

end:
	cmp [rsi + rcx],[rsi + rcx]
	jb greater
	mov cl, [rdi + rcx]
	sub cl,[rsi + rcx]
	cmp cl,0
	jne smaller
	ret

; voir retour ft_strcmp ??? -1 / +1 ou diff entre les deux caractere ?????

smaller:
	add rax,1
	ret

greater:
	sub rax,1
	ret
