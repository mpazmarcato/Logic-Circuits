library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity altera_frontend is
    Port (
        clk      : in  STD_LOGIC;
        reset    : in  STD_LOGIC;
        SW       : in  STD_LOGIC_VECTOR(15 downto 0);
        KEY      : in  STD_LOGIC_VECTOR(3 downto 0);
        LEDR     : out STD_LOGIC_VECTOR(15 downto 0);
        LEDG     : out STD_LOGIC;
        HEX      : out STD_LOGIC_VECTOR(6 downto 0)
    );
end entity altera_frontend;

architecture Behavioral of altera_frontend is
    signal write_en  : STD_LOGIC;
    signal read_en   : STD_LOGIC;
    signal addr      : STD_LOGIC_VECTOR(2 downto 0);
    signal data_in   : STD_LOGIC_VECTOR(15 downto 0);
    signal data_out  : STD_LOGIC_VECTOR(15 downto 0);
    signal state_out : STD_LOGIC_VECTOR(1 downto 0);

begin
    banco_reg_inst: entity work.banco_registradores
        port map (
            clk      => clk,
            reset    => reset,
            write_en => write_en,
            read_en  => read_en,
            addr     => addr,
            data_in  => data_in,
            data_out => data_out,
            state_out => state_out
        );

    process(clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                write_en <= '0';
                read_en  <= '0';
                addr     <= (others => '0');
                data_in  <= (others => '0');
            else
                case state_out is
                    when "00" => -- IDLE
                        HEX <= "1111001";
                        write_en <= '0';
                        read_en  <= '0';
                        if KEY(0) = '1' then
                            addr <= SW(2 downto 0);
                            data_in <= SW;
                            write_en <= '1';
                        elsif KEY(1) = '1' then
                            addr <= SW(2 downto 0);
                            read_en <= '1';
                        end if;
                    
                    when "01" => -- READ
                        HEX <= "0000011";
                        LEDR <= data_out;
                        read_en <= '0';
                    
                    when "10" => -- WRITE
                        HEX <= "0001000";
                        write_en <= '0';
                    
                    when others =>
                        HEX <= "1111111";
                end case;
            end if;
        end if;
    end process;

    LEDG <= '1' when state_out /= "00" else '0';

end architecture Behavioral;
