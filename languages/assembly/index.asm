section .data
    message db "Hello, world!", 0xa ; The string and a newline character (0xa)
    length equ $ - message         ; Length of the message

section .text
    global _start                  ; Make the entry point visible to the linker

_start:
    ; syscall write(int fd, const void *buf, size_t count)
    mov rax, 1                     ; System call number for 'write' (1)
    mov rdi, 1                     ; File descriptor 1 is stdout
    mov rsi, message               ; Address of the string to output
    mov rdx, length                ; Number of bytes to write
    syscall                        ; Invoke the kernel system call

    ; syscall exit(int status)
    mov rax, 60                    ; System call number for 'exit' (60)
    xor rdi, rdi                   ; Exit status 0 (success)
    syscall                        ; Invoke the kernel system call
