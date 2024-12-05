library ieee;
use ieee.std_logic_1164.all;

entity logic_component is
	port (
		A, B			: in std_logic_vector(15 downto 0);
		M, S1, S0 : in std_logic;
		Ia, Ib 		: out std_logic_vector(15 downto 0);
		Cin 			: out std_logic
	);
end entity logic_component;

architecture Behavioral of logic_component is

	signal select_signal : std_logic_vector(2 downto 0);
	
begin

	select_signal <= M & S1 & S0;

	process(A, B, M, S1, S0)
	begin
		case select_signal is
			when "000" =>  -- A + B
				Ia <= A;
				Ib <= B;
				Cin <= '0';

			when "001" => -- A - B
				Ia <= A;
				Ib <= not B;
				Cin <= '1';

			when "010" => -- A << 1
				Ia <= A(14 downto 0) & '0';
				Ib <= (others => '0');
				Cin <= '0';

			when "011" => -- A >> 1
				Ia <=  '0' & A(14 downto 0);
				Ib <= (others => '0');
				Cin <= '0';

			when "100" => -- A AND B
				Ia <= A and B;
				Ib <= (others => '0');
				Cin <= '0';

			when "101" => -- A OR B
				Ia <= A or B;
				Ib <= (others => '0');
				Cin <= '0';

			when "110" => -- A XOR B
				Ia <= A xor B; 
				Ib <= (others => '0'); 
				Cin <= '0'; 

			when "111" => -- A XNOR B
				Ia <= A xnor B; 
				Ib <= (others => '0'); 
				Cin <= '0'; 

			when others =>
				Ia <= (others => '0');
				Ib <= (others => '0');
				Cin <= '0';

		end case;
	end process;
end architecture Behavioral;
