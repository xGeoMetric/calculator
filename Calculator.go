package main

import (
    "bufio"
    "fmt"
    "os"
    "strconv"
    "strings"
)

func main() {
    reader := bufio.NewReader(os.Stdin)

    fmt.Println("=== Kalkulator Sederhana Go ===")
    fmt.Println("Pilih operasi:")
    fmt.Println("1. Tambah")
    fmt.Println("2. Kurang")
    fmt.Println("3. Kali")
    fmt.Println("4. Bagi")

    fmt.Print("Masukkan pilihan (1-4): ")
    pilihanStr, _ := reader.ReadString('\n')
    pilihanStr = strings.TrimSpace(pilihanStr)
    pilihan, err := strconv.Atoi(pilihanStr)
    if err != nil || pilihan < 1 || pilihan > 4 {
        fmt.Println("Pilihan tidak valid")
        return
    }

    a := inputAngka(reader, "Masukkan angka pertama: ")
    b := inputAngka(reader, "Masukkan angka kedua: ")

    var hasil float64

    switch pilihan {
    case 1:
        hasil = a + b
    case 2:
        hasil = a - b
    case 3:
        hasil = a * b
    case 4:
        if b == 0 {
            fmt.Println("Error: pembagian dengan nol tidak diperbolehkan")
            return
        }
        hasil = a / b
    }

    fmt.Printf("Hasil: %.2f\n", hasil)
}

func inputAngka(reader *bufio.Reader, prompt string) float64 {
    for {
        fmt.Print(prompt)
input, _ := reader.ReadString('\n')
        input = strings.TrimSpace(input)
        angka, err := strconv.ParseFloat(input, 64)
        if err == nil {
            return angka
        }
        fmt.Println("Input harus angka valid!")
    }
}
