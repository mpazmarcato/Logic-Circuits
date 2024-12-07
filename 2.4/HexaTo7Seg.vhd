library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity HexaTo7Seg is
    Port ( b : in STD_LOGIC_VECTOR (15 downto 0);  
           d : out STD_LOGIC_VECTOR (27 downto 0)  
         );
end HexaTo7Seg;

architecture Behavioral of HexaTo7Seg is
begin
    process(b)
        function hex_to_7seg(input : STD_LOGIC_VECTOR(3 downto 0)) return STD_LOGIC_VECTOR is
        begin
            case input is
                when "0000" => return "1000000"; -- 0
                when "0001" => return "1111001"; -- 1
                when "0010" => return "0100100"; -- 2
                when "0011" => return "0110000"; -- 3
                when "0100" => return "0011001"; -- 4
                when "0101" => return "0010010"; -- 5
                when "0110" => return "0000010"; -- 6
                when "0111" => return "1111000"; -- 7
                when "1000" => return "0000000"; -- 8
                when "1001" => return "0010000"; -- 9
                when "1010" => return "0001000"; -- A
                when "1011" => return "0000011"; -- b
                when "1100" => return "1000110"; -- C
                when "1101" => return "0100001"; -- d
                when "1110" => return "0000110"; -- E
                when "1111" => return "0001110"; -- F
                when others => return "1111111"; -- Desligado (todos apagados)
            end case;
        end function;

    begin
        d(6 downto 0)   <= hex_to_7seg(b(3 downto 0));      -- Display 1
        d(13 downto 7)  <= hex_to_7seg(b(7 downto 4));      -- Display 2
        d(20 downto 14) <= hex_to_7seg(b(11 downto 8));     -- Display 3
        d(27 downto 21) <= hex_to_7seg(b(15 downto 12));    -- Display 4
    end process;
end Behavioral;
