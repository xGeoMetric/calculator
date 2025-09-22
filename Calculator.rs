use std::io;

fn main() {
    println!("=== Kalkulator Sederhana Rust ===");
    println!("Pilih operasi:");
    println!("1. Tambah");
    println!("2. Kurang");
    println!("3. Kali");
    println!("4. Bagi");

    let mut pilihan = String::new();
    io::stdin().read_line(&mut pilihan).expect("Gagal membaca input");
    let pilihan: u32 = match pilihan.trim().parse() {
        Ok(num) => num,
        Err(_) => {
            println!("Input tidak valid!");
            return;
        }
    };

    let (a, b) = input_angka();

    let hasil = match pilihan {
        1 => a + b,
        2 => a - b,
        3 => a * b,
        4 => {
            if b == 0.0 {
                println!("Error: pembagian dengan nol tidak diperbolehkan");
                return;
            }
            a / b
        }
        _ => {
            println!("Pilihan tidak tersedia");
            return;
        }
    };

    println!("Hasil: {} {} {} = {}", a, operator(pilihan), b, hasil);
}

fn input_angka() -> (f64, f64) {
    let mut input = String::new();

    println!("Masukkan angka pertama:");
io::stdin().read_line(&mut input).expect("Gagal membaca input");
    let a: f64 = input.trim().parse().expect("Input harus angka");
    input.clear();

    println!("Masukkan angka kedua:");
    io::stdin().read_line(&mut input).expect("Gagal membaca input");
    let b: f64 = input.trim().parse().expect("Input harus angka");

    (a, b)
}

fn operator(op: u32) -> char {
    match op {
        1 => '+',
        2 => '-',
        3 => '*',
        4 => '/',
        _ => '?',
    }
}
