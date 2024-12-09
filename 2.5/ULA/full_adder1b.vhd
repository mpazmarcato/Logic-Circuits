library ieee;
use ieee.std_logic_1164.all;

entity full_adder1b is
	port (
		A, B, Cin : in std_logic;
		Cout 			: out std_logic;
		Result					: out std_logic
	);
end entity full_adder1b;

architecture Behavioral of full_adder1b is
begin
	
	Result <= A xor B xor Cin; 

	Cout <= (A and B) or (Cin and (A or B));
	
end architecture Behavioral;
