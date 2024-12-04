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

-- DATE "12/03/2024 20:18:40"

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

ENTITY 	ula_16b IS
    PORT (
	M : IN std_logic;
	S1 : IN std_logic;
	S0 : IN std_logic;
	A : IN std_logic_vector(15 DOWNTO 0);
	B : IN std_logic_vector(15 DOWNTO 0);
	Result : BUFFER std_logic_vector(15 DOWNTO 0);
	Cout : BUFFER std_logic
	);
END ula_16b;

-- Design Ports Information
-- Result[0]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[1]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[2]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[3]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[4]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[5]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[6]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[7]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[8]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[9]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[10]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[11]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[12]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[13]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[14]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Result[15]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S0	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ula_16b IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_M : std_logic;
SIGNAL ww_S1 : std_logic;
SIGNAL ww_S0 : std_logic;
SIGNAL ww_A : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Result : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Cout : std_logic;
SIGNAL \Result[0]~output_o\ : std_logic;
SIGNAL \Result[1]~output_o\ : std_logic;
SIGNAL \Result[2]~output_o\ : std_logic;
SIGNAL \Result[3]~output_o\ : std_logic;
SIGNAL \Result[4]~output_o\ : std_logic;
SIGNAL \Result[5]~output_o\ : std_logic;
SIGNAL \Result[6]~output_o\ : std_logic;
SIGNAL \Result[7]~output_o\ : std_logic;
SIGNAL \Result[8]~output_o\ : std_logic;
SIGNAL \Result[9]~output_o\ : std_logic;
SIGNAL \Result[10]~output_o\ : std_logic;
SIGNAL \Result[11]~output_o\ : std_logic;
SIGNAL \Result[12]~output_o\ : std_logic;
SIGNAL \Result[13]~output_o\ : std_logic;
SIGNAL \Result[14]~output_o\ : std_logic;
SIGNAL \Result[15]~output_o\ : std_logic;
SIGNAL \Cout~output_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \S1~input_o\ : std_logic;
SIGNAL \i1|gen_adders:0:adder|Result~2_combout\ : std_logic;
SIGNAL \M~input_o\ : std_logic;
SIGNAL \S0~input_o\ : std_logic;
SIGNAL \i1|gen_adders:0:adder|Result~3_combout\ : std_logic;
SIGNAL \i1|gen_adders:0:adder|Result~combout\ : std_logic;
SIGNAL \i0|Mux32~0_combout\ : std_logic;
SIGNAL \i1|gen_adders:0:adder|Cout~0_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \i0|Mux30~0_combout\ : std_logic;
SIGNAL \i0|Mux14~4_combout\ : std_logic;
SIGNAL \i0|Mux14~5_combout\ : std_logic;
SIGNAL \i0|Mux14~6_combout\ : std_logic;
SIGNAL \i0|Mux14~7_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \i0|Mux14~8_combout\ : std_logic;
SIGNAL \i1|gen_adders:1:adder|Result~combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \i0|Mux29~0_combout\ : std_logic;
SIGNAL \i0|Mux13~2_combout\ : std_logic;
SIGNAL \i0|Mux15~0_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \i0|Mux13~0_combout\ : std_logic;
SIGNAL \i0|Mux13~1_combout\ : std_logic;
SIGNAL \i0|Mux13~3_combout\ : std_logic;
SIGNAL \i1|gen_adders:1:adder|Cout~0_combout\ : std_logic;
SIGNAL \i1|gen_adders:2:adder|Result~combout\ : std_logic;
SIGNAL \i0|Mux12~5_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \i0|Mux12~4_combout\ : std_logic;
SIGNAL \i0|Mux28~0_combout\ : std_logic;
SIGNAL \i0|Mux12~6_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \i0|Mux12~7_combout\ : std_logic;
SIGNAL \i1|gen_adders:3:adder|Result~0_combout\ : std_logic;
SIGNAL \i1|gen_adders:3:adder|Result~combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \i0|Mux27~0_combout\ : std_logic;
SIGNAL \i1|gen_adders:3:adder|Cout~0_combout\ : std_logic;
SIGNAL \i1|gen_adders:3:adder|Cout~1_combout\ : std_logic;
SIGNAL \i1|gen_adders:3:adder|Cout~2_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \i0|Mux11~5_combout\ : std_logic;
SIGNAL \i0|Mux11~6_combout\ : std_logic;
SIGNAL \i0|Mux11~4_combout\ : std_logic;
SIGNAL \i1|gen_adders:4:adder|Result~combout\ : std_logic;
SIGNAL \i1|gen_adders:4:adder|Cout~0_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \i0|Mux10~0_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \i0|Mux10~1_combout\ : std_logic;
SIGNAL \i0|Mux10~2_combout\ : std_logic;
SIGNAL \i0|Mux26~0_combout\ : std_logic;
SIGNAL \i1|gen_adders:5:adder|Result~combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \i0|Mux9~1_combout\ : std_logic;
SIGNAL \i0|Mux9~0_combout\ : std_logic;
SIGNAL \i0|Mux9~2_combout\ : std_logic;
SIGNAL \i0|Mux25~0_combout\ : std_logic;
SIGNAL \i1|gen_adders:5:adder|Cout~0_combout\ : std_logic;
SIGNAL \i1|gen_adders:6:adder|Result~combout\ : std_logic;
SIGNAL \i1|gen_adders:6:adder|Cout~0_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \i0|Mux8~1_combout\ : std_logic;
SIGNAL \i0|Mux8~0_combout\ : std_logic;
SIGNAL \i0|Mux8~2_combout\ : std_logic;
SIGNAL \i0|Mux24~0_combout\ : std_logic;
SIGNAL \i1|gen_adders:7:adder|Result~combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \i0|Mux7~1_combout\ : std_logic;
SIGNAL \i0|Mux7~0_combout\ : std_logic;
SIGNAL \i0|Mux7~2_combout\ : std_logic;
SIGNAL \i0|Mux23~0_combout\ : std_logic;
SIGNAL \i1|gen_adders:7:adder|Cout~0_combout\ : std_logic;
SIGNAL \i1|gen_adders:8:adder|Result~combout\ : std_logic;
SIGNAL \i1|gen_adders:8:adder|Cout~0_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \i0|Mux6~0_combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \i0|Mux6~1_combout\ : std_logic;
SIGNAL \i0|Mux6~2_combout\ : std_logic;
SIGNAL \i0|Mux22~0_combout\ : std_logic;
SIGNAL \i1|gen_adders:9:adder|Result~combout\ : std_logic;
SIGNAL \i1|gen_adders:9:adder|Cout~0_combout\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \i0|Mux21~0_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \i0|Mux5~1_combout\ : std_logic;
SIGNAL \i0|Mux5~0_combout\ : std_logic;
SIGNAL \i0|Mux5~2_combout\ : std_logic;
SIGNAL \i1|gen_adders:10:adder|Result~combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \i0|Mux4~1_combout\ : std_logic;
SIGNAL \i0|Mux4~0_combout\ : std_logic;
SIGNAL \i0|Mux4~2_combout\ : std_logic;
SIGNAL \i1|gen_adders:10:adder|Cout~0_combout\ : std_logic;
SIGNAL \i0|Mux20~0_combout\ : std_logic;
SIGNAL \i1|gen_adders:11:adder|Result~combout\ : std_logic;
SIGNAL \i1|gen_adders:11:adder|Cout~0_combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \i0|Mux3~1_combout\ : std_logic;
SIGNAL \i0|Mux3~0_combout\ : std_logic;
SIGNAL \i0|Mux3~2_combout\ : std_logic;
SIGNAL \i0|Mux19~0_combout\ : std_logic;
SIGNAL \i1|gen_adders:12:adder|Result~combout\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \i0|Mux18~0_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \i0|Mux2~0_combout\ : std_logic;
SIGNAL \i0|Mux2~1_combout\ : std_logic;
SIGNAL \i0|Mux2~2_combout\ : std_logic;
SIGNAL \i1|gen_adders:12:adder|Cout~0_combout\ : std_logic;
SIGNAL \i1|gen_adders:13:adder|Result~combout\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \i0|Mux1~1_combout\ : std_logic;
SIGNAL \i0|Mux1~0_combout\ : std_logic;
SIGNAL \i0|Mux1~2_combout\ : std_logic;
SIGNAL \i0|Mux17~0_combout\ : std_logic;
SIGNAL \i1|gen_adders:13:adder|Cout~0_combout\ : std_logic;
SIGNAL \i1|gen_adders:14:adder|Result~combout\ : std_logic;
SIGNAL \i0|Mux0~0_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \i0|Mux0~1_combout\ : std_logic;
SIGNAL \i0|Mux0~2_combout\ : std_logic;
SIGNAL \i1|gen_adders:14:adder|Cout~0_combout\ : std_logic;
SIGNAL \i0|Mux16~0_combout\ : std_logic;
SIGNAL \i1|gen_adders:15:adder|Result~combout\ : std_logic;
SIGNAL \i1|gen_adders:15:adder|Cout~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_M <= M;
ww_S1 <= S1;
ww_S0 <= S0;
ww_A <= A;
ww_B <= B;
Result <= ww_Result;
Cout <= ww_Cout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X34_Y4_N23
\Result[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i1|gen_adders:0:adder|Result~combout\,
	devoe => ww_devoe,
	o => \Result[0]~output_o\);

