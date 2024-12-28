# Optimized RandomX Assembly Code

## Overview

This repository houses an optimized version of the RandomX algorithm specifically designed for x86-64 CPUs to enhance cryptocurrency mining performance. Our goal is to leverage CPU capabilities for better efficiency while maintaining the algorithm's ASIC resistance.

## Features

- **Instruction Scheduling** for improved CPU pipelining
- **Branch Prediction Optimization** to minimize stalls
- **SIMD Enhancements** using SSE/AVX for vector operations
- **Memory Access Optimization** for better cache performance
- **Reduced Register Moves** to increase instruction throughput

## Prerequisites

- x86-64 compatible CPU
- NASM or GNU Assembler for compilation
- A linker like `ld` for creating executables

## Usage

### Compilation

Compile the assembly code with:

```sh
nasm -f elf64 optimized_randomx.asm -o optimized_randomx.o
ld optimized_randomx.o -o optimized_randomx
