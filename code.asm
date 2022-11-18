section .text
    global _start
    
_start:
    mov edx , nql
    mov ecx , nq
    mov ebx , 1
    mov eax , 4
    int 0x80
    mov ebx , 0
    int 0x80
    
    mov edx , 5
    mov ecx , name
    mov ebx , 2
    mov eax , 3
    int 80h
    mov ebx , 1
    mov eax , 0
    int 80h
    
    mov edx , aql
    mov ecx , aq
    mov ebx , 1
    mov eax , 4
    int 0x80
    mov ebx , 0
    int 0x80
    
    mov edx , 5
    mov ecx , age
    mov ebx , 2
    mov eax , 3
    int 80h
    mov ebx , 1
    mov eax , 0
    int 80h
    
    mov edx , hql
    mov ecx , hq
    mov ebx , 1
    mov eax , 4
    int 0x80
    mov ebx , 0
    int 0x80
    
    mov edx , 5
    mov ecx , height
    mov ebx , 2
    mov eax , 3
    int 80h
    mov ebx , 1
    mov eax , 0
    
    mov edx , rnl
    mov ecx , rn
    mov ebx , 1
    mov eax , 4
    int 0x80
    mov ebx , 0
    int 0x80
    mov edx , 5
    mov ecx , name
    mov ebx , 1
    mov eax , 4
    int 0x80
    mov ebx , 0
    int 0x80
    
    mov edx , ral
    mov ecx , ra
    mov ebx , 1
    mov eax , 4
    int 0x80
    mov ebx , 0
    int 0x80
    
    mov edx , 5
    mov ecx , age
    mov ebx , 1
    mov eax , 4
    int 0x80
    mov ebx , 1
    int 0x80
    
    mov edx , rhl
    mov ecx , rh
    mov ebx , 1
    mov eax , 4
    int 0x80
    mov ebx , 1
    int 0x80
    
    mov edx , 5
    mov ecx , height
    mov ebx , 1
    mov eax , 4
    int 0x80
    mov ebx , 1
    int 0x80
    
    

section .bss
    name resb 5
    height resb 5
    age resb 5
    
    
section .data
    nq db  "what is ur name?" , 0xa
    nql equ $ - nq
    
    hq db "what is ur height?" , 0xa
    hql equ $ - hq
    
    aq db "what is ur age?" , 0xa
    aql equ $ - aq
    
    rn db "ur name is" , 0xa
    rnl equ $ - rn
    
    ra db "ur age is" , 0xa
    ral equ $ - ra
    
    rh db "ur height is" , 0xa
    rhl equ $ - rh
    
    
    