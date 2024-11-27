LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Comp_1bit IS
    PORT (
        A, B : IN STD_LOGIC;
        C    : OUT STD_LOGIC
    );
END Comp_1bit;

ARCHITECTURE Behavioral OF Comp_1bit IS
BEGIN
    C <= A XNOR B; 
END Behavioral;

