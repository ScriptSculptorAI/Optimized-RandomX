```makefile
# Makefile for Optimized RandomX Assembly Code

# Compiler and linker
ASM = nasm
LD = ld

# Compiler and linker flags
ASM_FLAGS = -f elf64
LD_FLAGS =

# Source and target files
SRC = randomx.asm
OBJ = randomx.o
TARGET = randomx

# Default target
all: $(TARGET)

# Rule to build the object file
$(OBJ): $(SRC)
	$(ASM) $(ASM_FLAGS) -o $@ $<

# Rule to link the object file to create the executable
$(TARGET): $(OBJ)
	$(LD) $(LD_FLAGS) -o $@ $<

# Clean up object and executable files
clean:
	rm -f $(OBJ) $(TARGET)

# Run the executable
run: $(TARGET)
	./$(TARGET)

.PHONY: all clean run
```

### Usage Instructions:

1. **Build the Project:**
   ```bash
   make
   ```

2. **Run the Executable:**
   ```bash
   make run
   ```

3. **Clean Up:**
   ```bash
   make clean
   ```