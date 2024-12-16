library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bin_to_bcd is
    port (
        binary_in : in  std_logic_vector(15 downto 0); -- Entrada binária (16 bits)
        bcd_out   : out std_logic_vector(19 downto 0)  -- Saída BCD (5 dígitos, 4 bits cada)
    );
end entity bin_to_bcd;

architecture rtl of bin_to_bcd is
    signal shift_reg : std_logic_vector(19 downto 0); -- 5 dígitos BCD
    signal binary    : std_logic_vector(15 downto 0);
begin
    process(binary_in)
    begin
        -- Inicialize registros
        shift_reg <= (others => '0');
        binary <= binary_in;

        -- Loop para 16 bits
        for i in 15 downto 0 loop
            -- Verifique e ajuste os dígitos BCD (add 3 se >= 5)
            for j in 0 to 4 loop
                if shift_reg(j*4 + 3 downto j*4) >= "0101" then
                    shift_reg(j*4 + 3 downto j*4) <= std_logic_vector(unsigned(shift_reg(j*4 + 3 downto j*4)) + 3);
                end if;
            end loop;

            -- Desloque para a esquerda e insira o próximo bit
            shift_reg <= shift_reg(18 downto 0) & binary(15);
            binary <= binary(14 downto 0) & '0';
        end loop;

        -- Atribua o valor BCD final
        bcd_out <= shift_reg;
    end process;
end architecture rtl;
