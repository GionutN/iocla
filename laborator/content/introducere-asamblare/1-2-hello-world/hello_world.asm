%include "printf32.asm"

section .data
    myString: db "Hello, World!", 0
    outString: db "Goodbye, World!", 0

section .text
    global main
    extern printf

main:
    mov ecx, 6                      ; N = valoarea registrului ecx
    mov eax, 1
    mov ebx, 3
    cmp eax, ebx
    jb print                        ; TODO1: eax > ebx?
    ret

print:
    PRINTF32 `%s\n\x0`, myString
    sub ecx, 1                                ; TODO2.2: afisati "Hello, World!" de N ori
    cmp ecx, 0                                ; TODO2.1: afisati "Goodbye, World!"
    jne print
    PRINTF32 `%s\n\x0`, outString

    ret
