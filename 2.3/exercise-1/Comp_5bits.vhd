LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Comp_5bits IS
    PORT (
        A, B : IN STD_LOGIC_VECTOR(4 DOWNTO 0); 
        X    : OUT STD_LOGIC;                  
        Y    : OUT STD_LOGIC;                  
        Z    : OUT STD_LOGIC                   
    );
END Comp_5bits;

ARCHITECTURE c5 OF Comp_5bits IS

    COMPONENT Comp_1bit
        PORT (
            A, B : IN STD_LOGIC;
            C    : OUT STD_LOGIC
        );
    END COMPONENT;

    SIGNAL cp0, cp1, cp2, cp3, cp4 : STD_LOGIC;
    SIGNAL greater, less           : STD_LOGIC_VECTOR(4 DOWNTO 0);

BEGIN
    i0: Comp_1bit PORT MAP (A(0), B(0), cp0);
    i1: Comp_1bit PORT MAP (A(1), B(1), cp1);
    i2: Comp_1bit PORT MAP (A(2), B(2), cp2);
    i3: Comp_1bit PORT MAP (A(3), B(3), cp3);
    i4: Comp_1bit PORT MAP (A(4), B(4), cp4);

    X <= cp0 AND cp1 AND cp2 AND cp3 AND cp4;

    -- Bit mais significativo (MSB)
    greater(4) <= A(4) AND (NOT B(4));
    less(4)    <= (NOT A(4)) AND B(4);

    -- Bit 3
    greater(3) <= (A(3) AND (NOT B(3))) AND (NOT greater(4)) AND (NOT less(4));
    less(3)    <= ((NOT A(3)) AND B(3)) AND (NOT less(4)) AND (NOT greater(4));

    -- Bit 2
    greater(2) <= (A(2) AND (NOT B(2))) AND (NOT greater(3)) AND (NOT less(3));
    less(2)    <= ((NOT A(2)) AND B(2)) AND (NOT less(3)) AND (NOT greater(3));

    -- Bit 1
    greater(1) <= (A(1) AND (NOT B(1))) AND (NOT greater(2)) AND (NOT less(2));
    less(1)    <= ((NOT A(1)) AND B(1)) AND (NOT less(2)) AND (NOT greater(2));

    -- Bit 0 (LSB)
    greater(0) <= (A(0) AND (NOT B(0))) AND (NOT greater(1)) AND (NOT less(1));
    less(0)    <= ((NOT A(0)) AND B(0)) AND (NOT less(1)) AND (NOT greater(1));

    Y <= greater(0); -- `Y = 1` se A > B
    Z <= less(0);    -- `Z = 1` se A < B

END c5;
