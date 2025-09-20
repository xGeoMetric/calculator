with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Calculator is
   A, B, Result : Integer;
   Op           : Character;
begin
   Put("Masukkan angka pertama: ");
   Get(A);
   Skip_Line;

   Put("Masukkan angka kedua: ");
   Get(B);
   Skip_Line;

   Put("Pilih operasi (+, -, *, /): ");
   Get(Op);
   Skip_Line;

   case Op is
      when '+' => Result := A + B;
      when '-' => Result := A - B;
      when '*' => Result := A * B;
      when '/' =>
         if B = 0 then
            Put_Line("Error: Pembagian dengan nol!");
            return;
         else
            Result := A / B;
         end if;
      when others =>
         Put_Line("Operator tidak dikenali!");
         return;
   end case;

   Put("Hasilnya: ");
   Put_Line(Integer'Image(Result));
end Calculator;
