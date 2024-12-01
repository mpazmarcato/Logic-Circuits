jjlibrary ieee;
use ieee.std_logic_1164.all;

entity demux_1x4_when_else is
  port (
    S0, S1 : in std_logic;
    X      : in std_logic;
    Y      : out std_logic_vector(3 downto 0)
  );
end entity demux_1x4_when_else;

architecture whenelse of demux_1x4_when_else is
begin

  Y <= "1000" when (X = '1' and S0 = '0' and S1 = '0') else 
       "0100" when (X = '1' and S0 = '1' and S1 = '0') else
       "0010" when (X = '1' and S0 = '0' and S1 = '1') else
       "0001" when (X = '1' and S0 = '1' and S1 = '1') else 
       "0000";

end architecture whenelse;
