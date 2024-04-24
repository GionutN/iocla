%include "../utils/printf32.asm"

%define NUM 5

section .text

extern printf
global main
main:
    mov ebp, esp

    ; TODO 1: replace every push by an equivalent sequence of commands (use direct addressing of memory. Hint: esp)
    mov ecx, NUM
push_nums:
    push ecx
    loop push_nums

    push 0
    push "mere"
    push "are "
    push "Ana "

    lea esi, [esp]
    PRINTF32 `%s\n\x0`, esi

    ; TODO 2: print the stack in "address: value" format in the range of [ESP:EBP]
    ; use PRINTF32 macro - see format above
    mov ecx, esp
inspect_stack:
    PRINTF32 `%x: %hhu\n\x0`, ecx, byte [ecx]
    inc ecx
    cmp ecx, ebp
    jb inspect_stack

    ; TODO 3: print the string
    mov ecx, esp
print_string:
    PRINTF32 `%c\x0`, byte [ecx]
    inc ecx
    cmp byte [ecx], 0
    ja print_string

    PRINTF32 `\n\x0`
    ; TODO 4: print the array on the stack, element by element.
    mov esp, ebp
    sub esp, 5
    xor ecx, ecx
    PRINTF32 `%x\n\x0`, esp
print_array:
    PRINTF32 `%d \x0`, dword [esp + 4 * ecx]
    inc ecx
    cmp ecx, NUM
    jb print_array

    ; restore the previous value of the EBP (Base Pointer)
    mov esp, ebp

    ; exit without errors
    xor eax, eax
    ret
