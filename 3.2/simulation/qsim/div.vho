-- Copyright (C) 2024  Intel Corporation. All rights reserved.
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
-- VERSION "Version 23.1std.1 Build 993 05/14/2024 SC Lite Edition"

-- DATE "01/29/2025 15:24:27"

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

ENTITY 	div IS
    PORT (
	clk : IN std_logic;
	start : IN std_logic;
	A : IN std_logic_vector(15 DOWNTO 0);
	B : IN std_logic_vector(15 DOWNTO 0);
	count : OUT std_logic_vector(15 DOWNTO 0);
	done : OUT std_logic
	);
END div;

-- Design Ports Information
-- count[0]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[1]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[2]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[3]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[4]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[5]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[6]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[7]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[8]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[9]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[10]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[11]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[12]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[13]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[14]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[15]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- done	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF div IS
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
SIGNAL ww_start : std_logic;
SIGNAL ww_A : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_count : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_done : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \count[0]~output_o\ : std_logic;
SIGNAL \count[1]~output_o\ : std_logic;
SIGNAL \count[2]~output_o\ : std_logic;
SIGNAL \count[3]~output_o\ : std_logic;
SIGNAL \count[4]~output_o\ : std_logic;
SIGNAL \count[5]~output_o\ : std_logic;
SIGNAL \count[6]~output_o\ : std_logic;
SIGNAL \count[7]~output_o\ : std_logic;
SIGNAL \count[8]~output_o\ : std_logic;
SIGNAL \count[9]~output_o\ : std_logic;
SIGNAL \count[10]~output_o\ : std_logic;
SIGNAL \count[11]~output_o\ : std_logic;
SIGNAL \count[12]~output_o\ : std_logic;
SIGNAL \count[13]~output_o\ : std_logic;
SIGNAL \count[14]~output_o\ : std_logic;
SIGNAL \count[15]~output_o\ : std_logic;
SIGNAL \done~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \counter[0]~16_combout\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \current_A[0]~16_combout\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \current_A[0]~17\ : std_logic;
SIGNAL \current_A[1]~18_combout\ : std_logic;
SIGNAL \current_A[1]~feeder_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \current_A[1]~19\ : std_logic;
SIGNAL \current_A[2]~20_combout\ : std_logic;
SIGNAL \current_A[2]~feeder_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \current_A[2]~21\ : std_logic;
SIGNAL \current_A[3]~22_combout\ : std_logic;
SIGNAL \current_A[3]~feeder_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \current_A[3]~23\ : std_logic;
SIGNAL \current_A[4]~24_combout\ : std_logic;
SIGNAL \current_A[4]~feeder_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \current_A[4]~25\ : std_logic;
SIGNAL \current_A[5]~26_combout\ : std_logic;
SIGNAL \current_A[5]~feeder_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \current_A[5]~27\ : std_logic;
SIGNAL \current_A[6]~28_combout\ : std_logic;
SIGNAL \current_A[6]~feeder_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \current_A[6]~29\ : std_logic;
SIGNAL \current_A[7]~30_combout\ : std_logic;
SIGNAL \current_A[7]~feeder_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \current_A[7]~31\ : std_logic;
SIGNAL \current_A[8]~32_combout\ : std_logic;
SIGNAL \current_A[8]~feeder_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \current_A[8]~33\ : std_logic;
SIGNAL \current_A[9]~34_combout\ : std_logic;
SIGNAL \current_A[9]~feeder_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \current_A[9]~35\ : std_logic;
SIGNAL \current_A[10]~36_combout\ : std_logic;
SIGNAL \current_A[10]~feeder_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \current_A[10]~37\ : std_logic;
SIGNAL \current_A[11]~38_combout\ : std_logic;
SIGNAL \current_A[11]~feeder_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \current_A[11]~39\ : std_logic;
SIGNAL \current_A[12]~40_combout\ : std_logic;
SIGNAL \current_A[12]~feeder_combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \current_A[12]~41\ : std_logic;
SIGNAL \current_A[13]~42_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \current_A[13]~43\ : std_logic;
SIGNAL \current_A[14]~44_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \current_A[14]~45\ : std_logic;
SIGNAL \current_A[15]~46_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~11_cout\ : std_logic;
SIGNAL \LessThan0~13_cout\ : std_logic;
SIGNAL \LessThan0~15_cout\ : std_logic;
SIGNAL \LessThan0~17_cout\ : std_logic;
SIGNAL \LessThan0~19_cout\ : std_logic;
SIGNAL \LessThan0~21_cout\ : std_logic;
SIGNAL \LessThan0~23_cout\ : std_logic;
SIGNAL \LessThan0~25_cout\ : std_logic;
SIGNAL \LessThan0~27_cout\ : std_logic;
SIGNAL \LessThan0~29_cout\ : std_logic;
SIGNAL \LessThan0~30_combout\ : std_logic;
SIGNAL \counter~18_combout\ : std_logic;
SIGNAL \state~q\ : std_logic;
SIGNAL \counter[0]~17\ : std_logic;
SIGNAL \counter[1]~19_combout\ : std_logic;
SIGNAL \counter[1]~20\ : std_logic;
SIGNAL \counter[2]~21_combout\ : std_logic;
SIGNAL \counter[2]~22\ : std_logic;
SIGNAL \counter[3]~23_combout\ : std_logic;
SIGNAL \counter[3]~24\ : std_logic;
SIGNAL \counter[4]~25_combout\ : std_logic;
SIGNAL \counter[4]~26\ : std_logic;
SIGNAL \counter[5]~27_combout\ : std_logic;
SIGNAL \counter[5]~28\ : std_logic;
SIGNAL \counter[6]~29_combout\ : std_logic;
SIGNAL \counter[6]~30\ : std_logic;
SIGNAL \counter[7]~31_combout\ : std_logic;
SIGNAL \counter[7]~32\ : std_logic;
SIGNAL \counter[8]~33_combout\ : std_logic;
SIGNAL \counter[8]~34\ : std_logic;
SIGNAL \counter[9]~35_combout\ : std_logic;
SIGNAL \counter[9]~36\ : std_logic;
SIGNAL \counter[10]~37_combout\ : std_logic;
SIGNAL \counter[10]~38\ : std_logic;
SIGNAL \counter[11]~39_combout\ : std_logic;
SIGNAL \counter[11]~40\ : std_logic;
SIGNAL \counter[12]~41_combout\ : std_logic;
SIGNAL \counter[12]~42\ : std_logic;
SIGNAL \counter[13]~43_combout\ : std_logic;
SIGNAL \counter[13]~44\ : std_logic;
SIGNAL \counter[14]~45_combout\ : std_logic;
SIGNAL \counter[14]~46\ : std_logic;
SIGNAL \counter[15]~47_combout\ : std_logic;
SIGNAL \done~0_combout\ : std_logic;
SIGNAL \done~reg0_q\ : std_logic;
SIGNAL current_A : std_logic_vector(15 DOWNTO 0);
SIGNAL counter : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_state~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_start <= start;
ww_A <= A;
ww_B <= B;
count <= ww_count;
done <= ww_done;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_state~q\ <= NOT \state~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X60_Y0_N16
\count[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => counter(0),
	devoe => ww_devoe,
	o => \count[0]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\count[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => counter(1),
	devoe => ww_devoe,
	o => \count[1]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\count[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => counter(2),
	devoe => ww_devoe,
	o => \count[2]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\count[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => counter(3),
	devoe => ww_devoe,
	o => \count[3]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\count[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => counter(4),
	devoe => ww_devoe,
	o => \count[4]~output_o\);

-- Location: IOOBUF_X56_Y0_N16
\count[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => counter(5),
	devoe => ww_devoe,
	o => \count[5]~output_o\);

-- Location: IOOBUF_X56_Y0_N23
\count[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => counter(6),
	devoe => ww_devoe,
	o => \count[6]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\count[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => counter(7),
	devoe => ww_devoe,
	o => \count[7]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\count[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => counter(8),
	devoe => ww_devoe,
	o => \count[8]~output_o\);

-- Location: IOOBUF_X60_Y0_N23
\count[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => counter(9),
	devoe => ww_devoe,
	o => \count[9]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\count[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => counter(10),
	devoe => ww_devoe,
	o => \count[10]~output_o\);

-- Location: IOOBUF_X33_Y0_N2
\count[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => counter(11),
	devoe => ww_devoe,
	o => \count[11]~output_o\);

-- Location: IOOBUF_X65_Y0_N16
\count[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => counter(12),
	devoe => ww_devoe,
	o => \count[12]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\count[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => counter(13),
	devoe => ww_devoe,
	o => \count[13]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\count[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => counter(14),
	devoe => ww_devoe,
	o => \count[14]~output_o\);

-- Location: IOOBUF_X65_Y0_N23
\count[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => counter(15),
	devoe => ww_devoe,
	o => \count[15]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\done~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \done~reg0_q\,
	devoe => ww_devoe,
	o => \done~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
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

-- Location: LCCOMB_X56_Y4_N0
\counter[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[0]~16_combout\ = counter(0) $ (VCC)
-- \counter[0]~17\ = CARRY(counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(0),
	datad => VCC,
	combout => \counter[0]~16_combout\,
	cout => \counter[0]~17\);

-- Location: IOIBUF_X54_Y0_N15
\start~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

-- Location: IOIBUF_X49_Y0_N8
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X42_Y0_N15
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X35_Y0_N15
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X42_Y0_N22
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X50_Y4_N12
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\B[2]~input_o\ & (!\B[0]~input_o\ & (!\B[3]~input_o\ & !\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[0]~input_o\,
	datac => \B[3]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: IOIBUF_X38_Y0_N8
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X49_Y0_N15
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X45_Y0_N15
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X50_Y4_N18
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\B[5]~input_o\ & (!\B[7]~input_o\ & (!\B[6]~input_o\ & !\B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \B[7]~input_o\,
	datac => \B[6]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Equal0~1_combout\);

-- Location: IOIBUF_X47_Y0_N1
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: IOIBUF_X49_Y0_N1
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: IOIBUF_X33_Y0_N8
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X49_Y0_N22
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: LCCOMB_X50_Y4_N30
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!\B[15]~input_o\ & (!\B[14]~input_o\ & (!\B[13]~input_o\ & !\B[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[15]~input_o\,
	datab => \B[14]~input_o\,
	datac => \B[13]~input_o\,
	datad => \B[12]~input_o\,
	combout => \Equal0~3_combout\);

-- Location: IOIBUF_X35_Y0_N22
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X45_Y0_N22
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X47_Y0_N8
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X40_Y0_N15
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LCCOMB_X50_Y4_N28
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\B[9]~input_o\ & (!\B[11]~input_o\ & (!\B[10]~input_o\ & !\B[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datab => \B[11]~input_o\,
	datac => \B[10]~input_o\,
	datad => \B[8]~input_o\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X50_Y4_N16
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~0_combout\ & (\Equal0~1_combout\ & (\Equal0~3_combout\ & \Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~3_combout\,
	datad => \Equal0~2_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X53_Y4_N0
\current_A[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_A[0]~16_combout\ = (\B[0]~input_o\ & (current_A(0) $ (VCC))) # (!\B[0]~input_o\ & ((current_A(0)) # (GND)))
-- \current_A[0]~17\ = CARRY((current_A(0)) # (!\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => current_A(0),
	datad => VCC,
	combout => \current_A[0]~16_combout\,
	cout => \current_A[0]~17\);

-- Location: IOIBUF_X52_Y0_N22
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: FF_X53_Y4_N1
\current_A[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \current_A[0]~16_combout\,
	asdata => \A[0]~input_o\,
	sload => \ALT_INV_state~q\,
	ena => \counter~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_A(0));

-- Location: LCCOMB_X53_Y4_N2
\current_A[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_A[1]~18_combout\ = (\B[1]~input_o\ & ((current_A(1) & (!\current_A[0]~17\)) # (!current_A(1) & ((\current_A[0]~17\) # (GND))))) # (!\B[1]~input_o\ & ((current_A(1) & (\current_A[0]~17\ & VCC)) # (!current_A(1) & (!\current_A[0]~17\))))
-- \current_A[1]~19\ = CARRY((\B[1]~input_o\ & ((!\current_A[0]~17\) # (!current_A(1)))) # (!\B[1]~input_o\ & (!current_A(1) & !\current_A[0]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => current_A(1),
	datad => VCC,
	cin => \current_A[0]~17\,
	combout => \current_A[1]~18_combout\,
	cout => \current_A[1]~19\);

-- Location: LCCOMB_X55_Y4_N6
\current_A[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_A[1]~feeder_combout\ = \current_A[1]~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current_A[1]~18_combout\,
	combout => \current_A[1]~feeder_combout\);

-- Location: IOIBUF_X56_Y0_N1
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: FF_X55_Y4_N7
\current_A[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \current_A[1]~feeder_combout\,
	asdata => \A[1]~input_o\,
	sload => \ALT_INV_state~q\,
	ena => \counter~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_A(1));

-- Location: LCCOMB_X53_Y4_N4
\current_A[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_A[2]~20_combout\ = ((\B[2]~input_o\ $ (current_A(2) $ (\current_A[1]~19\)))) # (GND)
-- \current_A[2]~21\ = CARRY((\B[2]~input_o\ & (current_A(2) & !\current_A[1]~19\)) # (!\B[2]~input_o\ & ((current_A(2)) # (!\current_A[1]~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => current_A(2),
	datad => VCC,
	cin => \current_A[1]~19\,
	combout => \current_A[2]~20_combout\,
	cout => \current_A[2]~21\);

-- Location: LCCOMB_X55_Y4_N16
\current_A[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_A[2]~feeder_combout\ = \current_A[2]~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_A[2]~20_combout\,
	combout => \current_A[2]~feeder_combout\);

-- Location: IOIBUF_X54_Y0_N8
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: FF_X55_Y4_N17
\current_A[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \current_A[2]~feeder_combout\,
	asdata => \A[2]~input_o\,
	sload => \ALT_INV_state~q\,
	ena => \counter~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_A(2));

-- Location: LCCOMB_X53_Y4_N6
\current_A[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_A[3]~22_combout\ = (\B[3]~input_o\ & ((current_A(3) & (!\current_A[2]~21\)) # (!current_A(3) & ((\current_A[2]~21\) # (GND))))) # (!\B[3]~input_o\ & ((current_A(3) & (\current_A[2]~21\ & VCC)) # (!current_A(3) & (!\current_A[2]~21\))))
-- \current_A[3]~23\ = CARRY((\B[3]~input_o\ & ((!\current_A[2]~21\) # (!current_A(3)))) # (!\B[3]~input_o\ & (!current_A(3) & !\current_A[2]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => current_A(3),
	datad => VCC,
	cin => \current_A[2]~21\,
	combout => \current_A[3]~22_combout\,
	cout => \current_A[3]~23\);

-- Location: LCCOMB_X55_Y4_N18
\current_A[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_A[3]~feeder_combout\ = \current_A[3]~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current_A[3]~22_combout\,
	combout => \current_A[3]~feeder_combout\);

-- Location: IOIBUF_X58_Y73_N22
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: FF_X55_Y4_N19
\current_A[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \current_A[3]~feeder_combout\,
	asdata => \A[3]~input_o\,
	sload => \ALT_INV_state~q\,
	ena => \counter~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_A(3));

-- Location: LCCOMB_X53_Y4_N8
\current_A[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_A[4]~24_combout\ = ((current_A(4) $ (\B[4]~input_o\ $ (\current_A[3]~23\)))) # (GND)
-- \current_A[4]~25\ = CARRY((current_A(4) & ((!\current_A[3]~23\) # (!\B[4]~input_o\))) # (!current_A(4) & (!\B[4]~input_o\ & !\current_A[3]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => current_A(4),
	datab => \B[4]~input_o\,
	datad => VCC,
	cin => \current_A[3]~23\,
	combout => \current_A[4]~24_combout\,
	cout => \current_A[4]~25\);

-- Location: LCCOMB_X55_Y4_N24
\current_A[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_A[4]~feeder_combout\ = \current_A[4]~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current_A[4]~24_combout\,
	combout => \current_A[4]~feeder_combout\);

-- Location: IOIBUF_X54_Y73_N8
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: FF_X55_Y4_N25
\current_A[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \current_A[4]~feeder_combout\,
	asdata => \A[4]~input_o\,
	sload => \ALT_INV_state~q\,
	ena => \counter~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_A(4));

-- Location: LCCOMB_X53_Y4_N10
\current_A[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_A[5]~26_combout\ = (\B[5]~input_o\ & ((current_A(5) & (!\current_A[4]~25\)) # (!current_A(5) & ((\current_A[4]~25\) # (GND))))) # (!\B[5]~input_o\ & ((current_A(5) & (\current_A[4]~25\ & VCC)) # (!current_A(5) & (!\current_A[4]~25\))))
-- \current_A[5]~27\ = CARRY((\B[5]~input_o\ & ((!\current_A[4]~25\) # (!current_A(5)))) # (!\B[5]~input_o\ & (!current_A(5) & !\current_A[4]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => current_A(5),
	datad => VCC,
	cin => \current_A[4]~25\,
	combout => \current_A[5]~26_combout\,
	cout => \current_A[5]~27\);

-- Location: LCCOMB_X55_Y4_N30
\current_A[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_A[5]~feeder_combout\ = \current_A[5]~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current_A[5]~26_combout\,
	combout => \current_A[5]~feeder_combout\);

-- Location: IOIBUF_X56_Y0_N8
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: FF_X55_Y4_N31
\current_A[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \current_A[5]~feeder_combout\,
	asdata => \A[5]~input_o\,
	sload => \ALT_INV_state~q\,
	ena => \counter~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_A(5));

-- Location: LCCOMB_X53_Y4_N12
\current_A[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_A[6]~28_combout\ = ((current_A(6) $ (\B[6]~input_o\ $ (\current_A[5]~27\)))) # (GND)
-- \current_A[6]~29\ = CARRY((current_A(6) & ((!\current_A[5]~27\) # (!\B[6]~input_o\))) # (!current_A(6) & (!\B[6]~input_o\ & !\current_A[5]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => current_A(6),
	datab => \B[6]~input_o\,
	datad => VCC,
	cin => \current_A[5]~27\,
	combout => \current_A[6]~28_combout\,
	cout => \current_A[6]~29\);

-- Location: LCCOMB_X55_Y4_N12
\current_A[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_A[6]~feeder_combout\ = \current_A[6]~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current_A[6]~28_combout\,
	combout => \current_A[6]~feeder_combout\);

-- Location: IOIBUF_X65_Y0_N1
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: FF_X55_Y4_N13
\current_A[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \current_A[6]~feeder_combout\,
	asdata => \A[6]~input_o\,
	sload => \ALT_INV_state~q\,
	ena => \counter~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_A(6));

-- Location: LCCOMB_X53_Y4_N14
\current_A[7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_A[7]~30_combout\ = (current_A(7) & ((\B[7]~input_o\ & (!\current_A[6]~29\)) # (!\B[7]~input_o\ & (\current_A[6]~29\ & VCC)))) # (!current_A(7) & ((\B[7]~input_o\ & ((\current_A[6]~29\) # (GND))) # (!\B[7]~input_o\ & (!\current_A[6]~29\))))
-- \current_A[7]~31\ = CARRY((current_A(7) & (\B[7]~input_o\ & !\current_A[6]~29\)) # (!current_A(7) & ((\B[7]~input_o\) # (!\current_A[6]~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => current_A(7),
	datab => \B[7]~input_o\,
	datad => VCC,
	cin => \current_A[6]~29\,
	combout => \current_A[7]~30_combout\,
	cout => \current_A[7]~31\);

-- Location: LCCOMB_X55_Y4_N22
\current_A[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_A[7]~feeder_combout\ = \current_A[7]~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current_A[7]~30_combout\,
	combout => \current_A[7]~feeder_combout\);

-- Location: IOIBUF_X60_Y0_N8
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: FF_X55_Y4_N23
\current_A[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \current_A[7]~feeder_combout\,
	asdata => \A[7]~input_o\,
	sload => \ALT_INV_state~q\,
	ena => \counter~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_A(7));

-- Location: LCCOMB_X53_Y4_N16
\current_A[8]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_A[8]~32_combout\ = ((\B[8]~input_o\ $ (current_A(8) $ (\current_A[7]~31\)))) # (GND)
-- \current_A[8]~33\ = CARRY((\B[8]~input_o\ & (current_A(8) & !\current_A[7]~31\)) # (!\B[8]~input_o\ & ((current_A(8)) # (!\current_A[7]~31\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => current_A(8),
	datad => VCC,
	cin => \current_A[7]~31\,
	combout => \current_A[8]~32_combout\,
	cout => \current_A[8]~33\);

-- Location: LCCOMB_X55_Y4_N20
\current_A[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_A[8]~feeder_combout\ = \current_A[8]~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_A[8]~32_combout\,
	combout => \current_A[8]~feeder_combout\);

-- Location: IOIBUF_X67_Y0_N8
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: FF_X55_Y4_N21
\current_A[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \current_A[8]~feeder_combout\,
	asdata => \A[8]~input_o\,
	sload => \ALT_INV_state~q\,
	ena => \counter~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_A(8));

-- Location: LCCOMB_X53_Y4_N18
\current_A[9]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_A[9]~34_combout\ = (current_A(9) & ((\B[9]~input_o\ & (!\current_A[8]~33\)) # (!\B[9]~input_o\ & (\current_A[8]~33\ & VCC)))) # (!current_A(9) & ((\B[9]~input_o\ & ((\current_A[8]~33\) # (GND))) # (!\B[9]~input_o\ & (!\current_A[8]~33\))))
-- \current_A[9]~35\ = CARRY((current_A(9) & (\B[9]~input_o\ & !\current_A[8]~33\)) # (!current_A(9) & ((\B[9]~input_o\) # (!\current_A[8]~33\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => current_A(9),
	datab => \B[9]~input_o\,
	datad => VCC,
	cin => \current_A[8]~33\,
	combout => \current_A[9]~34_combout\,
	cout => \current_A[9]~35\);

-- Location: LCCOMB_X55_Y4_N14
\current_A[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_A[9]~feeder_combout\ = \current_A[9]~34_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current_A[9]~34_combout\,
	combout => \current_A[9]~feeder_combout\);

-- Location: IOIBUF_X54_Y0_N22
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: FF_X55_Y4_N15
\current_A[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \current_A[9]~feeder_combout\,
	asdata => \A[9]~input_o\,
	sload => \ALT_INV_state~q\,
	ena => \counter~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_A(9));

-- Location: LCCOMB_X53_Y4_N20
\current_A[10]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_A[10]~36_combout\ = ((current_A(10) $ (\B[10]~input_o\ $ (\current_A[9]~35\)))) # (GND)
-- \current_A[10]~37\ = CARRY((current_A(10) & ((!\current_A[9]~35\) # (!\B[10]~input_o\))) # (!current_A(10) & (!\B[10]~input_o\ & !\current_A[9]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => current_A(10),
	datab => \B[10]~input_o\,
	datad => VCC,
	cin => \current_A[9]~35\,
	combout => \current_A[10]~36_combout\,
	cout => \current_A[10]~37\);

-- Location: LCCOMB_X55_Y4_N0
\current_A[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_A[10]~feeder_combout\ = \current_A[10]~36_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current_A[10]~36_combout\,
	combout => \current_A[10]~feeder_combout\);

-- Location: IOIBUF_X65_Y0_N8
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: FF_X55_Y4_N1
\current_A[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \current_A[10]~feeder_combout\,
	asdata => \A[10]~input_o\,
	sload => \ALT_INV_state~q\,
	ena => \counter~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_A(10));

-- Location: LCCOMB_X53_Y4_N22
\current_A[11]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_A[11]~38_combout\ = (\B[11]~input_o\ & ((current_A(11) & (!\current_A[10]~37\)) # (!current_A(11) & ((\current_A[10]~37\) # (GND))))) # (!\B[11]~input_o\ & ((current_A(11) & (\current_A[10]~37\ & VCC)) # (!current_A(11) & (!\current_A[10]~37\))))
-- \current_A[11]~39\ = CARRY((\B[11]~input_o\ & ((!\current_A[10]~37\) # (!current_A(11)))) # (!\B[11]~input_o\ & (!current_A(11) & !\current_A[10]~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => current_A(11),
	datad => VCC,
	cin => \current_A[10]~37\,
	combout => \current_A[11]~38_combout\,
	cout => \current_A[11]~39\);

-- Location: LCCOMB_X55_Y4_N10
\current_A[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_A[11]~feeder_combout\ = \current_A[11]~38_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current_A[11]~38_combout\,
	combout => \current_A[11]~feeder_combout\);

-- Location: IOIBUF_X60_Y0_N1
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: FF_X55_Y4_N11
\current_A[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \current_A[11]~feeder_combout\,
	asdata => \A[11]~input_o\,
	sload => \ALT_INV_state~q\,
	ena => \counter~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_A(11));

-- Location: LCCOMB_X53_Y4_N24
\current_A[12]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_A[12]~40_combout\ = ((current_A(12) $ (\B[12]~input_o\ $ (\current_A[11]~39\)))) # (GND)
-- \current_A[12]~41\ = CARRY((current_A(12) & ((!\current_A[11]~39\) # (!\B[12]~input_o\))) # (!current_A(12) & (!\B[12]~input_o\ & !\current_A[11]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => current_A(12),
	datab => \B[12]~input_o\,
	datad => VCC,
	cin => \current_A[11]~39\,
	combout => \current_A[12]~40_combout\,
	cout => \current_A[12]~41\);

-- Location: LCCOMB_X55_Y4_N28
\current_A[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_A[12]~feeder_combout\ = \current_A[12]~40_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current_A[12]~40_combout\,
	combout => \current_A[12]~feeder_combout\);

-- Location: IOIBUF_X54_Y0_N1
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: FF_X55_Y4_N29
\current_A[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \current_A[12]~feeder_combout\,
	asdata => \A[12]~input_o\,
	sload => \ALT_INV_state~q\,
	ena => \counter~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_A(12));

-- Location: LCCOMB_X53_Y4_N26
\current_A[13]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_A[13]~42_combout\ = (current_A(13) & ((\B[13]~input_o\ & (!\current_A[12]~41\)) # (!\B[13]~input_o\ & (\current_A[12]~41\ & VCC)))) # (!current_A(13) & ((\B[13]~input_o\ & ((\current_A[12]~41\) # (GND))) # (!\B[13]~input_o\ & 
-- (!\current_A[12]~41\))))
-- \current_A[13]~43\ = CARRY((current_A(13) & (\B[13]~input_o\ & !\current_A[12]~41\)) # (!current_A(13) & ((\B[13]~input_o\) # (!\current_A[12]~41\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => current_A(13),
	datab => \B[13]~input_o\,
	datad => VCC,
	cin => \current_A[12]~41\,
	combout => \current_A[13]~42_combout\,
	cout => \current_A[13]~43\);

-- Location: IOIBUF_X52_Y0_N15
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: FF_X53_Y4_N27
\current_A[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \current_A[13]~42_combout\,
	asdata => \A[13]~input_o\,
	sload => \ALT_INV_state~q\,
	ena => \counter~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_A(13));

-- Location: LCCOMB_X53_Y4_N28
\current_A[14]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_A[14]~44_combout\ = ((\B[14]~input_o\ $ (current_A(14) $ (\current_A[13]~43\)))) # (GND)
-- \current_A[14]~45\ = CARRY((\B[14]~input_o\ & (current_A(14) & !\current_A[13]~43\)) # (!\B[14]~input_o\ & ((current_A(14)) # (!\current_A[13]~43\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[14]~input_o\,
	datab => current_A(14),
	datad => VCC,
	cin => \current_A[13]~43\,
	combout => \current_A[14]~44_combout\,
	cout => \current_A[14]~45\);

-- Location: IOIBUF_X52_Y0_N8
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: FF_X53_Y4_N29
\current_A[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \current_A[14]~44_combout\,
	asdata => \A[14]~input_o\,
	sload => \ALT_INV_state~q\,
	ena => \counter~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_A(14));

-- Location: LCCOMB_X53_Y4_N30
\current_A[15]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_A[15]~46_combout\ = current_A(15) $ (\current_A[14]~45\ $ (!\B[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => current_A(15),
	datad => \B[15]~input_o\,
	cin => \current_A[14]~45\,
	combout => \current_A[15]~46_combout\);

-- Location: IOIBUF_X52_Y0_N1
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: FF_X53_Y4_N31
\current_A[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \current_A[15]~46_combout\,
	asdata => \A[15]~input_o\,
	sload => \ALT_INV_state~q\,
	ena => \counter~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_A(15));

-- Location: LCCOMB_X54_Y4_N0
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((!current_A(0) & \B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => current_A(0),
	datab => \B[0]~input_o\,
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X54_Y4_N2
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((current_A(1) & ((!\LessThan0~1_cout\) # (!\B[1]~input_o\))) # (!current_A(1) & (!\B[1]~input_o\ & !\LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => current_A(1),
	datab => \B[1]~input_o\,
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X54_Y4_N4
\LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((\B[2]~input_o\ & ((!\LessThan0~3_cout\) # (!current_A(2)))) # (!\B[2]~input_o\ & (!current_A(2) & !\LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => current_A(2),
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X54_Y4_N6
\LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((\B[3]~input_o\ & (current_A(3) & !\LessThan0~5_cout\)) # (!\B[3]~input_o\ & ((current_A(3)) # (!\LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => current_A(3),
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X54_Y4_N8
\LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((\B[4]~input_o\ & ((!\LessThan0~7_cout\) # (!current_A(4)))) # (!\B[4]~input_o\ & (!current_A(4) & !\LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => current_A(4),
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X54_Y4_N10
\LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((current_A(5) & ((!\LessThan0~9_cout\) # (!\B[5]~input_o\))) # (!current_A(5) & (!\B[5]~input_o\ & !\LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => current_A(5),
	datab => \B[5]~input_o\,
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

-- Location: LCCOMB_X54_Y4_N12
\LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((\B[6]~input_o\ & ((!\LessThan0~11_cout\) # (!current_A(6)))) # (!\B[6]~input_o\ & (!current_A(6) & !\LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => current_A(6),
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

-- Location: LCCOMB_X54_Y4_N14
\LessThan0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~15_cout\ = CARRY((\B[7]~input_o\ & (current_A(7) & !\LessThan0~13_cout\)) # (!\B[7]~input_o\ & ((current_A(7)) # (!\LessThan0~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => current_A(7),
	datad => VCC,
	cin => \LessThan0~13_cout\,
	cout => \LessThan0~15_cout\);

-- Location: LCCOMB_X54_Y4_N16
\LessThan0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~17_cout\ = CARRY((current_A(8) & (\B[8]~input_o\ & !\LessThan0~15_cout\)) # (!current_A(8) & ((\B[8]~input_o\) # (!\LessThan0~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => current_A(8),
	datab => \B[8]~input_o\,
	datad => VCC,
	cin => \LessThan0~15_cout\,
	cout => \LessThan0~17_cout\);

-- Location: LCCOMB_X54_Y4_N18
\LessThan0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~19_cout\ = CARRY((\B[9]~input_o\ & (current_A(9) & !\LessThan0~17_cout\)) # (!\B[9]~input_o\ & ((current_A(9)) # (!\LessThan0~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datab => current_A(9),
	datad => VCC,
	cin => \LessThan0~17_cout\,
	cout => \LessThan0~19_cout\);

-- Location: LCCOMB_X54_Y4_N20
\LessThan0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~21_cout\ = CARRY((\B[10]~input_o\ & ((!\LessThan0~19_cout\) # (!current_A(10)))) # (!\B[10]~input_o\ & (!current_A(10) & !\LessThan0~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[10]~input_o\,
	datab => current_A(10),
	datad => VCC,
	cin => \LessThan0~19_cout\,
	cout => \LessThan0~21_cout\);

-- Location: LCCOMB_X54_Y4_N22
\LessThan0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~23_cout\ = CARRY((\B[11]~input_o\ & (current_A(11) & !\LessThan0~21_cout\)) # (!\B[11]~input_o\ & ((current_A(11)) # (!\LessThan0~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => current_A(11),
	datad => VCC,
	cin => \LessThan0~21_cout\,
	cout => \LessThan0~23_cout\);

-- Location: LCCOMB_X54_Y4_N24
\LessThan0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~25_cout\ = CARRY((\B[12]~input_o\ & ((!\LessThan0~23_cout\) # (!current_A(12)))) # (!\B[12]~input_o\ & (!current_A(12) & !\LessThan0~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => current_A(12),
	datad => VCC,
	cin => \LessThan0~23_cout\,
	cout => \LessThan0~25_cout\);

-- Location: LCCOMB_X54_Y4_N26
\LessThan0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~27_cout\ = CARRY((current_A(13) & ((!\LessThan0~25_cout\) # (!\B[13]~input_o\))) # (!current_A(13) & (!\B[13]~input_o\ & !\LessThan0~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => current_A(13),
	datab => \B[13]~input_o\,
	datad => VCC,
	cin => \LessThan0~25_cout\,
	cout => \LessThan0~27_cout\);

-- Location: LCCOMB_X54_Y4_N28
\LessThan0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~29_cout\ = CARRY((\B[14]~input_o\ & ((!\LessThan0~27_cout\) # (!current_A(14)))) # (!\B[14]~input_o\ & (!current_A(14) & !\LessThan0~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[14]~input_o\,
	datab => current_A(14),
	datad => VCC,
	cin => \LessThan0~27_cout\,
	cout => \LessThan0~29_cout\);

-- Location: LCCOMB_X54_Y4_N30
\LessThan0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~30_combout\ = (\B[15]~input_o\ & ((\LessThan0~29_cout\) # (!current_A(15)))) # (!\B[15]~input_o\ & (\LessThan0~29_cout\ & !current_A(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B[15]~input_o\,
	datad => current_A(15),
	cin => \LessThan0~29_cout\,
	combout => \LessThan0~30_combout\);

-- Location: LCCOMB_X55_Y4_N8
\counter~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~18_combout\ = (\state~q\ & (((!\Equal0~4_combout\ & !\LessThan0~30_combout\)))) # (!\state~q\ & (\start~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datab => \Equal0~4_combout\,
	datac => \state~q\,
	datad => \LessThan0~30_combout\,
	combout => \counter~18_combout\);

-- Location: FF_X55_Y4_N9
state : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state~q\);

-- Location: FF_X56_Y4_N1
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[0]~16_combout\,
	sclr => \ALT_INV_state~q\,
	ena => \counter~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: LCCOMB_X56_Y4_N2
\counter[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[1]~19_combout\ = (counter(1) & (!\counter[0]~17\)) # (!counter(1) & ((\counter[0]~17\) # (GND)))
-- \counter[1]~20\ = CARRY((!\counter[0]~17\) # (!counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(1),
	datad => VCC,
	cin => \counter[0]~17\,
	combout => \counter[1]~19_combout\,
	cout => \counter[1]~20\);

-- Location: FF_X56_Y4_N3
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[1]~19_combout\,
	sclr => \ALT_INV_state~q\,
	ena => \counter~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: LCCOMB_X56_Y4_N4
\counter[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[2]~21_combout\ = (counter(2) & (\counter[1]~20\ $ (GND))) # (!counter(2) & (!\counter[1]~20\ & VCC))
-- \counter[2]~22\ = CARRY((counter(2) & !\counter[1]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(2),
	datad => VCC,
	cin => \counter[1]~20\,
	combout => \counter[2]~21_combout\,
	cout => \counter[2]~22\);

-- Location: FF_X56_Y4_N5
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[2]~21_combout\,
	sclr => \ALT_INV_state~q\,
	ena => \counter~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: LCCOMB_X56_Y4_N6
\counter[3]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[3]~23_combout\ = (counter(3) & (!\counter[2]~22\)) # (!counter(3) & ((\counter[2]~22\) # (GND)))
-- \counter[3]~24\ = CARRY((!\counter[2]~22\) # (!counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datad => VCC,
	cin => \counter[2]~22\,
	combout => \counter[3]~23_combout\,
	cout => \counter[3]~24\);

-- Location: FF_X56_Y4_N7
\counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[3]~23_combout\,
	sclr => \ALT_INV_state~q\,
	ena => \counter~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(3));

-- Location: LCCOMB_X56_Y4_N8
\counter[4]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[4]~25_combout\ = (counter(4) & (\counter[3]~24\ $ (GND))) # (!counter(4) & (!\counter[3]~24\ & VCC))
-- \counter[4]~26\ = CARRY((counter(4) & !\counter[3]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(4),
	datad => VCC,
	cin => \counter[3]~24\,
	combout => \counter[4]~25_combout\,
	cout => \counter[4]~26\);

-- Location: FF_X56_Y4_N9
\counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[4]~25_combout\,
	sclr => \ALT_INV_state~q\,
	ena => \counter~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(4));

-- Location: LCCOMB_X56_Y4_N10
\counter[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[5]~27_combout\ = (counter(5) & (!\counter[4]~26\)) # (!counter(5) & ((\counter[4]~26\) # (GND)))
-- \counter[5]~28\ = CARRY((!\counter[4]~26\) # (!counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datad => VCC,
	cin => \counter[4]~26\,
	combout => \counter[5]~27_combout\,
	cout => \counter[5]~28\);

-- Location: FF_X56_Y4_N11
\counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[5]~27_combout\,
	sclr => \ALT_INV_state~q\,
	ena => \counter~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(5));

-- Location: LCCOMB_X56_Y4_N12
\counter[6]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[6]~29_combout\ = (counter(6) & (\counter[5]~28\ $ (GND))) # (!counter(6) & (!\counter[5]~28\ & VCC))
-- \counter[6]~30\ = CARRY((counter(6) & !\counter[5]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(6),
	datad => VCC,
	cin => \counter[5]~28\,
	combout => \counter[6]~29_combout\,
	cout => \counter[6]~30\);

-- Location: FF_X56_Y4_N13
\counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[6]~29_combout\,
	sclr => \ALT_INV_state~q\,
	ena => \counter~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(6));

-- Location: LCCOMB_X56_Y4_N14
\counter[7]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[7]~31_combout\ = (counter(7) & (!\counter[6]~30\)) # (!counter(7) & ((\counter[6]~30\) # (GND)))
-- \counter[7]~32\ = CARRY((!\counter[6]~30\) # (!counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(7),
	datad => VCC,
	cin => \counter[6]~30\,
	combout => \counter[7]~31_combout\,
	cout => \counter[7]~32\);

-- Location: FF_X56_Y4_N15
\counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[7]~31_combout\,
	sclr => \ALT_INV_state~q\,
	ena => \counter~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(7));

-- Location: LCCOMB_X56_Y4_N16
\counter[8]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[8]~33_combout\ = (counter(8) & (\counter[7]~32\ $ (GND))) # (!counter(8) & (!\counter[7]~32\ & VCC))
-- \counter[8]~34\ = CARRY((counter(8) & !\counter[7]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(8),
	datad => VCC,
	cin => \counter[7]~32\,
	combout => \counter[8]~33_combout\,
	cout => \counter[8]~34\);

-- Location: FF_X56_Y4_N17
\counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[8]~33_combout\,
	sclr => \ALT_INV_state~q\,
	ena => \counter~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(8));

-- Location: LCCOMB_X56_Y4_N18
\counter[9]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[9]~35_combout\ = (counter(9) & (!\counter[8]~34\)) # (!counter(9) & ((\counter[8]~34\) # (GND)))
-- \counter[9]~36\ = CARRY((!\counter[8]~34\) # (!counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(9),
	datad => VCC,
	cin => \counter[8]~34\,
	combout => \counter[9]~35_combout\,
	cout => \counter[9]~36\);

-- Location: FF_X56_Y4_N19
\counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[9]~35_combout\,
	sclr => \ALT_INV_state~q\,
	ena => \counter~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(9));

-- Location: LCCOMB_X56_Y4_N20
\counter[10]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[10]~37_combout\ = (counter(10) & (\counter[9]~36\ $ (GND))) # (!counter(10) & (!\counter[9]~36\ & VCC))
-- \counter[10]~38\ = CARRY((counter(10) & !\counter[9]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(10),
	datad => VCC,
	cin => \counter[9]~36\,
	combout => \counter[10]~37_combout\,
	cout => \counter[10]~38\);

-- Location: FF_X56_Y4_N21
\counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[10]~37_combout\,
	sclr => \ALT_INV_state~q\,
	ena => \counter~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(10));

-- Location: LCCOMB_X56_Y4_N22
\counter[11]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[11]~39_combout\ = (counter(11) & (!\counter[10]~38\)) # (!counter(11) & ((\counter[10]~38\) # (GND)))
-- \counter[11]~40\ = CARRY((!\counter[10]~38\) # (!counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(11),
	datad => VCC,
	cin => \counter[10]~38\,
	combout => \counter[11]~39_combout\,
	cout => \counter[11]~40\);

-- Location: FF_X56_Y4_N23
\counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[11]~39_combout\,
	sclr => \ALT_INV_state~q\,
	ena => \counter~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(11));

-- Location: LCCOMB_X56_Y4_N24
\counter[12]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[12]~41_combout\ = (counter(12) & (\counter[11]~40\ $ (GND))) # (!counter(12) & (!\counter[11]~40\ & VCC))
-- \counter[12]~42\ = CARRY((counter(12) & !\counter[11]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(12),
	datad => VCC,
	cin => \counter[11]~40\,
	combout => \counter[12]~41_combout\,
	cout => \counter[12]~42\);

-- Location: FF_X56_Y4_N25
\counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[12]~41_combout\,
	sclr => \ALT_INV_state~q\,
	ena => \counter~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(12));

-- Location: LCCOMB_X56_Y4_N26
\counter[13]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[13]~43_combout\ = (counter(13) & (!\counter[12]~42\)) # (!counter(13) & ((\counter[12]~42\) # (GND)))
-- \counter[13]~44\ = CARRY((!\counter[12]~42\) # (!counter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(13),
	datad => VCC,
	cin => \counter[12]~42\,
	combout => \counter[13]~43_combout\,
	cout => \counter[13]~44\);

-- Location: FF_X56_Y4_N27
\counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[13]~43_combout\,
	sclr => \ALT_INV_state~q\,
	ena => \counter~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(13));

-- Location: LCCOMB_X56_Y4_N28
\counter[14]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[14]~45_combout\ = (counter(14) & (\counter[13]~44\ $ (GND))) # (!counter(14) & (!\counter[13]~44\ & VCC))
-- \counter[14]~46\ = CARRY((counter(14) & !\counter[13]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(14),
	datad => VCC,
	cin => \counter[13]~44\,
	combout => \counter[14]~45_combout\,
	cout => \counter[14]~46\);

-- Location: FF_X56_Y4_N29
\counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[14]~45_combout\,
	sclr => \ALT_INV_state~q\,
	ena => \counter~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(14));

-- Location: LCCOMB_X56_Y4_N30
\counter[15]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[15]~47_combout\ = counter(15) $ (\counter[14]~46\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(15),
	cin => \counter[14]~46\,
	combout => \counter[15]~47_combout\);

-- Location: FF_X56_Y4_N31
\counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[15]~47_combout\,
	sclr => \ALT_INV_state~q\,
	ena => \counter~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(15));

-- Location: LCCOMB_X52_Y4_N28
\done~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \done~0_combout\ = (\Equal0~4_combout\) # ((\done~reg0_q\) # (\LessThan0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datac => \done~reg0_q\,
	datad => \LessThan0~30_combout\,
	combout => \done~0_combout\);

-- Location: FF_X52_Y4_N29
\done~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \done~0_combout\,
	sclr => \ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \done~reg0_q\);

ww_count(0) <= \count[0]~output_o\;

ww_count(1) <= \count[1]~output_o\;

ww_count(2) <= \count[2]~output_o\;

ww_count(3) <= \count[3]~output_o\;

ww_count(4) <= \count[4]~output_o\;

ww_count(5) <= \count[5]~output_o\;

ww_count(6) <= \count[6]~output_o\;

ww_count(7) <= \count[7]~output_o\;

ww_count(8) <= \count[8]~output_o\;

ww_count(9) <= \count[9]~output_o\;

ww_count(10) <= \count[10]~output_o\;

ww_count(11) <= \count[11]~output_o\;

ww_count(12) <= \count[12]~output_o\;

ww_count(13) <= \count[13]~output_o\;

ww_count(14) <= \count[14]~output_o\;

ww_count(15) <= \count[15]~output_o\;

ww_done <= \done~output_o\;
END structure;


