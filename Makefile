# Define the assembler and linker
ASM=nasm
LD=ld

# Define the source and output filenames
SRC=optimized_randomx.asm
OBJ=$(SRC:.asm=.o)
TARGET=optimized_randomx

# Default target
all: $(TARGET)

# Assembly rule
$(OBJ): $(SRC)
	$(ASM) -f elf64 $< -o $@

# Linking rule
$(TARGET): $(OBJ)
	$(LD) $< -o $@

# Clean up
clean:
	rm -f $(OBJ) $(TARGET)
