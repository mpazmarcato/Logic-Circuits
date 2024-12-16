library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity view_altera is
	port (
		-- Board Inputs
		SW		: in	std_logic_vector(17 downto 0);	-- Switches on DE2-115
		KEY	: in	std_logic_vector(3 downto 0);		-- Pushbuttons 

		-- Board Outputs
		HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7 : out std_logic_vector(6 downto 0);
		LEDR	: out std_logic_vector(17 downto 0)			-- LEDs (for debugging)
		);
end entity view_altera;

architecture rtl of view_altera is

	signal M, S1, S0 : std_logic;
	signal A_16bit	 : std_logic_vector(15 downto 0);
	signal B_16bit	 : std_logic_vector(15 downto 0);
	signal Result		 : std_logic_vector(15 downto 0);
	signal Cout			 : std_logic;

	function hex_to_7seg(input : STD_LOGIC_VECTOR(3 downto 0)) return STD_LOGIC_VECTOR is
	begin
		case input is
				when "0000" => return "1000000"; -- 0
				when "0001" => return "1111001"; -- 1
				when "0010" => return "0100100"; -- 2
				when "0011" => return "0110000"; -- 3
				when "0100" => return "0011001"; -- 4
				when "0101" => return "0010010"; -- 5
				when "0110" => return "0000010"; -- 6
				when "0111" => return "1111000"; -- 7
				when "1000" => return "0000000"; -- 8
				when "1001" => return "0010000"; -- 9
				when "1010" => return "0001000"; -- A
				when "1011" => return "0000011"; -- b
				when "1100" => return "1000110"; -- C
				when "1101" => return "0100001"; -- d
				when "1110" => return "0000110"; -- E
				when "1111" => return "0001110"; -- F
				when others => return "1111111"; -- all off
		end case;
	end function;

begin

	process(KEY, SW)
	begin
		if KEY(3) = '1' then	-- Reset when KEY(3) is pressed
			A_16bit <= (others => '0');
			B_16bit <= (others => '0');
			M				<= '0';
			S1			<= '0';
			S0			<= '0';
		elsif KEY(0) = '1' then
			A_16bit <= SW(15 downto 0); -- Capture A
		elsif KEY(1) = '1' then
			B_16bit <= SW(15 downto 0); -- Capture B
		elsif KEY(2) = '1' then
			S1 <= SW(0); -- Configure ULA control
			S0 <= SW(1);
			M  <= SW(2);
		end if;
	end process;

	u_ula: entity work.ula_16b
		port map(
			M			 => M,
			S1		 => S1,
			S0		 => S0,
			A			 => A_16bit,
			B			 => B_16bit,
			Result => Result,
			Cout	 => Cout
		);

	-- Drive LEDs for debugging
	LEDR <= SW; 

	process(SW, KEY)
	begin
		if KEY(0) = '1' or KEY(1) = '1' or KEY(2) = '1' then
			-- Display ULA result when performing an operation
			HEX0 <= hex_to_7seg(Result(3 downto 0));
			HEX1 <= hex_to_7seg(Result(7 downto 4));
			HEX2 <= hex_to_7seg(Result(11 downto 8));
			HEX3 <= hex_to_7seg(Result(15 downto 12));
		else
			-- Display current switch input by default
			HEX0 <= hex_to_7seg(SW(3 downto 0));
			HEX1 <= hex_to_7seg(SW(7 downto 4));
			HEX2 <= hex_to_7seg(SW(11 downto 8));
			HEX3 <= hex_to_7seg(SW(15 downto 12));
		end if;
	end process;

	-- Turn off unused HEX displays
	HEX4 <= "1111111";
	HEX5 <= "1111111";
	HEX6 <= "1111111";
	HEX7 <= "1111111";

end architecture rtl;
