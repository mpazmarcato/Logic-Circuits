library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity LampControl is
    Port (
        J0, J1, J2, J3 : in STD_LOGIC;
        VD, VM         : out STD_LOGIC
    );
end LampControl;

architecture Behavioral of LampControl is
begin
    process(J0, J1, J2, J3)
        variable vote_count : integer := 0;
    begin
        -- Reseta a contagem
        vote_count := 0;

        -- Incrementa a contagem conforme os votos
        if J0 = '1' then
            vote_count := vote_count + 1;
        end if;

        if J1 = '1' then
            vote_count := vote_count + 1;
        end if;

        if J2 = '1' then
            vote_count := vote_count + 1;
        end if;

        if J3 = '1' then
            vote_count := vote_count + 1;
        end if;

        -- Condições para as lâmpadas
        if vote_count >= 3 then
            VD <= '1';
            VM <= '0';
        elsif vote_count = 2 then
            VD <= '1';
            VM <= '1';
        else
            VD <= '0';
            VM <= '1';
        end if;
    end process;
end Behavioral;
