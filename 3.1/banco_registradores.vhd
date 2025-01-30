library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL; -- Pacote correto para conversões

entity banco_registradores is
    Port (
        clk       : in  STD_LOGIC;
        reset     : in  STD_LOGIC;
        write_en  : in  STD_LOGIC;
        read_en   : in  STD_LOGIC;
        addr      : in  STD_LOGIC_VECTOR (2 downto 0);
        data_in   : in  STD_LOGIC_VECTOR (15 downto 0);
        data_out  : out STD_LOGIC_VECTOR (15 downto 0);
        state_out : out STD_LOGIC_VECTOR (1 downto 0)
    );
end banco_registradores;

architecture Behavioral of banco_registradores is
    type state_type is (IDLE, READ, WRITE);
    signal state : state_type;
    
    type reg_array is array (0 to 7) of STD_LOGIC_VECTOR(15 downto 0);
    signal registers : reg_array := (others => (others => '0'));

begin
    process (clk, reset)
    begin
        if reset = '1' then
            state <= IDLE;
            registers <= (others => (others => '0'));
        elsif rising_edge(clk) then
            case state is
                when IDLE =>
                    if write_en = '1' then
                        state <= WRITE;
                    elsif read_en = '1' then
                        state <= READ;
                    end if;
                
                when WRITE =>
                    registers(to_integer(unsigned(addr))) <= data_in; -- Conversão correta
                    state <= IDLE;
                
                when READ =>
                    data_out <= registers(to_integer(unsigned(addr))); -- Conversão correta
                    state <= IDLE;
            end case;
        end if;
    end process;
    
    with state select
        state_out <= "00" when IDLE,
                     "01" when READ,
                     "10" when WRITE,
                     "00" when others;
end Behavioral;
