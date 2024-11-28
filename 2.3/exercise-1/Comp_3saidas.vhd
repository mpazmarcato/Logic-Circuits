LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY Comp_3saidas IS
PORT ( A, B : IN STD_LOGIC;
X, Y, Z : OUT STD_LOGIC );
END;
ARCHITECTURE comparador OF Comp_3saidas IS
BEGIN
X <= A XNOR B;
Y <= A AND (NOT B);
Z <= (NOT A) AND B;
END comparador;