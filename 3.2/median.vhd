library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity median is
    Port (
        clk   : in  STD_LOGIC;
        A, B  : in  STD_LOGIC_VECTOR(15 downto 0);
        count : out STD_LOGIC_VECTOR(15 downto 0)
    );
end median;

architecture Behavioral of median is
    signal sum   : STD_LOGIC_VECTOR(15 downto 0);
begin

    sum <= std_logic_vector(unsigned(A) + unsigned(B));

    div: entity work.div
        port map(
            clk => clk,
            A => sum,
            B => "0000000000000010",
            count => count
        );


end Behavioral;
