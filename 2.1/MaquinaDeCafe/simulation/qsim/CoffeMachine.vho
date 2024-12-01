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

-- DATE "12/01/2024 11:53:12"

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

ENTITY 	coffe_machine IS
    PORT (
	bin_buttons : IN std_logic_vector(0 TO 2);
	coffe_out : OUT std_logic_vector(0 TO 7)
	);
END coffe_machine;

-- Design Ports Information
-- coffe_out[7]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- coffe_out[6]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- coffe_out[5]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- coffe_out[4]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- coffe_out[3]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- coffe_out[2]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- coffe_out[1]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- coffe_out[0]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bin_buttons[0]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bin_buttons[2]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bin_buttons[1]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF coffe_machine IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_bin_buttons : std_logic_vector(0 TO 2);
SIGNAL ww_coffe_out : std_logic_vector(0 TO 7);
SIGNAL \coffe_out[7]~output_o\ : std_logic;
SIGNAL \coffe_out[6]~output_o\ : std_logic;
SIGNAL \coffe_out[5]~output_o\ : std_logic;
SIGNAL \coffe_out[4]~output_o\ : std_logic;
SIGNAL \coffe_out[3]~output_o\ : std_logic;
SIGNAL \coffe_out[2]~output_o\ : std_logic;
SIGNAL \coffe_out[1]~output_o\ : std_logic;
SIGNAL \coffe_out[0]~output_o\ : std_logic;
SIGNAL \bin_buttons[1]~input_o\ : std_logic;
SIGNAL \bin_buttons[0]~input_o\ : std_logic;
SIGNAL \bin_buttons[2]~input_o\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \Decoder0~3_combout\ : std_logic;
SIGNAL \Decoder0~4_combout\ : std_logic;
SIGNAL \Decoder0~5_combout\ : std_logic;
SIGNAL \Decoder0~6_combout\ : std_logic;
SIGNAL \Decoder0~7_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_bin_buttons <= bin_buttons;
coffe_out <= ww_coffe_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y6_N16
\coffe_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder0~0_combout\,
	devoe => ww_devoe,
	o => \coffe_out[7]~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\coffe_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder0~1_combout\,
	devoe => ww_devoe,
	o => \coffe_out[6]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\coffe_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder0~2_combout\,
	devoe => ww_devoe,
	o => \coffe_out[5]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\coffe_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder0~3_combout\,
	devoe => ww_devoe,
	o => \coffe_out[4]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\coffe_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder0~4_combout\,
	devoe => ww_devoe,
	o => \coffe_out[3]~output_o\);

-- Location: IOOBUF_X3_Y24_N23
\coffe_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder0~5_combout\,
	devoe => ww_devoe,
	o => \coffe_out[2]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\coffe_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder0~6_combout\,
	devoe => ww_devoe,
	o => \coffe_out[1]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\coffe_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder0~7_combout\,
	devoe => ww_devoe,
	o => \coffe_out[0]~output_o\);

-- Location: IOIBUF_X1_Y0_N15
\bin_buttons[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bin_buttons(1),
	o => \bin_buttons[1]~input_o\);

-- Location: IOIBUF_X1_Y0_N22
\bin_buttons[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bin_buttons(0),
	o => \bin_buttons[0]~input_o\);

-- Location: IOIBUF_X7_Y0_N1
\bin_buttons[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bin_buttons(2),
	o => \bin_buttons[2]~input_o\);

-- Location: LCCOMB_X5_Y2_N16
\Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = (!\bin_buttons[1]~input_o\ & (!\bin_buttons[0]~input_o\ & !\bin_buttons[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_buttons[1]~input_o\,
	datab => \bin_buttons[0]~input_o\,
	datad => \bin_buttons[2]~input_o\,
	combout => \Decoder0~0_combout\);

-- Location: LCCOMB_X5_Y2_N2
\Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~1_combout\ = (\bin_buttons[1]~input_o\ & (\bin_buttons[0]~input_o\ & \bin_buttons[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_buttons[1]~input_o\,
	datab => \bin_buttons[0]~input_o\,
	datad => \bin_buttons[2]~input_o\,
	combout => \Decoder0~1_combout\);

-- Location: LCCOMB_X5_Y2_N28
\Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~2_combout\ = (\bin_buttons[1]~input_o\ & (\bin_buttons[0]~input_o\ & !\bin_buttons[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_buttons[1]~input_o\,
	datab => \bin_buttons[0]~input_o\,
	datad => \bin_buttons[2]~input_o\,
	combout => \Decoder0~2_combout\);

-- Location: LCCOMB_X5_Y2_N6
\Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~3_combout\ = (!\bin_buttons[1]~input_o\ & (\bin_buttons[0]~input_o\ & \bin_buttons[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_buttons[1]~input_o\,
	datab => \bin_buttons[0]~input_o\,
	datad => \bin_buttons[2]~input_o\,
	combout => \Decoder0~3_combout\);

-- Location: LCCOMB_X5_Y2_N24
\Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~4_combout\ = (!\bin_buttons[1]~input_o\ & (\bin_buttons[0]~input_o\ & !\bin_buttons[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_buttons[1]~input_o\,
	datab => \bin_buttons[0]~input_o\,
	datad => \bin_buttons[2]~input_o\,
	combout => \Decoder0~4_combout\);

-- Location: LCCOMB_X5_Y2_N18
\Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~5_combout\ = (\bin_buttons[1]~input_o\ & (!\bin_buttons[0]~input_o\ & \bin_buttons[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_buttons[1]~input_o\,
	datab => \bin_buttons[0]~input_o\,
	datad => \bin_buttons[2]~input_o\,
	combout => \Decoder0~5_combout\);

-- Location: LCCOMB_X5_Y2_N12
\Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~6_combout\ = (\bin_buttons[1]~input_o\ & (!\bin_buttons[0]~input_o\ & !\bin_buttons[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_buttons[1]~input_o\,
	datab => \bin_buttons[0]~input_o\,
	datad => \bin_buttons[2]~input_o\,
	combout => \Decoder0~6_combout\);

-- Location: LCCOMB_X5_Y2_N14
\Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~7_combout\ = (!\bin_buttons[1]~input_o\ & (!\bin_buttons[0]~input_o\ & \bin_buttons[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_buttons[1]~input_o\,
	datab => \bin_buttons[0]~input_o\,
	datad => \bin_buttons[2]~input_o\,
	combout => \Decoder0~7_combout\);

ww_coffe_out(7) <= \coffe_out[7]~output_o\;

ww_coffe_out(6) <= \coffe_out[6]~output_o\;

ww_coffe_out(5) <= \coffe_out[5]~output_o\;

ww_coffe_out(4) <= \coffe_out[4]~output_o\;

ww_coffe_out(3) <= \coffe_out[3]~output_o\;

ww_coffe_out(2) <= \coffe_out[2]~output_o\;

ww_coffe_out(1) <= \coffe_out[1]~output_o\;

ww_coffe_out(0) <= \coffe_out[0]~output_o\;
END structure;


