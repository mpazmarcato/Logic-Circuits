-- Copyright (C) 2023  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 23.1std.0 Build 991 11/28/2023 SC Lite Edition"

-- DATE "12/21/2024 23:47:18"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	calculator_8bit IS
    PORT (
	A : IN std_logic_vector(7 DOWNTO 0);
	B : IN std_logic_vector(7 DOWNTO 0);
	OP : IN std_logic;
	S : OUT std_logic_vector(7 DOWNTO 0);
	Luz1 : OUT std_logic;
	Luz2 : OUT std_logic;
	Display : OUT std_logic_vector(20 DOWNTO 0)
	);
END calculator_8bit;

-- Design Ports Information
-- S[0]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Luz1	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Luz2	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display[0]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display[1]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display[2]	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display[3]	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display[4]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display[5]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display[6]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display[7]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display[8]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display[9]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display[10]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display[11]	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display[12]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display[13]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display[14]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display[15]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display[16]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display[17]	=>  Location: PIN_2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display[18]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display[19]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Display[20]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OP	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF calculator_8bit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_OP : std_logic;
SIGNAL ww_S : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Luz1 : std_logic;
SIGNAL ww_Luz2 : std_logic;
SIGNAL ww_Display : std_logic_vector(20 DOWNTO 0);
SIGNAL \S[0]~output_o\ : std_logic;
SIGNAL \S[1]~output_o\ : std_logic;
SIGNAL \S[2]~output_o\ : std_logic;
SIGNAL \S[3]~output_o\ : std_logic;
SIGNAL \S[4]~output_o\ : std_logic;
SIGNAL \S[5]~output_o\ : std_logic;
SIGNAL \S[6]~output_o\ : std_logic;
SIGNAL \S[7]~output_o\ : std_logic;
SIGNAL \Luz1~output_o\ : std_logic;
SIGNAL \Luz2~output_o\ : std_logic;
SIGNAL \Display[0]~output_o\ : std_logic;
SIGNAL \Display[1]~output_o\ : std_logic;
SIGNAL \Display[2]~output_o\ : std_logic;
SIGNAL \Display[3]~output_o\ : std_logic;
SIGNAL \Display[4]~output_o\ : std_logic;
SIGNAL \Display[5]~output_o\ : std_logic;
SIGNAL \Display[6]~output_o\ : std_logic;
SIGNAL \Display[7]~output_o\ : std_logic;
SIGNAL \Display[8]~output_o\ : std_logic;
SIGNAL \Display[9]~output_o\ : std_logic;
SIGNAL \Display[10]~output_o\ : std_logic;
SIGNAL \Display[11]~output_o\ : std_logic;
SIGNAL \Display[12]~output_o\ : std_logic;
SIGNAL \Display[13]~output_o\ : std_logic;
SIGNAL \Display[14]~output_o\ : std_logic;
SIGNAL \Display[15]~output_o\ : std_logic;
SIGNAL \Display[16]~output_o\ : std_logic;
SIGNAL \Display[17]~output_o\ : std_logic;
SIGNAL \Display[18]~output_o\ : std_logic;
SIGNAL \Display[19]~output_o\ : std_logic;
SIGNAL \Display[20]~output_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \temp_S~0_combout\ : std_logic;
SIGNAL \OP~input_o\ : std_logic;
SIGNAL \carry~0_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \carry~1_combout\ : std_logic;
SIGNAL \temp_S~1_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \carry[2]~2_combout\ : std_logic;
SIGNAL \temp_S~2_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \carry[3]~3_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \temp_S~3_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \carry[4]~4_combout\ : std_logic;
SIGNAL \temp_S~4_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \carry[5]~5_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \temp_S~5_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \carry[6]~6_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \temp_S~6_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \carry[7]~7_combout\ : std_logic;
SIGNAL \temp_S~7_combout\ : std_logic;
SIGNAL B_inverted : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_OP~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_A <= A;
ww_B <= B;
ww_OP <= OP;
S <= ww_S;
Luz1 <= ww_Luz1;
Luz2 <= ww_Luz2;
Display <= ww_Display;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_OP~input_o\ <= NOT \OP~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X3_Y0_N2
\S[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp_S~0_combout\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOOBUF_X34_Y4_N16
\S[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp_S~1_combout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\S[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp_S~2_combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\S[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp_S~3_combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\S[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp_S~4_combout\,
	devoe => ww_devoe,
	o => \S[4]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\S[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp_S~5_combout\,
	devoe => ww_devoe,
	o => \S[5]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\S[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp_S~6_combout\,
	devoe => ww_devoe,
	o => \S[6]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\S[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp_S~7_combout\,
	devoe => ww_devoe,
	o => \S[7]~output_o\);

-- Location: IOOBUF_X34_Y7_N9
\Luz1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_OP~input_o\,
	devoe => ww_devoe,
	o => \Luz1~output_o\);

-- Location: IOOBUF_X34_Y9_N16
\Luz2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OP~input_o\,
	devoe => ww_devoe,
	o => \Luz2~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\Display[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Display[0]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\Display[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Display[1]~output_o\);

-- Location: IOOBUF_X1_Y24_N2
\Display[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Display[2]~output_o\);

-- Location: IOOBUF_X34_Y2_N23
\Display[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Display[3]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\Display[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Display[4]~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\Display[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Display[5]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\Display[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Display[6]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\Display[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Display[7]~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\Display[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Display[8]~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\Display[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Display[9]~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\Display[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Display[10]~output_o\);

-- Location: IOOBUF_X1_Y24_N9
\Display[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Display[11]~output_o\);

-- Location: IOOBUF_X28_Y24_N2
\Display[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Display[12]~output_o\);

-- Location: IOOBUF_X34_Y4_N23
\Display[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Display[13]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\Display[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Display[14]~output_o\);

-- Location: IOOBUF_X34_Y18_N16
\Display[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Display[15]~output_o\);

-- Location: IOOBUF_X7_Y24_N9
\Display[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Display[16]~output_o\);

-- Location: IOOBUF_X0_Y23_N9
\Display[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Display[17]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\Display[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Display[18]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\Display[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Display[19]~output_o\);

-- Location: IOOBUF_X34_Y17_N16
\Display[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Display[20]~output_o\);

-- Location: IOIBUF_X5_Y0_N22
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X7_Y0_N1
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X7_Y1_N0
\temp_S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_S~0_combout\ = \B[0]~input_o\ $ (\A[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \temp_S~0_combout\);

-- Location: IOIBUF_X34_Y9_N8
\OP~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OP,
	o => \OP~input_o\);

-- Location: LCCOMB_X21_Y4_N10
\carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry~0_combout\ = (\A[0]~input_o\ & (\B[0]~input_o\ $ (\OP~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \A[0]~input_o\,
	datad => \OP~input_o\,
	combout => \carry~0_combout\);

-- Location: IOIBUF_X21_Y0_N8
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X21_Y4_N16
\B_inverted[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- B_inverted(1) = \B[1]~input_o\ $ (\OP~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datad => \OP~input_o\,
	combout => B_inverted(1));

-- Location: IOIBUF_X18_Y24_N15
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X21_Y4_N12
\carry~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry~1_combout\ = (\OP~input_o\ & (\B[0]~input_o\ $ (!\A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \A[0]~input_o\,
	datad => \OP~input_o\,
	combout => \carry~1_combout\);

-- Location: LCCOMB_X21_Y4_N30
\temp_S~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_S~1_combout\ = B_inverted(1) $ (\A[1]~input_o\ $ (((\carry~0_combout\) # (\carry~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \carry~0_combout\,
	datab => B_inverted(1),
	datac => \A[1]~input_o\,
	datad => \carry~1_combout\,
	combout => \temp_S~1_combout\);

-- Location: IOIBUF_X30_Y0_N22
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X13_Y0_N1
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X21_Y4_N8
\carry[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[2]~2_combout\ = (B_inverted(1) & ((\carry~0_combout\) # ((\A[1]~input_o\) # (\carry~1_combout\)))) # (!B_inverted(1) & (\A[1]~input_o\ & ((\carry~0_combout\) # (\carry~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \carry~0_combout\,
	datab => B_inverted(1),
	datac => \A[1]~input_o\,
	datad => \carry~1_combout\,
	combout => \carry[2]~2_combout\);

-- Location: LCCOMB_X21_Y4_N18
\temp_S~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_S~2_combout\ = \A[2]~input_o\ $ (\B[2]~input_o\ $ (\carry[2]~2_combout\ $ (\OP~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datac => \carry[2]~2_combout\,
	datad => \OP~input_o\,
	combout => \temp_S~2_combout\);

-- Location: IOIBUF_X25_Y0_N1
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X21_Y4_N28
\carry[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[3]~3_combout\ = (\A[2]~input_o\ & ((\carry[2]~2_combout\) # (\B[2]~input_o\ $ (\OP~input_o\)))) # (!\A[2]~input_o\ & (\carry[2]~2_combout\ & (\B[2]~input_o\ $ (\OP~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datac => \carry[2]~2_combout\,
	datad => \OP~input_o\,
	combout => \carry[3]~3_combout\);

-- Location: IOIBUF_X30_Y0_N1
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X21_Y4_N22
\temp_S~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_S~3_combout\ = \A[3]~input_o\ $ (\carry[3]~3_combout\ $ (\B[3]~input_o\ $ (\OP~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \carry[3]~3_combout\,
	datac => \B[3]~input_o\,
	datad => \OP~input_o\,
	combout => \temp_S~3_combout\);

-- Location: IOIBUF_X18_Y0_N22
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X18_Y24_N22
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X21_Y4_N0
\carry[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[4]~4_combout\ = (\A[3]~input_o\ & ((\carry[3]~3_combout\) # (\B[3]~input_o\ $ (\OP~input_o\)))) # (!\A[3]~input_o\ & (\carry[3]~3_combout\ & (\B[3]~input_o\ $ (\OP~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \carry[3]~3_combout\,
	datac => \B[3]~input_o\,
	datad => \OP~input_o\,
	combout => \carry[4]~4_combout\);

-- Location: LCCOMB_X21_Y4_N26
\temp_S~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_S~4_combout\ = \OP~input_o\ $ (\B[4]~input_o\ $ (\A[4]~input_o\ $ (\carry[4]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP~input_o\,
	datab => \B[4]~input_o\,
	datac => \A[4]~input_o\,
	datad => \carry[4]~4_combout\,
	combout => \temp_S~4_combout\);

-- Location: IOIBUF_X0_Y11_N22
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X21_Y4_N20
\carry[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[5]~5_combout\ = (\A[4]~input_o\ & ((\carry[4]~4_combout\) # (\OP~input_o\ $ (\B[4]~input_o\)))) # (!\A[4]~input_o\ & (\carry[4]~4_combout\ & (\OP~input_o\ $ (\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP~input_o\,
	datab => \B[4]~input_o\,
	datac => \A[4]~input_o\,
	datad => \carry[4]~4_combout\,
	combout => \carry[5]~5_combout\);

-- Location: IOIBUF_X0_Y11_N15
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X21_Y4_N14
\temp_S~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_S~5_combout\ = \B[5]~input_o\ $ (\carry[5]~5_combout\ $ (\A[5]~input_o\ $ (\OP~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \carry[5]~5_combout\,
	datac => \A[5]~input_o\,
	datad => \OP~input_o\,
	combout => \temp_S~5_combout\);

-- Location: IOIBUF_X23_Y0_N15
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X21_Y4_N24
\carry[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[6]~6_combout\ = (\carry[5]~5_combout\ & ((\A[5]~input_o\) # (\B[5]~input_o\ $ (\OP~input_o\)))) # (!\carry[5]~5_combout\ & (\A[5]~input_o\ & (\B[5]~input_o\ $ (\OP~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \carry[5]~5_combout\,
	datac => \A[5]~input_o\,
	datad => \OP~input_o\,
	combout => \carry[6]~6_combout\);

-- Location: IOIBUF_X23_Y24_N1
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X21_Y4_N2
\temp_S~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_S~6_combout\ = \A[6]~input_o\ $ (\carry[6]~6_combout\ $ (\B[6]~input_o\ $ (\OP~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \carry[6]~6_combout\,
	datac => \B[6]~input_o\,
	datad => \OP~input_o\,
	combout => \temp_S~6_combout\);

-- Location: IOIBUF_X28_Y0_N1
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LCCOMB_X21_Y4_N4
\carry[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry[7]~7_combout\ = (\A[6]~input_o\ & ((\carry[6]~6_combout\) # (\B[6]~input_o\ $ (\OP~input_o\)))) # (!\A[6]~input_o\ & (\carry[6]~6_combout\ & (\B[6]~input_o\ $ (\OP~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \carry[6]~6_combout\,
	datac => \B[6]~input_o\,
	datad => \OP~input_o\,
	combout => \carry[7]~7_combout\);

-- Location: LCCOMB_X21_Y4_N6
\temp_S~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_S~7_combout\ = \A[7]~input_o\ $ (\B[7]~input_o\ $ (\carry[7]~7_combout\ $ (\OP~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \B[7]~input_o\,
	datac => \carry[7]~7_combout\,
	datad => \OP~input_o\,
	combout => \temp_S~7_combout\);

ww_S(0) <= \S[0]~output_o\;

ww_S(1) <= \S[1]~output_o\;

ww_S(2) <= \S[2]~output_o\;

ww_S(3) <= \S[3]~output_o\;

ww_S(4) <= \S[4]~output_o\;

ww_S(5) <= \S[5]~output_o\;

ww_S(6) <= \S[6]~output_o\;

ww_S(7) <= \S[7]~output_o\;

ww_Luz1 <= \Luz1~output_o\;

ww_Luz2 <= \Luz2~output_o\;

ww_Display(0) <= \Display[0]~output_o\;

ww_Display(1) <= \Display[1]~output_o\;

ww_Display(2) <= \Display[2]~output_o\;

ww_Display(3) <= \Display[3]~output_o\;

ww_Display(4) <= \Display[4]~output_o\;

ww_Display(5) <= \Display[5]~output_o\;

ww_Display(6) <= \Display[6]~output_o\;

ww_Display(7) <= \Display[7]~output_o\;

ww_Display(8) <= \Display[8]~output_o\;

ww_Display(9) <= \Display[9]~output_o\;

ww_Display(10) <= \Display[10]~output_o\;

ww_Display(11) <= \Display[11]~output_o\;

ww_Display(12) <= \Display[12]~output_o\;

ww_Display(13) <= \Display[13]~output_o\;

ww_Display(14) <= \Display[14]~output_o\;

ww_Display(15) <= \Display[15]~output_o\;

ww_Display(16) <= \Display[16]~output_o\;

ww_Display(17) <= \Display[17]~output_o\;

ww_Display(18) <= \Display[18]~output_o\;

ww_Display(19) <= \Display[19]~output_o\;

ww_Display(20) <= \Display[20]~output_o\;
END structure;


