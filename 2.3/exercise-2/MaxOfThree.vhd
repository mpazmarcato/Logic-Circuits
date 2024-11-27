library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity MaxOfThree is
    Port (
        A : in STD_LOGIC_VECTOR(7 downto 0); 
        B : in STD_LOGIC_VECTOR(7 downto 0); 
        C : in STD_LOGIC_VECTOR(7 downto 0); 
        Max : out STD_LOGIC_VECTOR(7 downto 0); -- Maior número
        EqualFlag : out STD_LOGIC -- Sinaliza se todos os números são iguais
    );
end MaxOfThree;

architecture Behavioral of MaxOfThree is
begin
    process (A, B, C)
    begin
        -- Inicializa o maior número como A
        if (A >= B) and (A >= C) then
            Max <= A;
        elsif (B >= A) and (B >= C) then
            Max <= B;
        else
            Max <= C;
        end if;

        -- Verifica se todos os números são iguais
        if (A = B) and (B = C) then
            EqualFlag <= '1';
        else
            EqualFlag <= '0';
        end if;
    end process;
end Behavioral;
