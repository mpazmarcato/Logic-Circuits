LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Comp_5bits IS
    PORT (
        A, B : IN STD_LOGIC_VECTOR(4 DOWNTO 0); -- Vetores de 5 bits
        X    : OUT STD_LOGIC;                  -- A = B
        Y    : OUT STD_LOGIC;                  -- A > B
        Z    : OUT STD_LOGIC                   -- A < B
    );
END Comp_5bits;

ARCHITECTURE Structural OF Comp_5bits IS

    -- Declare o componente (deve corresponder ao ENTITY do arquivo Comp_3saidas.vhd)
    COMPONENT Comp_3saidas
        PORT (
            A, B : IN STD_LOGIC;
            X, Y, Z : OUT STD_LOGIC
        );
    END COMPONENT;

    -- Sinais intermediários para saídas de cada comparador de 1 bit
    SIGNAL x0, x1, x2, x3, x4 : STD_LOGIC;
    SIGNAL y0, y1, y2, y3, y4 : STD_LOGIC;
    SIGNAL z0, z1, z2, z3, z4 : STD_LOGIC;

BEGIN
    -- Instância do componente Comp_3saidas para cada bit
    i0: Comp_3saidas PORT MAP (A(0), B(0), x0, y0, z0);
    i1: Comp_3saidas PORT MAP (A(1), B(1), x1, y1, z1);
    i2: Comp_3saidas PORT MAP (A(2), B(2), x2, y2, z2);
    i3: Comp_3saidas PORT MAP (A(3), B(3), x3, y3, z3);
    i4: Comp_3saidas PORT MAP (A(4), B(4), x4, y4, z4);

    -- Saída X (A = B): Todos os bits devem ser iguais
    X <= x0 AND x1 AND x2 AND x3 AND x4;

    -- Saída Y (A > B): Define a prioridade de comparação, do bit mais significativo para o menos significativo
    Y <= y4 OR (x4 AND y3) OR (x4 AND x3 AND y2) OR (x4 AND x3 AND x2 AND y1) OR (x4 AND x3 AND x2 AND x1 AND y0);

    -- Saída Z (A < B): Define a prioridade de comparação, do bit mais significativo para o menos significativo
    Z <= z4 OR (x4 AND z3) OR (x4 AND x3 AND z2) OR (x4 AND x3 AND x2 AND z1) OR (x4 AND x3 AND x2 AND x1 AND z0);

END Structural;
