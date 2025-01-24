library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity calculator_8bit is
    Port (
        A : in STD_LOGIC_VECTOR(7 downto 0);    -- Operando A
        B : in STD_LOGIC_VECTOR(7 downto 0);    -- Operando B
        OP : in STD_LOGIC;                      -- 0 para soma, 1 para subtração
        S : out STD_LOGIC_VECTOR(7 downto 0);   -- Resultado
        Luz1 : out STD_LOGIC;                   -- Luz para soma
        Luz2 : out STD_LOGIC;                   -- Luz para subtração
        Display : out STD_LOGIC_VECTOR(20 downto 0) -- Dados para 3 displays de 7 segmentos
    );
end calculator_8bit;

architecture Behavioral of calculator_8bit is

    signal B_inverted : STD_LOGIC_VECTOR(7 downto 0);
    signal carry : STD_LOGIC_VECTOR(7 downto 0);
    signal temp_S : STD_LOGIC_VECTOR(7 downto 0); -- Sinal intermediário para resultado
    signal result_bcd : STD_LOGIC_VECTOR(11 downto 0); -- Para exibição em BCD

begin

    -- Inverte B se OP = '1' (realizando o complemento de dois)
    B_inverted <= B xor (OP & OP & OP & OP & OP & OP & OP & OP);

    -- Lógica para definir as luzes de soma e subtração
    Luz1 <= not OP;  -- Acende quando OP = '0' (soma)
    Luz2 <= OP;      -- Acende quando OP = '1' (subtração)

    -- Instâncias dos somadores completos
    process(A, B_inverted, OP)
    begin
        carry(0) <= OP;
        for i in 0 to 7 loop
            temp_S(i) <= A(i) xor B_inverted(i) xor carry(i);
            if i < 7 then
                carry(i+1) <= (A(i) and B_inverted(i)) or (carry(i) and (A(i) xor B_inverted(i)));
            end if;
        end loop;
    end process;

    -- Atualiza a saída S com o valor de temp_S
    S <= temp_S;

    -- Conversão de binário para BCD
    process(temp_S)
        variable bcd : STD_LOGIC_VECTOR(11 downto 0) := (others => '0');
    begin
        bcd := (others => '0'); -- Inicializa a variável
        for i in 0 to 7 loop
            bcd := bcd(10 downto 0) & temp_S(7 - i); -- Desloca e adiciona o bit mais significativo

            -- Ajustes para conversão BCD
            if bcd(3 downto 0) > "0100" then
                bcd(3 downto 0) := bcd(3 downto 0) + "0011"; -- Ajuste para os 4 bits menos significativos
            end if;
            if bcd(7 downto 4) > "0100" then
                bcd(7 downto 4) := bcd(7 downto 4) + "0011"; -- Ajuste para os próximos 4 bits
            end if;
            if bcd(11 downto 8) > "0100" then
                bcd(11 downto 8) := bcd(11 downto 8) + "0011"; -- Ajuste para os 4 bits mais significativos
            end if;
        end loop;
        result_bcd <= bcd; -- Atribuição final do resultado para o sinal result_bcd
    end process;

end Behavioral;
