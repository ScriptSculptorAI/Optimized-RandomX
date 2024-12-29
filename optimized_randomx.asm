%define CACHE_LINE_SIZE 64
%define ALIGN_16 16
%define MASK_L1 16376
%define MASK_L2 262136

align CACHE_LINE_SIZE
randomx_isn_0:
    imul r11, r8
    mov r8, rdx

align ALIGN_16
randomx_isn_2:
    addpd xmm1, xmm10

align ALIGN_16
randomx_isn_1:
    movzx ecx, r14b
    ror r8, cl

align ALIGN_16
randomx_isn_3:
    lea rax, [r13 + 1954652011]
    and rax, MASK_L1
    xor r9, qword ptr [rsi + rax]
    prefetcht0 [rsi + rax]

align ALIGN_16
randomx_isn_4:
    mulpd xmm6, xmm11

align ALIGN_16
randomx_isn_5:
    lea rax, [r8 - 772804104]
    and rax, MASK_L2
    cvtdq2pd xmm12, qword ptr [rsi + rax]
    addpd xmm0, xmm12
    prefetcht0 [rsi + rax]

align ALIGN_16
randomx_isn_6:
    imul r14, r12

align ALIGN_16
randomx_isn_7:
    lea r13, [r13 + 1674196118]
    test r13, 261120
    jz randomx_isn_0

align ALIGN_16
randomx_isn_8:
    xchg r15, r14

align ALIGN_16
randomx_isn_9:
    lea rax, [r9 - 439821682]
    and rax, MASK_L1
    mov qword ptr [rsi + rax], r11

align ALIGN_16
randomx_isn_10:
    xor r10, r12

align ALIGN_16
randomx_isn_11:
    addpd xmm2, xmm9

align ALIGN_16
randomx_isn_12:
    lea rax, [r9 + 952699079]
    and rax, MASK_L1
    xor r8, qword ptr [rsi + rax]
    prefetcht0 [rsi + rax]

align ALIGN_16
randomx_isn_13:
    imul r10, r13
    mov r13, rdx

align ALIGN_16
randomx_isn_255:
    lea r13, [r13 + 437071043]
    test r13, 133693440
    jz randomx_isn_253

align ALIGN_16
randomx_isn_253:
    nop