;Colar na entrada padrão
;Hello World!
%include "io.inc"
section .bss
    name resb 100
    nome resb 100
section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    GET_STRING  name, 100   ;GET_STRING data (variable), maxsz (length less than)
    PRINT_STRING name       ;print(name)

    mov eax, 0
    mov [nome+0], eax
    add nome, \0
    PRINT_STRING nome
    ;fim
    xor eax, eax
    ret