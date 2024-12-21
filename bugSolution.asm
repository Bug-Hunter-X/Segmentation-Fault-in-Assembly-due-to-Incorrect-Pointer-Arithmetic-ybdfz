; Corrected assembly code to avoid segmentation fault
section .data
    myArray dw 10, 20, 30, 40 ; Example array
    arraySize equ ($ - myArray) / 2 ; Calculate array size

section .text
    global _start

_start:
    ; ... other code ...
    mov ecx, 2 ; Example index
    cmp ecx, arraySize ;Check bounds
    jge out_of_bounds ; Jump to error handling if out of bounds
    mov eax, [myArray + ecx*2] ; Accessing element at correct index
    ; ... rest of the code ...
    jmp exit

out_of_bounds:
    ; Handle out of bounds error (e.g., exit with an error code)
    mov eax, 1 ; sys_exit
    xor ebx, ebx ; exit code 0
    int 0x80

exit:
    mov eax, 1 ; sys_exit
    xor ebx, ebx ; exit code 0
    int 0x80