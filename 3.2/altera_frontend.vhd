library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity altera_frontend is
    Port (
        clk  : in STD_LOGIC;
        SW   : in STD_LOGIC_VECTOR(15 downto 0);
        KEY  : in STD_LOGIC_VECTOR(2 downto 0);
        LEDR : out STD_LOGIC_VECTOR(15 downto 0);
        HEX0, 
        HEX1, 
        HEX2, 
        HEX3, 
        HEX4 : out STD_LOGIC_VECTOR(6 downto 0)
    );
end entity altera_frontend;

architecture Behavioral of altera_frontend is
    type state_type is (IDLE, INPUT_A, INPUT_B, SHOW_RESULT);
    signal state         : state_type := IDLE;
    signal 
	  A
    , B
    , display_num
    , result             : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');

    signal A_button
    , B_button
    , result_button
    , A_button_last
    , B_button_last
    , result_button_last : STD_LOGIC := '0';

begin

    median_inst: entity work.median port map(clk, A, B, result);

    A_button      <= KEY(0);
    B_button      <= KEY(1);
    result_button <= KEY(2);

    process(clk)
    begin
        if rising_edge(clk) then
            if A_button = '0' and A_button_last = '1' then
                A     <= SW;
                state <= INPUT_A;
            elsif B_button = '0' and B_button_last = '1' then
                B     <= SW;
                state <= INPUT_B;
            elsif result_button = '0' and result_button_last = '1' then
                state <= SHOW_RESULT;
            end if;
            A_button_last      <= A_Button;
            B_button_last      <= B_button;
            result_button_last <= result_Button; 
        end if;
    end process;
	 
    with state select
        display_num <= (others => '0') when IDLE,
                       A      when INPUT_A,
                       B      when INPUT_B,
                       result when SHOW_RESULT;

    with state  select
        HEX4 <= "1111001" when IDLE,        -- I
                "0001000" when INPUT_A,     -- A
                "0000011" when INPUT_B,     -- b
                "1000000" when SHOW_RESULT; -- 0


   hex_to_7seg_inst: entity work.hex_to_7seg port map (display_num, HEX0, HEX1, HEX2, HEX3);
   LEDR <= display_num;

end architecture Behavioral;
