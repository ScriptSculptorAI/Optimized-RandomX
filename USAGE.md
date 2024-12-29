# RandomX Optimized Usage Guide

This guide provides instructions on how to assemble, link, and run the optimized RandomX assembly code. Follow these steps to ensure proper execution and performance testing.

## Prerequisites

- A modern x86_64 processor with support for SIMD instructions.
- An assembler like `nasm` or `yasm`.
- A C or C++ compiler for any additional integration or testing.
- Benchmarking tools like `perf` or Intel VTune for performance analysis.

## Assembly Code

```assembly
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
```

## Instructions

### Assembling the Code

To assemble the code using `nasm`:

```bash
nasm -f elf64 -o randomx.o randomx.asm
```

### Linking the Object File

After assembling, link the object file to create an executable using `ld`:

```bash
ld -o randomx randomx.o
```

### Running the Executable

Execute the compiled program:

```bash
./randomx
```

### Performance Testing

Use `perf` to benchmark the performance:

```bash
perf stat -e cycles,instructions ./randomx
```

Alternatively, use Intel VTune for more detailed performance analysis.

### Randomness and Security Testing

Ensure that the optimizations do not alter the randomness or security properties of RandomX. Use the Diehard tests and the NIST test suite to validate the randomness of the output.

#### Running Diehard Tests

1. Install Dieharder:
    ```bash
    git clone https://github.com/coruus/dieharder.git
    cd dieharder
    ./configure
    make
    sudo make install
    ```

2. Run Diehard tests:
    ```bash
    dieharder -a -g 202 -f randomx_output.bin
    ```

#### Running NIST Test Suite

1. Download the NIST suite:
    Follow the instructions in the [NIST documentation](https://csrc.nist.gov/publications/detail/sp/800-22/rev-1a/final) to download the test suite.

2. Run the tests as per the provided documentation.

## Notes

- Ensure thorough performance testing on the target hardware.
- Over-optimization can lead to larger code size or reduced cache efficiency if not managed carefully.
- Maintain the randomness and security properties of RandomX.

## License

This project is licensed under the MIT License. See the `LICENSE` 