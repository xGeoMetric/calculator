section .data
    msg1 db "Masukkan angka pertama: ", 0
    msg2 db "Masukkan angka kedua: ", 0
    msg3 db "Hasil penjumlahan: ", 0
    newline db 10, 0

section .bss
    num1 resb 5
    num2 resb 5

section .text
    global _start

_start:
    ; Tampilkan pesan 1
    mov eax, 4
    mov ebx, 1
    mov ecx, msg1
    mov edx, 24
    int 0x80

    ; Input angka pertama
    mov eax, 3
    mov ebx, 0
    mov ecx, num1
    mov edx, 5
    int 0x80

    ; Tampilkan pesan 2
    mov eax, 4
    mov ebx, 1
    mov ecx, msg2
    mov edx, 23
    int 0x80

    ; Input angka kedua
    mov eax, 3
    mov ebx, 0
    mov ecx, num2
    mov edx, 5
    int 0x80

    ; Convert ASCII to integer (num1)
    mov ecx, num1
    call atoi
    mov esi, eax   ; simpan hasil angka pertama

    ; Convert ASCII to integer (num2)
    mov ecx, num2
    call atoi
    add eax, esi   ; jumlahkan kedua angka

    ; Tampilkan hasil
    mov ebx, eax
    call itoa

    ; Print hasil
    mov eax, 4
    mov ebx, 1
    mov ecx, msg3
    mov edx, 21
    int 0x80

    mov eax, 4
    mov ebx, 1
    mov ecx, buffer
    mov edx, 10
    int 0x80

    ; Exit
    mov eax, 1
    xor ebx, ebx
    int 0x80
; Convert ASCII string to integer (ecx = ptr)
atoi:
    xor eax, eax
    xor ebx, ebx
.next:
    mov bl, byte [ecx]
    cmp bl, 10
    je .done
    sub bl, '0'
    imul eax, eax, 10
    add eax, ebx
    inc ecx
    jmp .next
.done:
    ret

; Convert integer to ASCII (ebx = value)
section .bss
    buffer resb 10

itoa:
    mov edi, buffer
    add edi, 9
    mov byte [edi], 10
    dec edi
    mov eax, ebx
.repeat:
    xor edx, edx
    mov ecx, 10
    div ecx
    add dl, '0'
    mov [edi], dl
    dec edi
    test eax, eax
    jnz .repeat
    inc edi
    ret
```

Cara menjalankan:

1. Simpan file sebagai `calculator.asm`
2. Compile:
   ```bash
   nasm -f elf32 calculator.asm -o calculator.o
   ld -m elf_i386 calculator.o -o calculator
   ```
3. Jalankan:
   ```bash
   ./calculator
