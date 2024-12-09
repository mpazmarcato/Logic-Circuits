library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Entidade da calculadora de 8 bits
entity calculator_8bit is
    Port (
        A : in STD_LOGIC_VECTOR(7 downto 0);    -- Operando A
        B : in STD_LOGIC_VECTOR(7 downto 0);    -- Operando B
        OP : in STD_LOGIC;                      -- 0 para soma, 1 para subtração
        S : out STD_LOGIC_VECTOR(7 downto 0);   -- Resultado
        Luz1 : out STD_LOGIC;                   -- Luz para soma
        Luz2 : out STD_LOGIC;                   -- Luz para subtração
        LCD_Data : out STD_LOGIC_VECTOR(7 downto 0); -- Dados para o LCD
        LCD_Enable : out STD_LOGIC              -- Habilitação para o LCD
    );
end calculator_8bit;

-- Arquitetura
architecture Structural of calculator_8bit is

    signal B_inverted : STD_LOGIC_VECTOR(7 downto 0);
    signal carry : STD_LOGIC_VECTOR(7 downto 0);
    signal result_bcd : STD_LOGIC_VECTOR(11 downto 0); -- Para exibição (máximo de 3 dígitos decimais)

begin
    -- Inverte B se OP = '1' (realizando o complemento de dois)
    B_inverted <= B xor (OP & OP & OP & OP & OP & OP & OP & OP);

    -- Lógica para definir as luzes de soma e subtração
    Luz1 <= not OP;  -- Acende quando OP = '0' (soma)
    Luz2 <= OP;      -- Acende quando OP = '1' (subtração)

    -- Instâncias dos somadores completos
    FA0: entity work.full_adder port map (
        A => A(0),
        B => B_inverted(0),
        Cin => OP,
        Sum => S(0),
        Cout => carry(0)
    );

    FA1: entity work.full_adder port map (
        A => A(1),
        B => B_inverted(1),
        Cin => carry(0),
        Sum => S(1),
        Cout => carry(1)
    );

    FA2: entity work.full_adder port map (
        A => A(2),
        B => B_inverted(2),
        Cin => carry(1),
        Sum => S(2),
        Cout => carry(2)
    );

    FA3: entity work.full_adder port map (
        A => A(3),
        B => B_inverted(3),
        Cin => carry(2),
        Sum => S(3),
        Cout => carry(3)
    );

    FA4: entity work.full_adder port map (
        A => A(4),
        B => B_inverted(4),
        Cin => carry(3),
        Sum => S(4),
        Cout => carry(4)
    );

    FA5: entity work.full_adder port map (
        A => A(5),
        B => B_inverted(5),
        Cin => carry(4),
        Sum => S(5),
        Cout => carry(5)
    );

    FA6: entity work.full_adder port map (
        A => A(6),
        B => B_inverted(6),
        Cin => carry(5),
        Sum => S(6),
        Cout => carry(6)
    );

    FA7: entity work.full_adder port map (
        A => A(7),
        B => B_inverted(7),
        Cin => carry(6),
        Sum => S(7),
        Cout => open   -- Não precisamos usar o carry final
    );

    -- Conversão de binário para BCD
    process(S)
        variable bcd : STD_LOGIC_VECTOR(11 downto 0) := (others => '0');
    begin
        for i in 0 to 7 loop
            bcd := bcd(10 downto 0) & S(7 - i);
            if bcd(3 downto 0) > "0100" then
                bcd(3 downto 0) := bcd(3 downto 0) + "0011";
            end if;
            if bcd(7 downto 4) > "0100" then
                bcd(7 downto 4) := bcd(7 downto 4) + "0011";
            end if;
            if bcd(11 downto 8) > "0100" then
                bcd(11 downto 8) := bcd(11 downto 8) + "0011";
            end if;
        end loop;
        result_bcd <= bcd;
    end process;

    -- Envio para o LCD
    process(result_bcd)
    begin
        LCD_Enable <= '1';
        LCD_Data <= result_bcd(11 downto 8);  -- Envia dígito mais significativo
        wait for 1 ms;                        -- Atraso para exibição
        LCD_Data <= result_bcd(7 downto 4);   -- Envia dígito do meio
        wait for 1 ms;
        LCD_Data <= result_bcd(3 downto 0);   -- Envia dígito menos significativo
        wait for 1 ms;
        LCD_Enable <= '0';
    end process;

end Structural;
