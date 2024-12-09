library ieee;
library lib;
use ieee.std_logic_1164.all;

entity ula_16b is
	port (
		M, S1, S0 : in std_logic;
		A, B 			: in std_logic_vector(15 downto 0);
		Result 		: out std_logic_vector(15 downto 0);
		Cout 			: out std_logic
	);
end entity ula_16b;

architecture Structural of ula_16b is

	signal Ia, Ib : std_logic_vector(15 downto 0);
	signal Cin 		: std_logic;

begin
	
	i0 : entity work.logic_component
		port map(
			A => A, B => B,
			M => M, S1 => S1, S0 => S0,
			Ia => Ia, Ib => Ib,
			Cin => Cin
		);

	i1 : entity work.full_adder16b
		port map(
			A => Ia, B => Ib,
			Cin => Cin,
			Cout => Cout,
			Result => Result
		);
	
end architecture Structural;
