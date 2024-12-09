library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity view_altera is
	port (
		-- Board inputs
		CLK          : in std_logic;
		SW           : in std_logic_vector(15 downto 0);  -- 16 switches for data input
		KEY          : in std_logic_vector(2 downto 0);   -- Keys for controlling steps
		OP_SW        : in std_logic_vector(2 downto 0);   -- For M, S1, S0 operator selection
		-- Board outputs
		HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7 : out std_logic_vector(6 downto 0);
		LEDR         : out std_logic_vector(9 downto 0);  -- Debug LEDs, optional
		LEDG         : out std_logic_vector(7 downto 0)   -- Maybe use LEDG for blink signals
	);
end entity;

architecture Behavioral of view_altera is

	-- Convert the 16-bit value into four hex digits
	-- hex_digits(3 downto 0), hex_digits(7 downto 4), etc.

	-- Example: A function to convert 4 bits to a single 7-seg code
	-- You’ll need a 7-seg decoding function:
	function to_7seg(x : std_logic_vector(3 downto 0)) return std_logic_vector is
		variable seg : std_logic_vector(6 downto 0);
	begin
		case x is
			when "0000" => return "1111110"; -- 0
			when "0001" => return "0110000"; -- 1
			when "0010" => return "1101101"; -- 2
			when "0011" => return "1111001"; -- 3
			when "0100" => return "0110011"; -- 4
			when "0101" => return "1011011"; -- 5
			when "0110" => return "1011111"; -- 6
			when "0111" => return "1110000"; -- 7
			when "1000" => return "1111111"; -- 8
			when "1001" => return "1111011"; -- 9
			when "1010" => return "1110111"; -- A
			when "1011" => return "0011111"; -- b
			when "1100" => return "1001110"; -- C
			when "1101" => return "0111101"; -- d
			when "1110" => return "1001111"; -- E
			when "1111" => return "1000111"; -- F
			when others => return "0000000"; -- Desligado
		end case;
		return seg;
	end function;

	-- Extract hex nibbles
	signal hex0_val, hex1_val, hex2_val, hex3_val : std_logic_vector(3 downto 0);

	-- Internal signals
	signal A_reg, B_reg : std_logic_vector(15 downto 0) := (others => '0');
	signal Result       : std_logic_vector(15 downto 0);
	signal Cout         : std_logic;
	signal M, S1, S0    : std_logic;

	-- State machine for input sequence
	type state_type is (IDLE, ENTER_FIRST, SELECT_OP, ENTER_SECOND, SHOW_RESULT);
	signal current_state, next_state : state_type := IDLE;

	-- Conversion signals
	signal hex_digits : std_logic_vector(15 downto 0);  -- To hold converted digits for display

begin

	-- Map operator selection switches
	M  <= OP_SW(2);
	S1 <= OP_SW(1);
	S0 <= OP_SW(0);

	-- Instantiate the ULA
	U1: entity work.ula_16b
		port map (
			M => M,
			S1 => S1,
			S0 => S0,
			A => A_reg,
			B => B_reg,
			Result => Result,
			Cout => Cout
		);

	------------------------------------------------------------
	-- State Machine to control input and computation flow
	------------------------------------------------------------
	process(CLK)
	begin
		if rising_edge(CLK) then
			current_state <= next_state;
		end if;
	end process;

	process(current_state, KEY, SW)
	begin
		next_state <= current_state; -- default
		case current_state is

			when IDLE =>
				-- Wait for KEY0 to start entering first operand
				if KEY(0) = '0' then
					next_state <= ENTER_FIRST;
				end if;

			when ENTER_FIRST =>
				-- The first operand is continuously read from SW until KEY1 is pressed
				-- to lock in the first operand and move to SELECT_OP state.
				if KEY(1) = '0' then
					next_state <= SELECT_OP;
				end if;

			when SELECT_OP =>
				-- Once the operator is set on OP_SW, pressing KEY1 again (for example) could move on
				if KEY(1) = '0' then
					next_state <= ENTER_SECOND;
				end if;

			when ENTER_SECOND =>
				-- Similarly, wait for KEY2 to lock in second operand and compute
				if KEY(2) = '0' then
					next_state <= SHOW_RESULT;
				end if;

			when SHOW_RESULT =>
				-- After showing result, pressing KEY0 could reset to IDLE
				if KEY(0) = '0' then
					next_state <= IDLE;
				end if;

			when others =>
				next_state <= IDLE;

		end case;
	end process;

	------------------------------------------------------------
	-- Register update based on states
	------------------------------------------------------------
	process(CLK)
	begin
		if rising_edge(CLK) then
			case current_state is
				when IDLE =>
					A_reg <= (others => '0');
					B_reg <= (others => '0');

				when ENTER_FIRST =>
					-- Continuously load A from switches until locked
					A_reg <= SW;

				when SELECT_OP =>
					-- A_reg is fixed now, wait for operator selection (nothing changes)
					null;

				when ENTER_SECOND =>
					-- Continuously load B from switches until locked
					B_reg <= SW;

				when SHOW_RESULT =>
					-- ULA computes automatically since it's combinational with A_reg, B_reg
					-- just show result (no assignment needed here)
					null;

				when others =>
					null;
			end case;
		end if;
	end process;

	------------------------------------------------------------
	-- LED indication or blinking LED to signal operation phases
	------------------------------------------------------------
	-- For example, we can light LEDG(0) when in SELECT_OP, LEDG(1) when about to compute, etc.
	process(current_state)
	begin
			LEDG <= (others => '0'); -- Default value
			if current_state = SELECT_OP then
					LEDG(0) <= '1';
			elsif current_state = SHOW_RESULT then
					LEDG(1) <= '1';
			end if;
	end process;

	------------------------------------------------------------
	-- 7-Segment Display Conversion
	------------------------------------------------------------
	-- Here you need a function or concurrent statements that convert the displayed value
	-- into 7-segment codes. For simplicity, let's say we always display either the current operand
	-- or the result depending on the state.

	-- Decide what to display based on state:
	-- IDLE or ENTER_FIRST -> Display A_reg
	-- SELECT_OP or ENTER_SECOND -> Display B_reg (or show operator)
	-- SHOW_RESULT -> Display Result

	with current_state select
		hex_digits <= A_reg when IDLE | ENTER_FIRST,
					  A_reg when SELECT_OP,   -- or show operator somehow
					  B_reg when ENTER_SECOND,
					  Result when SHOW_RESULT,
					  (others => '0') when others;


	hex0_val <= hex_digits(3 downto 0);
	hex1_val <= hex_digits(7 downto 4);
	hex2_val <= hex_digits(11 downto 8);
	hex3_val <= hex_digits(15 downto 12);

	HEX0 <= to_7seg(hex0_val);
	HEX1 <= to_7seg(hex1_val);
	HEX2 <= to_7seg(hex2_val);
	HEX3 <= to_7seg(hex3_val);

	-- If you have 8 displays (HEX0 to HEX7), you can leave the others blank:
	HEX4 <= "1111111";
	HEX5 <= "1111111";
	HEX6 <= "1111111";
	HEX7 <= "1111111";

	-- LEDR can be used to debug or show intermediate states
	LEDR <= Result(9 downto 0); -- For instance, show the lower 10 bits of result on LEDs

end Behavioral;
