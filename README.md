# Optimized RandomX Assembly Code

This repository contains an optimized version of the RandomX algorithm written in assembly language. The code has been carefully optimized for performance while maintaining the security and randomness properties of RandomX.

## Overview

RandomX is a proof-of-work (PoW) algorithm designed for cryptocurrency mining. It is optimized for general-purpose CPUs and is designed to be ASIC-resistant. This assembly version includes various optimizations to improve performance on modern hardware.

## Features

- **Alignment**: Instructions are aligned for better cache utilization and instruction fetch efficiency.
- **SIMD Operations**: Early SIMD operations for better pipelining and throughput.
- **Register Usage**: Efficient use of registers to minimize unnecessary moves and improve performance.
- **Prefetching**: Prefetch instructions are added before memory operations to reduce memory access latency.
- **Effective Address Calculation**: Simplified and optimized address calculations.

## Requirements

- A modern x86_64 processor with support for SIMD instructions.
- An assembler like `nasm` or `yasm`.
- A C or C++ compiler for any additional integration or testing.

## Instructions

### Assembling the Code

To assemble the code, you can use `nasm` or `yasm`. Here is an example command using `nasm`:

```bash
nasm -f elf64 -o randomx.o randomx.asm
```

### Linking the Object File

After assembling, you need to link the object file to create an executable. You can use `ld` for this:

```bash
ld -o randomx randomx.o
```

### Running the Executable

Once you have the executable, you can run it on your system:

```bash
./randomx
```

## Optimizations Applied

- **Cache Line Alignment**: Ensuring instructions are aligned to cache line boundaries for better performance.
- **SIMD Operations**: Using SIMD instructions (e.g., `addpd`, `mulpd`) for vectorized operations.
- **Register Efficiency**: Minimizing register moves and using efficient instructions like `movzx`.
- **Prefetching**: Adding `prefetcht0` instructions before memory operations to reduce latency.
- **Effective Address Calculation**: Simplifying and optimizing address calculations for better performance.

## Notes

- Ensure that these optimizations do not alter the randomness or security properties of RandomX.
- Performance testing on target hardware is essential to verify benefits.
- Over-optimization can lead to larger code size or reduced cache efficiency if not managed carefully.

## License

This project is licensed under the MIT License. See the `LICENSE` file for details.
