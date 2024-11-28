library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity HexaTo7Seg is
    Port (
        hex_input : in  STD_LOGIC_VECTOR(15 downto 0);  
        seg_output : out STD_LOGIC_VECTOR(27 downto 0)  
    );
end HexaTo7Seg;

architecture Behavioral of HexaTo7Seg is

    function HexTo7Seg(nibble : STD_LOGIC_VECTOR(3 downto 0)) return STD_LOGIC_VECTOR is
    begin
        case nibble is
            when "0000" => return "1111110"; -- 0
            when "0001" => return "0110000"; -- 1
            when "0010" => return "1101101"; -- 2
            when "0011" => return "1111001"; -- 3
            when "0100" => return "0110011"; -- 4
            when "0101" => return "1011011"; -- 5
            when "0110" => return "1011111"; -- 6
            when "0111" => return "1110000"; -- 7
            when "1000" => return "1111111"; -- 8
            when "1001" => return "1111011"; -- 9
            when "1010" => return "1110111"; -- A
            when "1011" => return "0011111"; -- b
            when "1100" => return "1001110"; -- C
            when "1101" => return "0111101"; -- d
            when "1110" => return "1001111"; -- E
            when "1111" => return "1000111"; -- F
            when others => return "0000000"; -- Desligado
        end case;
    end function;

begin
    process(hex_input)
    begin
        seg_output(27 downto 21) <= HexTo7Seg(hex_input(15 downto 12)); 
        seg_output(20 downto 14) <= HexTo7Seg(hex_input(11 downto 8));  
        seg_output(13 downto 7)  <= HexTo7Seg(hex_input(7 downto 4));   
        seg_output(6 downto 0)   <= HexTo7Seg(hex_input(3 downto 0));   
    end process;

end Behavioral;
