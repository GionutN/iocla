%include "../utils/printf32.asm"

section .text
extern printf
global main
main:
    push ebp
    mov ebp, esp

    mov eax, 211    ; to be broken down into powers of 2
    mov ebx, 1      ; stores the current power

    ; TODO - print the powers of 2 that generate number stored in EAX

powers:
    mov edx, eax
    and edx, ebx
    jnz afis

continuation:
    shl ebx, 1
    jz stop
    jmp powers

afis:
    PRINTF32 `%d\n\x0`, ebx
    jmp continuation

stop:
    leave
    ret
