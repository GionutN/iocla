; SPDX-License-Identifier: BSD-3-Clause

section .text

global get_max

get_max:
	push ebp
	mov ebp, esp

	; save ebx in callee
	push ebx

	; [ebp+8] is array pointer
	; [ebp+12] is array length
	; [ebp+16] is pointer to position

	mov ebx, [ebp+8]
	mov ecx, [ebp+12]
	xor eax, eax

compare:
	cmp eax, [ebx+ecx*4-4]
	jge check_end
	mov eax, [ebx+ecx*4-4]
	mov edx, dword [ebp + 16]
	mov dword [edx], ecx
	dec dword [edx]
	mov dword [ebp + 16], edx
check_end:
	loopnz compare

	pop ebx

	leave
	ret
