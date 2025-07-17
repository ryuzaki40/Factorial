# 🧮 Factorial in x86-64 Assembly (Windows)

This project demonstrates how to calculate the factorial of a number using **x86-64 Assembly language** on **Windows**, using the **NASM assembler** and **GCC linker**.

## 📦 What’s Inside

- `factorial.asm` — Assembly code that computes the factorial of a number (currently hardcoded to 5).
- Assembled and linked with NASM and GCC.
- Prints the result using C's `printf`.

## 🛠 Requirements

- [NASM](https://www.nasm.us/)
- [GCC (MinGW-w64)](https://www.mingw-w64.org/)
- Windows PowerShell or CMD

## 🚀 How to Build & Run

```bash
# Assemble the code
nasm -f win64 factorial.asm -o factorial.o

# Link using GCC
gcc -o factorial.exe factorial.o

# Run the executable
./factorial.exe