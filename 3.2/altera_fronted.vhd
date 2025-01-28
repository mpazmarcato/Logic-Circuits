library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity altera_fronted is
    Port (
        clk  : in STD_LOGIC;
        SW   : in STD_LOGIC_VECTOR(15 downto 0);
        KEY  : in STD_LOGIC_VECTOR(3 downto 0);
        LEDR : out STD_LOGIC_VECTOR(15 downto 0);
        LEDG : out STD_LOGIC;
        HEX  : out STD_LOGIC_VECTOR(6 downto 0)
    );
end entity altera_fronted;

architecture Behavioral of altera_fronted is
    type state_type is (IDLE, INPUT_A, INPUT_B, ACTIVE);
    signal state  : state_type := IDLE;
    signal A      : STD_LOGIC_VECTOR(15 downto 0);
    signal B      : STD_LOGIC_VECTOR(15 downto 0);
    signal result : STD_LOGIC_VECTOR(15 downto 0);
    signal start  : STD_LOGIC;
    signal done   : STD_LOGIC;
begin

    median_inst: entity work.median port map(clk, start, A, B, result, done);

    process(clk)
    begin
        if rising_edge(clk) then
            case state is 
                when IDLE =>
                    HEX <= "1111001";
                    start <= '0';
                    if KEY(0) = '1' then
                        state <= INPUT_A;
                    end if;

                when INPUT_A =>
                    HEX <= "0001000";
                    if KEY(0) = '1' then
                        A <= SW;
                        state <= INPUT_B;
                    end if;

                when INPUT_B =>
                    HEX <= "0000011";
                    if KEY(0) = '1' then
                        B <= SW;
                        state <= ACTIVE;
                    end if;

                when ACTIVE =>
                    start <= '1';
                    HEX <= "1000000";
                    if done = '1' then
                        start <= '0';
                        state <= IDLE;
                    end if;
            end case;
        end if;
    end process;

    LEDR <= STD_LOGIC_VECTOR(result);
    LEDG <= done;

end architecture Behavioral;
