%include "../utils/printf32.asm"

; https://en.wikibooks.org/wiki/X86_Assembly/Arithmetic

section .data
    num1 db 39
    num2 db 43
    num1_w dw 1349
    num2_w dw 9949
    num1_d dd 134932
    num2_d dd 994912

section .text
extern printf
global main
main:
    push ebp
    mov ebp, esp

    ; Multiplication for db
    xor eax, eax
    mov al, byte [num1]
    mov bl, byte [num2]
    mul bl

    ; Print result in hexa
    PRINTF32 `Rezultatul pentru byte: %d\n\x0`, eax


   ; TODO: Implement multiplication for dw and dd data types.
    xor eax, eax
    mov ax, [num1_w]
    mov bx, [num2_w]
    mul bx
    shl edx, 16
    or dx, ax
    PRINTF32 `Rezultatul pentru word: %d\n\x0`, edx

    xor eax, eax
    mov eax, [num1_d]
    mov ebx, [num2_d]
    mul ebx
    PRINTF32 `Rezultatul pentru double: %d << 32 | %d\n\x0`, edx, eax

    leave
    ret
