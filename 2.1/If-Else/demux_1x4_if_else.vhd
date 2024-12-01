library ieee;
use ieee.std_logic_1164.all;

entity demux_1x4_if_else is
	port (
		S0, S1 : in std_logic;
		X 		 : in std_logic;
		Y 		 : out std_logic_vector(3 downto 0)
	);
end entity demux_1x4_if_else;

architecture IfElse of demux_1x4_if_else is
begin

	process(S0, S1, X)
	begin

		Y <= "0000";

		if (S0 = '0' and S1 = '0') then
			Y(3) <= X;
		elsif (S0 = '1' and S1 = '0') then
			Y(2) <= X;
		elsif (S0 = '0' and S1 = '1') then
			Y(1) <= X;
		elsif (S0 <= '1' and S1 = '1') then
			Y(0) <= X;
		end if;

	end process;
	
end architecture IfElse;
