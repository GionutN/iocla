%include "printf32.asm"

section .text
    global main
    extern printf

main:
    ;cele doua multimi se gasesc in eax si ebx
    mov eax, 139
    mov ebx, 169
    PRINTF32 `%u\n\x0`, eax ; afiseaza prima multime
    PRINTF32 `%u\n\x0`, ebx ; afiseaza cea de-a doua multime

    ; TODO1: reuniunea a doua multimi
    or eax, ebx
    PRINTF32 `%u\n\x0`, eax

    ; TODO2: adaugarea unui element in multime
    mov ecx, 1
    shl ecx, 9
    or ebx, ecx
    PRINTF32 `%u\n\x0`, ebx

    ; TODO3: intersectia a doua multimi
    mov ecx, eax
    and ecx, ebx
    PRINTF32 `%u\n\x0`, ecx

    ; TODO4: complementul unei multimi
    neg eax
    PRINTF32 `%u\n\x0`, eax
    neg eax

    PRINTF32 `%u\n\x0`, eax
    ; TODO5: eliminarea unui element
    mov ecx, 1
    neg ecx
    and eax, ecx
    PRINTF32 `%u\n\x0`, eax

    ; TODO6: diferenta de multimi EAX-EBX
    mov ecx, ebx
    neg ecx
    and eax, ecx
    PRINTF32 `%u\n\x0`, eax

    xor eax, eax
    ret
