library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity add_sub_8bit is
    Port (
        A : in STD_LOGIC_VECTOR(7 downto 0);
        B : in STD_LOGIC_VECTOR(7 downto 0);
        Sub : in STD_LOGIC; -- 0 para soma, 1 para subtração
        Sum : out STD_LOGIC_VECTOR(7 downto 0);
        Cout : out STD_LOGIC -- Carry out
    );
end add_sub_8bit;

architecture Structural of add_sub_8bit is

    signal B_inverted : STD_LOGIC_VECTOR(7 downto 0);
    signal carry : STD_LOGIC_VECTOR(7 downto 0);

begin
    -- Inverte B se Sub = '1'
    B_inverted <= B xor (Sub & Sub & Sub & Sub & Sub & Sub & Sub & Sub);

    -- Instâncias dos somadores completos
    FA0: entity work.full_adder port map (
        A => A(0),
        B => B_inverted(0),
        Cin => Sub,
        Sum => Sum(0),
        Cout => carry(0)
    );

    FA1: entity work.full_adder port map (
        A => A(1),
        B => B_inverted(1),
        Cin => carry(0),
        Sum => Sum(1),
        Cout => carry(1)
    );

    FA2: entity work.full_adder port map (
        A => A(2),
        B => B_inverted(2),
        Cin => carry(1),
        Sum => Sum(2),
        Cout => carry(2)
    );

    FA3: entity work.full_adder port map (
        A => A(3),
        B => B_inverted(3),
        Cin => carry(2),
        Sum => Sum(3),
        Cout => carry(3)
    );

    FA4: entity work.full_adder port map (
        A => A(4),
        B => B_inverted(4),
        Cin => carry(3),
        Sum => Sum(4),
        Cout => carry(4)
    );

    FA5: entity work.full_adder port map (
        A => A(5),
        B => B_inverted(5),
        Cin => carry(4),
        Sum => Sum(5),
        Cout => carry(5)
    );

    FA6: entity work.full_adder port map (
        A => A(6),
        B => B_inverted(6),
        Cin => carry(5),
        Sum => Sum(6),
        Cout => carry(6)
    );

    FA7: entity work.full_adder port map (
        A => A(7),
        B => B_inverted(7),
        Cin => carry(6),
        Sum => Sum(7),
        Cout => Cout
    );

end Structural;
