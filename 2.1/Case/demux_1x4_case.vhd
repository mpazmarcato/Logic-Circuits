library ieee;
use ieee.std_logic_1164.all;

entity demux_1x4_case is 
	port ( 
		S0, S1 : in std_logic; 
		X      : in std_logic;
		Y      : out std_logic_vector(3 downto 0)
	);
end entity demux_1x4_case;

architecture CaseWhen of demux_1x4_case is
	signal select_signal : std_logic_vector(1 downto 0);
begin

	select_signal <= S0 & S1; 

	process(select_signal, X)
	begin

		Y <= "0000";

		case select_signal is 
			when "00" => Y(3) <= X;
			when "01" => Y(2) <= X;
			when "10" => Y(1) <= X;
			when "11" => Y(0) <= X;
			when others => Y <= "0000";
		end case;

	end process;
	
end architecture CaseWhen;
