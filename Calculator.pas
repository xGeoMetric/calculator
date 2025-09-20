program Kalkulator;

uses crt;

var
  a, b, hasil: Real;
  operasi: Char;

begin
  clrscr;
  writeln('=== Kalkulator Sederhana ===');
  write('Masukkan angka pertama: ');
  readln(a);
  write('Masukkan operasi (+, -, *, /): ');
  readln(operasi);
  write('Masukkan angka kedua: ');
  readln(b);

  case operasi of
    '+': hasil := a + b;
    '-': hasil := a - b;
    '*': hasil := a * b;
    '/': 
      if b <> 0 then
        hasil := a / b
      else
      begin
        writeln('Error: Pembagian dengan nol!');
        halt;
      end;
  else
    begin
      writeln('Operasi tidak dikenal.');
      halt;
    end;
  end;

  writeln('Hasil: ', hasil:0:2);
  readln;
end.
