library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity coffe_machine is
	port (
		buttons    : in std_logic_vector(7 downto 0);
		coffe_out  : out std_logic_vector(7 downto 0);
		error_flag : out std_logic
	);
end entity coffe_machine;

architecture Behavioral of coffe_machine is
begin

	process(buttons)
		variable count : integer := 0;
	begin
		count := 0;
		for i in buttons'range loop
			if buttons(i) = '1' then
				count := count + 1;
			end if;
		end loop;

		if count = 1 then
			error_flag <= '0';
			coffe_out <= buttons;
		else
			error_flag <= '1';
			coffe_out <= (others => '0');
		end if;
	end process;

end architecture Behavioral;
