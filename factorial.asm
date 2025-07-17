extern printf
extern exit

section .data
    fmt db "Factorial: %d", 10, 0

section .text
    global main

main:
    sub rsp, 40

    mov ecx, 5
    call factorial 

    lea rcx, [rel fmt]
    mov edx, eax
    call printf

    xor ecx, ecx 
    call exit 


factorial: 
    push rbp 
    mov rbp, rsp 

    mov eax, 1 

.factorial_loop:
    cmp ecx, 1
    jle .done
    imul eax, ecx 
    dec ecx 
    jmp .factorial_loop 

.done: 
    pop rbp 
    ret 