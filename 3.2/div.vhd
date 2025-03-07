library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity div is
    Port (
        clk   : in  STD_LOGIC;
        A, B  : in  STD_LOGIC_VECTOR(15 downto 0);
        count : out STD_LOGIC_VECTOR(15 downto 0)
    );
end div;

architecture Behavioral of div is
    type state_type is (IDLE, ACTIVE);
    signal state     : state_type := IDLE;
    signal current_A : unsigned(15 downto 0);
    signal counter   : unsigned(15 downto 0);
	 signal done 		: STD_LOGIC := '0';
begin

    process(clk)
    begin
        if rising_edge(clk) then
            case state is
                when IDLE =>
                    done <= '0';
                    current_A <= unsigned(A);
                    counter   <= (others => '0');
                    state     <= ACTIVE;

                when ACTIVE =>
                    if unsigned(B) = 0 then
                        done  <= '1';
                        state <= IDLE;
                    else
                        if current_A >= unsigned(B) then
                            current_A <= current_A - unsigned(B);
                            counter   <= counter + 1;
                        else
                            done  <= '1';
                            state <= IDLE;
                        end if;
                    end if;
            end case;
        end if;
    end process;

    with done select
        count <= (others => '0')           when '0',
                 std_logic_vector(counter) when '1';

end Behavioral;