-- Location: IOOBUF_X34_Y4_N16
\Result[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i1|gen_adders:1:adder|Result~combout\,
	devoe => ww_devoe,
	o => \Result[1]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\Result[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i1|gen_adders:2:adder|Result~combout\,
	devoe => ww_devoe,
	o => \Result[2]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\Result[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i1|gen_adders:3:adder|Result~combout\,
	devoe => ww_devoe,
	o => \Result[3]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\Result[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i1|gen_adders:4:adder|Result~combout\,
	devoe => ww_devoe,
	o => \Result[4]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\Result[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i1|gen_adders:5:adder|Result~combout\,
	devoe => ww_devoe,
	o => \Result[5]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\Result[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i1|gen_adders:6:adder|Result~combout\,
	devoe => ww_devoe,
	o => \Result[6]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\Result[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i1|gen_adders:7:adder|Result~combout\,
	devoe => ww_devoe,
	o => \Result[7]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\Result[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i1|gen_adders:8:adder|Result~combout\,
	devoe => ww_devoe,
	o => \Result[8]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\Result[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i1|gen_adders:9:adder|Result~combout\,
	devoe => ww_devoe,
	o => \Result[9]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\Result[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i1|gen_adders:10:adder|Result~combout\,
	devoe => ww_devoe,
	o => \Result[10]~output_o\);

-- Location: IOOBUF_X30_Y24_N2
\Result[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i1|gen_adders:11:adder|Result~combout\,
	devoe => ww_devoe,
	o => \Result[11]~output_o\);

-- Location: IOOBUF_X34_Y18_N16
\Result[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i1|gen_adders:12:adder|Result~combout\,
	devoe => ww_devoe,
	o => \Result[12]~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\Result[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i1|gen_adders:13:adder|Result~combout\,
	devoe => ww_devoe,
	o => \Result[13]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\Result[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i1|gen_adders:14:adder|Result~combout\,
	devoe => ww_devoe,
	o => \Result[14]~output_o\);

-- Location: IOOBUF_X34_Y17_N16
\Result[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i1|gen_adders:15:adder|Result~combout\,
	devoe => ww_devoe,
	o => \Result[15]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\Cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i1|gen_adders:15:adder|Cout~0_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOIBUF_X25_Y0_N1
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X30_Y0_N22
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X34_Y9_N15
\S1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S1,
	o => \S1~input_o\);

-- Location: LCCOMB_X26_Y4_N10
\i1|gen_adders:0:adder|Result~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|gen_adders:0:adder|Result~2_combout\ = (!\S1~input_o\ & (\B[0]~input_o\ $ (\A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \A[0]~input_o\,
	datad => \S1~input_o\,
	combout => \i1|gen_adders:0:adder|Result~2_combout\);

-- Location: IOIBUF_X21_Y0_N8
\M~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M,
	o => \M~input_o\);

-- Location: IOIBUF_X34_Y9_N22
\S0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S0,
	o => \S0~input_o\);

-- Location: LCCOMB_X26_Y4_N20
\i1|gen_adders:0:adder|Result~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|gen_adders:0:adder|Result~3_combout\ = (\S1~input_o\ & (\B[0]~input_o\ $ (\A[0]~input_o\ $ (\S0~input_o\)))) # (!\S1~input_o\ & ((\B[0]~input_o\ & ((\A[0]~input_o\) # (\S0~input_o\))) # (!\B[0]~input_o\ & (\A[0]~input_o\ & \S0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[0]~input_o\,
	datad => \S0~input_o\,
	combout => \i1|gen_adders:0:adder|Result~3_combout\);

-- Location: LCCOMB_X26_Y4_N6
\i1|gen_adders:0:adder|Result\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|gen_adders:0:adder|Result~combout\ = (\M~input_o\ & ((\i1|gen_adders:0:adder|Result~3_combout\))) # (!\M~input_o\ & (\i1|gen_adders:0:adder|Result~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|gen_adders:0:adder|Result~2_combout\,
	datac => \M~input_o\,
	datad => \i1|gen_adders:0:adder|Result~3_combout\,
	combout => \i1|gen_adders:0:adder|Result~combout\);

-- Location: LCCOMB_X22_Y4_N24
\i0|Mux32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|Mux32~0_combout\ = (!\M~input_o\ & !\S1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M~input_o\,
	datad => \S1~input_o\,
	combout => \i0|Mux32~0_combout\);

-- Location: LCCOMB_X26_Y4_N12
\i1|gen_adders:0:adder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|gen_adders:0:adder|Cout~0_combout\ = (\i0|Mux32~0_combout\ & ((\B[0]~input_o\ & (\A[0]~input_o\)) # (!\B[0]~input_o\ & ((\S0~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i0|Mux32~0_combout\,
	datab => \B[0]~input_o\,
	datac => \A[0]~input_o\,
	datad => \S0~input_o\,
	combout => \i1|gen_adders:0:adder|Cout~0_combout\);

-- Location: IOIBUF_X28_Y0_N22
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X26_Y4_N18
\i0|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|Mux30~0_combout\ = (!\S1~input_o\ & (!\M~input_o\ & (\B[1]~input_o\ $ (\S0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \S1~input_o\,
	datac => \M~input_o\,
	datad => \S0~input_o\,
	combout => \i0|Mux30~0_combout\);

-- Location: LCCOMB_X25_Y20_N24
\i0|Mux14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|Mux14~4_combout\ = (!\S1~input_o\ & (\M~input_o\ & \S0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~input_o\,
	datab => \M~input_o\,
	datad => \S0~input_o\,
	combout => \i0|Mux14~4_combout\);

-- Location: LCCOMB_X26_Y16_N8
\i0|Mux14~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|Mux14~5_combout\ = (\S1~input_o\ & !\M~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~input_o\,
	datad => \M~input_o\,
	combout => \i0|Mux14~5_combout\);

-- Location: LCCOMB_X26_Y4_N22
\i0|Mux14~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|Mux14~6_combout\ = (\A[0]~input_o\ & ((\i0|Mux14~5_combout\) # ((\i0|Mux14~4_combout\ & \B[1]~input_o\)))) # (!\A[0]~input_o\ & (\i0|Mux14~4_combout\ & (\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \i0|Mux14~4_combout\,
	datac => \B[1]~input_o\,
	datad => \i0|Mux14~5_combout\,
	combout => \i0|Mux14~6_combout\);

-- Location: LCCOMB_X26_Y4_N30
\i0|Mux14~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|Mux14~7_combout\ = (\M~input_o\ & ((\B[1]~input_o\ & (\S1~input_o\ & !\S0~input_o\)) # (!\B[1]~input_o\ & (\S1~input_o\ $ (!\S0~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \S1~input_o\,
	datac => \M~input_o\,
	datad => \S0~input_o\,
	combout => \i0|Mux14~7_combout\);

-- Location: IOIBUF_X30_Y0_N8
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X26_Y4_N24
\i0|Mux14~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|Mux14~8_combout\ = (\S1~input_o\ & (\M~input_o\ & (\i0|Mux14~7_combout\ $ (\A[1]~input_o\)))) # (!\S1~input_o\ & (!\i0|Mux14~7_combout\ & (\A[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i0|Mux14~7_combout\,
	datab => \A[1]~input_o\,
	datac => \M~input_o\,
	datad => \S1~input_o\,
	combout => \i0|Mux14~8_combout\);

-- Location: LCCOMB_X26_Y4_N16
\i1|gen_adders:1:adder|Result\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|gen_adders:1:adder|Result~combout\ = \i1|gen_adders:0:adder|Cout~0_combout\ $ (\i0|Mux30~0_combout\ $ (((\i0|Mux14~6_combout\) # (\i0|Mux14~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|gen_adders:0:adder|Cout~0_combout\,
	datab => \i0|Mux30~0_combout\,
	datac => \i0|Mux14~6_combout\,
	datad => \i0|Mux14~8_combout\,
	combout => \i1|gen_adders:1:adder|Result~combout\);

-- Location: IOIBUF_X28_Y0_N1
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X26_Y4_N28
\i0|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|Mux29~0_combout\ = (!\S1~input_o\ & (!\M~input_o\ & (\B[2]~input_o\ $ (\S0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \S1~input_o\,
	datac => \M~input_o\,
	datad => \S0~input_o\,
	combout => \i0|Mux29~0_combout\);

-- Location: LCCOMB_X26_Y4_N26
\i0|Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|Mux13~2_combout\ = (!\S1~input_o\ & ((\B[2]~input_o\) # ((\S0~input_o\) # (!\M~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \S1~input_o\,
	datac => \M~input_o\,
	datad => \S0~input_o\,
	combout => \i0|Mux13~2_combout\);

-- Location: LCCOMB_X26_Y4_N8
\i0|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|Mux15~0_combout\ = (\M~input_o\ & \S1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \M~input_o\,
	datad => \S1~input_o\,
	combout => \i0|Mux15~0_combout\);

-- Location: IOIBUF_X34_Y2_N22
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X26_Y4_N14
\i0|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|Mux13~0_combout\ = (\i0|Mux15~0_combout\ & (\B[2]~input_o\ $ (\A[2]~input_o\ $ (\S0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \i0|Mux15~0_combout\,
	datac => \A[2]~input_o\,
	datad => \S0~input_o\,
	combout => \i0|Mux13~0_combout\);

-- Location: LCCOMB_X26_Y4_N0
\i0|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|Mux13~1_combout\ = (\i0|Mux14~5_combout\ & ((\A[1]~input_o\) # ((\i0|Mux14~4_combout\ & \B[2]~input_o\)))) # (!\i0|Mux14~5_combout\ & (((\i0|Mux14~4_combout\ & \B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i0|Mux14~5_combout\,
	datab => \A[1]~input_o\,
	datac => \i0|Mux14~4_combout\,
	datad => \B[2]~input_o\,
	combout => \i0|Mux13~1_combout\);

-- Location: LCCOMB_X26_Y4_N4
\i0|Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|Mux13~3_combout\ = (\i0|Mux13~0_combout\) # ((\i0|Mux13~1_combout\) # ((\i0|Mux13~2_combout\ & \A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i0|Mux13~2_combout\,
	datab => \i0|Mux13~0_combout\,
	datac => \A[2]~input_o\,
	datad => \i0|Mux13~1_combout\,
	combout => \i0|Mux13~3_combout\);

-- Location: LCCOMB_X26_Y4_N2
\i1|gen_adders:1:adder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|gen_adders:1:adder|Cout~0_combout\ = (\i1|gen_adders:0:adder|Cout~0_combout\ & ((\i0|Mux30~0_combout\) # ((\i0|Mux14~6_combout\) # (\i0|Mux14~8_combout\)))) # (!\i1|gen_adders:0:adder|Cout~0_combout\ & (\i0|Mux30~0_combout\ & ((\i0|Mux14~6_combout\) # 
-- (\i0|Mux14~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|gen_adders:0:adder|Cout~0_combout\,
	datab => \i0|Mux30~0_combout\,
	datac => \i0|Mux14~6_combout\,
	datad => \i0|Mux14~8_combout\,
	combout => \i1|gen_adders:1:adder|Cout~0_combout\);

-- Location: LCCOMB_X21_Y4_N16
\i1|gen_adders:2:adder|Result\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|gen_adders:2:adder|Result~combout\ = \i0|Mux29~0_combout\ $ (\i0|Mux13~3_combout\ $ (\i1|gen_adders:1:adder|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i0|Mux29~0_combout\,
	datac => \i0|Mux13~3_combout\,
	datad => \i1|gen_adders:1:adder|Cout~0_combout\,
	combout => \i1|gen_adders:2:adder|Result~combout\);

-- Location: LCCOMB_X22_Y4_N18
\i0|Mux12~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|Mux12~5_combout\ = (!\M~input_o\ & (\A[2]~input_o\ & \S1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M~input_o\,
	datac => \A[2]~input_o\,
	datad => \S1~input_o\,
	combout => \i0|Mux12~5_combout\);

-- Location: IOIBUF_X13_Y0_N1
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X21_Y4_N18
\i0|Mux12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|Mux12~4_combout\ = (\B[3]~input_o\ & (\M~input_o\ & (!\S1~input_o\ & \S0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \M~input_o\,
	datac => \S1~input_o\,
	datad => \S0~input_o\,
	combout => \i0|Mux12~4_combout\);

-- Location: LCCOMB_X21_Y4_N4
\i0|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|Mux28~0_combout\ = (!\M~input_o\ & (!\S1~input_o\ & (\B[3]~input_o\ $ (\S0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \M~input_o\,
	datac => \S1~input_o\,
	datad => \S0~input_o\,
	combout => \i0|Mux28~0_combout\);

-- Location: LCCOMB_X21_Y4_N22
\i0|Mux12~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|Mux12~6_combout\ = (\M~input_o\ & ((\B[3]~input_o\ & (\S1~input_o\ & !\S0~input_o\)) # (!\B[3]~input_o\ & (\S1~input_o\ $ (!\S0~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \M~input_o\,
	datac => \S1~input_o\,
	datad => \S0~input_o\,
	combout => \i0|Mux12~6_combout\);

-- Location: IOIBUF_X5_Y0_N22
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X21_Y4_N0
\i0|Mux12~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|Mux12~7_combout\ = (\S1~input_o\ & (\M~input_o\ & (\i0|Mux12~6_combout\ $ (\A[3]~input_o\)))) # (!\S1~input_o\ & (!\i0|Mux12~6_combout\ & ((\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i0|Mux12~6_combout\,
	datab => \M~input_o\,
	datac => \S1~input_o\,
	datad => \A[3]~input_o\,
	combout => \i0|Mux12~7_combout\);

-- Location: LCCOMB_X21_Y4_N30
\i1|gen_adders:3:adder|Result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|gen_adders:3:adder|Result~0_combout\ = \i0|Mux28~0_combout\ $ (((\i0|Mux12~5_combout\) # ((\i0|Mux12~4_combout\) # (\i0|Mux12~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i0|Mux12~5_combout\,
	datab => \i0|Mux12~4_combout\,
	datac => \i0|Mux28~0_combout\,
	datad => \i0|Mux12~7_combout\,
	combout => \i1|gen_adders:3:adder|Result~0_combout\);

-- Location: LCCOMB_X21_Y4_N24
\i1|gen_adders:3:adder|Result\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|gen_adders:3:adder|Result~combout\ = \i1|gen_adders:3:adder|Result~0_combout\ $ (((\i1|gen_adders:1:adder|Cout~0_combout\ & ((\i0|Mux13~3_combout\) # (\i0|Mux29~0_combout\))) # (!\i1|gen_adders:1:adder|Cout~0_combout\ & (\i0|Mux13~3_combout\ & 
-- \i0|Mux29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|gen_adders:1:adder|Cout~0_combout\,
	datab => \i0|Mux13~3_combout\,
	datac => \i1|gen_adders:3:adder|Result~0_combout\,
	datad => \i0|Mux29~0_combout\,
	combout => \i1|gen_adders:3:adder|Result~combout\);

-- Location: IOIBUF_X16_Y0_N1
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X21_Y4_N26
\i0|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|Mux27~0_combout\ = (!\M~input_o\ & (!\S1~input_o\ & (\S0~input_o\ $ (\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datab => \M~input_o\,
	datac => \S1~input_o\,
	datad => \B[4]~input_o\,
	combout => \i0|Mux27~0_combout\);

-- Location: LCCOMB_X21_Y4_N20
\i1|gen_adders:3:adder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|gen_adders:3:adder|Cout~0_combout\ = (\i0|Mux28~0_combout\ & ((\i0|Mux12~5_combout\) # ((\i0|Mux12~4_combout\) # (\i0|Mux12~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i0|Mux12~5_combout\,
	datab => \i0|Mux12~4_combout\,
	datac => \i0|Mux28~0_combout\,
	datad => \i0|Mux12~7_combout\,
	combout => \i1|gen_adders:3:adder|Cout~0_combout\);

-- Location: LCCOMB_X21_Y4_N6
\i1|gen_adders:3:adder|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|gen_adders:3:adder|Cout~1_combout\ = (\i0|Mux12~5_combout\) # ((\i0|Mux12~4_combout\) # ((\i0|Mux28~0_combout\) # (\i0|Mux12~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i0|Mux12~5_combout\,
	datab => \i0|Mux12~4_combout\,
	datac => \i0|Mux28~0_combout\,
	datad => \i0|Mux12~7_combout\,
	combout => \i1|gen_adders:3:adder|Cout~1_combout\);

-- Location: LCCOMB_X21_Y4_N8
\i1|gen_adders:3:adder|Cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|gen_adders:3:adder|Cout~2_combout\ = (\i1|gen_adders:3:adder|Cout~1_combout\ & ((\i0|Mux29~0_combout\ & ((\i0|Mux13~3_combout\) # (\i1|gen_adders:1:adder|Cout~0_combout\))) # (!\i0|Mux29~0_combout\ & (\i0|Mux13~3_combout\ & 
-- \i1|gen_adders:1:adder|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|gen_adders:3:adder|Cout~1_combout\,
	datab => \i0|Mux29~0_combout\,
	datac => \i0|Mux13~3_combout\,
	datad => \i1|gen_adders:1:adder|Cout~0_combout\,
	combout => \i1|gen_adders:3:adder|Cout~2_combout\);

-- Location: IOIBUF_X32_Y0_N22
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X21_Y4_N28
\i0|Mux11~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|Mux11~5_combout\ = (\S1~input_o\ & (\B[4]~input_o\ $ (\A[4]~input_o\ $ (\S0~input_o\)))) # (!\S1~input_o\ & ((\B[4]~input_o\ & ((\A[4]~input_o\) # (\S0~input_o\))) # (!\B[4]~input_o\ & (\A[4]~input_o\ & \S0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~input_o\,
	datab => \B[4]~input_o\,
	datac => \A[4]~input_o\,
	datad => \S0~input_o\,
	combout => \i0|Mux11~5_combout\);

-- Location: LCCOMB_X21_Y4_N14
\i0|Mux11~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|Mux11~6_combout\ = (\M~input_o\ & (((\i0|Mux11~5_combout\)))) # (!\M~input_o\ & (!\S1~input_o\ & (\A[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~input_o\,
	datab => \M~input_o\,
	datac => \A[4]~input_o\,
	datad => \i0|Mux11~5_combout\,
	combout => \i0|Mux11~6_combout\);

-- Location: LCCOMB_X21_Y4_N2
\i0|Mux11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|Mux11~4_combout\ = (\i0|Mux11~6_combout\) # ((\A[3]~input_o\ & (\S1~input_o\ & !\M~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \i0|Mux11~6_combout\,
	datac => \S1~input_o\,
	datad => \M~input_o\,
	combout => \i0|Mux11~4_combout\);

-- Location: LCCOMB_X21_Y4_N10
\i1|gen_adders:4:adder|Result\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|gen_adders:4:adder|Result~combout\ = \i0|Mux27~0_combout\ $ (\i0|Mux11~4_combout\ $ (((\i1|gen_adders:3:adder|Cout~0_combout\) # (\i1|gen_adders:3:adder|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i0|Mux27~0_combout\,
	datab => \i1|gen_adders:3:adder|Cout~0_combout\,
	datac => \i1|gen_adders:3:adder|Cout~2_combout\,
	datad => \i0|Mux11~4_combout\,
	combout => \i1|gen_adders:4:adder|Result~combout\);

-- Location: LCCOMB_X21_Y4_N12
\i1|gen_adders:4:adder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|gen_adders:4:adder|Cout~0_combout\ = (\i0|Mux27~0_combout\ & ((\i1|gen_adders:3:adder|Cout~0_combout\) # ((\i1|gen_adders:3:adder|Cout~2_combout\) # (\i0|Mux11~4_combout\)))) # (!\i0|Mux27~0_combout\ & (\i0|Mux11~4_combout\ & 
-- ((\i1|gen_adders:3:adder|Cout~0_combout\) # (\i1|gen_adders:3:adder|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i0|Mux27~0_combout\,
	datab => \i1|gen_adders:3:adder|Cout~0_combout\,
	datac => \i1|gen_adders:3:adder|Cout~2_combout\,
	datad => \i0|Mux11~4_combout\,
	combout => \i1|gen_adders:4:adder|Cout~0_combout\);

-- Location: IOIBUF_X23_Y24_N1
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X22_Y20_N0
\i0|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|Mux10~0_combout\ = (\M~input_o\ & (\S0~input_o\)) # (!\M~input_o\ & ((\A[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M~input_o\,
	datac => \S0~input_o\,
	datad => \A[4]~input_o\,
	combout => \i0|Mux10~0_combout\);

-- Location: IOIBUF_X1_Y24_N1
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X22_Y20_N26
\i0|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|Mux10~1_combout\ = (\M~input_o\ & (\B[5]~input_o\ $ (\A[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \M~input_o\,
	datac => \A[5]~input_o\,
	combout => \i0|Mux10~1_combout\);

-- Location: LCCOMB_X22_Y20_N28
\i0|Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|Mux10~2_combout\ = (\S1~input_o\ & ((\i0|Mux10~0_combout\ $ (\i0|Mux10~1_combout\)))) # (!\S1~input_o\ & ((\i0|Mux10~1_combout\ & ((\i0|Mux10~0_combout\))) # (!\i0|Mux10~1_combout\ & (\A[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \i0|Mux10~0_combout\,
	datac => \S1~input_o\,
	datad => \i0|Mux10~1_combout\,
	combout => \i0|Mux10~2_combout\);

-- Location: LCCOMB_X25_Y20_N10
\i0|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|Mux26~0_combout\ = (!\S1~input_o\ & (!\M~input_o\ & (\B[5]~input_o\ $ (\S0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~input_o\,
	datab => \M~input_o\,
	datac => \B[5]~input_o\,
	datad => \S0~input_o\,
	combout => \i0|Mux26~0_combout\);

-- Location: LCCOMB_X22_Y22_N0
\i1|gen_adders:5:adder|Result\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|gen_adders:5:adder|Result~combout\ = \i1|gen_adders:4:adder|Cout~0_combout\ $ (\i0|Mux10~2_combout\ $ (\i0|Mux26~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|gen_adders:4:adder|Cout~0_combout\,
	datab => \i0|Mux10~2_combout\,
	datad => \i0|Mux26~0_combout\,
	combout => \i1|gen_adders:5:adder|Result~combout\);

-- Location: IOIBUF_X16_Y24_N15
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X13_Y24_N22
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X22_Y20_N10
\i0|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|Mux9~1_combout\ = (\M~input_o\ & (\B[6]~input_o\ $ (\A[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \A[6]~input_o\,
	datad => \M~input_o\,
	combout => \i0|Mux9~1_combout\);

-- Location: LCCOMB_X22_Y20_N24
\i0|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|Mux9~0_combout\ = (\M~input_o\ & ((\S0~input_o\))) # (!\M~input_o\ & (\A[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \M~input_o\,
	datac => \S0~input_o\,
	combout => \i0|Mux9~0_combout\);

-- Location: LCCOMB_X22_Y20_N12
\i0|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|Mux9~2_combout\ = (\i0|Mux9~1_combout\ & ((\S1~input_o\ $ (\i0|Mux9~0_combout\)))) # (!\i0|Mux9~1_combout\ & ((\S1~input_o\ & ((\i0|Mux9~0_combout\))) # (!\S1~input_o\ & (\A[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i0|Mux9~1_combout\,
	datab => \A[6]~input_o\,
	datac => \S1~input_o\,
	datad => \i0|Mux9~0_combout\,
	combout => \i0|Mux9~2_combout\);

-- Location: LCCOMB_X22_Y20_N14
\i0|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|Mux25~0_combout\ = (!\S1~input_o\ & (!\M~input_o\ & (\B[6]~input_o\ $ (\S0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \S1~input_o\,
	datac => \S0~input_o\,
	datad => \M~input_o\,
	combout => \i0|Mux25~0_combout\);

-- Location: LCCOMB_X22_Y22_N10
\i1|gen_adders:5:adder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|gen_adders:5:adder|Cout~0_combout\ = (\i1|gen_adders:4:adder|Cout~0_combout\ & ((\i0|Mux10~2_combout\) # (\i0|Mux26~0_combout\))) # (!\i1|gen_adders:4:adder|Cout~0_combout\ & (\i0|Mux10~2_combout\ & \i0|Mux26~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|gen_adders:4:adder|Cout~0_combout\,
	datab => \i0|Mux10~2_combout\,
	datad => \i0|Mux26~0_combout\,
	combout => \i1|gen_adders:5:adder|Cout~0_combout\);

-- Location: LCCOMB_X22_Y20_N22
\i1|gen_adders:6:adder|Result\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|gen_adders:6:adder|Result~combout\ = \i0|Mux9~2_combout\ $ (\i0|Mux25~0_combout\ $ (\i1|gen_adders:5:adder|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i0|Mux9~2_combout\,
	datac => \i0|Mux25~0_combout\,
	datad => \i1|gen_adders:5:adder|Cout~0_combout\,
	combout => \i1|gen_adders:6:adder|Result~combout\);

-- Location: LCCOMB_X22_Y20_N16
\i1|gen_adders:6:adder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|gen_adders:6:adder|Cout~0_combout\ = (\i0|Mux9~2_combout\ & ((\i0|Mux25~0_combout\) # (\i1|gen_adders:5:adder|Cout~0_combout\))) # (!\i0|Mux9~2_combout\ & (\i0|Mux25~0_combout\ & \i1|gen_adders:5:adder|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i0|Mux9~2_combout\,
	datac => \i0|Mux25~0_combout\,
	datad => \i1|gen_adders:5:adder|Cout~0_combout\,
	combout => \i1|gen_adders:6:adder|Cout~0_combout\);

-- Location: IOIBUF_X18_Y24_N15
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X9_Y24_N8
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X22_Y20_N6
\i0|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|Mux8~1_combout\ = (\M~input_o\ & (\B[7]~input_o\ $ (\A[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datac => \A[7]~input_o\,
	datad => \M~input_o\,
	combout => \i0|Mux8~1_combout\);

-- Location: LCCOMB_X22_Y20_N20
\i0|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|Mux8~0_combout\ = (\M~input_o\ & ((\S0~input_o\))) # (!\M~input_o\ & (\A[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[6]~input_o\,
	datac => \S0~input_o\,
	datad => \M~input_o\,
	combout => \i0|Mux8~0_combout\);

-- Location: LCCOMB_X22_Y20_N8
\i0|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|Mux8~2_combout\ = (\i0|Mux8~1_combout\ & ((\S1~input_o\ $ (\i0|Mux8~0_combout\)))) # (!\i0|Mux8~1_combout\ & ((\S1~input_o\ & ((\i0|Mux8~0_combout\))) # (!\S1~input_o\ & (\A[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i0|Mux8~1_combout\,
	datab => \A[7]~input_o\,
	datac => \S1~input_o\,
	datad => \i0|Mux8~0_combout\,
	combout => \i0|Mux8~2_combout\);

-- Location: LCCOMB_X22_Y20_N18
\i0|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|Mux24~0_combout\ = (!\S1~input_o\ & (!\M~input_o\ & (\B[7]~input_o\ $ (\S0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \S1~input_o\,
	datac => \S0~input_o\,
	datad => \M~input_o\,
	combout => \i0|Mux24~0_combout\);

-- Location: LCCOMB_X22_Y20_N2
\i1|gen_adders:7:adder|Result\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|gen_adders:7:adder|Result~combout\ = \i1|gen_adders:6:adder|Cout~0_combout\ $ (\i0|Mux8~2_combout\ $ (\i0|Mux24~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i1|gen_adders:6:adder|Cout~0_combout\,
	datac => \i0|Mux8~2_combout\,
	datad => \i0|Mux24~0_combout\,
	combout => \i1|gen_adders:7:adder|Result~combout\);

-- Location: IOIBUF_X34_Y7_N8
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: IOIBUF_X7_Y0_N1
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LCCOMB_X22_Y4_N12
\i0|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|Mux7~1_combout\ = (\M~input_o\ & (\B[8]~input_o\ $ (\A[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \A[8]~input_o\,
	datad => \M~input_o\,
	combout => \i0|Mux7~1_combout\);

-- Location: LCCOMB_X22_Y20_N30
\i0|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|Mux7~0_combout\ = (\M~input_o\ & ((\S0~input_o\))) # (!\M~input_o\ & (\A[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[7]~input_o\,
	datac => \S0~input_o\,
	datad => \M~input_o\,
	combout => \i0|Mux7~0_combout\);

-- Location: LCCOMB_X22_Y4_N6
\i0|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|Mux7~2_combout\ = (\i0|Mux7~1_combout\ & ((\i0|Mux7~0_combout\ $ (\S1~input_o\)))) # (!\i0|Mux7~1_combout\ & ((\S1~input_o\ & ((\i0|Mux7~0_combout\))) # (!\S1~input_o\ & (\A[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i0|Mux7~1_combout\,
	datab => \A[8]~input_o\,
	datac => \i0|Mux7~0_combout\,
	datad => \S1~input_o\,
	combout => \i0|Mux7~2_combout\);

-- Location: LCCOMB_X19_Y4_N8
\i0|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|Mux23~0_combout\ = (!\S1~input_o\ & (!\M~input_o\ & (\B[8]~input_o\ $ (\S0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~input_o\,
	datab => \M~input_o\,
	datac => \B[8]~input_o\,
	datad => \S0~input_o\,
	combout => \i0|Mux23~0_combout\);

-- Location: LCCOMB_X22_Y20_N4
\i1|gen_adders:7:adder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|gen_adders:7:adder|Cout~0_combout\ = (\i1|gen_adders:6:adder|Cout~0_combout\ & ((\i0|Mux8~2_combout\) # (\i0|Mux24~0_combout\))) # (!\i1|gen_adders:6:adder|Cout~0_combout\ & (\i0|Mux8~2_combout\ & \i0|Mux24~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i1|gen_adders:6:adder|Cout~0_combout\,
	datac => \i0|Mux8~2_combout\,
	datad => \i0|Mux24~0_combout\,
	combout => \i1|gen_adders:7:adder|Cout~0_combout\);

-- Location: LCCOMB_X19_Y4_N2
\i1|gen_adders:8:adder|Result\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|gen_adders:8:adder|Result~combout\ = \i0|Mux7~2_combout\ $ (\i0|Mux23~0_combout\ $ (\i1|gen_adders:7:adder|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i0|Mux7~2_combout\,
	datac => \i0|Mux23~0_combout\,
	datad => \i1|gen_adders:7:adder|Cout~0_combout\,
	combout => \i1|gen_adders:8:adder|Result~combout\);

-- Location: LCCOMB_X19_Y4_N20
\i1|gen_adders:8:adder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|gen_adders:8:adder|Cout~0_combout\ = (\i0|Mux7~2_combout\ & ((\i0|Mux23~0_combout\) # (\i1|gen_adders:7:adder|Cout~0_combout\))) # (!\i0|Mux7~2_combout\ & (\i0|Mux23~0_combout\ & \i1|gen_adders:7:adder|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i0|Mux7~2_combout\,
	datac => \i0|Mux23~0_combout\,
	datad => \i1|gen_adders:7:adder|Cout~0_combout\,
	combout => \i1|gen_adders:8:adder|Cout~0_combout\);

-- Location: IOIBUF_X13_Y0_N15
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LCCOMB_X19_Y4_N0
\i0|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|Mux6~0_combout\ = (\M~input_o\ & ((\S0~input_o\))) # (!\M~input_o\ & (\A[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \M~input_o\,
	datad => \S0~input_o\,
	combout => \i0|Mux6~0_combout\);

-- Location: IOIBUF_X23_Y0_N15
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: LCCOMB_X19_Y4_N10
\i0|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|Mux6~1_combout\ = (\M~input_o\ & (\A[9]~input_o\ $ (\B[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \M~input_o\,
	datad => \B[9]~input_o\,
	combout => \i0|Mux6~1_combout\);

-- Location: LCCOMB_X19_Y4_N4
\i0|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|Mux6~2_combout\ = (\S1~input_o\ & ((\i0|Mux6~0_combout\ $ (\i0|Mux6~1_combout\)))) # (!\S1~input_o\ & ((\i0|Mux6~1_combout\ & ((\i0|Mux6~0_combout\))) # (!\i0|Mux6~1_combout\ & (\A[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \i0|Mux6~0_combout\,
	datac => \S1~input_o\,
	datad => \i0|Mux6~1_combout\,
	combout => \i0|Mux6~2_combout\);

-- Location: LCCOMB_X19_Y4_N6
\i0|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|Mux22~0_combout\ = (!\S1~input_o\ & (!\M~input_o\ & (\S0~input_o\ $ (\B[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datab => \B[9]~input_o\,
	datac => \S1~input_o\,
	datad => \M~input_o\,
	combout => \i0|Mux22~0_combout\);

-- Location: LCCOMB_X19_Y4_N14
\i1|gen_adders:9:adder|Result\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|gen_adders:9:adder|Result~combout\ = \i1|gen_adders:8:adder|Cout~0_combout\ $ (\i0|Mux6~2_combout\ $ (\i0|Mux22~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i1|gen_adders:8:adder|Cout~0_combout\,
	datac => \i0|Mux6~2_combout\,
	datad => \i0|Mux22~0_combout\,
	combout => \i1|gen_adders:9:adder|Result~combout\);

-- Location: LCCOMB_X19_Y4_N16
\i1|gen_adders:9:adder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|gen_adders:9:adder|Cout~0_combout\ = (\i1|gen_adders:8:adder|Cout~0_combout\ & ((\i0|Mux6~2_combout\) # (\i0|Mux22~0_combout\))) # (!\i1|gen_adders:8:adder|Cout~0_combout\ & (\i0|Mux6~2_combout\ & \i0|Mux22~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i1|gen_adders:8:adder|Cout~0_combout\,
	datac => \i0|Mux6~2_combout\,
	datad => \i0|Mux22~0_combout\,
	combout => \i1|gen_adders:9:adder|Cout~0_combout\);

-- Location: IOIBUF_X18_Y0_N22
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: LCCOMB_X19_Y4_N26
\i0|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|Mux21~0_combout\ = (!\M~input_o\ & (!\S1~input_o\ & (\B[10]~input_o\ $ (\S0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[10]~input_o\,
	datab => \M~input_o\,
	datac => \S1~input_o\,
	datad => \S0~input_o\,
	combout => \i0|Mux21~0_combout\);

-- Location: IOIBUF_X34_Y12_N22
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: LCCOMB_X19_Y4_N30
\i0|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|Mux5~1_combout\ = (\M~input_o\ & (\A[10]~input_o\ $ (\B[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \B[10]~input_o\,
	datad => \M~input_o\,
	combout => \i0|Mux5~1_combout\);

-- Location: LCCOMB_X19_Y4_N12
\i0|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|Mux5~0_combout\ = (\M~input_o\ & ((\S0~input_o\))) # (!\M~input_o\ & (\A[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \M~input_o\,
	datad => \S0~input_o\,
	combout => \i0|Mux5~0_combout\);

-- Location: LCCOMB_X19_Y4_N24
\i0|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|Mux5~2_combout\ = (\i0|Mux5~1_combout\ & (\i0|Mux5~0_combout\ $ ((\S1~input_o\)))) # (!\i0|Mux5~1_combout\ & ((\S1~input_o\ & (\i0|Mux5~0_combout\)) # (!\S1~input_o\ & ((\A[10]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110101101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i0|Mux5~1_combout\,
	datab => \i0|Mux5~0_combout\,
	datac => \S1~input_o\,
	datad => \A[10]~input_o\,
	combout => \i0|Mux5~2_combout\);

-- Location: LCCOMB_X19_Y4_N18
\i1|gen_adders:10:adder|Result\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|gen_adders:10:adder|Result~combout\ = \i1|gen_adders:9:adder|Cout~0_combout\ $ (\i0|Mux21~0_combout\ $ (\i0|Mux5~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i1|gen_adders:9:adder|Cout~0_combout\,
	datac => \i0|Mux21~0_combout\,
	datad => \i0|Mux5~2_combout\,
	combout => \i1|gen_adders:10:adder|Result~combout\);

-- Location: IOIBUF_X34_Y12_N15
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X34_Y17_N22
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: LCCOMB_X26_Y16_N20
\i0|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|Mux4~1_combout\ = (\M~input_o\ & (\B[11]~input_o\ $ (\A[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M~input_o\,
	datac => \B[11]~input_o\,
	datad => \A[11]~input_o\,
	combout => \i0|Mux4~1_combout\);

-- Location: LCCOMB_X19_Y4_N22
\i0|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|Mux4~0_combout\ = (\M~input_o\ & ((\S0~input_o\))) # (!\M~input_o\ & (\A[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \M~input_o\,
	datad => \S0~input_o\,
	combout => \i0|Mux4~0_combout\);

-- Location: LCCOMB_X26_Y16_N30
\i0|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|Mux4~2_combout\ = (\S1~input_o\ & (\i0|Mux4~1_combout\ $ ((\i0|Mux4~0_combout\)))) # (!\S1~input_o\ & ((\i0|Mux4~1_combout\ & (\i0|Mux4~0_combout\)) # (!\i0|Mux4~1_combout\ & ((\A[11]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100101101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~input_o\,
	datab => \i0|Mux4~1_combout\,
	datac => \i0|Mux4~0_combout\,
	datad => \A[11]~input_o\,
	combout => \i0|Mux4~2_combout\);

-- Location: LCCOMB_X19_Y4_N28
\i1|gen_adders:10:adder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|gen_adders:10:adder|Cout~0_combout\ = (\i1|gen_adders:9:adder|Cout~0_combout\ & ((\i0|Mux21~0_combout\) # (\i0|Mux5~2_combout\))) # (!\i1|gen_adders:9:adder|Cout~0_combout\ & (\i0|Mux21~0_combout\ & \i0|Mux5~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i1|gen_adders:9:adder|Cout~0_combout\,
	datac => \i0|Mux21~0_combout\,
	datad => \i0|Mux5~2_combout\,
	combout => \i1|gen_adders:10:adder|Cout~0_combout\);

-- Location: LCCOMB_X26_Y16_N10
\i0|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|Mux20~0_combout\ = (!\S1~input_o\ & (!\M~input_o\ & (\S0~input_o\ $ (\B[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~input_o\,
	datab => \S0~input_o\,
	datac => \B[11]~input_o\,
	datad => \M~input_o\,
	combout => \i0|Mux20~0_combout\);

-- Location: LCCOMB_X26_Y16_N16
\i1|gen_adders:11:adder|Result\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|gen_adders:11:adder|Result~combout\ = \i0|Mux4~2_combout\ $ (\i1|gen_adders:10:adder|Cout~0_combout\ $ (\i0|Mux20~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i0|Mux4~2_combout\,
	datac => \i1|gen_adders:10:adder|Cout~0_combout\,
	datad => \i0|Mux20~0_combout\,
	combout => \i1|gen_adders:11:adder|Result~combout\);

-- Location: LCCOMB_X26_Y16_N18
\i1|gen_adders:11:adder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|gen_adders:11:adder|Cout~0_combout\ = (\i0|Mux4~2_combout\ & ((\i1|gen_adders:10:adder|Cout~0_combout\) # (\i0|Mux20~0_combout\))) # (!\i0|Mux4~2_combout\ & (\i1|gen_adders:10:adder|Cout~0_combout\ & \i0|Mux20~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i0|Mux4~2_combout\,
	datac => \i1|gen_adders:10:adder|Cout~0_combout\,
	datad => \i0|Mux20~0_combout\,
	combout => \i1|gen_adders:11:adder|Cout~0_combout\);

-- Location: IOIBUF_X30_Y24_N22
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: IOIBUF_X34_Y18_N1
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: LCCOMB_X26_Y16_N0
\i0|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|Mux3~1_combout\ = (\M~input_o\ & (\B[12]~input_o\ $ (\A[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M~input_o\,
	datac => \B[12]~input_o\,
	datad => \A[12]~input_o\,
	combout => \i0|Mux3~1_combout\);

-- Location: LCCOMB_X26_Y16_N14
\i0|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|Mux3~0_combout\ = (\M~input_o\ & (\S0~input_o\)) # (!\M~input_o\ & ((\A[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M~input_o\,
	datac => \S0~input_o\,
	datad => \A[11]~input_o\,
	combout => \i0|Mux3~0_combout\);

-- Location: LCCOMB_X26_Y16_N26
\i0|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|Mux3~2_combout\ = (\i0|Mux3~1_combout\ & ((\i0|Mux3~0_combout\ $ (\S1~input_o\)))) # (!\i0|Mux3~1_combout\ & ((\S1~input_o\ & ((\i0|Mux3~0_combout\))) # (!\S1~input_o\ & (\A[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \i0|Mux3~1_combout\,
	datac => \i0|Mux3~0_combout\,
	datad => \S1~input_o\,
	combout => \i0|Mux3~2_combout\);

-- Location: LCCOMB_X26_Y16_N28
\i0|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|Mux19~0_combout\ = (!\S1~input_o\ & (!\M~input_o\ & (\S0~input_o\ $ (\B[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~input_o\,
	datab => \S0~input_o\,
	datac => \B[12]~input_o\,
	datad => \M~input_o\,
	combout => \i0|Mux19~0_combout\);

-- Location: LCCOMB_X26_Y16_N4
\i1|gen_adders:12:adder|Result\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|gen_adders:12:adder|Result~combout\ = \i1|gen_adders:11:adder|Cout~0_combout\ $ (\i0|Mux3~2_combout\ $ (\i0|Mux19~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i1|gen_adders:11:adder|Cout~0_combout\,
	datac => \i0|Mux3~2_combout\,
	datad => \i0|Mux19~0_combout\,
	combout => \i1|gen_adders:12:adder|Result~combout\);

-- Location: IOIBUF_X18_Y24_N22
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: LCCOMB_X25_Y20_N12
\i0|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|Mux18~0_combout\ = (!\S1~input_o\ & (!\M~input_o\ & (\B[13]~input_o\ $ (\S0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~input_o\,
	datab => \M~input_o\,
	datac => \B[13]~input_o\,
	datad => \S0~input_o\,
	combout => \i0|Mux18~0_combout\);

-- Location: IOIBUF_X28_Y24_N1
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: LCCOMB_X26_Y16_N24
\i0|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|Mux2~0_combout\ = (\M~input_o\ & (\S0~input_o\)) # (!\M~input_o\ & ((\A[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M~input_o\,
	datac => \S0~input_o\,
	datad => \A[12]~input_o\,
	combout => \i0|Mux2~0_combout\);

-- Location: LCCOMB_X26_Y16_N2
\i0|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|Mux2~1_combout\ = (\M~input_o\ & (\B[13]~input_o\ $ (\A[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[13]~input_o\,
	datac => \A[13]~input_o\,
	datad => \M~input_o\,
	combout => \i0|Mux2~1_combout\);

-- Location: LCCOMB_X26_Y16_N12
\i0|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|Mux2~2_combout\ = (\i0|Mux2~1_combout\ & ((\i0|Mux2~0_combout\ $ (\S1~input_o\)))) # (!\i0|Mux2~1_combout\ & ((\S1~input_o\ & ((\i0|Mux2~0_combout\))) # (!\S1~input_o\ & (\A[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \i0|Mux2~0_combout\,
	datac => \i0|Mux2~1_combout\,
	datad => \S1~input_o\,
	combout => \i0|Mux2~2_combout\);

-- Location: LCCOMB_X26_Y16_N22
\i1|gen_adders:12:adder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|gen_adders:12:adder|Cout~0_combout\ = (\i1|gen_adders:11:adder|Cout~0_combout\ & ((\i0|Mux3~2_combout\) # (\i0|Mux19~0_combout\))) # (!\i1|gen_adders:11:adder|Cout~0_combout\ & (\i0|Mux3~2_combout\ & \i0|Mux19~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i1|gen_adders:11:adder|Cout~0_combout\,
	datac => \i0|Mux3~2_combout\,
	datad => \i0|Mux19~0_combout\,
	combout => \i1|gen_adders:12:adder|Cout~0_combout\);

-- Location: LCCOMB_X25_Y20_N14
\i1|gen_adders:13:adder|Result\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|gen_adders:13:adder|Result~combout\ = \i0|Mux18~0_combout\ $ (\i0|Mux2~2_combout\ $ (\i1|gen_adders:12:adder|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i0|Mux18~0_combout\,
	datac => \i0|Mux2~2_combout\,
	datad => \i1|gen_adders:12:adder|Cout~0_combout\,
	combout => \i1|gen_adders:13:adder|Result~combout\);

-- Location: IOIBUF_X28_Y24_N22
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: IOIBUF_X34_Y20_N8
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: LCCOMB_X25_Y20_N20
\i0|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|Mux1~1_combout\ = (\M~input_o\ & (\B[14]~input_o\ $ (\A[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[14]~input_o\,
	datab => \M~input_o\,
	datad => \A[14]~input_o\,
	combout => \i0|Mux1~1_combout\);

-- Location: LCCOMB_X26_Y16_N6
\i0|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|Mux1~0_combout\ = (\M~input_o\ & ((\S0~input_o\))) # (!\M~input_o\ & (\A[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datac => \S0~input_o\,
	datad => \M~input_o\,
	combout => \i0|Mux1~0_combout\);

-- Location: LCCOMB_X25_Y20_N30
\i0|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|Mux1~2_combout\ = (\S1~input_o\ & (\i0|Mux1~1_combout\ $ ((\i0|Mux1~0_combout\)))) # (!\S1~input_o\ & ((\i0|Mux1~1_combout\ & (\i0|Mux1~0_combout\)) # (!\i0|Mux1~1_combout\ & ((\A[14]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100101101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~input_o\,
	datab => \i0|Mux1~1_combout\,
	datac => \i0|Mux1~0_combout\,
	datad => \A[14]~input_o\,
	combout => \i0|Mux1~2_combout\);

-- Location: LCCOMB_X25_Y20_N2
\i0|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|Mux17~0_combout\ = (!\S1~input_o\ & (!\M~input_o\ & (\S0~input_o\ $ (\B[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~input_o\,
	datab => \M~input_o\,
	datac => \S0~input_o\,
	datad => \B[14]~input_o\,
	combout => \i0|Mux17~0_combout\);

-- Location: LCCOMB_X25_Y20_N8
\i1|gen_adders:13:adder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|gen_adders:13:adder|Cout~0_combout\ = (\i0|Mux18~0_combout\ & ((\i0|Mux2~2_combout\) # (\i1|gen_adders:12:adder|Cout~0_combout\))) # (!\i0|Mux18~0_combout\ & (\i0|Mux2~2_combout\ & \i1|gen_adders:12:adder|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i0|Mux18~0_combout\,
	datac => \i0|Mux2~2_combout\,
	datad => \i1|gen_adders:12:adder|Cout~0_combout\,
	combout => \i1|gen_adders:13:adder|Cout~0_combout\);

-- Location: LCCOMB_X25_Y20_N0
\i1|gen_adders:14:adder|Result\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|gen_adders:14:adder|Result~combout\ = \i0|Mux1~2_combout\ $ (\i0|Mux17~0_combout\ $ (\i1|gen_adders:13:adder|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i0|Mux1~2_combout\,
	datab => \i0|Mux17~0_combout\,
	datac => \i1|gen_adders:13:adder|Cout~0_combout\,
	combout => \i1|gen_adders:14:adder|Result~combout\);

-- Location: LCCOMB_X25_Y20_N6
\i0|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|Mux0~0_combout\ = (\M~input_o\ & (\S0~input_o\)) # (!\M~input_o\ & ((\A[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S0~input_o\,
	datab => \M~input_o\,
	datad => \A[14]~input_o\,
	combout => \i0|Mux0~0_combout\);

-- Location: IOIBUF_X16_Y24_N8
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: IOIBUF_X28_Y24_N15
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: LCCOMB_X25_Y20_N16
\i0|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|Mux0~1_combout\ = (\M~input_o\ & (\B[15]~input_o\ $ (\A[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[15]~input_o\,
	datac => \A[15]~input_o\,
	datad => \M~input_o\,
	combout => \i0|Mux0~1_combout\);

-- Location: LCCOMB_X25_Y20_N18
\i0|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|Mux0~2_combout\ = (\i0|Mux0~1_combout\ & (\i0|Mux0~0_combout\ $ (((\S1~input_o\))))) # (!\i0|Mux0~1_combout\ & ((\S1~input_o\ & (\i0|Mux0~0_combout\)) # (!\S1~input_o\ & ((\A[15]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i0|Mux0~0_combout\,
	datab => \i0|Mux0~1_combout\,
	datac => \A[15]~input_o\,
	datad => \S1~input_o\,
	combout => \i0|Mux0~2_combout\);

-- Location: LCCOMB_X25_Y20_N26
\i1|gen_adders:14:adder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|gen_adders:14:adder|Cout~0_combout\ = (\i0|Mux1~2_combout\ & ((\i0|Mux17~0_combout\) # (\i1|gen_adders:13:adder|Cout~0_combout\))) # (!\i0|Mux1~2_combout\ & (\i0|Mux17~0_combout\ & \i1|gen_adders:13:adder|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i0|Mux1~2_combout\,
	datab => \i0|Mux17~0_combout\,
	datac => \i1|gen_adders:13:adder|Cout~0_combout\,
	combout => \i1|gen_adders:14:adder|Cout~0_combout\);

-- Location: LCCOMB_X25_Y20_N28
\i0|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i0|Mux16~0_combout\ = (!\S1~input_o\ & (!\M~input_o\ & (\B[15]~input_o\ $ (\S0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~input_o\,
	datab => \M~input_o\,
	datac => \B[15]~input_o\,
	datad => \S0~input_o\,
	combout => \i0|Mux16~0_combout\);

-- Location: LCCOMB_X25_Y20_N4
\i1|gen_adders:15:adder|Result\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|gen_adders:15:adder|Result~combout\ = \i0|Mux0~2_combout\ $ (\i1|gen_adders:14:adder|Cout~0_combout\ $ (\i0|Mux16~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i0|Mux0~2_combout\,
	datac => \i1|gen_adders:14:adder|Cout~0_combout\,
	datad => \i0|Mux16~0_combout\,
	combout => \i1|gen_adders:15:adder|Result~combout\);

-- Location: LCCOMB_X25_Y20_N22
\i1|gen_adders:15:adder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i1|gen_adders:15:adder|Cout~0_combout\ = (\i0|Mux0~2_combout\ & ((\i1|gen_adders:14:adder|Cout~0_combout\) # (\i0|Mux16~0_combout\))) # (!\i0|Mux0~2_combout\ & (\i1|gen_adders:14:adder|Cout~0_combout\ & \i0|Mux16~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i0|Mux0~2_combout\,
	datac => \i1|gen_adders:14:adder|Cout~0_combout\,
	datad => \i0|Mux16~0_combout\,
	combout => \i1|gen_adders:15:adder|Cout~0_combout\);

ww_Result(0) <= \Result[0]~output_o\;

ww_Result(1) <= \Result[1]~output_o\;

ww_Result(2) <= \Result[2]~output_o\;

ww_Result(3) <= \Result[3]~output_o\;

ww_Result(4) <= \Result[4]~output_o\;

ww_Result(5) <= \Result[5]~output_o\;

ww_Result(6) <= \Result[6]~output_o\;

ww_Result(7) <= \Result[7]~output_o\;

ww_Result(8) <= \Result[8]~output_o\;

ww_Result(9) <= \Result[9]~output_o\;

ww_Result(10) <= \Result[10]~output_o\;

ww_Result(11) <= \Result[11]~output_o\;

ww_Result(12) <= \Result[12]~output_o\;

ww_Result(13) <= \Result[13]~output_o\;

ww_Result(14) <= \Result[14]~output_o\;

ww_Result(15) <= \Result[15]~output_o\;

ww_Cout <= \Cout~output_o\;
END structure;


