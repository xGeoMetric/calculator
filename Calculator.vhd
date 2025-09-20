
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Calculator is
    Port (
        A       : in  unsigned(3 downto 0);
        B       : in  unsigned(3 downto 0);
        Op      : in  std_logic_vector(1 downto 0); -- 00=add, 01=sub, 10=mul, 11=div
        Result  : out unsigned(7 downto 0); -- output 8-bit karena perkalian bisa lebih besar
        Error   : out std_logic -- untuk div by zero
    );
end Calculator;

architecture Behavioral of Calculator is
begin
    process(A, B, Op)
    begin
        Error <= '0';
        case Op is
            when "00" =>  -- tambah
                Result <= resize(A,8) + resize(B,8);
            when "01" =>  -- kurang
                Result <= resize(A,8) - resize(B,8);
            when "10" =>  -- kali
                Result <= resize(A,8) * resize(B,8);
            when "11" =>  -- bagi
                if B = 0 then
                    Error <= '1';
                    Result <= (others => '0');
                else
                    Result <= resize(A,8) / resize(B,8);
                end if;
            when others =>
                  Result <= (others => '0');
        end case;
    end process;
end Behavioral;
