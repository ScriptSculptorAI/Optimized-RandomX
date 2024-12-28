randomx_isn_0:
    ; ISMULH_R r0, r3 - Preload r8 to minimize register moves
    imul r11, r8
    mov r8, rdx  ; Moving rdx to r8

randomx_isn_2:
    ; FADD_R f1, a2 - Early SIMD operation for better pipelining
    addpd xmm1, xmm10  ; Adding packed double-precision floating-point values

randomx_isn_1:
    ; IROR_R r0, r6 - Use smaller register for shift count if possible
    mov cl, r14b  ; Move the lower byte of r14 to cl (smaller register for shift count)
    ror r8, cl  ; Rotate right r8 by the value in cl

randomx_isn_3:
    ; IXOR_M r1, L1[r5+1954652011] - Simplify address calculation
    lea rax, [r13 + 1954652011]  ; Load effective address
    and rax, 16376  ; Mask to ensure address alignment
    xor r9, qword ptr [rsi+rax]  ; XOR r9 with memory content

randomx_isn_4:
    ; FMUL_R e2, a3 - SIMD operation
    mulpd xmm6, xmm11  ; Multiply packed double-precision floating-point values

randomx_isn_5:
    ; FADD_M f0, L2[r0-772804104]
    lea rax, [r8 - 772804104]  ; Load effective address
    and rax, 262136  ; Mask to ensure address alignment
    cvtdq2pd xmm12, qword ptr [rsi+rax]  ; Convert packed doubleword integers to double-precision floating-point values
    addpd xmm0, xmm12  ; Add packed double-precision floating-point values

randomx_isn_6:
    ; IMUL_R r6, r4
    imul r14, r12  ; Multiply r14 by r12

randomx_isn_7:
    ; CBRANCH r5, 1674196118, COND 2 - Direct jump for clarity and speed
    lea r13, [r13 + 1674196118]  ; Load effective address
    test r13, 261120  ; Test specific bits
    jz randomx_isn_0  ; Jump if zero flag is set

randomx_isn_8:
    ; ISWAP_R r7, r6
    xchg r15, r14  ; Exchange r15 and r14

randomx_isn_9:
    ; ISTORE L1[r1-439821682], r3
    lea rax, [r9 - 439821682]  ; Load effective address
    and rax, 16376  ; Mask to ensure address alignment
    mov qword ptr [rsi+rax], r11  ; Store r11 into memory

randomx_isn_10:
    ; IXOR_R r2, r4
    xor r10, r12  ; XOR r10 with r12

randomx_isn_11:
    ; FADD_R f2, a1
    addpd xmm2, xmm9  ; Add packed double-precision floating-point values

randomx_isn_12:
    ; IXOR_M r0, L1[r1+952699079]
    lea rax, [r9 + 952699079]  ; Load effective address
    and rax, 16376  ; Mask to ensure address alignment
    xor r8, qword ptr [rsi+rax]  ; XOR r8 with memory content

randomx_isn_13:
    ; ISMULH_R r5, r2 - Optimize by reducing register moves
    imul r10, r13  ; Multiply r10 by r13
    mov r13, rdx  ; Move rdx to r13

; ... (continuing with similar optimizations)

randomx_isn_255:
    ; CBRANCH r5, 437071043, COND 11
    lea r13, [r13 + 437071043]  ; Load effective address
    test r13, 133693440  ; Test specific bits
    jz randomx_isn_253  ; Jump if zero flag is set

randomx_isn_253:
    ; Placeholder for logic or performance enhancement
    nop  ; No operation
