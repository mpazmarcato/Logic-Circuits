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

-- DATE "01/27/2025 20:57:05"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	altera_fronted IS
    PORT (
	clk : IN std_logic;
	SW : IN std_logic_vector(15 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	LEDR : OUT std_logic_vector(15 DOWNTO 0);
	LEDG : OUT std_logic;
	HEX : OUT std_logic_vector(6 DOWNTO 0)
	);
END altera_fronted;

-- Design Ports Information
-- KEY[1]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[10]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[11]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[12]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[13]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[14]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[15]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX[0]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX[1]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX[2]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX[3]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX[4]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX[5]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX[6]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF altera_fronted IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_SW : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_LEDG : std_logic;
SIGNAL ww_HEX : std_logic_vector(6 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \LEDR[10]~output_o\ : std_logic;
SIGNAL \LEDR[11]~output_o\ : std_logic;
SIGNAL \LEDR[12]~output_o\ : std_logic;
SIGNAL \LEDR[13]~output_o\ : std_logic;
SIGNAL \LEDR[14]~output_o\ : std_logic;
SIGNAL \LEDR[15]~output_o\ : std_logic;
SIGNAL \LEDG~output_o\ : std_logic;
SIGNAL \HEX[0]~output_o\ : std_logic;
SIGNAL \HEX[1]~output_o\ : std_logic;
SIGNAL \HEX[2]~output_o\ : std_logic;
SIGNAL \HEX[3]~output_o\ : std_logic;
SIGNAL \HEX[4]~output_o\ : std_logic;
SIGNAL \HEX[5]~output_o\ : std_logic;
SIGNAL \HEX[6]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \median_inst|div|counter[0]~16_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \B[15]~feeder_combout\ : std_logic;
SIGNAL \state.INPUT_B~feeder_combout\ : std_logic;
SIGNAL \state.INPUT_B~q\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \A[15]~feeder_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \A[13]~feeder_combout\ : std_logic;
SIGNAL \B[13]~feeder_combout\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \B[11]~feeder_combout\ : std_logic;
SIGNAL \A[11]~feeder_combout\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \B[10]~feeder_combout\ : std_logic;
SIGNAL \A[10]~feeder_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \B[9]~feeder_combout\ : std_logic;
SIGNAL \A[9]~feeder_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \B[8]~feeder_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \A[7]~feeder_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \median_inst|div|current_A[1]~16_cout\ : std_logic;
SIGNAL \median_inst|div|current_A[1]~18\ : std_logic;
SIGNAL \median_inst|div|current_A[2]~20\ : std_logic;
SIGNAL \median_inst|div|current_A[3]~22\ : std_logic;
SIGNAL \median_inst|div|current_A[4]~24\ : std_logic;
SIGNAL \median_inst|div|current_A[5]~26\ : std_logic;
SIGNAL \median_inst|div|current_A[6]~28\ : std_logic;
SIGNAL \median_inst|div|current_A[7]~30\ : std_logic;
SIGNAL \median_inst|div|current_A[8]~32\ : std_logic;
SIGNAL \median_inst|div|current_A[9]~34\ : std_logic;
SIGNAL \median_inst|div|current_A[10]~36\ : std_logic;
SIGNAL \median_inst|div|current_A[11]~38\ : std_logic;
SIGNAL \median_inst|div|current_A[12]~40\ : std_logic;
SIGNAL \median_inst|div|current_A[13]~42\ : std_logic;
SIGNAL \median_inst|div|current_A[14]~44\ : std_logic;
SIGNAL \median_inst|div|current_A[15]~45_combout\ : std_logic;
SIGNAL \median_inst|div|current_A[15]~feeder_combout\ : std_logic;
SIGNAL \median_inst|div|current_A[14]~43_combout\ : std_logic;
SIGNAL \median_inst|div|current_A[14]~feeder_combout\ : std_logic;
SIGNAL \median_inst|div|current_A[13]~41_combout\ : std_logic;
SIGNAL \median_inst|div|current_A[13]~feeder_combout\ : std_logic;
SIGNAL \median_inst|div|current_A[12]~39_combout\ : std_logic;
SIGNAL \median_inst|div|current_A[12]~feeder_combout\ : std_logic;
SIGNAL \median_inst|div|current_A[11]~37_combout\ : std_logic;
SIGNAL \median_inst|div|current_A[11]~feeder_combout\ : std_logic;
SIGNAL \median_inst|div|current_A[10]~35_combout\ : std_logic;
SIGNAL \median_inst|div|current_A[10]~feeder_combout\ : std_logic;
SIGNAL \median_inst|div|current_A[9]~33_combout\ : std_logic;
SIGNAL \median_inst|div|current_A[9]~feeder_combout\ : std_logic;
SIGNAL \median_inst|div|current_A[8]~31_combout\ : std_logic;
SIGNAL \median_inst|div|current_A[8]~feeder_combout\ : std_logic;
SIGNAL \median_inst|div|current_A[7]~29_combout\ : std_logic;
SIGNAL \median_inst|div|current_A[7]~feeder_combout\ : std_logic;
SIGNAL \median_inst|div|current_A[6]~27_combout\ : std_logic;
SIGNAL \median_inst|div|current_A[6]~feeder_combout\ : std_logic;
SIGNAL \median_inst|div|current_A[5]~25_combout\ : std_logic;
SIGNAL \median_inst|div|current_A[5]~feeder_combout\ : std_logic;
SIGNAL \median_inst|div|current_A[4]~23_combout\ : std_logic;
SIGNAL \median_inst|div|current_A[4]~feeder_combout\ : std_logic;
SIGNAL \median_inst|div|current_A[3]~21_combout\ : std_logic;
SIGNAL \median_inst|div|current_A[3]~feeder_combout\ : std_logic;
SIGNAL \median_inst|div|current_A[2]~19_combout\ : std_logic;
SIGNAL \median_inst|div|current_A[2]~feeder_combout\ : std_logic;
SIGNAL \median_inst|div|current_A[1]~17_combout\ : std_logic;
SIGNAL \median_inst|div|current_A[1]~feeder_combout\ : std_logic;
SIGNAL \median_inst|div|current_A[1]~_wirecell_combout\ : std_logic;
SIGNAL \median_inst|div|Add0~1_cout\ : std_logic;
SIGNAL \median_inst|div|Add0~2_combout\ : std_logic;
SIGNAL \median_inst|div|Add0~3\ : std_logic;
SIGNAL \median_inst|div|Add0~4_combout\ : std_logic;
SIGNAL \median_inst|div|Add0~5\ : std_logic;
SIGNAL \median_inst|div|Add0~6_combout\ : std_logic;
SIGNAL \median_inst|div|Add0~7\ : std_logic;
SIGNAL \median_inst|div|Add0~8_combout\ : std_logic;
SIGNAL \median_inst|div|Add0~9\ : std_logic;
SIGNAL \median_inst|div|Add0~10_combout\ : std_logic;
SIGNAL \median_inst|div|Add0~11\ : std_logic;
SIGNAL \median_inst|div|Add0~12_combout\ : std_logic;
SIGNAL \median_inst|div|Add0~13\ : std_logic;
SIGNAL \median_inst|div|Add0~14_combout\ : std_logic;
SIGNAL \median_inst|div|Add0~15\ : std_logic;
SIGNAL \median_inst|div|Add0~16_combout\ : std_logic;
SIGNAL \median_inst|div|Add0~17\ : std_logic;
SIGNAL \median_inst|div|Add0~18_combout\ : std_logic;
SIGNAL \median_inst|div|Add0~19\ : std_logic;
SIGNAL \median_inst|div|Add0~20_combout\ : std_logic;
SIGNAL \median_inst|div|Add0~21\ : std_logic;
SIGNAL \median_inst|div|Add0~22_combout\ : std_logic;
SIGNAL \median_inst|div|Add0~23\ : std_logic;
SIGNAL \median_inst|div|Add0~24_combout\ : std_logic;
SIGNAL \median_inst|div|Add0~25\ : std_logic;
SIGNAL \median_inst|div|Add0~26_combout\ : std_logic;
SIGNAL \median_inst|div|Add0~27\ : std_logic;
SIGNAL \median_inst|div|Add0~28_combout\ : std_logic;
SIGNAL \median_inst|div|LessThan0~3_combout\ : std_logic;
SIGNAL \median_inst|div|LessThan0~1_combout\ : std_logic;
SIGNAL \median_inst|div|LessThan0~0_combout\ : std_logic;
SIGNAL \median_inst|div|LessThan0~2_combout\ : std_logic;
SIGNAL \median_inst|div|LessThan0~4_combout\ : std_logic;
SIGNAL \median_inst|div|done~0_combout\ : std_logic;
SIGNAL \median_inst|div|done~q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \state.ACTIVE~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \state.IDLE~q\ : std_logic;
SIGNAL \state.INPUT_A~0_combout\ : std_logic;
SIGNAL \state.INPUT_A~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \start~q\ : std_logic;
SIGNAL \median_inst|div|counter~18_combout\ : std_logic;
SIGNAL \median_inst|div|state~feeder_combout\ : std_logic;
SIGNAL \median_inst|div|state~q\ : std_logic;
SIGNAL \median_inst|div|counter[0]~17\ : std_logic;
SIGNAL \median_inst|div|counter[1]~19_combout\ : std_logic;
SIGNAL \median_inst|div|counter[1]~20\ : std_logic;
SIGNAL \median_inst|div|counter[2]~21_combout\ : std_logic;
SIGNAL \median_inst|div|counter[2]~22\ : std_logic;
SIGNAL \median_inst|div|counter[3]~23_combout\ : std_logic;
SIGNAL \median_inst|div|counter[3]~24\ : std_logic;
SIGNAL \median_inst|div|counter[4]~25_combout\ : std_logic;
SIGNAL \median_inst|div|counter[4]~26\ : std_logic;
SIGNAL \median_inst|div|counter[5]~27_combout\ : std_logic;
SIGNAL \median_inst|div|counter[5]~28\ : std_logic;
SIGNAL \median_inst|div|counter[6]~29_combout\ : std_logic;
SIGNAL \median_inst|div|counter[6]~30\ : std_logic;
SIGNAL \median_inst|div|counter[7]~31_combout\ : std_logic;
SIGNAL \median_inst|div|counter[7]~32\ : std_logic;
SIGNAL \median_inst|div|counter[8]~33_combout\ : std_logic;
SIGNAL \median_inst|div|counter[8]~34\ : std_logic;
SIGNAL \median_inst|div|counter[9]~35_combout\ : std_logic;
SIGNAL \median_inst|div|counter[9]~36\ : std_logic;
SIGNAL \median_inst|div|counter[10]~37_combout\ : std_logic;
SIGNAL \median_inst|div|counter[10]~38\ : std_logic;
SIGNAL \median_inst|div|counter[11]~39_combout\ : std_logic;
SIGNAL \median_inst|div|counter[11]~40\ : std_logic;
SIGNAL \median_inst|div|counter[12]~41_combout\ : std_logic;
SIGNAL \median_inst|div|counter[12]~42\ : std_logic;
SIGNAL \median_inst|div|counter[13]~43_combout\ : std_logic;
SIGNAL \median_inst|div|counter[13]~44\ : std_logic;
SIGNAL \median_inst|div|counter[14]~45_combout\ : std_logic;
SIGNAL \median_inst|div|counter[14]~46\ : std_logic;
SIGNAL \median_inst|div|counter[15]~47_combout\ : std_logic;
SIGNAL \HEX~0_combout\ : std_logic;
SIGNAL \HEX[0]~reg0_q\ : std_logic;
SIGNAL \HEX[1]~reg0feeder_combout\ : std_logic;
SIGNAL \HEX[1]~reg0_q\ : std_logic;
SIGNAL \HEX~1_combout\ : std_logic;
SIGNAL \HEX[3]~reg0_q\ : std_logic;
SIGNAL \HEX[4]~3_combout\ : std_logic;
SIGNAL \HEX[4]~reg0_q\ : std_logic;
SIGNAL \HEX[5]~4_combout\ : std_logic;
SIGNAL \HEX[5]~reg0_q\ : std_logic;
SIGNAL \HEX~2_combout\ : std_logic;
SIGNAL \HEX[6]~reg0_q\ : std_logic;
SIGNAL B : std_logic_vector(15 DOWNTO 0);
SIGNAL A : std_logic_vector(15 DOWNTO 0);
SIGNAL \median_inst|div|counter\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \median_inst|div|current_A\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \median_inst|div|ALT_INV_state~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_SW <= SW;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
LEDG <= ww_LEDG;
HEX <= ww_HEX;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\median_inst|div|ALT_INV_state~q\ <= NOT \median_inst|div|state~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X45_Y73_N2
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \median_inst|div|counter\(0),
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \median_inst|div|counter\(1),
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \median_inst|div|counter\(2),
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \median_inst|div|counter\(3),
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X52_Y73_N23
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \median_inst|div|counter\(4),
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X49_Y73_N23
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \median_inst|div|counter\(5),
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \median_inst|div|counter\(6),
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \median_inst|div|counter\(7),
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\LEDR[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \median_inst|div|counter\(8),
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

-- Location: IOOBUF_X47_Y73_N16
\LEDR[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \median_inst|div|counter\(9),
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

-- Location: IOOBUF_X40_Y73_N2
\LEDR[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \median_inst|div|counter\(10),
	devoe => ww_devoe,
	o => \LEDR[10]~output_o\);

-- Location: IOOBUF_X47_Y73_N2
\LEDR[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \median_inst|div|counter\(11),
	devoe => ww_devoe,
	o => \LEDR[11]~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\LEDR[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \median_inst|div|counter\(12),
	devoe => ww_devoe,
	o => \LEDR[12]~output_o\);

-- Location: IOOBUF_X45_Y73_N9
\LEDR[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \median_inst|div|counter\(13),
	devoe => ww_devoe,
	o => \LEDR[13]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\LEDR[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \median_inst|div|counter\(14),
	devoe => ww_devoe,
	o => \LEDR[14]~output_o\);

-- Location: IOOBUF_X49_Y73_N16
\LEDR[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \median_inst|div|counter\(15),
	devoe => ww_devoe,
	o => \LEDR[15]~output_o\);

-- Location: IOOBUF_X27_Y73_N9
\LEDG~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \median_inst|div|done~q\,
	devoe => ww_devoe,
	o => \LEDG~output_o\);

-- Location: IOOBUF_X20_Y73_N2
\HEX[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX[0]~reg0_q\,
	devoe => ww_devoe,
	o => \HEX[0]~output_o\);

-- Location: IOOBUF_X23_Y73_N9
\HEX[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX[1]~reg0_q\,
	devoe => ww_devoe,
	o => \HEX[1]~output_o\);

-- Location: IOOBUF_X9_Y73_N2
\HEX[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX[2]~output_o\);

-- Location: IOOBUF_X25_Y73_N16
\HEX[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX[3]~reg0_q\,
	devoe => ww_devoe,
	o => \HEX[3]~output_o\);

-- Location: IOOBUF_X20_Y73_N23
\HEX[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX[4]~reg0_q\,
	devoe => ww_devoe,
	o => \HEX[4]~output_o\);

-- Location: IOOBUF_X20_Y73_N9
\HEX[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX[5]~reg0_q\,
	devoe => ww_devoe,
	o => \HEX[5]~output_o\);

-- Location: IOOBUF_X23_Y73_N2
\HEX[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX[6]~reg0_q\,
	devoe => ww_devoe,
	o => \HEX[6]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X41_Y69_N0
\median_inst|div|counter[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \median_inst|div|counter[0]~16_combout\ = \median_inst|div|counter\(0) $ (VCC)
-- \median_inst|div|counter[0]~17\ = CARRY(\median_inst|div|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \median_inst|div|counter\(0),
	datad => VCC,
	combout => \median_inst|div|counter[0]~16_combout\,
	cout => \median_inst|div|counter[0]~17\);

-- Location: IOIBUF_X25_Y73_N22
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: IOIBUF_X33_Y73_N8
\SW[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(15),
	o => \SW[15]~input_o\);

-- Location: LCCOMB_X34_Y69_N14
\B[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \B[15]~feeder_combout\ = \SW[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[15]~input_o\,
	combout => \B[15]~feeder_combout\);

-- Location: LCCOMB_X33_Y69_N28
\state.INPUT_B~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.INPUT_B~feeder_combout\ = \state.INPUT_A~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.INPUT_A~q\,
	combout => \state.INPUT_B~feeder_combout\);

-- Location: FF_X33_Y69_N29
\state.INPUT_B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state.INPUT_B~feeder_combout\,
	ena => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.INPUT_B~q\);

-- Location: LCCOMB_X33_Y69_N24
\Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = (\KEY[0]~input_o\ & \state.INPUT_B~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[0]~input_o\,
	datad => \state.INPUT_B~q\,
	combout => \Selector4~1_combout\);

-- Location: FF_X34_Y69_N15
\B[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B[15]~feeder_combout\,
	ena => \Selector4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(15));

-- Location: LCCOMB_X34_Y69_N20
\A[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \A[15]~feeder_combout\ = \SW[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[15]~input_o\,
	combout => \A[15]~feeder_combout\);

-- Location: LCCOMB_X33_Y69_N22
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\KEY[0]~input_o\ & \state.INPUT_A~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datac => \state.INPUT_A~q\,
	combout => \Selector3~0_combout\);

-- Location: FF_X34_Y69_N21
\A[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A[15]~feeder_combout\,
	ena => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(15));

-- Location: IOIBUF_X23_Y73_N22
\SW[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(14),
	o => \SW[14]~input_o\);

-- Location: FF_X34_Y69_N17
\A[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \SW[14]~input_o\,
	sload => VCC,
	ena => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(14));

-- Location: FF_X34_Y69_N31
\B[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \SW[14]~input_o\,
	sload => VCC,
	ena => \Selector4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(14));

-- Location: IOIBUF_X38_Y73_N8
\SW[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(13),
	o => \SW[13]~input_o\);

-- Location: LCCOMB_X36_Y69_N4
\A[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \A[13]~feeder_combout\ = \SW[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[13]~input_o\,
	combout => \A[13]~feeder_combout\);

-- Location: FF_X36_Y69_N5
\A[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A[13]~feeder_combout\,
	ena => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(13));

-- Location: LCCOMB_X36_Y69_N22
\B[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \B[13]~feeder_combout\ = \SW[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[13]~input_o\,
	combout => \B[13]~feeder_combout\);

-- Location: FF_X36_Y69_N23
\B[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B[13]~feeder_combout\,
	ena => \Selector4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(13));

-- Location: IOIBUF_X23_Y73_N15
\SW[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(12),
	o => \SW[12]~input_o\);

-- Location: FF_X34_Y69_N1
\A[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \SW[12]~input_o\,
	sload => VCC,
	ena => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(12));

-- Location: FF_X34_Y69_N7
\B[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \SW[12]~input_o\,
	sload => VCC,
	ena => \Selector4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(12));

-- Location: IOIBUF_X38_Y73_N22
\SW[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(11),
	o => \SW[11]~input_o\);

-- Location: LCCOMB_X36_Y69_N6
\B[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \B[11]~feeder_combout\ = \SW[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[11]~input_o\,
	combout => \B[11]~feeder_combout\);

-- Location: FF_X36_Y69_N7
\B[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B[11]~feeder_combout\,
	ena => \Selector4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(11));

-- Location: LCCOMB_X36_Y69_N8
\A[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \A[11]~feeder_combout\ = \SW[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[11]~input_o\,
	combout => \A[11]~feeder_combout\);

-- Location: FF_X36_Y69_N9
\A[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A[11]~feeder_combout\,
	ena => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(11));

-- Location: IOIBUF_X38_Y73_N1
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: LCCOMB_X36_Y69_N30
\B[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \B[10]~feeder_combout\ = \SW[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[10]~input_o\,
	combout => \B[10]~feeder_combout\);

-- Location: FF_X36_Y69_N31
\B[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B[10]~feeder_combout\,
	ena => \Selector4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(10));

-- Location: LCCOMB_X36_Y69_N12
\A[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \A[10]~feeder_combout\ = \SW[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[10]~input_o\,
	combout => \A[10]~feeder_combout\);

-- Location: FF_X36_Y69_N13
\A[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A[10]~feeder_combout\,
	ena => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(10));

-- Location: IOIBUF_X33_Y73_N1
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: LCCOMB_X34_Y69_N10
\B[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \B[9]~feeder_combout\ = \SW[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[9]~input_o\,
	combout => \B[9]~feeder_combout\);

-- Location: FF_X34_Y69_N11
\B[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B[9]~feeder_combout\,
	ena => \Selector4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(9));

-- Location: LCCOMB_X34_Y69_N24
\A[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \A[9]~feeder_combout\ = \SW[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[9]~input_o\,
	combout => \A[9]~feeder_combout\);

-- Location: FF_X34_Y69_N25
\A[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A[9]~feeder_combout\,
	ena => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(9));

-- Location: IOIBUF_X29_Y73_N8
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: FF_X35_Y69_N7
\A[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(8));

-- Location: LCCOMB_X34_Y69_N22
\B[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \B[8]~feeder_combout\ = \SW[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[8]~input_o\,
	combout => \B[8]~feeder_combout\);

-- Location: FF_X34_Y69_N23
\B[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B[8]~feeder_combout\,
	ena => \Selector4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(8));

-- Location: IOIBUF_X29_Y73_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: LCCOMB_X34_Y69_N12
\A[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \A[7]~feeder_combout\ = \SW[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[7]~input_o\,
	combout => \A[7]~feeder_combout\);

-- Location: FF_X34_Y69_N13
\A[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A[7]~feeder_combout\,
	ena => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(7));

-- Location: FF_X35_Y69_N9
\B[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \Selector4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(7));

-- Location: IOIBUF_X27_Y73_N22
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: FF_X35_Y69_N21
\A[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(6));

-- Location: FF_X35_Y69_N3
\B[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \Selector4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(6));

-- Location: IOIBUF_X35_Y73_N22
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: FF_X35_Y69_N23
\A[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(5));

-- Location: FF_X35_Y69_N1
\B[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \Selector4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(5));

-- Location: IOIBUF_X31_Y73_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: FF_X35_Y69_N31
\A[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(4));

-- Location: FF_X35_Y69_N15
\B[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \Selector4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(4));

-- Location: IOIBUF_X27_Y73_N15
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: FF_X35_Y69_N5
\B[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \Selector4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(3));

-- Location: FF_X35_Y69_N19
\A[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(3));

-- Location: IOIBUF_X38_Y73_N15
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: FF_X35_Y69_N11
\B[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \Selector4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(2));

-- Location: FF_X35_Y69_N25
\A[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(2));

-- Location: IOIBUF_X35_Y73_N15
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: FF_X35_Y69_N27
\B[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	ena => \Selector4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(1));

-- Location: FF_X35_Y69_N29
\A[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	ena => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(1));

-- Location: IOIBUF_X31_Y73_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: FF_X35_Y69_N13
\B[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	ena => \Selector4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(0));

-- Location: FF_X35_Y69_N17
\A[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	ena => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(0));

-- Location: LCCOMB_X35_Y69_N0
\median_inst|div|current_A[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \median_inst|div|current_A[1]~16_cout\ = CARRY((B(0) & A(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => B(0),
	datab => A(0),
	datad => VCC,
	cout => \median_inst|div|current_A[1]~16_cout\);

-- Location: LCCOMB_X35_Y69_N2
\median_inst|div|current_A[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \median_inst|div|current_A[1]~17_combout\ = (B(1) & ((A(1) & (\median_inst|div|current_A[1]~16_cout\ & VCC)) # (!A(1) & (!\median_inst|div|current_A[1]~16_cout\)))) # (!B(1) & ((A(1) & (!\median_inst|div|current_A[1]~16_cout\)) # (!A(1) & 
-- ((\median_inst|div|current_A[1]~16_cout\) # (GND)))))
-- \median_inst|div|current_A[1]~18\ = CARRY((B(1) & (!A(1) & !\median_inst|div|current_A[1]~16_cout\)) # (!B(1) & ((!\median_inst|div|current_A[1]~16_cout\) # (!A(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => B(1),
	datab => A(1),
	datad => VCC,
	cin => \median_inst|div|current_A[1]~16_cout\,
	combout => \median_inst|div|current_A[1]~17_combout\,
	cout => \median_inst|div|current_A[1]~18\);

-- Location: LCCOMB_X35_Y69_N4
\median_inst|div|current_A[2]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \median_inst|div|current_A[2]~19_combout\ = ((B(2) $ (A(2) $ (!\median_inst|div|current_A[1]~18\)))) # (GND)
-- \median_inst|div|current_A[2]~20\ = CARRY((B(2) & ((A(2)) # (!\median_inst|div|current_A[1]~18\))) # (!B(2) & (A(2) & !\median_inst|div|current_A[1]~18\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => B(2),
	datab => A(2),
	datad => VCC,
	cin => \median_inst|div|current_A[1]~18\,
	combout => \median_inst|div|current_A[2]~19_combout\,
	cout => \median_inst|div|current_A[2]~20\);

-- Location: LCCOMB_X35_Y69_N6
\median_inst|div|current_A[3]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \median_inst|div|current_A[3]~21_combout\ = (B(3) & ((A(3) & (\median_inst|div|current_A[2]~20\ & VCC)) # (!A(3) & (!\median_inst|div|current_A[2]~20\)))) # (!B(3) & ((A(3) & (!\median_inst|div|current_A[2]~20\)) # (!A(3) & 
-- ((\median_inst|div|current_A[2]~20\) # (GND)))))
-- \median_inst|div|current_A[3]~22\ = CARRY((B(3) & (!A(3) & !\median_inst|div|current_A[2]~20\)) # (!B(3) & ((!\median_inst|div|current_A[2]~20\) # (!A(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => B(3),
	datab => A(3),
	datad => VCC,
	cin => \median_inst|div|current_A[2]~20\,
	combout => \median_inst|div|current_A[3]~21_combout\,
	cout => \median_inst|div|current_A[3]~22\);

-- Location: LCCOMB_X35_Y69_N8
\median_inst|div|current_A[4]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \median_inst|div|current_A[4]~23_combout\ = ((A(4) $ (B(4) $ (!\median_inst|div|current_A[3]~22\)))) # (GND)
-- \median_inst|div|current_A[4]~24\ = CARRY((A(4) & ((B(4)) # (!\median_inst|div|current_A[3]~22\))) # (!A(4) & (B(4) & !\median_inst|div|current_A[3]~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => A(4),
	datab => B(4),
	datad => VCC,
	cin => \median_inst|div|current_A[3]~22\,
	combout => \median_inst|div|current_A[4]~23_combout\,
	cout => \median_inst|div|current_A[4]~24\);

-- Location: LCCOMB_X35_Y69_N10
\median_inst|div|current_A[5]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \median_inst|div|current_A[5]~25_combout\ = (A(5) & ((B(5) & (\median_inst|div|current_A[4]~24\ & VCC)) # (!B(5) & (!\median_inst|div|current_A[4]~24\)))) # (!A(5) & ((B(5) & (!\median_inst|div|current_A[4]~24\)) # (!B(5) & 
-- ((\median_inst|div|current_A[4]~24\) # (GND)))))
-- \median_inst|div|current_A[5]~26\ = CARRY((A(5) & (!B(5) & !\median_inst|div|current_A[4]~24\)) # (!A(5) & ((!\median_inst|div|current_A[4]~24\) # (!B(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => A(5),
	datab => B(5),
	datad => VCC,
	cin => \median_inst|div|current_A[4]~24\,
	combout => \median_inst|div|current_A[5]~25_combout\,
	cout => \median_inst|div|current_A[5]~26\);

-- Location: LCCOMB_X35_Y69_N12
\median_inst|div|current_A[6]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \median_inst|div|current_A[6]~27_combout\ = ((A(6) $ (B(6) $ (!\median_inst|div|current_A[5]~26\)))) # (GND)
-- \median_inst|div|current_A[6]~28\ = CARRY((A(6) & ((B(6)) # (!\median_inst|div|current_A[5]~26\))) # (!A(6) & (B(6) & !\median_inst|div|current_A[5]~26\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => A(6),
	datab => B(6),
	datad => VCC,
	cin => \median_inst|div|current_A[5]~26\,
	combout => \median_inst|div|current_A[6]~27_combout\,
	cout => \median_inst|div|current_A[6]~28\);

-- Location: LCCOMB_X35_Y69_N14
\median_inst|div|current_A[7]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \median_inst|div|current_A[7]~29_combout\ = (A(7) & ((B(7) & (\median_inst|div|current_A[6]~28\ & VCC)) # (!B(7) & (!\median_inst|div|current_A[6]~28\)))) # (!A(7) & ((B(7) & (!\median_inst|div|current_A[6]~28\)) # (!B(7) & 
-- ((\median_inst|div|current_A[6]~28\) # (GND)))))
-- \median_inst|div|current_A[7]~30\ = CARRY((A(7) & (!B(7) & !\median_inst|div|current_A[6]~28\)) # (!A(7) & ((!\median_inst|div|current_A[6]~28\) # (!B(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => A(7),
	datab => B(7),
	datad => VCC,
	cin => \median_inst|div|current_A[6]~28\,
	combout => \median_inst|div|current_A[7]~29_combout\,
	cout => \median_inst|div|current_A[7]~30\);

-- Location: LCCOMB_X35_Y69_N16
\median_inst|div|current_A[8]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \median_inst|div|current_A[8]~31_combout\ = ((A(8) $ (B(8) $ (!\median_inst|div|current_A[7]~30\)))) # (GND)
-- \median_inst|div|current_A[8]~32\ = CARRY((A(8) & ((B(8)) # (!\median_inst|div|current_A[7]~30\))) # (!A(8) & (B(8) & !\median_inst|div|current_A[7]~30\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => A(8),
	datab => B(8),
	datad => VCC,
	cin => \median_inst|div|current_A[7]~30\,
	combout => \median_inst|div|current_A[8]~31_combout\,
	cout => \median_inst|div|current_A[8]~32\);

-- Location: LCCOMB_X35_Y69_N18
\median_inst|div|current_A[9]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \median_inst|div|current_A[9]~33_combout\ = (B(9) & ((A(9) & (\median_inst|div|current_A[8]~32\ & VCC)) # (!A(9) & (!\median_inst|div|current_A[8]~32\)))) # (!B(9) & ((A(9) & (!\median_inst|div|current_A[8]~32\)) # (!A(9) & 
-- ((\median_inst|div|current_A[8]~32\) # (GND)))))
-- \median_inst|div|current_A[9]~34\ = CARRY((B(9) & (!A(9) & !\median_inst|div|current_A[8]~32\)) # (!B(9) & ((!\median_inst|div|current_A[8]~32\) # (!A(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => B(9),
	datab => A(9),
	datad => VCC,
	cin => \median_inst|div|current_A[8]~32\,
	combout => \median_inst|div|current_A[9]~33_combout\,
	cout => \median_inst|div|current_A[9]~34\);

-- Location: LCCOMB_X35_Y69_N20
\median_inst|div|current_A[10]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \median_inst|div|current_A[10]~35_combout\ = ((B(10) $ (A(10) $ (!\median_inst|div|current_A[9]~34\)))) # (GND)
-- \median_inst|div|current_A[10]~36\ = CARRY((B(10) & ((A(10)) # (!\median_inst|div|current_A[9]~34\))) # (!B(10) & (A(10) & !\median_inst|div|current_A[9]~34\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => B(10),
	datab => A(10),
	datad => VCC,
	cin => \median_inst|div|current_A[9]~34\,
	combout => \median_inst|div|current_A[10]~35_combout\,
	cout => \median_inst|div|current_A[10]~36\);

-- Location: LCCOMB_X35_Y69_N22
\median_inst|div|current_A[11]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \median_inst|div|current_A[11]~37_combout\ = (B(11) & ((A(11) & (\median_inst|div|current_A[10]~36\ & VCC)) # (!A(11) & (!\median_inst|div|current_A[10]~36\)))) # (!B(11) & ((A(11) & (!\median_inst|div|current_A[10]~36\)) # (!A(11) & 
-- ((\median_inst|div|current_A[10]~36\) # (GND)))))
-- \median_inst|div|current_A[11]~38\ = CARRY((B(11) & (!A(11) & !\median_inst|div|current_A[10]~36\)) # (!B(11) & ((!\median_inst|div|current_A[10]~36\) # (!A(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => B(11),
	datab => A(11),
	datad => VCC,
	cin => \median_inst|div|current_A[10]~36\,
	combout => \median_inst|div|current_A[11]~37_combout\,
	cout => \median_inst|div|current_A[11]~38\);

-- Location: LCCOMB_X35_Y69_N24
\median_inst|div|current_A[12]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \median_inst|div|current_A[12]~39_combout\ = ((A(12) $ (B(12) $ (!\median_inst|div|current_A[11]~38\)))) # (GND)
-- \median_inst|div|current_A[12]~40\ = CARRY((A(12) & ((B(12)) # (!\median_inst|div|current_A[11]~38\))) # (!A(12) & (B(12) & !\median_inst|div|current_A[11]~38\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => A(12),
	datab => B(12),
	datad => VCC,
	cin => \median_inst|div|current_A[11]~38\,
	combout => \median_inst|div|current_A[12]~39_combout\,
	cout => \median_inst|div|current_A[12]~40\);

-- Location: LCCOMB_X35_Y69_N26
\median_inst|div|current_A[13]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \median_inst|div|current_A[13]~41_combout\ = (A(13) & ((B(13) & (\median_inst|div|current_A[12]~40\ & VCC)) # (!B(13) & (!\median_inst|div|current_A[12]~40\)))) # (!A(13) & ((B(13) & (!\median_inst|div|current_A[12]~40\)) # (!B(13) & 
-- ((\median_inst|div|current_A[12]~40\) # (GND)))))
-- \median_inst|div|current_A[13]~42\ = CARRY((A(13) & (!B(13) & !\median_inst|div|current_A[12]~40\)) # (!A(13) & ((!\median_inst|div|current_A[12]~40\) # (!B(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => A(13),
	datab => B(13),
	datad => VCC,
	cin => \median_inst|div|current_A[12]~40\,
	combout => \median_inst|div|current_A[13]~41_combout\,
	cout => \median_inst|div|current_A[13]~42\);

-- Location: LCCOMB_X35_Y69_N28
\median_inst|div|current_A[14]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \median_inst|div|current_A[14]~43_combout\ = ((A(14) $ (B(14) $ (!\median_inst|div|current_A[13]~42\)))) # (GND)
-- \median_inst|div|current_A[14]~44\ = CARRY((A(14) & ((B(14)) # (!\median_inst|div|current_A[13]~42\))) # (!A(14) & (B(14) & !\median_inst|div|current_A[13]~42\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => A(14),
	datab => B(14),
	datad => VCC,
	cin => \median_inst|div|current_A[13]~42\,
	combout => \median_inst|div|current_A[14]~43_combout\,
	cout => \median_inst|div|current_A[14]~44\);

-- Location: LCCOMB_X35_Y69_N30
\median_inst|div|current_A[15]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \median_inst|div|current_A[15]~45_combout\ = B(15) $ (\median_inst|div|current_A[14]~44\ $ (A(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => B(15),
	datad => A(15),
	cin => \median_inst|div|current_A[14]~44\,
	combout => \median_inst|div|current_A[15]~45_combout\);

-- Location: LCCOMB_X40_Y69_N6
\median_inst|div|current_A[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \median_inst|div|current_A[15]~feeder_combout\ = \median_inst|div|current_A[15]~45_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \median_inst|div|current_A[15]~45_combout\,
	combout => \median_inst|div|current_A[15]~feeder_combout\);

-- Location: LCCOMB_X39_Y69_N0
\median_inst|div|current_A[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \median_inst|div|current_A[14]~feeder_combout\ = \median_inst|div|current_A[14]~43_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \median_inst|div|current_A[14]~43_combout\,
	combout => \median_inst|div|current_A[14]~feeder_combout\);

-- Location: LCCOMB_X40_Y69_N20
\median_inst|div|current_A[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \median_inst|div|current_A[13]~feeder_combout\ = \median_inst|div|current_A[13]~41_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \median_inst|div|current_A[13]~41_combout\,
	combout => \median_inst|div|current_A[13]~feeder_combout\);

-- Location: LCCOMB_X40_Y69_N10
\median_inst|div|current_A[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \median_inst|div|current_A[12]~feeder_combout\ = \median_inst|div|current_A[12]~39_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \median_inst|div|current_A[12]~39_combout\,
	combout => \median_inst|div|current_A[12]~feeder_combout\);

-- Location: LCCOMB_X40_Y69_N0
\median_inst|div|current_A[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \median_inst|div|current_A[11]~feeder_combout\ = \median_inst|div|current_A[11]~37_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \median_inst|div|current_A[11]~37_combout\,
	combout => \median_inst|div|current_A[11]~feeder_combout\);

-- Location: LCCOMB_X40_Y69_N26
\median_inst|div|current_A[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \median_inst|div|current_A[10]~feeder_combout\ = \median_inst|div|current_A[10]~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \median_inst|div|current_A[10]~35_combout\,
	combout => \median_inst|div|current_A[10]~feeder_combout\);

-- Location: LCCOMB_X40_Y69_N8
\median_inst|div|current_A[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \median_inst|div|current_A[9]~feeder_combout\ = \median_inst|div|current_A[9]~33_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \median_inst|div|current_A[9]~33_combout\,
	combout => \median_inst|div|current_A[9]~feeder_combout\);

-- Location: LCCOMB_X40_Y69_N2
\median_inst|div|current_A[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \median_inst|div|current_A[8]~feeder_combout\ = \median_inst|div|current_A[8]~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \median_inst|div|current_A[8]~31_combout\,
	combout => \median_inst|div|current_A[8]~feeder_combout\);

-- Location: LCCOMB_X40_Y69_N12
\median_inst|div|current_A[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \median_inst|div|current_A[7]~feeder_combout\ = \median_inst|div|current_A[7]~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \median_inst|div|current_A[7]~29_combout\,
	combout => \median_inst|div|current_A[7]~feeder_combout\);

-- Location: LCCOMB_X40_Y69_N14
\median_inst|div|current_A[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \median_inst|div|current_A[6]~feeder_combout\ = \median_inst|div|current_A[6]~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \median_inst|div|current_A[6]~27_combout\,
	combout => \median_inst|div|current_A[6]~feeder_combout\);

-- Location: LCCOMB_X40_Y69_N4
\median_inst|div|current_A[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \median_inst|div|current_A[5]~feeder_combout\ = \median_inst|div|current_A[5]~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \median_inst|div|current_A[5]~25_combout\,
	combout => \median_inst|div|current_A[5]~feeder_combout\);

-- Location: LCCOMB_X38_Y69_N14
\median_inst|div|current_A[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \median_inst|div|current_A[4]~feeder_combout\ = \median_inst|div|current_A[4]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \median_inst|div|current_A[4]~23_combout\,
	combout => \median_inst|div|current_A[4]~feeder_combout\);

-- Location: LCCOMB_X38_Y69_N28
\median_inst|div|current_A[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \median_inst|div|current_A[3]~feeder_combout\ = \median_inst|div|current_A[3]~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \median_inst|div|current_A[3]~21_combout\,
	combout => \median_inst|div|current_A[3]~feeder_combout\);

-- Location: LCCOMB_X38_Y69_N6
\median_inst|div|current_A[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \median_inst|div|current_A[2]~feeder_combout\ = \median_inst|div|current_A[2]~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \median_inst|div|current_A[2]~19_combout\,
	combout => \median_inst|div|current_A[2]~feeder_combout\);

-- Location: LCCOMB_X38_Y69_N16
\median_inst|div|current_A[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \median_inst|div|current_A[1]~feeder_combout\ = \median_inst|div|current_A[1]~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \median_inst|div|current_A[1]~17_combout\,
	combout => \median_inst|div|current_A[1]~feeder_combout\);

-- Location: LCCOMB_X38_Y69_N30
\median_inst|div|current_A[1]~_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \median_inst|div|current_A[1]~_wirecell_combout\ = !\median_inst|div|current_A\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \median_inst|div|current_A\(1),
	combout => \median_inst|div|current_A[1]~_wirecell_combout\);

-- Location: FF_X38_Y69_N17
\median_inst|div|current_A[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \median_inst|div|current_A[1]~feeder_combout\,
	asdata => \median_inst|div|current_A[1]~_wirecell_combout\,
	sload => \median_inst|div|state~q\,
	ena => \median_inst|div|counter~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \median_inst|div|current_A\(1));

-- Location: LCCOMB_X39_Y69_N2
\median_inst|div|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \median_inst|div|Add0~1_cout\ = CARRY(\median_inst|div|current_A\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \median_inst|div|current_A\(1),
	datad => VCC,
	cout => \median_inst|div|Add0~1_cout\);

-- Location: LCCOMB_X39_Y69_N4
\median_inst|div|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \median_inst|div|Add0~2_combout\ = (\median_inst|div|current_A\(2) & (\median_inst|div|Add0~1_cout\ & VCC)) # (!\median_inst|div|current_A\(2) & (!\median_inst|div|Add0~1_cout\))
-- \median_inst|div|Add0~3\ = CARRY((!\median_inst|div|current_A\(2) & !\median_inst|div|Add0~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \median_inst|div|current_A\(2),
	datad => VCC,
	cin => \median_inst|div|Add0~1_cout\,
	combout => \median_inst|div|Add0~2_combout\,
	cout => \median_inst|div|Add0~3\);

-- Location: FF_X38_Y69_N7
\median_inst|div|current_A[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \median_inst|div|current_A[2]~feeder_combout\,
	asdata => \median_inst|div|Add0~2_combout\,
	sload => \median_inst|div|state~q\,
	ena => \median_inst|div|counter~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \median_inst|div|current_A\(2));

-- Location: LCCOMB_X39_Y69_N6
\median_inst|div|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \median_inst|div|Add0~4_combout\ = (\median_inst|div|current_A\(3) & ((GND) # (!\median_inst|div|Add0~3\))) # (!\median_inst|div|current_A\(3) & (\median_inst|div|Add0~3\ $ (GND)))
-- \median_inst|div|Add0~5\ = CARRY((\median_inst|div|current_A\(3)) # (!\median_inst|div|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \median_inst|div|current_A\(3),
	datad => VCC,
	cin => \median_inst|div|Add0~3\,
	combout => \median_inst|div|Add0~4_combout\,
	cout => \median_inst|div|Add0~5\);

-- Location: FF_X38_Y69_N29
\median_inst|div|current_A[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \median_inst|div|current_A[3]~feeder_combout\,
	asdata => \median_inst|div|Add0~4_combout\,
	sload => \median_inst|div|state~q\,
	ena => \median_inst|div|counter~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \median_inst|div|current_A\(3));

-- Location: LCCOMB_X39_Y69_N8
\median_inst|div|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \median_inst|div|Add0~6_combout\ = (\median_inst|div|current_A\(4) & (\median_inst|div|Add0~5\ & VCC)) # (!\median_inst|div|current_A\(4) & (!\median_inst|div|Add0~5\))
-- \median_inst|div|Add0~7\ = CARRY((!\median_inst|div|current_A\(4) & !\median_inst|div|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \median_inst|div|current_A\(4),
	datad => VCC,
	cin => \median_inst|div|Add0~5\,
	combout => \median_inst|div|Add0~6_combout\,
	cout => \median_inst|div|Add0~7\);

-- Location: FF_X38_Y69_N15
\median_inst|div|current_A[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \median_inst|div|current_A[4]~feeder_combout\,
	asdata => \median_inst|div|Add0~6_combout\,
	sload => \median_inst|div|state~q\,
	ena => \median_inst|div|counter~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \median_inst|div|current_A\(4));

-- Location: LCCOMB_X39_Y69_N10
\median_inst|div|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \median_inst|div|Add0~8_combout\ = (\median_inst|div|current_A\(5) & ((GND) # (!\median_inst|div|Add0~7\))) # (!\median_inst|div|current_A\(5) & (\median_inst|div|Add0~7\ $ (GND)))
-- \median_inst|div|Add0~9\ = CARRY((\median_inst|div|current_A\(5)) # (!\median_inst|div|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \median_inst|div|current_A\(5),
	datad => VCC,
	cin => \median_inst|div|Add0~7\,
	combout => \median_inst|div|Add0~8_combout\,
	cout => \median_inst|div|Add0~9\);

-- Location: FF_X40_Y69_N5
\median_inst|div|current_A[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \median_inst|div|current_A[5]~feeder_combout\,
	asdata => \median_inst|div|Add0~8_combout\,
	sload => \median_inst|div|state~q\,
	ena => \median_inst|div|counter~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \median_inst|div|current_A\(5));

-- Location: LCCOMB_X39_Y69_N12
\median_inst|div|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \median_inst|div|Add0~10_combout\ = (\median_inst|div|current_A\(6) & (\median_inst|div|Add0~9\ & VCC)) # (!\median_inst|div|current_A\(6) & (!\median_inst|div|Add0~9\))
-- \median_inst|div|Add0~11\ = CARRY((!\median_inst|div|current_A\(6) & !\median_inst|div|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \median_inst|div|current_A\(6),
	datad => VCC,
	cin => \median_inst|div|Add0~9\,
	combout => \median_inst|div|Add0~10_combout\,
	cout => \median_inst|div|Add0~11\);

-- Location: FF_X40_Y69_N15
\median_inst|div|current_A[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \median_inst|div|current_A[6]~feeder_combout\,
	asdata => \median_inst|div|Add0~10_combout\,
	sload => \median_inst|div|state~q\,
	ena => \median_inst|div|counter~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \median_inst|div|current_A\(6));

-- Location: LCCOMB_X39_Y69_N14
\median_inst|div|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \median_inst|div|Add0~12_combout\ = (\median_inst|div|current_A\(7) & ((GND) # (!\median_inst|div|Add0~11\))) # (!\median_inst|div|current_A\(7) & (\median_inst|div|Add0~11\ $ (GND)))
-- \median_inst|div|Add0~13\ = CARRY((\median_inst|div|current_A\(7)) # (!\median_inst|div|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \median_inst|div|current_A\(7),
	datad => VCC,
	cin => \median_inst|div|Add0~11\,
	combout => \median_inst|div|Add0~12_combout\,
	cout => \median_inst|div|Add0~13\);

-- Location: FF_X40_Y69_N13
\median_inst|div|current_A[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \median_inst|div|current_A[7]~feeder_combout\,
	asdata => \median_inst|div|Add0~12_combout\,
	sload => \median_inst|div|state~q\,
	ena => \median_inst|div|counter~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \median_inst|div|current_A\(7));

-- Location: LCCOMB_X39_Y69_N16
\median_inst|div|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \median_inst|div|Add0~14_combout\ = (\median_inst|div|current_A\(8) & (\median_inst|div|Add0~13\ & VCC)) # (!\median_inst|div|current_A\(8) & (!\median_inst|div|Add0~13\))
-- \median_inst|div|Add0~15\ = CARRY((!\median_inst|div|current_A\(8) & !\median_inst|div|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \median_inst|div|current_A\(8),
	datad => VCC,
	cin => \median_inst|div|Add0~13\,
	combout => \median_inst|div|Add0~14_combout\,
	cout => \median_inst|div|Add0~15\);

-- Location: FF_X40_Y69_N3
\median_inst|div|current_A[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \median_inst|div|current_A[8]~feeder_combout\,
	asdata => \median_inst|div|Add0~14_combout\,
	sload => \median_inst|div|state~q\,
	ena => \median_inst|div|counter~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \median_inst|div|current_A\(8));

-- Location: LCCOMB_X39_Y69_N18
\median_inst|div|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \median_inst|div|Add0~16_combout\ = (\median_inst|div|current_A\(9) & ((GND) # (!\median_inst|div|Add0~15\))) # (!\median_inst|div|current_A\(9) & (\median_inst|div|Add0~15\ $ (GND)))
-- \median_inst|div|Add0~17\ = CARRY((\median_inst|div|current_A\(9)) # (!\median_inst|div|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \median_inst|div|current_A\(9),
	datad => VCC,
	cin => \median_inst|div|Add0~15\,
	combout => \median_inst|div|Add0~16_combout\,
	cout => \median_inst|div|Add0~17\);

-- Location: FF_X40_Y69_N9
\median_inst|div|current_A[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \median_inst|div|current_A[9]~feeder_combout\,
	asdata => \median_inst|div|Add0~16_combout\,
	sload => \median_inst|div|state~q\,
	ena => \median_inst|div|counter~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \median_inst|div|current_A\(9));

-- Location: LCCOMB_X39_Y69_N20
\median_inst|div|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \median_inst|div|Add0~18_combout\ = (\median_inst|div|current_A\(10) & (\median_inst|div|Add0~17\ & VCC)) # (!\median_inst|div|current_A\(10) & (!\median_inst|div|Add0~17\))
-- \median_inst|div|Add0~19\ = CARRY((!\median_inst|div|current_A\(10) & !\median_inst|div|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \median_inst|div|current_A\(10),
	datad => VCC,
	cin => \median_inst|div|Add0~17\,
	combout => \median_inst|div|Add0~18_combout\,
	cout => \median_inst|div|Add0~19\);

-- Location: FF_X40_Y69_N27
\median_inst|div|current_A[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \median_inst|div|current_A[10]~feeder_combout\,
	asdata => \median_inst|div|Add0~18_combout\,
	sload => \median_inst|div|state~q\,
	ena => \median_inst|div|counter~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \median_inst|div|current_A\(10));

-- Location: LCCOMB_X39_Y69_N22
\median_inst|div|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \median_inst|div|Add0~20_combout\ = (\median_inst|div|current_A\(11) & ((GND) # (!\median_inst|div|Add0~19\))) # (!\median_inst|div|current_A\(11) & (\median_inst|div|Add0~19\ $ (GND)))
-- \median_inst|div|Add0~21\ = CARRY((\median_inst|div|current_A\(11)) # (!\median_inst|div|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \median_inst|div|current_A\(11),
	datad => VCC,
	cin => \median_inst|div|Add0~19\,
	combout => \median_inst|div|Add0~20_combout\,
	cout => \median_inst|div|Add0~21\);

-- Location: FF_X40_Y69_N1
\median_inst|div|current_A[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \median_inst|div|current_A[11]~feeder_combout\,
	asdata => \median_inst|div|Add0~20_combout\,
	sload => \median_inst|div|state~q\,
	ena => \median_inst|div|counter~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \median_inst|div|current_A\(11));

-- Location: LCCOMB_X39_Y69_N24
\median_inst|div|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \median_inst|div|Add0~22_combout\ = (\median_inst|div|current_A\(12) & (\median_inst|div|Add0~21\ & VCC)) # (!\median_inst|div|current_A\(12) & (!\median_inst|div|Add0~21\))
-- \median_inst|div|Add0~23\ = CARRY((!\median_inst|div|current_A\(12) & !\median_inst|div|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \median_inst|div|current_A\(12),
	datad => VCC,
	cin => \median_inst|div|Add0~21\,
	combout => \median_inst|div|Add0~22_combout\,
	cout => \median_inst|div|Add0~23\);

-- Location: FF_X40_Y69_N11
\median_inst|div|current_A[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \median_inst|div|current_A[12]~feeder_combout\,
	asdata => \median_inst|div|Add0~22_combout\,
	sload => \median_inst|div|state~q\,
	ena => \median_inst|div|counter~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \median_inst|div|current_A\(12));

-- Location: LCCOMB_X39_Y69_N26
\median_inst|div|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \median_inst|div|Add0~24_combout\ = (\median_inst|div|current_A\(13) & ((GND) # (!\median_inst|div|Add0~23\))) # (!\median_inst|div|current_A\(13) & (\median_inst|div|Add0~23\ $ (GND)))
-- \median_inst|div|Add0~25\ = CARRY((\median_inst|div|current_A\(13)) # (!\median_inst|div|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \median_inst|div|current_A\(13),
	datad => VCC,
	cin => \median_inst|div|Add0~23\,
	combout => \median_inst|div|Add0~24_combout\,
	cout => \median_inst|div|Add0~25\);

-- Location: FF_X40_Y69_N21
\median_inst|div|current_A[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \median_inst|div|current_A[13]~feeder_combout\,
	asdata => \median_inst|div|Add0~24_combout\,
	sload => \median_inst|div|state~q\,
	ena => \median_inst|div|counter~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \median_inst|div|current_A\(13));

-- Location: LCCOMB_X39_Y69_N28
\median_inst|div|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \median_inst|div|Add0~26_combout\ = (\median_inst|div|current_A\(14) & (\median_inst|div|Add0~25\ & VCC)) # (!\median_inst|div|current_A\(14) & (!\median_inst|div|Add0~25\))
-- \median_inst|div|Add0~27\ = CARRY((!\median_inst|div|current_A\(14) & !\median_inst|div|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \median_inst|div|current_A\(14),
	datad => VCC,
	cin => \median_inst|div|Add0~25\,
	combout => \median_inst|div|Add0~26_combout\,
	cout => \median_inst|div|Add0~27\);

-- Location: FF_X39_Y69_N1
\median_inst|div|current_A[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \median_inst|div|current_A[14]~feeder_combout\,
	asdata => \median_inst|div|Add0~26_combout\,
	sload => \median_inst|div|state~q\,
	ena => \median_inst|div|counter~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \median_inst|div|current_A\(14));

-- Location: LCCOMB_X39_Y69_N30
\median_inst|div|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \median_inst|div|Add0~28_combout\ = \median_inst|div|Add0~27\ $ (\median_inst|div|current_A\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \median_inst|div|current_A\(15),
	cin => \median_inst|div|Add0~27\,
	combout => \median_inst|div|Add0~28_combout\);

-- Location: FF_X40_Y69_N7
\median_inst|div|current_A[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \median_inst|div|current_A[15]~feeder_combout\,
	asdata => \median_inst|div|Add0~28_combout\,
	sload => \median_inst|div|state~q\,
	ena => \median_inst|div|counter~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \median_inst|div|current_A\(15));

-- Location: LCCOMB_X40_Y69_N30
\median_inst|div|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \median_inst|div|LessThan0~3_combout\ = (\median_inst|div|current_A\(15)) # ((\median_inst|div|current_A\(14)) # (\median_inst|div|current_A\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \median_inst|div|current_A\(15),
	datac => \median_inst|div|current_A\(14),
	datad => \median_inst|div|current_A\(13),
	combout => \median_inst|div|LessThan0~3_combout\);

-- Location: LCCOMB_X40_Y69_N18
\median_inst|div|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \median_inst|div|LessThan0~1_combout\ = (\median_inst|div|current_A\(7)) # ((\median_inst|div|current_A\(6)) # ((\median_inst|div|current_A\(5)) # (\median_inst|div|current_A\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \median_inst|div|current_A\(7),
	datab => \median_inst|div|current_A\(6),
	datac => \median_inst|div|current_A\(5),
	datad => \median_inst|div|current_A\(8),
	combout => \median_inst|div|LessThan0~1_combout\);

-- Location: LCCOMB_X38_Y69_N0
\median_inst|div|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \median_inst|div|LessThan0~0_combout\ = (\median_inst|div|current_A\(2)) # ((\median_inst|div|current_A\(1)) # ((\median_inst|div|current_A\(4)) # (\median_inst|div|current_A\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \median_inst|div|current_A\(2),
	datab => \median_inst|div|current_A\(1),
	datac => \median_inst|div|current_A\(4),
	datad => \median_inst|div|current_A\(3),
	combout => \median_inst|div|LessThan0~0_combout\);

-- Location: LCCOMB_X40_Y69_N16
\median_inst|div|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \median_inst|div|LessThan0~2_combout\ = (\median_inst|div|current_A\(10)) # ((\median_inst|div|current_A\(11)) # ((\median_inst|div|current_A\(9)) # (\median_inst|div|current_A\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \median_inst|div|current_A\(10),
	datab => \median_inst|div|current_A\(11),
	datac => \median_inst|div|current_A\(9),
	datad => \median_inst|div|current_A\(12),
	combout => \median_inst|div|LessThan0~2_combout\);

-- Location: LCCOMB_X40_Y69_N24
\median_inst|div|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \median_inst|div|LessThan0~4_combout\ = (\median_inst|div|LessThan0~3_combout\) # ((\median_inst|div|LessThan0~1_combout\) # ((\median_inst|div|LessThan0~0_combout\) # (\median_inst|div|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \median_inst|div|LessThan0~3_combout\,
	datab => \median_inst|div|LessThan0~1_combout\,
	datac => \median_inst|div|LessThan0~0_combout\,
	datad => \median_inst|div|LessThan0~2_combout\,
	combout => \median_inst|div|LessThan0~4_combout\);

-- Location: LCCOMB_X32_Y69_N28
\median_inst|div|done~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \median_inst|div|done~0_combout\ = (\median_inst|div|done~q\) # (!\median_inst|div|LessThan0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \median_inst|div|done~q\,
	datad => \median_inst|div|LessThan0~4_combout\,
	combout => \median_inst|div|done~0_combout\);

-- Location: FF_X32_Y69_N29
\median_inst|div|done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \median_inst|div|done~0_combout\,
	sclr => \median_inst|div|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \median_inst|div|done~q\);

-- Location: LCCOMB_X32_Y69_N8
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\KEY[0]~input_o\ & ((\state.INPUT_B~q\) # ((!\median_inst|div|done~q\ & \state.ACTIVE~q\)))) # (!\KEY[0]~input_o\ & (!\median_inst|div|done~q\ & (\state.ACTIVE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \median_inst|div|done~q\,
	datac => \state.ACTIVE~q\,
	datad => \state.INPUT_B~q\,
	combout => \Selector4~0_combout\);

-- Location: FF_X32_Y69_N9
\state.ACTIVE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ACTIVE~q\);

-- Location: LCCOMB_X32_Y69_N20
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\state.ACTIVE~q\ & (((!\median_inst|div|done~q\)))) # (!\state.ACTIVE~q\ & ((\KEY[0]~input_o\) # ((\state.IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \state.ACTIVE~q\,
	datac => \state.IDLE~q\,
	datad => \median_inst|div|done~q\,
	combout => \Selector1~0_combout\);

-- Location: FF_X32_Y69_N21
\state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.IDLE~q\);

-- Location: LCCOMB_X32_Y69_N26
\state.INPUT_A~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.INPUT_A~0_combout\ = !\state.IDLE~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.IDLE~q\,
	combout => \state.INPUT_A~0_combout\);

-- Location: FF_X32_Y69_N27
\state.INPUT_A\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state.INPUT_A~0_combout\,
	ena => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.INPUT_A~q\);

-- Location: LCCOMB_X32_Y69_N18
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\state.ACTIVE~q\ & !\median_inst|div|done~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.ACTIVE~q\,
	datad => \median_inst|div|done~q\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X32_Y69_N6
\Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (\Selector0~0_combout\) # ((\start~q\ & ((\state.INPUT_A~q\) # (\state.INPUT_B~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.INPUT_A~q\,
	datab => \state.INPUT_B~q\,
	datac => \start~q\,
	datad => \Selector0~0_combout\,
	combout => \Selector0~1_combout\);

-- Location: FF_X32_Y69_N7
start : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \start~q\);

-- Location: LCCOMB_X40_Y69_N22
\median_inst|div|counter~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \median_inst|div|counter~18_combout\ = (\median_inst|div|state~q\ & ((\median_inst|div|LessThan0~4_combout\))) # (!\median_inst|div|state~q\ & (\start~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \median_inst|div|state~q\,
	datac => \start~q\,
	datad => \median_inst|div|LessThan0~4_combout\,
	combout => \median_inst|div|counter~18_combout\);

-- Location: LCCOMB_X40_Y69_N28
\median_inst|div|state~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \median_inst|div|state~feeder_combout\ = \median_inst|div|counter~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \median_inst|div|counter~18_combout\,
	combout => \median_inst|div|state~feeder_combout\);

-- Location: FF_X40_Y69_N29
\median_inst|div|state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \median_inst|div|state~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \median_inst|div|state~q\);

-- Location: FF_X41_Y69_N1
\median_inst|div|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \median_inst|div|counter[0]~16_combout\,
	sclr => \median_inst|div|ALT_INV_state~q\,
	ena => \median_inst|div|counter~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \median_inst|div|counter\(0));

-- Location: LCCOMB_X41_Y69_N2
\median_inst|div|counter[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \median_inst|div|counter[1]~19_combout\ = (\median_inst|div|counter\(1) & (!\median_inst|div|counter[0]~17\)) # (!\median_inst|div|counter\(1) & ((\median_inst|div|counter[0]~17\) # (GND)))
-- \median_inst|div|counter[1]~20\ = CARRY((!\median_inst|div|counter[0]~17\) # (!\median_inst|div|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \median_inst|div|counter\(1),
	datad => VCC,
	cin => \median_inst|div|counter[0]~17\,
	combout => \median_inst|div|counter[1]~19_combout\,
	cout => \median_inst|div|counter[1]~20\);

-- Location: FF_X41_Y69_N3
\median_inst|div|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \median_inst|div|counter[1]~19_combout\,
	sclr => \median_inst|div|ALT_INV_state~q\,
	ena => \median_inst|div|counter~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \median_inst|div|counter\(1));

-- Location: LCCOMB_X41_Y69_N4
\median_inst|div|counter[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \median_inst|div|counter[2]~21_combout\ = (\median_inst|div|counter\(2) & (\median_inst|div|counter[1]~20\ $ (GND))) # (!\median_inst|div|counter\(2) & (!\median_inst|div|counter[1]~20\ & VCC))
-- \median_inst|div|counter[2]~22\ = CARRY((\median_inst|div|counter\(2) & !\median_inst|div|counter[1]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \median_inst|div|counter\(2),
	datad => VCC,
	cin => \median_inst|div|counter[1]~20\,
	combout => \median_inst|div|counter[2]~21_combout\,
	cout => \median_inst|div|counter[2]~22\);

-- Location: FF_X41_Y69_N5
\median_inst|div|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \median_inst|div|counter[2]~21_combout\,
	sclr => \median_inst|div|ALT_INV_state~q\,
	ena => \median_inst|div|counter~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \median_inst|div|counter\(2));

-- Location: LCCOMB_X41_Y69_N6
\median_inst|div|counter[3]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \median_inst|div|counter[3]~23_combout\ = (\median_inst|div|counter\(3) & (!\median_inst|div|counter[2]~22\)) # (!\median_inst|div|counter\(3) & ((\median_inst|div|counter[2]~22\) # (GND)))
-- \median_inst|div|counter[3]~24\ = CARRY((!\median_inst|div|counter[2]~22\) # (!\median_inst|div|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \median_inst|div|counter\(3),
	datad => VCC,
	cin => \median_inst|div|counter[2]~22\,
	combout => \median_inst|div|counter[3]~23_combout\,
	cout => \median_inst|div|counter[3]~24\);

-- Location: FF_X41_Y69_N7
\median_inst|div|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \median_inst|div|counter[3]~23_combout\,
	sclr => \median_inst|div|ALT_INV_state~q\,
	ena => \median_inst|div|counter~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \median_inst|div|counter\(3));

-- Location: LCCOMB_X41_Y69_N8
\median_inst|div|counter[4]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \median_inst|div|counter[4]~25_combout\ = (\median_inst|div|counter\(4) & (\median_inst|div|counter[3]~24\ $ (GND))) # (!\median_inst|div|counter\(4) & (!\median_inst|div|counter[3]~24\ & VCC))
-- \median_inst|div|counter[4]~26\ = CARRY((\median_inst|div|counter\(4) & !\median_inst|div|counter[3]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \median_inst|div|counter\(4),
	datad => VCC,
	cin => \median_inst|div|counter[3]~24\,
	combout => \median_inst|div|counter[4]~25_combout\,
	cout => \median_inst|div|counter[4]~26\);

-- Location: FF_X41_Y69_N9
\median_inst|div|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \median_inst|div|counter[4]~25_combout\,
	sclr => \median_inst|div|ALT_INV_state~q\,
	ena => \median_inst|div|counter~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \median_inst|div|counter\(4));

-- Location: LCCOMB_X41_Y69_N10
\median_inst|div|counter[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \median_inst|div|counter[5]~27_combout\ = (\median_inst|div|counter\(5) & (!\median_inst|div|counter[4]~26\)) # (!\median_inst|div|counter\(5) & ((\median_inst|div|counter[4]~26\) # (GND)))
-- \median_inst|div|counter[5]~28\ = CARRY((!\median_inst|div|counter[4]~26\) # (!\median_inst|div|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \median_inst|div|counter\(5),
	datad => VCC,
	cin => \median_inst|div|counter[4]~26\,
	combout => \median_inst|div|counter[5]~27_combout\,
	cout => \median_inst|div|counter[5]~28\);

-- Location: FF_X41_Y69_N11
\median_inst|div|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \median_inst|div|counter[5]~27_combout\,
	sclr => \median_inst|div|ALT_INV_state~q\,
	ena => \median_inst|div|counter~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \median_inst|div|counter\(5));

-- Location: LCCOMB_X41_Y69_N12
\median_inst|div|counter[6]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \median_inst|div|counter[6]~29_combout\ = (\median_inst|div|counter\(6) & (\median_inst|div|counter[5]~28\ $ (GND))) # (!\median_inst|div|counter\(6) & (!\median_inst|div|counter[5]~28\ & VCC))
-- \median_inst|div|counter[6]~30\ = CARRY((\median_inst|div|counter\(6) & !\median_inst|div|counter[5]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \median_inst|div|counter\(6),
	datad => VCC,
	cin => \median_inst|div|counter[5]~28\,
	combout => \median_inst|div|counter[6]~29_combout\,
	cout => \median_inst|div|counter[6]~30\);

-- Location: FF_X41_Y69_N13
\median_inst|div|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \median_inst|div|counter[6]~29_combout\,
	sclr => \median_inst|div|ALT_INV_state~q\,
	ena => \median_inst|div|counter~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \median_inst|div|counter\(6));

-- Location: LCCOMB_X41_Y69_N14
\median_inst|div|counter[7]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \median_inst|div|counter[7]~31_combout\ = (\median_inst|div|counter\(7) & (!\median_inst|div|counter[6]~30\)) # (!\median_inst|div|counter\(7) & ((\median_inst|div|counter[6]~30\) # (GND)))
-- \median_inst|div|counter[7]~32\ = CARRY((!\median_inst|div|counter[6]~30\) # (!\median_inst|div|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \median_inst|div|counter\(7),
	datad => VCC,
	cin => \median_inst|div|counter[6]~30\,
	combout => \median_inst|div|counter[7]~31_combout\,
	cout => \median_inst|div|counter[7]~32\);

-- Location: FF_X41_Y69_N15
\median_inst|div|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \median_inst|div|counter[7]~31_combout\,
	sclr => \median_inst|div|ALT_INV_state~q\,
	ena => \median_inst|div|counter~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \median_inst|div|counter\(7));

-- Location: LCCOMB_X41_Y69_N16
\median_inst|div|counter[8]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \median_inst|div|counter[8]~33_combout\ = (\median_inst|div|counter\(8) & (\median_inst|div|counter[7]~32\ $ (GND))) # (!\median_inst|div|counter\(8) & (!\median_inst|div|counter[7]~32\ & VCC))
-- \median_inst|div|counter[8]~34\ = CARRY((\median_inst|div|counter\(8) & !\median_inst|div|counter[7]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \median_inst|div|counter\(8),
	datad => VCC,
	cin => \median_inst|div|counter[7]~32\,
	combout => \median_inst|div|counter[8]~33_combout\,
	cout => \median_inst|div|counter[8]~34\);

-- Location: FF_X41_Y69_N17
\median_inst|div|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \median_inst|div|counter[8]~33_combout\,
	sclr => \median_inst|div|ALT_INV_state~q\,
	ena => \median_inst|div|counter~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \median_inst|div|counter\(8));

-- Location: LCCOMB_X41_Y69_N18
\median_inst|div|counter[9]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \median_inst|div|counter[9]~35_combout\ = (\median_inst|div|counter\(9) & (!\median_inst|div|counter[8]~34\)) # (!\median_inst|div|counter\(9) & ((\median_inst|div|counter[8]~34\) # (GND)))
-- \median_inst|div|counter[9]~36\ = CARRY((!\median_inst|div|counter[8]~34\) # (!\median_inst|div|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \median_inst|div|counter\(9),
	datad => VCC,
	cin => \median_inst|div|counter[8]~34\,
	combout => \median_inst|div|counter[9]~35_combout\,
	cout => \median_inst|div|counter[9]~36\);

-- Location: FF_X41_Y69_N19
\median_inst|div|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \median_inst|div|counter[9]~35_combout\,
	sclr => \median_inst|div|ALT_INV_state~q\,
	ena => \median_inst|div|counter~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \median_inst|div|counter\(9));

-- Location: LCCOMB_X41_Y69_N20
\median_inst|div|counter[10]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \median_inst|div|counter[10]~37_combout\ = (\median_inst|div|counter\(10) & (\median_inst|div|counter[9]~36\ $ (GND))) # (!\median_inst|div|counter\(10) & (!\median_inst|div|counter[9]~36\ & VCC))
-- \median_inst|div|counter[10]~38\ = CARRY((\median_inst|div|counter\(10) & !\median_inst|div|counter[9]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \median_inst|div|counter\(10),
	datad => VCC,
	cin => \median_inst|div|counter[9]~36\,
	combout => \median_inst|div|counter[10]~37_combout\,
	cout => \median_inst|div|counter[10]~38\);

-- Location: FF_X41_Y69_N21
\median_inst|div|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \median_inst|div|counter[10]~37_combout\,
	sclr => \median_inst|div|ALT_INV_state~q\,
	ena => \median_inst|div|counter~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \median_inst|div|counter\(10));

-- Location: LCCOMB_X41_Y69_N22
\median_inst|div|counter[11]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \median_inst|div|counter[11]~39_combout\ = (\median_inst|div|counter\(11) & (!\median_inst|div|counter[10]~38\)) # (!\median_inst|div|counter\(11) & ((\median_inst|div|counter[10]~38\) # (GND)))
-- \median_inst|div|counter[11]~40\ = CARRY((!\median_inst|div|counter[10]~38\) # (!\median_inst|div|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \median_inst|div|counter\(11),
	datad => VCC,
	cin => \median_inst|div|counter[10]~38\,
	combout => \median_inst|div|counter[11]~39_combout\,
	cout => \median_inst|div|counter[11]~40\);

-- Location: FF_X41_Y69_N23
\median_inst|div|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \median_inst|div|counter[11]~39_combout\,
	sclr => \median_inst|div|ALT_INV_state~q\,
	ena => \median_inst|div|counter~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \median_inst|div|counter\(11));

-- Location: LCCOMB_X41_Y69_N24
\median_inst|div|counter[12]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \median_inst|div|counter[12]~41_combout\ = (\median_inst|div|counter\(12) & (\median_inst|div|counter[11]~40\ $ (GND))) # (!\median_inst|div|counter\(12) & (!\median_inst|div|counter[11]~40\ & VCC))
-- \median_inst|div|counter[12]~42\ = CARRY((\median_inst|div|counter\(12) & !\median_inst|div|counter[11]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \median_inst|div|counter\(12),
	datad => VCC,
	cin => \median_inst|div|counter[11]~40\,
	combout => \median_inst|div|counter[12]~41_combout\,
	cout => \median_inst|div|counter[12]~42\);

-- Location: FF_X41_Y69_N25
\median_inst|div|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \median_inst|div|counter[12]~41_combout\,
	sclr => \median_inst|div|ALT_INV_state~q\,
	ena => \median_inst|div|counter~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \median_inst|div|counter\(12));

-- Location: LCCOMB_X41_Y69_N26
\median_inst|div|counter[13]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \median_inst|div|counter[13]~43_combout\ = (\median_inst|div|counter\(13) & (!\median_inst|div|counter[12]~42\)) # (!\median_inst|div|counter\(13) & ((\median_inst|div|counter[12]~42\) # (GND)))
-- \median_inst|div|counter[13]~44\ = CARRY((!\median_inst|div|counter[12]~42\) # (!\median_inst|div|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \median_inst|div|counter\(13),
	datad => VCC,
	cin => \median_inst|div|counter[12]~42\,
	combout => \median_inst|div|counter[13]~43_combout\,
	cout => \median_inst|div|counter[13]~44\);

-- Location: FF_X41_Y69_N27
\median_inst|div|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \median_inst|div|counter[13]~43_combout\,
	sclr => \median_inst|div|ALT_INV_state~q\,
	ena => \median_inst|div|counter~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \median_inst|div|counter\(13));

-- Location: LCCOMB_X41_Y69_N28
\median_inst|div|counter[14]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \median_inst|div|counter[14]~45_combout\ = (\median_inst|div|counter\(14) & (\median_inst|div|counter[13]~44\ $ (GND))) # (!\median_inst|div|counter\(14) & (!\median_inst|div|counter[13]~44\ & VCC))
-- \median_inst|div|counter[14]~46\ = CARRY((\median_inst|div|counter\(14) & !\median_inst|div|counter[13]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \median_inst|div|counter\(14),
	datad => VCC,
	cin => \median_inst|div|counter[13]~44\,
	combout => \median_inst|div|counter[14]~45_combout\,
	cout => \median_inst|div|counter[14]~46\);

-- Location: FF_X41_Y69_N29
\median_inst|div|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \median_inst|div|counter[14]~45_combout\,
	sclr => \median_inst|div|ALT_INV_state~q\,
	ena => \median_inst|div|counter~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \median_inst|div|counter\(14));

-- Location: LCCOMB_X41_Y69_N30
\median_inst|div|counter[15]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \median_inst|div|counter[15]~47_combout\ = \median_inst|div|counter\(15) $ (\median_inst|div|counter[14]~46\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \median_inst|div|counter\(15),
	cin => \median_inst|div|counter[14]~46\,
	combout => \median_inst|div|counter[15]~47_combout\);

-- Location: FF_X41_Y69_N31
\median_inst|div|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \median_inst|div|counter[15]~47_combout\,
	sclr => \median_inst|div|ALT_INV_state~q\,
	ena => \median_inst|div|counter~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \median_inst|div|counter\(15));

-- Location: LCCOMB_X32_Y69_N22
\HEX~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX~0_combout\ = (\state.INPUT_B~q\) # (!\state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.IDLE~q\,
	datad => \state.INPUT_B~q\,
	combout => \HEX~0_combout\);

-- Location: FF_X32_Y69_N23
\HEX[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \HEX~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX[0]~reg0_q\);

-- Location: LCCOMB_X32_Y69_N24
\HEX[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX[1]~reg0feeder_combout\ = \state.INPUT_B~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.INPUT_B~q\,
	combout => \HEX[1]~reg0feeder_combout\);

-- Location: FF_X32_Y69_N25
\HEX[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \HEX[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX[1]~reg0_q\);

-- Location: LCCOMB_X32_Y69_N10
\HEX~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX~1_combout\ = (\state.INPUT_A~q\) # (!\state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.IDLE~q\,
	datac => \state.INPUT_A~q\,
	combout => \HEX~1_combout\);

-- Location: FF_X32_Y69_N11
\HEX[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \HEX~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX[3]~reg0_q\);

-- Location: LCCOMB_X32_Y69_N4
\HEX[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX[4]~3_combout\ = !\state.IDLE~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.IDLE~q\,
	combout => \HEX[4]~3_combout\);

-- Location: FF_X32_Y69_N5
\HEX[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \HEX[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX[4]~reg0_q\);

-- Location: LCCOMB_X32_Y69_N14
\HEX[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX[5]~4_combout\ = !\state.IDLE~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.IDLE~q\,
	combout => \HEX[5]~4_combout\);

-- Location: FF_X32_Y69_N15
\HEX[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \HEX[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX[5]~reg0_q\);

-- Location: LCCOMB_X32_Y69_N12
\HEX~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX~2_combout\ = (\state.ACTIVE~q\) # (!\state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.ACTIVE~q\,
	datad => \state.IDLE~q\,
	combout => \HEX~2_combout\);

-- Location: FF_X32_Y69_N13
\HEX[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \HEX~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX[6]~reg0_q\);

-- Location: IOIBUF_X0_Y45_N22
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X85_Y0_N1
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X74_Y73_N15
\KEY[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;

ww_LEDR(10) <= \LEDR[10]~output_o\;

ww_LEDR(11) <= \LEDR[11]~output_o\;

ww_LEDR(12) <= \LEDR[12]~output_o\;

ww_LEDR(13) <= \LEDR[13]~output_o\;

ww_LEDR(14) <= \LEDR[14]~output_o\;

ww_LEDR(15) <= \LEDR[15]~output_o\;

ww_LEDG <= \LEDG~output_o\;

ww_HEX(0) <= \HEX[0]~output_o\;

ww_HEX(1) <= \HEX[1]~output_o\;

ww_HEX(2) <= \HEX[2]~output_o\;

ww_HEX(3) <= \HEX[3]~output_o\;

ww_HEX(4) <= \HEX[4]~output_o\;

ww_HEX(5) <= \HEX[5]~output_o\;

ww_HEX(6) <= \HEX[6]~output_o\;
END structure;


