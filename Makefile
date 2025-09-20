
Nama file output
TARGET = calculator

Compiler yang digunakan
CC = gcc

Flag kompilasi
CFLAGS = -Wall -Wextra

File sumber
SRC = Calculator.c

Target default
all: (TARGET)(TARGET): (SRC)(CC) (CFLAGS) -o(TARGET) (SRC)

Membersihkan file hasil kompilasi
clean:
	rm -f(TARGET)
