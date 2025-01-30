library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity altera_frontend is
    Port (
        clk      : in  STD_LOGIC;
        SW       : in  STD_LOGIC_VECTOR(15 downto 0);
        KEY      : in  STD_LOGIC_VECTOR(3 downto 0);
        LEDR     : out STD_LOGIC_VECTOR(15 downto 0);
        HEX0, 
        HEX1, 
        HEX2, 
        HEX3, 
        HEX4 : out STD_LOGIC_VECTOR(6 downto 0)
    );
end entity altera_frontend;

architecture Behavioral of altera_frontend is
    type state_type is (IDLE, READ_ID, WRITE_VALUE, VIEW_VALUE, RESET_S);
    signal state         : state_type := IDLE;

    signal 
	  reg_id
    , reg_data_in
    , reg_data_out
    , display_num             : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');

    signal state_out : STD_LOGIC_VECTOR(1 downto 0); -- stub

    -- Banco de registradores
    signal reset
    , write_en
    , read_en
    -- User interface
    , read_reg_id_bt
    , write_reg_val_bt
    , view_reg_val_bt
    , reset_reg_val_bt
    , read_reg_id_bt_last
    , write_reg_val_bt_last
    , view_reg_val_bt_last 
    , reset_reg_val_bt_last : STD_LOGIC := '0';

begin
    
    banco_registradores_inst: entity work.banco_registradores
       port map(
          clk => clk,
          reset => reset,
          write_en => write_en,
          read_en => read_en,
          addr => reg_id(2 downto 0),
          data_in => reg_data_in,
          data_out => reg_data_out,
          state_out => state_out
      );  

      read_reg_id_bt <= KEY(0);
      view_reg_val_bt <= KEY(1);
      write_reg_val_bt <= KEY(2);
      reset_reg_val_bt <= KEY(3);

    process(clk)
    begin
        if rising_edge(clk) then
            if read_reg_id_bt = '0' and read_reg_id_bt_last = '1' then
                reset    <= '0';
                write_en <= '0';
                read_en  <= '0';
                reg_id   <= SW;
                state    <= READ_ID;
            elsif write_reg_val_bt = '0' and write_reg_val_bt_last = '1' then
                reset       <= '0';
                write_en    <= '1';
                read_en     <= '0';
                reg_data_in <= SW;
                state       <= WRITE_VALUE;
            elsif view_reg_val_bt = '0' and view_reg_val_bt_last = '1' then
                reset       <= '0';
                write_en    <= '0';
                read_en     <= '1';
                state       <= VIEW_VALUE;
            elsif reset_reg_val_bt = '0' and reset_reg_val_bt_last = '1' then
                reset    <= '1';
                write_en <= '0';
                read_en  <= '0';
                state    <= RESET_S;
            end if;
            read_reg_id_bt_last    <= read_reg_id_bt;
            write_reg_val_bt_last  <= write_reg_val_bt;
            view_reg_val_bt_last   <= view_reg_val_bt; 
            reset_reg_val_bt_last  <= reset_reg_val_bt;
        end if;
    end process;

    with state select
        display_num <= (others => '0') when IDLE,
                       reg_id          when READ_ID,
                       reg_data_in     when WRITE_VALUE,
                       reg_data_out    when VIEW_VALUE,
                       (others => '1') when RESET_S;

    with state  select
        HEX4 <= "0000000" when IDLE,
                "1111001" when READ_ID,     -- I
                "0000110" when WRITE_VALUE, -- E
                "0010010" when VIEW_VALUE,  -- 0
                "0000111" when RESET_S;

    hex_to_7seg_inst: entity work.hex_to_7seg port map (display_num, HEX0, HEX1, HEX2, HEX3);
    LEDR <= display_num;

end architecture Behavioral;
