library ieee;
use ieee.std_logic_1164.all;

entity full_adder16b is
	port (
		A, B   : in std_logic_vector(15 downto 0);
		Cin    : in std_logic;
		Cout   : out std_logic;
		Result : out std_logic_vector(15 downto 0)
	);
end entity full_adder16b;

architecture Structural of full_adder16b is

	signal carry : std_logic_vector(16 downto 0);
	
begin

	carry(0) <= Cin;

	gen_adders: for i in 0 to 15 generate
		adder: entity work.full_adder1b
			port map (
				A => A(i),
				B => B(i),
				Cin => carry(i),
				Result => Result(i),
				Cout => carry(i + 1)
			);
	end generate;

	Cout <= carry(16);
	
end architecture Structural;
