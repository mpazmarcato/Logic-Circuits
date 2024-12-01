library ieee;
use ieee.std_logic_1164.all;

entity demux_1x4_when_select is
  port (
    S0, S1 : in std_logic;
    X      : in std_logic;
    Y      : out std_logic_vector(3 downto 0)
  );
end entity demux_1x4_when_select;

architecture WhenSelect of demux_1x4_when_select is
  signal select_signal : std_logic_vector(1 downto 0);
  signal Y_internal    : std_logic_vector(3 downto 0);
begin

  select_signal <= S0 & S1;

  with select_signal select
    Y_internal <= "1000" when "00",
                  "0100" when "01",
                  "0010" when "10",
                  "0001" when "11",
                  "0000" when others;

  Y <= Y_internal when X = '1' else "0000";

end architecture WhenSelect;
