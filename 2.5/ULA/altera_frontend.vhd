library ieee;
use ieee.std_logic_1164.all;

entity altera_frontend is
	port (
			clk: in std_logic;
			
			SW: in std_logic_vector(15 downto 0);
			A_Button, B_button, S_button, Result_Button: in std_logic;
		
			HEX0, HEX1, HEX2, HEX3: out std_logic_vector(6 downto 0);
			HEX4_state: out std_logic_vector(6 downto 0);
			LEDR : out std_logic_vector(15 downto 0);

			cout : out std_logic
		);
end altera_frontend;

architecture rtl of altera_frontend is
	type state_type is (IDLE, INPUT_A, INPUT_B, INPUT_S, SHOW_RESULT);
	signal estado_atual: state_type := IDLE;
	
	signal A, B : std_logic_vector(15 downto 0) := (others => '0');
	signal S		 : std_logic_vector(2 downto 0) := (others => '0');
	
	signal display_num, selector_display, Result: std_logic_vector(15 downto 0) := (others => '0');
	 
	signal A_button_last, B_button_last, S_button_last, Result_button_last: std_logic := '0';
	
	component hex_to_7seg port (
		num: in std_logic_vector(15 downto 0);
		HEX0: out std_logic_vector(6 downto 0);
		HEX1: out std_logic_vector(6 downto 0); 
		HEX2: out std_logic_vector(6 downto 0);
		HEX3: out std_logic_vector(6 downto 0)
	);
	end component;

	component ula_16b port (
			 A, B					: in std_logic_vector(15 downto 0);
			 M, S1, S0		: in std_logic;
			 Result				: out std_logic_vector(15 downto 0); 
			 Cout			: out std_logic											 
	);
	end component;
begin
		process (SW, A_Button, B_button, S_button, Result_Button)
		begin
				if rising_edge(clk) then
						if A_Button = '0' and A_button_last = '1' then
					A <= SW;
					estado_atual <= INPUT_A;
				elsif B_button = '0' and B_button_last = '1' then
					B <= SW;
					estado_atual <= INPUT_B;
				elsif S_button = '0' and S_button_last = '1' then
					S <= SW(2 downto 0);
					estado_atual <= INPUT_S;
				elsif Result_Button = '0' and Result_button_last = '1' then
					estado_atual <= SHOW_RESULT;
				end if;
				
				A_button_last <= A_Button; 
				B_button_last <= B_button; 
				S_button_last <= S_button;
				Result_button_last <= Result_Button;
				end if;
		end process;



	
		with estado_atual select 
		HEX4_state <= "1111111" when IDLE,					
								"0001000" when INPUT_A,
								"0000011" when INPUT_B,
								"0010010" when INPUT_S,
								"1000000" when SHOW_RESULT;

		selector_display(2 downto 0) <= S;


		with estado_atual select
		display_num <= (others => '0') when IDLE,			
								A when INPUT_A,
								B when INPUT_B,
								selector_display when INPUT_S,
								Result when SHOW_RESULT;


		
		hex_to_7seg_inst: hex_to_7seg port map (display_num, HEX0, HEX1, HEX2, HEX3);
		LEDR <= display_num;

		ula_16b_inst: ula_16b
		 port map(
				M => S(2),
				S1 => S(1),
				S0 => S(0),
				A => A,
				B => B,
				Result => Result,
				Cout => cout
		);

end rtl;
