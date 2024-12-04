library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity deslocador is
    Port (
        E : in STD_LOGIC_VECTOR(7 downto 0);   -- Entrada de 8 bits
        DESLOCA : in STD_LOGIC_VECTOR(1 downto 0); -- Seletor de operação
        S : out STD_LOGIC_VECTOR(7 downto 0)   -- Saída de 8 bits
    );
end deslocador;

architecture Behavioral of deslocador is
begin
    process(E, DESLOCA)
    begin
        case DESLOCA is
            when "00" => 
                -- Carga paralela (mantém a entrada)
                S <= E;
            when "01" => 
                -- Deslocamento para a direita
                S <= '0' & E(7 downto 1);  -- Insere 0 no bit mais significativo
            when "10" => 
                -- Deslocamento para a esquerda
                S <= E(6 downto 0) & '0';  -- Insere 0 no bit menos significativo
            when others => 
                -- Caso não especificado (mantém a entrada por segurança)
                S <= E;
        end case;
    end process;
end Behavioral;
