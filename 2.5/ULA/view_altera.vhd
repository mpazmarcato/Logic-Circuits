library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity view_altera is
    port (
        -- Board Inputs
        clk     : in std_logic;
        SW      : in std_logic_vector(15 downto 0);  -- Switches on DE2-115
        KEY     : in std_logic_vector(3 downto 0);   -- Pushbuttons 
        
        -- Board Outputs
        HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7 : out std_logic_vector(6 downto 0);
        LEDR    : out std_logic_vector(15 downto 0)  -- LEDs (for debugging)
    );
end entity view_altera;

architecture rtl of view_altera is

    type state_type is (IDLE, INPUT_A, INPUT_B, INPUT_S, RESULT);
    signal state : state_type := IDLE;

    signal A, B                                           : std_logic_vector(15 downto 0) := (others => '0');
    signal M, S1, S0                                      : std_logic := '0';
    signal A_button, B_button, S_button, R_button         : std_logic := '0';
    signal A_button_last, B_button_last, S_button_last, R_button_last : std_logic := '0';

    signal selector_display                               : std_logic_vector(15 downto 0) := (others => '0');
    signal display_num                                    : std_logic_vector(15 downto 0) := (others => '0');
    signal Cout                                           : std_logic;
    signal R                                              : std_logic_vector(15 downto 0) := (others => '0');

begin

    -- Assign buttons
    A_button <= KEY(0);
    B_button <= KEY(1);
    S_button <= KEY(2);
    R_button <= KEY(3);

    process(SW, B_button, S_button, R_button)
    begin
        if rising_edge(clk) then
            if A_button = '0' and A_button_last = '1' then
                A <= SW;
                state <= INPUT_A;
            elsif B_button = '0' and B_button_last = '1' then
                B <= SW;  
                state <= INPUT_B;
            elsif S_button = '0' and S_button_last = '1' then
                M <= SW(2);
                S1 <= SW(1);
                S0 <= SW(0);
                state <= INPUT_S;  
            elsif R_button = '0' and R_button_last = '1' then
                state <= RESULT;
            end if;

            A_button_last <= A_button;
            B_button_last <= B_button;
            S_button_last <= S_button;
            R_button_last <= R_button;
        end if;
    end process;

    -- HEX4 displays current state
    with state select 
        HEX4 <= "1111111" when IDLE,    -- Off
                "0001000" when INPUT_A, -- A
                "1100000" when INPUT_B, -- b
                "0010010" when INPUT_S, -- 5 (represents S)
                "1000000" when RESULT;  -- 0

    selector_display(0) <= S0;
    selector_display(1) <= S1;
    selector_display(2) <= M;

    with state select
        display_num <= (others => '0')  when IDLE,
                       A                when INPUT_A,
                       B                when INPUT_B,
                       selector_display when INPUT_S,
                       R                when RESULT;

    hex_to_7seg_inst: entity work.hex_to_7seg
     port map(
        num => display_num,
        HEX0 => HEX0,
        HEX1 => HEX1,
        HEX2 => HEX2,
        HEX3 => HEX3
    );

    ula_16b_inst: entity work.ula_16b
     port map(
        M => M,
        S1 => S1,
        S0 => S0,
        A => A,
        B => B,
        Result => R,
        Cout => Cout
    );

    -- LEDs display the current number (for debugging)
    LEDR <= display_num;

end architecture rtl;
