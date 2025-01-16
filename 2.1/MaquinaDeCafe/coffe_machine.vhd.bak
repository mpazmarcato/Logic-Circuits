library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity coffe_machine is
	port ( bin_buttons : in std_logic_vector(0 to 2);
		coffe_out   : out std_logic_vector(0 to 7)
	);
end entity coffe_machine;

architecture Behavioral of coffe_machine is
begin
	process(bin_buttons)
	begin
		coffe_out <= (others => '0');
		if bin_buttons = "000" then
			coffe_out(7) <= '1';
		else
			coffe_out(to_integer(unsigned(bin_buttons)) - 1) <= '1';
		end if;
	end process;

end architecture Behavioral;
