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

-- DATE "12/16/2024 15:43:17"

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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	coffe_machine IS
    PORT (
	buttons : IN std_logic_vector(7 DOWNTO 0);
	coffe_out : OUT std_logic_vector(7 DOWNTO 0);
	error_flag : OUT std_logic
	);
END coffe_machine;

-- Design Ports Information
-- coffe_out[0]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- coffe_out[1]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- coffe_out[2]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- coffe_out[3]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- coffe_out[4]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- coffe_out[5]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- coffe_out[6]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- coffe_out[7]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- error_flag	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- buttons[0]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- buttons[1]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- buttons[2]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- buttons[3]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- buttons[4]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- buttons[5]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- buttons[6]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- buttons[7]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_buttons : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_coffe_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_error_flag : std_logic;
SIGNAL \count[1]~361clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \coffe_out[0]~output_o\ : std_logic;
SIGNAL \coffe_out[1]~output_o\ : std_logic;
SIGNAL \coffe_out[2]~output_o\ : std_logic;
SIGNAL \coffe_out[3]~output_o\ : std_logic;
SIGNAL \coffe_out[4]~output_o\ : std_logic;
SIGNAL \coffe_out[5]~output_o\ : std_logic;
SIGNAL \coffe_out[6]~output_o\ : std_logic;
SIGNAL \coffe_out[7]~output_o\ : std_logic;
SIGNAL \error_flag~output_o\ : std_logic;
SIGNAL \buttons[0]~input_o\ : std_logic;
SIGNAL \buttons[5]~input_o\ : std_logic;
SIGNAL \buttons[6]~input_o\ : std_logic;
SIGNAL \buttons[7]~input_o\ : std_logic;
SIGNAL \buttons[4]~input_o\ : std_logic;
SIGNAL \buttons[2]~input_o\ : std_logic;
SIGNAL \buttons[1]~input_o\ : std_logic;
SIGNAL \count[1]~18_combout\ : std_logic;
SIGNAL \count[1]~20_combout\ : std_logic;
SIGNAL \buttons[3]~input_o\ : std_logic;
SIGNAL \count[17]~19_combout\ : std_logic;
SIGNAL \count[1]~26_combout\ : std_logic;
SIGNAL \count[1]~361_combout\ : std_logic;
SIGNAL \count[1]~361clkctrl_outclk\ : std_logic;
SIGNAL \count[17]~21_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \count~5_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \count~7_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \count~9_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \count~11_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \count~13_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \count~15_combout\ : std_logic;
SIGNAL \Add6~0_combout\ : std_logic;
SIGNAL \count[0]~324_combout\ : std_logic;
SIGNAL \count[0]~325_combout\ : std_logic;
SIGNAL \count[0]~326_combout\ : std_logic;
SIGNAL \count[0]~327_combout\ : std_logic;
SIGNAL \count~17_combout\ : std_logic;
SIGNAL \Add7~0_combout\ : std_logic;
SIGNAL \Add7~86_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \count~4_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \count~6_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \count~8_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \count~10_combout\ : std_logic;
SIGNAL \Add4~1\ : std_logic;
SIGNAL \Add4~2_combout\ : std_logic;
SIGNAL \count~12_combout\ : std_logic;
SIGNAL \Add5~1\ : std_logic;
SIGNAL \Add5~2_combout\ : std_logic;
SIGNAL \count~14_combout\ : std_logic;
SIGNAL \Add6~1\ : std_logic;
SIGNAL \Add6~2_combout\ : std_logic;
SIGNAL \count~16_combout\ : std_logic;
SIGNAL \Add7~1\ : std_logic;
SIGNAL \Add7~2_combout\ : std_logic;
SIGNAL \count[1]~22_combout\ : std_logic;
SIGNAL \count[1]~23_combout\ : std_logic;
SIGNAL \count[1]~24_combout\ : std_logic;
SIGNAL \count[1]~25_combout\ : std_logic;
SIGNAL \Add7~4_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \count~27_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \count~28_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \count~29_combout\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \count~30_combout\ : std_logic;
SIGNAL \Add4~3\ : std_logic;
SIGNAL \Add4~4_combout\ : std_logic;
SIGNAL \count~31_combout\ : std_logic;
SIGNAL \Add5~3\ : std_logic;
SIGNAL \Add5~4_combout\ : std_logic;
SIGNAL \count~32_combout\ : std_logic;
SIGNAL \Add6~3\ : std_logic;
SIGNAL \Add6~4_combout\ : std_logic;
SIGNAL \count[2]~34_combout\ : std_logic;
SIGNAL \count[2]~35_combout\ : std_logic;
SIGNAL \count[2]~36_combout\ : std_logic;
SIGNAL \count[2]~37_combout\ : std_logic;
SIGNAL \count~33_combout\ : std_logic;
SIGNAL \Add7~3\ : std_logic;
SIGNAL \Add7~5_combout\ : std_logic;
SIGNAL \Add7~7_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \count~38_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \count~39_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \count~40_combout\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \count~41_combout\ : std_logic;
SIGNAL \Add4~5\ : std_logic;
SIGNAL \Add4~6_combout\ : std_logic;
SIGNAL \count~42_combout\ : std_logic;
SIGNAL \Add5~5\ : std_logic;
SIGNAL \Add5~6_combout\ : std_logic;
SIGNAL \count~43_combout\ : std_logic;
SIGNAL \Add6~5\ : std_logic;
SIGNAL \Add6~6_combout\ : std_logic;
SIGNAL \count~44_combout\ : std_logic;
SIGNAL \Add7~6\ : std_logic;
SIGNAL \Add7~8_combout\ : std_logic;
SIGNAL \count[3]~45_combout\ : std_logic;
SIGNAL \count[3]~46_combout\ : std_logic;
SIGNAL \count[3]~47_combout\ : std_logic;
SIGNAL \count[3]~48_combout\ : std_logic;
SIGNAL \Add7~10_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \count~49_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \count~50_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \count~51_combout\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \count~52_combout\ : std_logic;
SIGNAL \Add4~7\ : std_logic;
SIGNAL \Add4~8_combout\ : std_logic;
SIGNAL \count~53_combout\ : std_logic;
SIGNAL \Add5~7\ : std_logic;
SIGNAL \Add5~8_combout\ : std_logic;
SIGNAL \count[4]~56_combout\ : std_logic;
SIGNAL \count[4]~57_combout\ : std_logic;
SIGNAL \count[4]~58_combout\ : std_logic;
SIGNAL \count~54_combout\ : std_logic;
SIGNAL \Add6~7\ : std_logic;
SIGNAL \Add6~8_combout\ : std_logic;
SIGNAL \count[4]~59_combout\ : std_logic;
SIGNAL \count~55_combout\ : std_logic;
SIGNAL \Add7~9\ : std_logic;
SIGNAL \Add7~11_combout\ : std_logic;
SIGNAL \Add7~13_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \count~60_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \count~61_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \count~62_combout\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \count~63_combout\ : std_logic;
SIGNAL \Add4~9\ : std_logic;
SIGNAL \Add4~10_combout\ : std_logic;
SIGNAL \count[5]~67_combout\ : std_logic;
SIGNAL \count[5]~68_combout\ : std_logic;
SIGNAL \count[5]~69_combout\ : std_logic;
SIGNAL \count~64_combout\ : std_logic;
SIGNAL \Add5~9\ : std_logic;
SIGNAL \Add5~10_combout\ : std_logic;
SIGNAL \count~65_combout\ : std_logic;
SIGNAL \Add6~9\ : std_logic;
SIGNAL \Add6~10_combout\ : std_logic;
SIGNAL \count[5]~70_combout\ : std_logic;
SIGNAL \count~66_combout\ : std_logic;
SIGNAL \Add7~12\ : std_logic;
SIGNAL \Add7~14_combout\ : std_logic;
SIGNAL \Add7~16_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \count~71_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \count~72_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \count~73_combout\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \count~74_combout\ : std_logic;
SIGNAL \Add4~11\ : std_logic;
SIGNAL \Add4~12_combout\ : std_logic;
SIGNAL \count~75_combout\ : std_logic;
SIGNAL \Add5~11\ : std_logic;
SIGNAL \Add5~12_combout\ : std_logic;
SIGNAL \count~76_combout\ : std_logic;
SIGNAL \Add6~11\ : std_logic;
SIGNAL \Add6~12_combout\ : std_logic;
SIGNAL \count~77_combout\ : std_logic;
SIGNAL \Add7~15\ : std_logic;
SIGNAL \Add7~17_combout\ : std_logic;
SIGNAL \count[6]~78_combout\ : std_logic;
SIGNAL \count[6]~79_combout\ : std_logic;
SIGNAL \count[6]~80_combout\ : std_logic;
SIGNAL \count[6]~81_combout\ : std_logic;
SIGNAL \Add7~19_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \count~82_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \count~83_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \count~84_combout\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \count~85_combout\ : std_logic;
SIGNAL \Add4~13\ : std_logic;
SIGNAL \Add4~14_combout\ : std_logic;
SIGNAL \count~86_combout\ : std_logic;
SIGNAL \Add5~13\ : std_logic;
SIGNAL \Add5~14_combout\ : std_logic;
SIGNAL \count~87_combout\ : std_logic;
SIGNAL \Add6~13\ : std_logic;
SIGNAL \Add6~14_combout\ : std_logic;
SIGNAL \count[7]~89_combout\ : std_logic;
SIGNAL \count[7]~90_combout\ : std_logic;
SIGNAL \count[7]~91_combout\ : std_logic;
SIGNAL \count[7]~92_combout\ : std_logic;
SIGNAL \count~88_combout\ : std_logic;
SIGNAL \Add7~18\ : std_logic;
SIGNAL \Add7~20_combout\ : std_logic;
SIGNAL \Add7~22_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \count~93_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \count~94_combout\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \count~95_combout\ : std_logic;
SIGNAL \Add3~15\ : std_logic;
SIGNAL \Add3~16_combout\ : std_logic;
SIGNAL \count~96_combout\ : std_logic;
SIGNAL \Add4~15\ : std_logic;
SIGNAL \Add4~16_combout\ : std_logic;
SIGNAL \count~97_combout\ : std_logic;
SIGNAL \Add5~15\ : std_logic;
SIGNAL \Add5~16_combout\ : std_logic;
SIGNAL \count~98_combout\ : std_logic;
SIGNAL \Add6~15\ : std_logic;
SIGNAL \Add6~16_combout\ : std_logic;
SIGNAL \count~99_combout\ : std_logic;
SIGNAL \Add7~21\ : std_logic;
SIGNAL \Add7~23_combout\ : std_logic;
SIGNAL \count[8]~100_combout\ : std_logic;
SIGNAL \count[8]~101_combout\ : std_logic;
SIGNAL \count[8]~102_combout\ : std_logic;
SIGNAL \count[8]~103_combout\ : std_logic;
SIGNAL \Add7~25_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \count~104_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \count~105_combout\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \count~106_combout\ : std_logic;
SIGNAL \Add3~17\ : std_logic;
SIGNAL \Add3~18_combout\ : std_logic;
SIGNAL \count~107_combout\ : std_logic;
SIGNAL \Add4~17\ : std_logic;
SIGNAL \Add4~18_combout\ : std_logic;
SIGNAL \count[9]~111_combout\ : std_logic;
SIGNAL \count[9]~112_combout\ : std_logic;
SIGNAL \count[9]~113_combout\ : std_logic;
SIGNAL \count~108_combout\ : std_logic;
SIGNAL \Add5~17\ : std_logic;
SIGNAL \Add5~18_combout\ : std_logic;
SIGNAL \count~109_combout\ : std_logic;
SIGNAL \Add6~17\ : std_logic;
SIGNAL \Add6~18_combout\ : std_logic;
SIGNAL \count[9]~114_combout\ : std_logic;
SIGNAL \count~110_combout\ : std_logic;
SIGNAL \Add7~24\ : std_logic;
SIGNAL \Add7~26_combout\ : std_logic;
SIGNAL \Add7~28_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \count~115_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \count~116_combout\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \count~117_combout\ : std_logic;
SIGNAL \Add3~19\ : std_logic;
SIGNAL \Add3~20_combout\ : std_logic;
SIGNAL \count~118_combout\ : std_logic;
SIGNAL \Add4~19\ : std_logic;
SIGNAL \Add4~20_combout\ : std_logic;
SIGNAL \count~119_combout\ : std_logic;
SIGNAL \Add5~19\ : std_logic;
SIGNAL \Add5~20_combout\ : std_logic;
SIGNAL \count~120_combout\ : std_logic;
SIGNAL \Add6~19\ : std_logic;
SIGNAL \Add6~20_combout\ : std_logic;
SIGNAL \count~121_combout\ : std_logic;
SIGNAL \Add7~27\ : std_logic;
SIGNAL \Add7~29_combout\ : std_logic;
SIGNAL \count[10]~122_combout\ : std_logic;
SIGNAL \count[10]~123_combout\ : std_logic;
SIGNAL \count[10]~124_combout\ : std_logic;
SIGNAL \count[10]~125_combout\ : std_logic;
SIGNAL \Add7~31_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \count~126_combout\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \count~127_combout\ : std_logic;
SIGNAL \Add2~21\ : std_logic;
SIGNAL \Add2~22_combout\ : std_logic;
SIGNAL \count~128_combout\ : std_logic;
SIGNAL \Add3~21\ : std_logic;
SIGNAL \Add3~22_combout\ : std_logic;
SIGNAL \count~129_combout\ : std_logic;
SIGNAL \Add4~21\ : std_logic;
SIGNAL \Add4~22_combout\ : std_logic;
SIGNAL \count~130_combout\ : std_logic;
SIGNAL \Add5~21\ : std_logic;
SIGNAL \Add5~22_combout\ : std_logic;
SIGNAL \count~131_combout\ : std_logic;
SIGNAL \Add6~21\ : std_logic;
SIGNAL \Add6~22_combout\ : std_logic;
SIGNAL \count~132_combout\ : std_logic;
SIGNAL \Add7~30\ : std_logic;
SIGNAL \Add7~32_combout\ : std_logic;
SIGNAL \count[11]~133_combout\ : std_logic;
SIGNAL \count[11]~134_combout\ : std_logic;
SIGNAL \count[11]~135_combout\ : std_logic;
SIGNAL \count[11]~136_combout\ : std_logic;
SIGNAL \Add7~34_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \count~137_combout\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \count~138_combout\ : std_logic;
SIGNAL \Add2~23\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \count~139_combout\ : std_logic;
SIGNAL \Add3~23\ : std_logic;
SIGNAL \Add3~24_combout\ : std_logic;
SIGNAL \count~140_combout\ : std_logic;
SIGNAL \Add4~23\ : std_logic;
SIGNAL \Add4~24_combout\ : std_logic;
SIGNAL \count~141_combout\ : std_logic;
SIGNAL \Add5~23\ : std_logic;
SIGNAL \Add5~24_combout\ : std_logic;
SIGNAL \count~142_combout\ : std_logic;
SIGNAL \Add6~23\ : std_logic;
SIGNAL \Add6~24_combout\ : std_logic;
SIGNAL \count~143_combout\ : std_logic;
SIGNAL \Add7~33\ : std_logic;
SIGNAL \Add7~35_combout\ : std_logic;
SIGNAL \count[12]~144_combout\ : std_logic;
SIGNAL \count[12]~145_combout\ : std_logic;
SIGNAL \count[12]~146_combout\ : std_logic;
SIGNAL \count[12]~147_combout\ : std_logic;
SIGNAL \Add7~37_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \count~148_combout\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \count~149_combout\ : std_logic;
SIGNAL \Add2~25\ : std_logic;
SIGNAL \Add2~26_combout\ : std_logic;
SIGNAL \count~150_combout\ : std_logic;
SIGNAL \Add3~25\ : std_logic;
SIGNAL \Add3~26_combout\ : std_logic;
SIGNAL \count~151_combout\ : std_logic;
SIGNAL \Add4~25\ : std_logic;
SIGNAL \Add4~26_combout\ : std_logic;
SIGNAL \count~152_combout\ : std_logic;
SIGNAL \Add5~25\ : std_logic;
SIGNAL \Add5~26_combout\ : std_logic;
SIGNAL \count~153_combout\ : std_logic;
SIGNAL \Add6~25\ : std_logic;
SIGNAL \Add6~26_combout\ : std_logic;
SIGNAL \count~154_combout\ : std_logic;
SIGNAL \Add7~36\ : std_logic;
SIGNAL \Add7~38_combout\ : std_logic;
SIGNAL \count[13]~155_combout\ : std_logic;
SIGNAL \count[13]~156_combout\ : std_logic;
SIGNAL \count[13]~157_combout\ : std_logic;
SIGNAL \count[13]~158_combout\ : std_logic;
SIGNAL \Add7~40_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \count~159_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \count~160_combout\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~28_combout\ : std_logic;
SIGNAL \count~161_combout\ : std_logic;
SIGNAL \Add3~27\ : std_logic;
SIGNAL \Add3~28_combout\ : std_logic;
SIGNAL \count[14]~166_combout\ : std_logic;
SIGNAL \count[14]~167_combout\ : std_logic;
SIGNAL \count~162_combout\ : std_logic;
SIGNAL \Add4~27\ : std_logic;
SIGNAL \Add4~28_combout\ : std_logic;
SIGNAL \count~163_combout\ : std_logic;
SIGNAL \Add5~27\ : std_logic;
SIGNAL \Add5~28_combout\ : std_logic;
SIGNAL \count[14]~168_combout\ : std_logic;
SIGNAL \count~164_combout\ : std_logic;
SIGNAL \Add6~27\ : std_logic;
SIGNAL \Add6~28_combout\ : std_logic;
SIGNAL \count[14]~169_combout\ : std_logic;
SIGNAL \count~165_combout\ : std_logic;
SIGNAL \Add7~39\ : std_logic;
SIGNAL \Add7~41_combout\ : std_logic;
SIGNAL \Add7~43_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \count~170_combout\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \count~171_combout\ : std_logic;
SIGNAL \Add2~29\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \count~172_combout\ : std_logic;
SIGNAL \Add3~29\ : std_logic;
SIGNAL \Add3~30_combout\ : std_logic;
SIGNAL \count~173_combout\ : std_logic;
SIGNAL \Add4~29\ : std_logic;
SIGNAL \Add4~30_combout\ : std_logic;
SIGNAL \count~174_combout\ : std_logic;
SIGNAL \Add5~29\ : std_logic;
SIGNAL \Add5~30_combout\ : std_logic;
SIGNAL \count~175_combout\ : std_logic;
SIGNAL \Add6~29\ : std_logic;
SIGNAL \Add6~30_combout\ : std_logic;
SIGNAL \count~176_combout\ : std_logic;
SIGNAL \Add7~42\ : std_logic;
SIGNAL \Add7~44_combout\ : std_logic;
SIGNAL \count[15]~177_combout\ : std_logic;
SIGNAL \count[15]~178_combout\ : std_logic;
SIGNAL \count[15]~179_combout\ : std_logic;
SIGNAL \count[15]~180_combout\ : std_logic;
SIGNAL \Add7~46_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \count~181_combout\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \count~182_combout\ : std_logic;
SIGNAL \Add2~31\ : std_logic;
SIGNAL \Add2~32_combout\ : std_logic;
SIGNAL \count~183_combout\ : std_logic;
SIGNAL \Add3~31\ : std_logic;
SIGNAL \Add3~32_combout\ : std_logic;
SIGNAL \count~184_combout\ : std_logic;
SIGNAL \Add4~31\ : std_logic;
SIGNAL \Add4~32_combout\ : std_logic;
SIGNAL \count~185_combout\ : std_logic;
SIGNAL \Add5~31\ : std_logic;
SIGNAL \Add5~32_combout\ : std_logic;
SIGNAL \count~186_combout\ : std_logic;
SIGNAL \Add6~31\ : std_logic;
SIGNAL \Add6~32_combout\ : std_logic;
SIGNAL \count[16]~188_combout\ : std_logic;
SIGNAL \count[16]~189_combout\ : std_logic;
SIGNAL \count[16]~190_combout\ : std_logic;
SIGNAL \count[16]~191_combout\ : std_logic;
SIGNAL \count~187_combout\ : std_logic;
SIGNAL \Add7~45\ : std_logic;
SIGNAL \Add7~47_combout\ : std_logic;
SIGNAL \Add7~49_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \count~192_combout\ : std_logic;
SIGNAL \Add1~33\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \count~193_combout\ : std_logic;
SIGNAL \Add2~33\ : std_logic;
SIGNAL \Add2~34_combout\ : std_logic;
SIGNAL \count~194_combout\ : std_logic;
SIGNAL \Add3~33\ : std_logic;
SIGNAL \Add3~34_combout\ : std_logic;
SIGNAL \count~195_combout\ : std_logic;
SIGNAL \Add4~33\ : std_logic;
SIGNAL \Add4~34_combout\ : std_logic;
SIGNAL \count[17]~199_combout\ : std_logic;
SIGNAL \count[17]~200_combout\ : std_logic;
SIGNAL \count[17]~201_combout\ : std_logic;
SIGNAL \count~196_combout\ : std_logic;
SIGNAL \Add5~33\ : std_logic;
SIGNAL \Add5~34_combout\ : std_logic;
SIGNAL \count~197_combout\ : std_logic;
SIGNAL \Add6~33\ : std_logic;
SIGNAL \Add6~34_combout\ : std_logic;
SIGNAL \count[17]~202_combout\ : std_logic;
SIGNAL \count~198_combout\ : std_logic;
SIGNAL \Add7~48\ : std_logic;
SIGNAL \Add7~50_combout\ : std_logic;
SIGNAL \Add7~52_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \count~203_combout\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \count~204_combout\ : std_logic;
SIGNAL \Add2~35\ : std_logic;
SIGNAL \Add2~36_combout\ : std_logic;
SIGNAL \count~205_combout\ : std_logic;
SIGNAL \Add3~35\ : std_logic;
SIGNAL \Add3~36_combout\ : std_logic;
SIGNAL \count~206_combout\ : std_logic;
SIGNAL \Add4~35\ : std_logic;
SIGNAL \Add4~36_combout\ : std_logic;
SIGNAL \count~207_combout\ : std_logic;
SIGNAL \Add5~35\ : std_logic;
SIGNAL \Add5~36_combout\ : std_logic;
SIGNAL \count~208_combout\ : std_logic;
SIGNAL \Add6~35\ : std_logic;
SIGNAL \Add6~36_combout\ : std_logic;
SIGNAL \count~209_combout\ : std_logic;
SIGNAL \Add7~51\ : std_logic;
SIGNAL \Add7~53_combout\ : std_logic;
SIGNAL \count[18]~210_combout\ : std_logic;
SIGNAL \count[18]~211_combout\ : std_logic;
SIGNAL \count[18]~212_combout\ : std_logic;
SIGNAL \count[18]~213_combout\ : std_logic;
SIGNAL \Add7~55_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \count~214_combout\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \count~215_combout\ : std_logic;
SIGNAL \Add2~37\ : std_logic;
SIGNAL \Add2~38_combout\ : std_logic;
SIGNAL \count~216_combout\ : std_logic;
SIGNAL \Add3~37\ : std_logic;
SIGNAL \Add3~38_combout\ : std_logic;
SIGNAL \count[19]~221_combout\ : std_logic;
SIGNAL \count[19]~222_combout\ : std_logic;
SIGNAL \count~217_combout\ : std_logic;
SIGNAL \Add4~37\ : std_logic;
SIGNAL \Add4~38_combout\ : std_logic;
SIGNAL \count[19]~223_combout\ : std_logic;
SIGNAL \count~218_combout\ : std_logic;
SIGNAL \Add5~37\ : std_logic;
SIGNAL \Add5~38_combout\ : std_logic;
SIGNAL \count~219_combout\ : std_logic;
SIGNAL \Add6~37\ : std_logic;
SIGNAL \Add6~38_combout\ : std_logic;
SIGNAL \count[19]~224_combout\ : std_logic;
SIGNAL \count~220_combout\ : std_logic;
SIGNAL \Add7~54\ : std_logic;
SIGNAL \Add7~56_combout\ : std_logic;
SIGNAL \Add7~58_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \count~225_combout\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \count~226_combout\ : std_logic;
SIGNAL \Add2~39\ : std_logic;
SIGNAL \Add2~40_combout\ : std_logic;
SIGNAL \count~227_combout\ : std_logic;
SIGNAL \Add3~39\ : std_logic;
SIGNAL \Add3~40_combout\ : std_logic;
SIGNAL \count~228_combout\ : std_logic;
SIGNAL \Add4~39\ : std_logic;
SIGNAL \Add4~40_combout\ : std_logic;
SIGNAL \count~229_combout\ : std_logic;
SIGNAL \Add5~39\ : std_logic;
SIGNAL \Add5~40_combout\ : std_logic;
SIGNAL \count~230_combout\ : std_logic;
SIGNAL \Add6~39\ : std_logic;
SIGNAL \Add6~40_combout\ : std_logic;
SIGNAL \count~231_combout\ : std_logic;
SIGNAL \Add7~57\ : std_logic;
SIGNAL \Add7~59_combout\ : std_logic;
SIGNAL \count[20]~232_combout\ : std_logic;
SIGNAL \count[20]~233_combout\ : std_logic;
SIGNAL \count[20]~234_combout\ : std_logic;
SIGNAL \count[20]~235_combout\ : std_logic;
SIGNAL \Add7~61_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \count~236_combout\ : std_logic;
SIGNAL \Add1~41\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \count~237_combout\ : std_logic;
SIGNAL \Add2~41\ : std_logic;
SIGNAL \Add2~42_combout\ : std_logic;
SIGNAL \count~238_combout\ : std_logic;
SIGNAL \Add3~41\ : std_logic;
SIGNAL \Add3~42_combout\ : std_logic;
SIGNAL \count~239_combout\ : std_logic;
SIGNAL \Add4~41\ : std_logic;
SIGNAL \Add4~42_combout\ : std_logic;
SIGNAL \count~240_combout\ : std_logic;
SIGNAL \Add5~41\ : std_logic;
SIGNAL \Add5~42_combout\ : std_logic;
SIGNAL \count~241_combout\ : std_logic;
SIGNAL \Add6~41\ : std_logic;
SIGNAL \Add6~42_combout\ : std_logic;
SIGNAL \count~242_combout\ : std_logic;
SIGNAL \Add7~60\ : std_logic;
SIGNAL \Add7~62_combout\ : std_logic;
SIGNAL \count[21]~243_combout\ : std_logic;
SIGNAL \count[21]~244_combout\ : std_logic;
SIGNAL \count[21]~245_combout\ : std_logic;
SIGNAL \count[21]~246_combout\ : std_logic;
SIGNAL \Add7~64_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \count~247_combout\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~44_combout\ : std_logic;
SIGNAL \count~248_combout\ : std_logic;
SIGNAL \Add2~43\ : std_logic;
SIGNAL \Add2~44_combout\ : std_logic;
SIGNAL \count~249_combout\ : std_logic;
SIGNAL \Add3~43\ : std_logic;
SIGNAL \Add3~44_combout\ : std_logic;
SIGNAL \count~250_combout\ : std_logic;
SIGNAL \Add4~43\ : std_logic;
SIGNAL \Add4~44_combout\ : std_logic;
SIGNAL \count[22]~254_combout\ : std_logic;
SIGNAL \count[22]~255_combout\ : std_logic;
SIGNAL \count~251_combout\ : std_logic;
SIGNAL \Add5~43\ : std_logic;
SIGNAL \Add5~44_combout\ : std_logic;
SIGNAL \count[22]~256_combout\ : std_logic;
SIGNAL \count~252_combout\ : std_logic;
SIGNAL \Add6~43\ : std_logic;
SIGNAL \Add6~44_combout\ : std_logic;
SIGNAL \count[22]~257_combout\ : std_logic;
SIGNAL \count~253_combout\ : std_logic;
SIGNAL \Add7~63\ : std_logic;
SIGNAL \Add7~65_combout\ : std_logic;
SIGNAL \Add7~67_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \count~258_combout\ : std_logic;
SIGNAL \Add1~45\ : std_logic;
SIGNAL \Add1~46_combout\ : std_logic;
SIGNAL \count~259_combout\ : std_logic;
SIGNAL \Add2~45\ : std_logic;
SIGNAL \Add2~46_combout\ : std_logic;
SIGNAL \count~260_combout\ : std_logic;
SIGNAL \Add3~45\ : std_logic;
SIGNAL \Add3~46_combout\ : std_logic;
SIGNAL \count~261_combout\ : std_logic;
SIGNAL \Add4~45\ : std_logic;
SIGNAL \Add4~46_combout\ : std_logic;
SIGNAL \count~262_combout\ : std_logic;
SIGNAL \Add5~45\ : std_logic;
SIGNAL \Add5~46_combout\ : std_logic;
SIGNAL \count[23]~265_combout\ : std_logic;
SIGNAL \count[23]~266_combout\ : std_logic;
SIGNAL \count[23]~267_combout\ : std_logic;
SIGNAL \count~263_combout\ : std_logic;
SIGNAL \Add6~45\ : std_logic;
SIGNAL \Add6~46_combout\ : std_logic;
SIGNAL \count[23]~268_combout\ : std_logic;
SIGNAL \count~264_combout\ : std_logic;
SIGNAL \Add7~66\ : std_logic;
SIGNAL \Add7~68_combout\ : std_logic;
SIGNAL \Add7~70_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \count~269_combout\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~48_combout\ : std_logic;
SIGNAL \count~270_combout\ : std_logic;
SIGNAL \Add2~47\ : std_logic;
SIGNAL \Add2~48_combout\ : std_logic;
SIGNAL \count~271_combout\ : std_logic;
SIGNAL \Add3~47\ : std_logic;
SIGNAL \Add3~48_combout\ : std_logic;
SIGNAL \count~272_combout\ : std_logic;
SIGNAL \Add4~47\ : std_logic;
SIGNAL \Add4~48_combout\ : std_logic;
SIGNAL \count~273_combout\ : std_logic;
SIGNAL \Add5~47\ : std_logic;
SIGNAL \Add5~48_combout\ : std_logic;
SIGNAL \count~274_combout\ : std_logic;
SIGNAL \Add6~47\ : std_logic;
SIGNAL \Add6~48_combout\ : std_logic;
SIGNAL \count[24]~276_combout\ : std_logic;
SIGNAL \count[24]~277_combout\ : std_logic;
SIGNAL \count[24]~278_combout\ : std_logic;
SIGNAL \count[24]~279_combout\ : std_logic;
SIGNAL \count~275_combout\ : std_logic;
SIGNAL \Add7~69\ : std_logic;
SIGNAL \Add7~71_combout\ : std_logic;
SIGNAL \Add7~73_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \count~280_combout\ : std_logic;
SIGNAL \Add1~49\ : std_logic;
SIGNAL \Add1~50_combout\ : std_logic;
SIGNAL \count~281_combout\ : std_logic;
SIGNAL \Add2~49\ : std_logic;
SIGNAL \Add2~50_combout\ : std_logic;
SIGNAL \count~282_combout\ : std_logic;
SIGNAL \Add3~49\ : std_logic;
SIGNAL \Add3~50_combout\ : std_logic;
SIGNAL \count~283_combout\ : std_logic;
SIGNAL \Add4~49\ : std_logic;
SIGNAL \Add4~50_combout\ : std_logic;
SIGNAL \count~284_combout\ : std_logic;
SIGNAL \Add5~49\ : std_logic;
SIGNAL \Add5~50_combout\ : std_logic;
SIGNAL \count[25]~287_combout\ : std_logic;
SIGNAL \count[25]~288_combout\ : std_logic;
SIGNAL \count[25]~289_combout\ : std_logic;
SIGNAL \count~285_combout\ : std_logic;
SIGNAL \Add6~49\ : std_logic;
SIGNAL \Add6~50_combout\ : std_logic;
SIGNAL \count[25]~290_combout\ : std_logic;
SIGNAL \count~286_combout\ : std_logic;
SIGNAL \Add7~72\ : std_logic;
SIGNAL \Add7~74_combout\ : std_logic;
SIGNAL \Add7~76_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \count~291_combout\ : std_logic;
SIGNAL \Add1~51\ : std_logic;
SIGNAL \Add1~52_combout\ : std_logic;
SIGNAL \count~292_combout\ : std_logic;
SIGNAL \Add2~51\ : std_logic;
SIGNAL \Add2~52_combout\ : std_logic;
SIGNAL \count~293_combout\ : std_logic;
SIGNAL \Add3~51\ : std_logic;
SIGNAL \Add3~52_combout\ : std_logic;
SIGNAL \count~294_combout\ : std_logic;
SIGNAL \Add4~51\ : std_logic;
SIGNAL \Add4~52_combout\ : std_logic;
SIGNAL \count[26]~298_combout\ : std_logic;
SIGNAL \count[26]~299_combout\ : std_logic;
SIGNAL \count~295_combout\ : std_logic;
SIGNAL \Add5~51\ : std_logic;
SIGNAL \Add5~52_combout\ : std_logic;
SIGNAL \count[26]~300_combout\ : std_logic;
SIGNAL \count~296_combout\ : std_logic;
SIGNAL \Add6~51\ : std_logic;
SIGNAL \Add6~52_combout\ : std_logic;
SIGNAL \count[26]~301_combout\ : std_logic;
SIGNAL \count~297_combout\ : std_logic;
SIGNAL \Add7~75\ : std_logic;
SIGNAL \Add7~77_combout\ : std_logic;
SIGNAL \Add7~79_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \count~302_combout\ : std_logic;
SIGNAL \Add1~53\ : std_logic;
SIGNAL \Add1~54_combout\ : std_logic;
SIGNAL \count[27]~309_combout\ : std_logic;
SIGNAL \count~303_combout\ : std_logic;
SIGNAL \Add2~53\ : std_logic;
SIGNAL \Add2~54_combout\ : std_logic;
SIGNAL \count~304_combout\ : std_logic;
SIGNAL \Add3~53\ : std_logic;
SIGNAL \Add3~54_combout\ : std_logic;
SIGNAL \count[27]~310_combout\ : std_logic;
SIGNAL \count~305_combout\ : std_logic;
SIGNAL \Add4~53\ : std_logic;
SIGNAL \Add4~54_combout\ : std_logic;
SIGNAL \count[27]~311_combout\ : std_logic;
SIGNAL \count~306_combout\ : std_logic;
SIGNAL \Add5~53\ : std_logic;
SIGNAL \Add5~54_combout\ : std_logic;
SIGNAL \count~307_combout\ : std_logic;
SIGNAL \Add6~53\ : std_logic;
SIGNAL \Add6~54_combout\ : std_logic;
SIGNAL \count[27]~312_combout\ : std_logic;
SIGNAL \count~308_combout\ : std_logic;
SIGNAL \Add7~78\ : std_logic;
SIGNAL \Add7~80_combout\ : std_logic;
SIGNAL \Add7~82_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \count~313_combout\ : std_logic;
SIGNAL \Add1~55\ : std_logic;
SIGNAL \Add1~56_combout\ : std_logic;
SIGNAL \count~314_combout\ : std_logic;
SIGNAL \Add2~55\ : std_logic;
SIGNAL \Add2~56_combout\ : std_logic;
SIGNAL \count~315_combout\ : std_logic;
SIGNAL \Add3~55\ : std_logic;
SIGNAL \Add3~56_combout\ : std_logic;
SIGNAL \count~316_combout\ : std_logic;
SIGNAL \Add4~55\ : std_logic;
SIGNAL \Add4~56_combout\ : std_logic;
SIGNAL \count[28]~320_combout\ : std_logic;
SIGNAL \count[28]~321_combout\ : std_logic;
SIGNAL \count~317_combout\ : std_logic;
SIGNAL \Add5~55\ : std_logic;
SIGNAL \Add5~56_combout\ : std_logic;
SIGNAL \count[28]~322_combout\ : std_logic;
SIGNAL \count~318_combout\ : std_logic;
SIGNAL \Add6~55\ : std_logic;
SIGNAL \Add6~56_combout\ : std_logic;
SIGNAL \count[28]~323_combout\ : std_logic;
SIGNAL \count~319_combout\ : std_logic;
SIGNAL \Add7~81\ : std_logic;
SIGNAL \Add7~83_combout\ : std_logic;
SIGNAL \Add7~85_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \count~328_combout\ : std_logic;
SIGNAL \Add1~57\ : std_logic;
SIGNAL \Add1~58_combout\ : std_logic;
SIGNAL \count~329_combout\ : std_logic;
SIGNAL \Add2~57\ : std_logic;
SIGNAL \Add2~58_combout\ : std_logic;
SIGNAL \count~330_combout\ : std_logic;
SIGNAL \Add3~57\ : std_logic;
SIGNAL \Add3~58_combout\ : std_logic;
SIGNAL \count[29]~335_combout\ : std_logic;
SIGNAL \count[29]~336_combout\ : std_logic;
SIGNAL \count~331_combout\ : std_logic;
SIGNAL \Add4~57\ : std_logic;
SIGNAL \Add4~58_combout\ : std_logic;
SIGNAL \count[29]~337_combout\ : std_logic;
SIGNAL \count~332_combout\ : std_logic;
SIGNAL \Add5~57\ : std_logic;
SIGNAL \Add5~58_combout\ : std_logic;
SIGNAL \count~333_combout\ : std_logic;
SIGNAL \Add6~57\ : std_logic;
SIGNAL \Add6~58_combout\ : std_logic;
SIGNAL \count[29]~338_combout\ : std_logic;
SIGNAL \count~334_combout\ : std_logic;
SIGNAL \Add7~84\ : std_logic;
SIGNAL \Add7~87_combout\ : std_logic;
SIGNAL \Add7~89_combout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \count~339_combout\ : std_logic;
SIGNAL \Add1~59\ : std_logic;
SIGNAL \Add1~60_combout\ : std_logic;
SIGNAL \count~340_combout\ : std_logic;
SIGNAL \Add2~59\ : std_logic;
SIGNAL \Add2~60_combout\ : std_logic;
SIGNAL \count~341_combout\ : std_logic;
SIGNAL \Add3~59\ : std_logic;
SIGNAL \Add3~60_combout\ : std_logic;
SIGNAL \count~342_combout\ : std_logic;
SIGNAL \Add4~59\ : std_logic;
SIGNAL \Add4~60_combout\ : std_logic;
SIGNAL \count~343_combout\ : std_logic;
SIGNAL \Add5~59\ : std_logic;
SIGNAL \Add5~60_combout\ : std_logic;
SIGNAL \count[30]~346_combout\ : std_logic;
SIGNAL \count[30]~347_combout\ : std_logic;
SIGNAL \count[30]~348_combout\ : std_logic;
SIGNAL \count~344_combout\ : std_logic;
SIGNAL \Add6~59\ : std_logic;
SIGNAL \Add6~60_combout\ : std_logic;
SIGNAL \count[30]~349_combout\ : std_logic;
SIGNAL \count~345_combout\ : std_logic;
SIGNAL \Add7~88\ : std_logic;
SIGNAL \Add7~90_combout\ : std_logic;
SIGNAL \Add7~92_combout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \count~350_combout\ : std_logic;
SIGNAL \Add1~61\ : std_logic;
SIGNAL \Add1~62_combout\ : std_logic;
SIGNAL \count~351_combout\ : std_logic;
SIGNAL \Add2~61\ : std_logic;
SIGNAL \Add2~62_combout\ : std_logic;
SIGNAL \count~352_combout\ : std_logic;
SIGNAL \Add3~61\ : std_logic;
SIGNAL \Add3~62_combout\ : std_logic;
SIGNAL \count~353_combout\ : std_logic;
SIGNAL \Add4~61\ : std_logic;
SIGNAL \Add4~62_combout\ : std_logic;
SIGNAL \count~354_combout\ : std_logic;
SIGNAL \Add5~61\ : std_logic;
SIGNAL \Add5~62_combout\ : std_logic;
SIGNAL \count~355_combout\ : std_logic;
SIGNAL \Add6~61\ : std_logic;
SIGNAL \Add6~62_combout\ : std_logic;
SIGNAL \count[31]~357_combout\ : std_logic;
SIGNAL \count[31]~358_combout\ : std_logic;
SIGNAL \count[31]~359_combout\ : std_logic;
SIGNAL \count[31]~360_combout\ : std_logic;
SIGNAL \count~356_combout\ : std_logic;
SIGNAL \Add7~91\ : std_logic;
SIGNAL \Add7~93_combout\ : std_logic;
SIGNAL \Add7~95_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \coffe_out~0_combout\ : std_logic;
SIGNAL \coffe_out~1_combout\ : std_logic;
SIGNAL \coffe_out~2_combout\ : std_logic;
SIGNAL \coffe_out~3_combout\ : std_logic;
SIGNAL \coffe_out~4_combout\ : std_logic;
SIGNAL \coffe_out~5_combout\ : std_logic;
SIGNAL \coffe_out~6_combout\ : std_logic;
SIGNAL \coffe_out~7_combout\ : std_logic;
SIGNAL count : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_Equal0~10_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_buttons <= buttons;
coffe_out <= ww_coffe_out;
error_flag <= ww_error_flag;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\count[1]~361clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \count[1]~361_combout\);
\ALT_INV_Equal0~10_combout\ <= NOT \Equal0~10_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X60_Y73_N9
\coffe_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \coffe_out~0_combout\,
	devoe => ww_devoe,
	o => \coffe_out[0]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\coffe_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \coffe_out~1_combout\,
	devoe => ww_devoe,
	o => \coffe_out[1]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\coffe_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \coffe_out~2_combout\,
	devoe => ww_devoe,
	o => \coffe_out[2]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\coffe_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \coffe_out~3_combout\,
	devoe => ww_devoe,
	o => \coffe_out[3]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\coffe_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \coffe_out~4_combout\,
	devoe => ww_devoe,
	o => \coffe_out[4]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\coffe_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \coffe_out~5_combout\,
	devoe => ww_devoe,
	o => \coffe_out[5]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\coffe_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \coffe_out~6_combout\,
	devoe => ww_devoe,
	o => \coffe_out[6]~output_o\);

-- Location: IOOBUF_X62_Y73_N16
\coffe_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \coffe_out~7_combout\,
	devoe => ww_devoe,
	o => \coffe_out[7]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\error_flag~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Equal0~10_combout\,
	devoe => ww_devoe,
	o => \error_flag~output_o\);

-- Location: IOIBUF_X67_Y73_N15
\buttons[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_buttons(0),
	o => \buttons[0]~input_o\);

-- Location: IOIBUF_X72_Y73_N15
\buttons[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_buttons(5),
	o => \buttons[5]~input_o\);

-- Location: IOIBUF_X72_Y73_N1
\buttons[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_buttons(6),
	o => \buttons[6]~input_o\);

-- Location: IOIBUF_X60_Y73_N22
\buttons[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_buttons(7),
	o => \buttons[7]~input_o\);

-- Location: IOIBUF_X67_Y73_N8
\buttons[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_buttons(4),
	o => \buttons[4]~input_o\);

-- Location: IOIBUF_X72_Y73_N8
\buttons[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_buttons(2),
	o => \buttons[2]~input_o\);

-- Location: IOIBUF_X67_Y73_N22
\buttons[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_buttons(1),
	o => \buttons[1]~input_o\);

-- Location: LCCOMB_X73_Y49_N24
\count[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[1]~18_combout\ = (!\buttons[2]~input_o\ & !\buttons[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \buttons[2]~input_o\,
	datad => \buttons[1]~input_o\,
	combout => \count[1]~18_combout\);

-- Location: LCCOMB_X66_Y50_N14
\count[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[1]~20_combout\ = (!\buttons[5]~input_o\ & !\buttons[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \buttons[5]~input_o\,
	datad => \buttons[4]~input_o\,
	combout => \count[1]~20_combout\);

-- Location: IOIBUF_X72_Y73_N22
\buttons[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_buttons(3),
	o => \buttons[3]~input_o\);

-- Location: LCCOMB_X72_Y49_N24
\count[17]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[17]~19_combout\ = (\buttons[1]~input_o\) # ((\buttons[3]~input_o\ & !\buttons[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[1]~input_o\,
	datac => \buttons[3]~input_o\,
	datad => \buttons[2]~input_o\,
	combout => \count[17]~19_combout\);

-- Location: LCCOMB_X66_Y72_N18
\count[1]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[1]~26_combout\ = (\buttons[6]~input_o\) # ((\buttons[7]~input_o\) # ((\buttons[0]~input_o\) # (\buttons[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[6]~input_o\,
	datab => \buttons[7]~input_o\,
	datac => \buttons[0]~input_o\,
	datad => \buttons[3]~input_o\,
	combout => \count[1]~26_combout\);

-- Location: LCCOMB_X66_Y72_N8
\count[1]~361\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[1]~361_combout\ = (\buttons[2]~input_o\) # ((\buttons[1]~input_o\) # ((\count[1]~26_combout\) # (!\count[1]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[2]~input_o\,
	datab => \buttons[1]~input_o\,
	datac => \count[1]~20_combout\,
	datad => \count[1]~26_combout\,
	combout => \count[1]~361_combout\);

-- Location: CLKCTRL_G12
\count[1]~361clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \count[1]~361clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \count[1]~361clkctrl_outclk\);

-- Location: LCCOMB_X73_Y52_N30
\count[17]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[17]~21_combout\ = (\buttons[4]~input_o\) # ((\buttons[6]~input_o\ & !\buttons[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[6]~input_o\,
	datac => \buttons[4]~input_o\,
	datad => \buttons[5]~input_o\,
	combout => \count[17]~21_combout\);

-- Location: LCCOMB_X67_Y49_N0
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = count(0) $ (VCC)
-- \Add0~1\ = CARRY(count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X66_Y49_N12
\count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~5_combout\ = (\buttons[7]~input_o\ & (\Add0~0_combout\)) # (!\buttons[7]~input_o\ & ((count(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[7]~input_o\,
	datac => \Add0~0_combout\,
	datad => count(0),
	combout => \count~5_combout\);

-- Location: LCCOMB_X67_Y53_N0
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = \count~5_combout\ $ (VCC)
-- \Add1~1\ = CARRY(\count~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count~5_combout\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X69_Y54_N24
\count~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~7_combout\ = (\buttons[6]~input_o\ & (\Add1~0_combout\)) # (!\buttons[6]~input_o\ & ((\count~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[6]~input_o\,
	datac => \Add1~0_combout\,
	datad => \count~5_combout\,
	combout => \count~7_combout\);

-- Location: LCCOMB_X69_Y53_N0
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = \count~7_combout\ $ (VCC)
-- \Add2~1\ = CARRY(\count~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count~7_combout\,
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X69_Y54_N30
\count~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~9_combout\ = (\buttons[5]~input_o\ & ((\Add2~0_combout\))) # (!\buttons[5]~input_o\ & (\count~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count~7_combout\,
	datac => \buttons[5]~input_o\,
	datad => \Add2~0_combout\,
	combout => \count~9_combout\);

-- Location: LCCOMB_X69_Y49_N0
\Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = \count~9_combout\ $ (VCC)
-- \Add3~1\ = CARRY(\count~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count~9_combout\,
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCCOMB_X69_Y54_N12
\count~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~11_combout\ = (\buttons[4]~input_o\ & ((\Add3~0_combout\))) # (!\buttons[4]~input_o\ & (\count~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[4]~input_o\,
	datac => \count~9_combout\,
	datad => \Add3~0_combout\,
	combout => \count~11_combout\);

-- Location: LCCOMB_X72_Y53_N0
\Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = \count~11_combout\ $ (VCC)
-- \Add4~1\ = CARRY(\count~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count~11_combout\,
	datad => VCC,
	combout => \Add4~0_combout\,
	cout => \Add4~1\);

-- Location: LCCOMB_X69_Y54_N6
\count~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~13_combout\ = (\buttons[3]~input_o\ & (\Add4~0_combout\)) # (!\buttons[3]~input_o\ & ((\count~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[3]~input_o\,
	datac => \Add4~0_combout\,
	datad => \count~11_combout\,
	combout => \count~13_combout\);

-- Location: LCCOMB_X69_Y51_N0
\Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = \count~13_combout\ $ (VCC)
-- \Add5~1\ = CARRY(\count~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count~13_combout\,
	datad => VCC,
	combout => \Add5~0_combout\,
	cout => \Add5~1\);

-- Location: LCCOMB_X69_Y54_N16
\count~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~15_combout\ = (\buttons[2]~input_o\ & ((\Add5~0_combout\))) # (!\buttons[2]~input_o\ & (\count~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count~13_combout\,
	datab => \buttons[2]~input_o\,
	datac => \Add5~0_combout\,
	combout => \count~15_combout\);

-- Location: LCCOMB_X72_Y51_N0
\Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~0_combout\ = \count~15_combout\ $ (VCC)
-- \Add6~1\ = CARRY(\count~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count~15_combout\,
	datad => VCC,
	combout => \Add6~0_combout\,
	cout => \Add6~1\);

-- Location: LCCOMB_X66_Y49_N20
\count[0]~324\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[0]~324_combout\ = (\count[17]~21_combout\ & (((!\count[1]~20_combout\)))) # (!\count[17]~21_combout\ & ((\count[1]~20_combout\ & (\Add0~0_combout\)) # (!\count[1]~20_combout\ & ((\Add2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[17]~21_combout\,
	datab => \Add0~0_combout\,
	datac => \count[1]~20_combout\,
	datad => \Add2~0_combout\,
	combout => \count[0]~324_combout\);

-- Location: LCCOMB_X73_Y49_N10
\count[0]~325\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[0]~325_combout\ = (\count[0]~324_combout\ & (((\Add3~0_combout\) # (!\count[17]~21_combout\)))) # (!\count[0]~324_combout\ & (\Add1~0_combout\ & ((\count[17]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[0]~324_combout\,
	datab => \Add1~0_combout\,
	datac => \Add3~0_combout\,
	datad => \count[17]~21_combout\,
	combout => \count[0]~325_combout\);

-- Location: LCCOMB_X73_Y49_N28
\count[0]~326\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[0]~326_combout\ = (\count[17]~19_combout\ & (((!\count[1]~18_combout\)))) # (!\count[17]~19_combout\ & ((\count[1]~18_combout\ & (\count[0]~325_combout\)) # (!\count[1]~18_combout\ & ((\Add5~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[0]~325_combout\,
	datab => \Add5~0_combout\,
	datac => \count[17]~19_combout\,
	datad => \count[1]~18_combout\,
	combout => \count[0]~326_combout\);

-- Location: LCCOMB_X73_Y49_N26
\count[0]~327\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[0]~327_combout\ = (\count[17]~19_combout\ & ((\count[0]~326_combout\ & ((\Add6~0_combout\))) # (!\count[0]~326_combout\ & (\Add4~0_combout\)))) # (!\count[17]~19_combout\ & (((\count[0]~326_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~0_combout\,
	datab => \Add6~0_combout\,
	datac => \count[17]~19_combout\,
	datad => \count[0]~326_combout\,
	combout => \count[0]~327_combout\);

-- Location: LCCOMB_X73_Y51_N24
\count~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~17_combout\ = (\buttons[1]~input_o\ & (\Add6~0_combout\)) # (!\buttons[1]~input_o\ & ((\count~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[1]~input_o\,
	datac => \Add6~0_combout\,
	datad => \count~15_combout\,
	combout => \count~17_combout\);

-- Location: LCCOMB_X70_Y51_N0
\Add7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~0_combout\ = \count~17_combout\ $ (VCC)
-- \Add7~1\ = CARRY(\count~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count~17_combout\,
	datad => VCC,
	combout => \Add7~0_combout\,
	cout => \Add7~1\);

-- Location: LCCOMB_X66_Y49_N10
\Add7~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~86_combout\ = (\buttons[0]~input_o\ & ((\Add7~0_combout\))) # (!\buttons[0]~input_o\ & (\count[0]~327_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count[0]~327_combout\,
	datac => \Add7~0_combout\,
	datad => \buttons[0]~input_o\,
	combout => \Add7~86_combout\);

-- Location: LCCOMB_X66_Y49_N6
\count[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- count(0) = (GLOBAL(\count[1]~361clkctrl_outclk\) & ((\Add7~86_combout\))) # (!GLOBAL(\count[1]~361clkctrl_outclk\) & (count(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datac => \Add7~86_combout\,
	datad => \count[1]~361clkctrl_outclk\,
	combout => count(0));

-- Location: LCCOMB_X67_Y49_N2
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (count(1) & (!\Add0~1\)) # (!count(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X66_Y52_N18
\count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~4_combout\ = (\buttons[7]~input_o\ & ((\Add0~2_combout\))) # (!\buttons[7]~input_o\ & (count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[7]~input_o\,
	datac => count(1),
	datad => \Add0~2_combout\,
	combout => \count~4_combout\);

-- Location: LCCOMB_X67_Y53_N2
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\count~4_combout\ & (!\Add1~1\)) # (!\count~4_combout\ & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!\count~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~4_combout\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X66_Y52_N0
\count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~6_combout\ = (\buttons[6]~input_o\ & (\Add1~2_combout\)) # (!\buttons[6]~input_o\ & ((\count~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[6]~input_o\,
	datac => \Add1~2_combout\,
	datad => \count~4_combout\,
	combout => \count~6_combout\);

-- Location: LCCOMB_X69_Y53_N2
\Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (\count~6_combout\ & (!\Add2~1\)) # (!\count~6_combout\ & ((\Add2~1\) # (GND)))
-- \Add2~3\ = CARRY((!\Add2~1\) # (!\count~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~6_combout\,
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X73_Y52_N0
\count~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~8_combout\ = (\buttons[5]~input_o\ & ((\Add2~2_combout\))) # (!\buttons[5]~input_o\ & (\count~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count~6_combout\,
	datab => \buttons[5]~input_o\,
	datad => \Add2~2_combout\,
	combout => \count~8_combout\);

-- Location: LCCOMB_X69_Y49_N2
\Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (\count~8_combout\ & (!\Add3~1\)) # (!\count~8_combout\ & ((\Add3~1\) # (GND)))
-- \Add3~3\ = CARRY((!\Add3~1\) # (!\count~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~8_combout\,
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCCOMB_X73_Y52_N18
\count~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~10_combout\ = (\buttons[4]~input_o\ & ((\Add3~2_combout\))) # (!\buttons[4]~input_o\ & (\count~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count~8_combout\,
	datac => \buttons[4]~input_o\,
	datad => \Add3~2_combout\,
	combout => \count~10_combout\);

-- Location: LCCOMB_X72_Y53_N2
\Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~2_combout\ = (\count~10_combout\ & (!\Add4~1\)) # (!\count~10_combout\ & ((\Add4~1\) # (GND)))
-- \Add4~3\ = CARRY((!\Add4~1\) # (!\count~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~10_combout\,
	datad => VCC,
	cin => \Add4~1\,
	combout => \Add4~2_combout\,
	cout => \Add4~3\);

-- Location: LCCOMB_X73_Y52_N24
\count~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~12_combout\ = (\buttons[3]~input_o\ & (\Add4~2_combout\)) # (!\buttons[3]~input_o\ & ((\count~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[3]~input_o\,
	datac => \Add4~2_combout\,
	datad => \count~10_combout\,
	combout => \count~12_combout\);

-- Location: LCCOMB_X69_Y51_N2
\Add5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~2_combout\ = (\count~12_combout\ & (!\Add5~1\)) # (!\count~12_combout\ & ((\Add5~1\) # (GND)))
-- \Add5~3\ = CARRY((!\Add5~1\) # (!\count~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~12_combout\,
	datad => VCC,
	cin => \Add5~1\,
	combout => \Add5~2_combout\,
	cout => \Add5~3\);

-- Location: LCCOMB_X70_Y54_N24
\count~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~14_combout\ = (\buttons[2]~input_o\ & ((\Add5~2_combout\))) # (!\buttons[2]~input_o\ & (\count~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[2]~input_o\,
	datac => \count~12_combout\,
	datad => \Add5~2_combout\,
	combout => \count~14_combout\);

-- Location: LCCOMB_X72_Y51_N2
\Add6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~2_combout\ = (\count~14_combout\ & (!\Add6~1\)) # (!\count~14_combout\ & ((\Add6~1\) # (GND)))
-- \Add6~3\ = CARRY((!\Add6~1\) # (!\count~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~14_combout\,
	datad => VCC,
	cin => \Add6~1\,
	combout => \Add6~2_combout\,
	cout => \Add6~3\);

-- Location: LCCOMB_X70_Y54_N2
\count~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~16_combout\ = (\buttons[1]~input_o\ & ((\Add6~2_combout\))) # (!\buttons[1]~input_o\ & (\count~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count~14_combout\,
	datac => \buttons[1]~input_o\,
	datad => \Add6~2_combout\,
	combout => \count~16_combout\);

-- Location: LCCOMB_X70_Y51_N2
\Add7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~2_combout\ = (\count~16_combout\ & (!\Add7~1\)) # (!\count~16_combout\ & ((\Add7~1\) # (GND)))
-- \Add7~3\ = CARRY((!\Add7~1\) # (!\count~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~16_combout\,
	datad => VCC,
	cin => \Add7~1\,
	combout => \Add7~2_combout\,
	cout => \Add7~3\);

-- Location: LCCOMB_X73_Y49_N18
\count[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[1]~22_combout\ = (\count[1]~20_combout\ & ((\count[17]~21_combout\ & ((\Add1~2_combout\))) # (!\count[17]~21_combout\ & (\Add0~2_combout\)))) # (!\count[1]~20_combout\ & (((\count[17]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \count[1]~20_combout\,
	datac => \Add1~2_combout\,
	datad => \count[17]~21_combout\,
	combout => \count[1]~22_combout\);

-- Location: LCCOMB_X73_Y52_N28
\count[1]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[1]~23_combout\ = (\count[1]~20_combout\ & (((\count[1]~22_combout\)))) # (!\count[1]~20_combout\ & ((\count[1]~22_combout\ & ((\Add3~2_combout\))) # (!\count[1]~22_combout\ & (\Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[1]~20_combout\,
	datab => \Add2~2_combout\,
	datac => \count[1]~22_combout\,
	datad => \Add3~2_combout\,
	combout => \count[1]~23_combout\);

-- Location: LCCOMB_X73_Y52_N2
\count[1]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[1]~24_combout\ = (\count[1]~18_combout\ & ((\count[17]~19_combout\ & (\Add4~2_combout\)) # (!\count[17]~19_combout\ & ((\count[1]~23_combout\))))) # (!\count[1]~18_combout\ & (\count[17]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[1]~18_combout\,
	datab => \count[17]~19_combout\,
	datac => \Add4~2_combout\,
	datad => \count[1]~23_combout\,
	combout => \count[1]~24_combout\);

-- Location: LCCOMB_X70_Y54_N12
\count[1]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[1]~25_combout\ = (\count[1]~24_combout\ & (((\count[1]~18_combout\) # (\Add6~2_combout\)))) # (!\count[1]~24_combout\ & (\Add5~2_combout\ & (!\count[1]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~2_combout\,
	datab => \count[1]~24_combout\,
	datac => \count[1]~18_combout\,
	datad => \Add6~2_combout\,
	combout => \count[1]~25_combout\);

-- Location: LCCOMB_X66_Y53_N12
\Add7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~4_combout\ = (\buttons[0]~input_o\ & (\Add7~2_combout\)) # (!\buttons[0]~input_o\ & ((\count[1]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[0]~input_o\,
	datac => \Add7~2_combout\,
	datad => \count[1]~25_combout\,
	combout => \Add7~4_combout\);

-- Location: LCCOMB_X66_Y53_N22
\count[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- count(1) = (GLOBAL(\count[1]~361clkctrl_outclk\) & ((\Add7~4_combout\))) # (!GLOBAL(\count[1]~361clkctrl_outclk\) & (count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datac => \Add7~4_combout\,
	datad => \count[1]~361clkctrl_outclk\,
	combout => count(1));

-- Location: LCCOMB_X67_Y49_N4
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (count(2) & (\Add0~3\ $ (GND))) # (!count(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((count(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X66_Y53_N30
\count~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~27_combout\ = (\buttons[7]~input_o\ & ((\Add0~4_combout\))) # (!\buttons[7]~input_o\ & (count(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(2),
	datac => \buttons[7]~input_o\,
	datad => \Add0~4_combout\,
	combout => \count~27_combout\);

-- Location: LCCOMB_X67_Y53_N4
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (\count~27_combout\ & (\Add1~3\ $ (GND))) # (!\count~27_combout\ & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((\count~27_combout\ & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~27_combout\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X68_Y54_N28
\count~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~28_combout\ = (\buttons[6]~input_o\ & ((\Add1~4_combout\))) # (!\buttons[6]~input_o\ & (\count~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count~27_combout\,
	datab => \buttons[6]~input_o\,
	datad => \Add1~4_combout\,
	combout => \count~28_combout\);

-- Location: LCCOMB_X69_Y53_N4
\Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (\count~28_combout\ & (\Add2~3\ $ (GND))) # (!\count~28_combout\ & (!\Add2~3\ & VCC))
-- \Add2~5\ = CARRY((\count~28_combout\ & !\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~28_combout\,
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X68_Y54_N30
\count~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~29_combout\ = (\buttons[5]~input_o\ & (\Add2~4_combout\)) # (!\buttons[5]~input_o\ & ((\count~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[5]~input_o\,
	datac => \Add2~4_combout\,
	datad => \count~28_combout\,
	combout => \count~29_combout\);

-- Location: LCCOMB_X69_Y49_N4
\Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = (\count~29_combout\ & (\Add3~3\ $ (GND))) # (!\count~29_combout\ & (!\Add3~3\ & VCC))
-- \Add3~5\ = CARRY((\count~29_combout\ & !\Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~29_combout\,
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X68_Y54_N20
\count~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~30_combout\ = (\buttons[4]~input_o\ & ((\Add3~4_combout\))) # (!\buttons[4]~input_o\ & (\count~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[4]~input_o\,
	datac => \count~29_combout\,
	datad => \Add3~4_combout\,
	combout => \count~30_combout\);

-- Location: LCCOMB_X72_Y53_N4
\Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~4_combout\ = (\count~30_combout\ & (\Add4~3\ $ (GND))) # (!\count~30_combout\ & (!\Add4~3\ & VCC))
-- \Add4~5\ = CARRY((\count~30_combout\ & !\Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~30_combout\,
	datad => VCC,
	cin => \Add4~3\,
	combout => \Add4~4_combout\,
	cout => \Add4~5\);

-- Location: LCCOMB_X68_Y54_N14
\count~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~31_combout\ = (\buttons[3]~input_o\ & (\Add4~4_combout\)) # (!\buttons[3]~input_o\ & ((\count~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[3]~input_o\,
	datac => \Add4~4_combout\,
	datad => \count~30_combout\,
	combout => \count~31_combout\);

-- Location: LCCOMB_X69_Y51_N4
\Add5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~4_combout\ = (\count~31_combout\ & (\Add5~3\ $ (GND))) # (!\count~31_combout\ & (!\Add5~3\ & VCC))
-- \Add5~5\ = CARRY((\count~31_combout\ & !\Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~31_combout\,
	datad => VCC,
	cin => \Add5~3\,
	combout => \Add5~4_combout\,
	cout => \Add5~5\);

-- Location: LCCOMB_X68_Y54_N16
\count~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~32_combout\ = (\buttons[2]~input_o\ & ((\Add5~4_combout\))) # (!\buttons[2]~input_o\ & (\count~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[2]~input_o\,
	datac => \count~31_combout\,
	datad => \Add5~4_combout\,
	combout => \count~32_combout\);

-- Location: LCCOMB_X72_Y51_N4
\Add6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~4_combout\ = (\count~32_combout\ & (\Add6~3\ $ (GND))) # (!\count~32_combout\ & (!\Add6~3\ & VCC))
-- \Add6~5\ = CARRY((\count~32_combout\ & !\Add6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~32_combout\,
	datad => VCC,
	cin => \Add6~3\,
	combout => \Add6~4_combout\,
	cout => \Add6~5\);

-- Location: LCCOMB_X68_Y54_N22
\count[2]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[2]~34_combout\ = (\count[1]~20_combout\ & (!\count[17]~21_combout\ & ((\Add0~4_combout\)))) # (!\count[1]~20_combout\ & ((\count[17]~21_combout\) # ((\Add2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[1]~20_combout\,
	datab => \count[17]~21_combout\,
	datac => \Add2~4_combout\,
	datad => \Add0~4_combout\,
	combout => \count[2]~34_combout\);

-- Location: LCCOMB_X68_Y54_N8
\count[2]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[2]~35_combout\ = (\count[17]~21_combout\ & ((\count[2]~34_combout\ & ((\Add3~4_combout\))) # (!\count[2]~34_combout\ & (\Add1~4_combout\)))) # (!\count[17]~21_combout\ & (((\count[2]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~4_combout\,
	datab => \count[17]~21_combout\,
	datac => \count[2]~34_combout\,
	datad => \Add3~4_combout\,
	combout => \count[2]~35_combout\);

-- Location: LCCOMB_X68_Y54_N18
\count[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[2]~36_combout\ = (\count[1]~18_combout\ & (!\count[17]~19_combout\ & (\count[2]~35_combout\))) # (!\count[1]~18_combout\ & ((\count[17]~19_combout\) # ((\Add5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[1]~18_combout\,
	datab => \count[17]~19_combout\,
	datac => \count[2]~35_combout\,
	datad => \Add5~4_combout\,
	combout => \count[2]~36_combout\);

-- Location: LCCOMB_X68_Y54_N4
\count[2]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[2]~37_combout\ = (\count[17]~19_combout\ & ((\count[2]~36_combout\ & ((\Add6~4_combout\))) # (!\count[2]~36_combout\ & (\Add4~4_combout\)))) # (!\count[17]~19_combout\ & (((\count[2]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~4_combout\,
	datab => \count[17]~19_combout\,
	datac => \Add6~4_combout\,
	datad => \count[2]~36_combout\,
	combout => \count[2]~37_combout\);

-- Location: LCCOMB_X68_Y51_N8
\count~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~33_combout\ = (\buttons[1]~input_o\ & (\Add6~4_combout\)) # (!\buttons[1]~input_o\ & ((\count~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[1]~input_o\,
	datac => \Add6~4_combout\,
	datad => \count~32_combout\,
	combout => \count~33_combout\);

-- Location: LCCOMB_X70_Y51_N4
\Add7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~5_combout\ = (\count~33_combout\ & (\Add7~3\ $ (GND))) # (!\count~33_combout\ & (!\Add7~3\ & VCC))
-- \Add7~6\ = CARRY((\count~33_combout\ & !\Add7~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~33_combout\,
	datad => VCC,
	cin => \Add7~3\,
	combout => \Add7~5_combout\,
	cout => \Add7~6\);

-- Location: LCCOMB_X66_Y53_N28
\Add7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~7_combout\ = (\buttons[0]~input_o\ & ((\Add7~5_combout\))) # (!\buttons[0]~input_o\ & (\count[2]~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[0]~input_o\,
	datac => \count[2]~37_combout\,
	datad => \Add7~5_combout\,
	combout => \Add7~7_combout\);

-- Location: LCCOMB_X66_Y53_N0
\count[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- count(2) = (GLOBAL(\count[1]~361clkctrl_outclk\) & ((\Add7~7_combout\))) # (!GLOBAL(\count[1]~361clkctrl_outclk\) & (count(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(2),
	datac => \Add7~7_combout\,
	datad => \count[1]~361clkctrl_outclk\,
	combout => count(2));

-- Location: LCCOMB_X67_Y49_N6
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (count(3) & (!\Add0~5\)) # (!count(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X66_Y53_N6
\count~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~38_combout\ = (\buttons[7]~input_o\ & ((\Add0~6_combout\))) # (!\buttons[7]~input_o\ & (count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[7]~input_o\,
	datab => count(3),
	datac => \Add0~6_combout\,
	combout => \count~38_combout\);

-- Location: LCCOMB_X67_Y53_N6
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\count~38_combout\ & (!\Add1~5\)) # (!\count~38_combout\ & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!\count~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~38_combout\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X66_Y53_N4
\count~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~39_combout\ = (\buttons[6]~input_o\ & ((\Add1~6_combout\))) # (!\buttons[6]~input_o\ & (\count~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count~38_combout\,
	datab => \buttons[6]~input_o\,
	datad => \Add1~6_combout\,
	combout => \count~39_combout\);

-- Location: LCCOMB_X69_Y53_N6
\Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (\count~39_combout\ & (!\Add2~5\)) # (!\count~39_combout\ & ((\Add2~5\) # (GND)))
-- \Add2~7\ = CARRY((!\Add2~5\) # (!\count~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~39_combout\,
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X66_Y53_N2
\count~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~40_combout\ = (\buttons[5]~input_o\ & ((\Add2~6_combout\))) # (!\buttons[5]~input_o\ & (\count~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[5]~input_o\,
	datac => \count~39_combout\,
	datad => \Add2~6_combout\,
	combout => \count~40_combout\);

-- Location: LCCOMB_X69_Y49_N6
\Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (\count~40_combout\ & (!\Add3~5\)) # (!\count~40_combout\ & ((\Add3~5\) # (GND)))
-- \Add3~7\ = CARRY((!\Add3~5\) # (!\count~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~40_combout\,
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X66_Y53_N20
\count~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~41_combout\ = (\buttons[4]~input_o\ & ((\Add3~6_combout\))) # (!\buttons[4]~input_o\ & (\count~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count~40_combout\,
	datac => \buttons[4]~input_o\,
	datad => \Add3~6_combout\,
	combout => \count~41_combout\);

-- Location: LCCOMB_X72_Y53_N6
\Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~6_combout\ = (\count~41_combout\ & (!\Add4~5\)) # (!\count~41_combout\ & ((\Add4~5\) # (GND)))
-- \Add4~7\ = CARRY((!\Add4~5\) # (!\count~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~41_combout\,
	datad => VCC,
	cin => \Add4~5\,
	combout => \Add4~6_combout\,
	cout => \Add4~7\);

-- Location: LCCOMB_X66_Y53_N10
\count~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~42_combout\ = (\buttons[3]~input_o\ & (\Add4~6_combout\)) # (!\buttons[3]~input_o\ & ((\count~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[3]~input_o\,
	datac => \Add4~6_combout\,
	datad => \count~41_combout\,
	combout => \count~42_combout\);

-- Location: LCCOMB_X69_Y51_N6
\Add5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~6_combout\ = (\count~42_combout\ & (!\Add5~5\)) # (!\count~42_combout\ & ((\Add5~5\) # (GND)))
-- \Add5~7\ = CARRY((!\Add5~5\) # (!\count~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~42_combout\,
	datad => VCC,
	cin => \Add5~5\,
	combout => \Add5~6_combout\,
	cout => \Add5~7\);

-- Location: LCCOMB_X66_Y53_N16
\count~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~43_combout\ = (\buttons[2]~input_o\ & ((\Add5~6_combout\))) # (!\buttons[2]~input_o\ & (\count~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count~42_combout\,
	datac => \buttons[2]~input_o\,
	datad => \Add5~6_combout\,
	combout => \count~43_combout\);

-- Location: LCCOMB_X72_Y51_N6
\Add6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~6_combout\ = (\count~43_combout\ & (!\Add6~5\)) # (!\count~43_combout\ & ((\Add6~5\) # (GND)))
-- \Add6~7\ = CARRY((!\Add6~5\) # (!\count~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~43_combout\,
	datad => VCC,
	cin => \Add6~5\,
	combout => \Add6~6_combout\,
	cout => \Add6~7\);

-- Location: LCCOMB_X66_Y53_N18
\count~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~44_combout\ = (\buttons[1]~input_o\ & ((\Add6~6_combout\))) # (!\buttons[1]~input_o\ & (\count~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count~43_combout\,
	datac => \buttons[1]~input_o\,
	datad => \Add6~6_combout\,
	combout => \count~44_combout\);

-- Location: LCCOMB_X70_Y51_N6
\Add7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~8_combout\ = (\count~44_combout\ & (!\Add7~6\)) # (!\count~44_combout\ & ((\Add7~6\) # (GND)))
-- \Add7~9\ = CARRY((!\Add7~6\) # (!\count~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~44_combout\,
	datad => VCC,
	cin => \Add7~6\,
	combout => \Add7~8_combout\,
	cout => \Add7~9\);

-- Location: LCCOMB_X66_Y53_N24
\count[3]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[3]~45_combout\ = (\count[1]~20_combout\ & ((\count[17]~21_combout\ & ((\Add1~6_combout\))) # (!\count[17]~21_combout\ & (\Add0~6_combout\)))) # (!\count[1]~20_combout\ & (\count[17]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[1]~20_combout\,
	datab => \count[17]~21_combout\,
	datac => \Add0~6_combout\,
	datad => \Add1~6_combout\,
	combout => \count[3]~45_combout\);

-- Location: LCCOMB_X66_Y53_N26
\count[3]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[3]~46_combout\ = (\count[3]~45_combout\ & ((\Add3~6_combout\) # ((\count[1]~20_combout\)))) # (!\count[3]~45_combout\ & (((!\count[1]~20_combout\ & \Add2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~6_combout\,
	datab => \count[3]~45_combout\,
	datac => \count[1]~20_combout\,
	datad => \Add2~6_combout\,
	combout => \count[3]~46_combout\);

-- Location: LCCOMB_X65_Y53_N28
\count[3]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[3]~47_combout\ = (\count[1]~18_combout\ & ((\count[17]~19_combout\ & (\Add4~6_combout\)) # (!\count[17]~19_combout\ & ((\count[3]~46_combout\))))) # (!\count[1]~18_combout\ & (\count[17]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[1]~18_combout\,
	datab => \count[17]~19_combout\,
	datac => \Add4~6_combout\,
	datad => \count[3]~46_combout\,
	combout => \count[3]~47_combout\);

-- Location: LCCOMB_X65_Y53_N14
\count[3]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[3]~48_combout\ = (\count[1]~18_combout\ & (\count[3]~47_combout\)) # (!\count[1]~18_combout\ & ((\count[3]~47_combout\ & ((\Add6~6_combout\))) # (!\count[3]~47_combout\ & (\Add5~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[1]~18_combout\,
	datab => \count[3]~47_combout\,
	datac => \Add5~6_combout\,
	datad => \Add6~6_combout\,
	combout => \count[3]~48_combout\);

-- Location: LCCOMB_X66_Y53_N8
\Add7~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~10_combout\ = (\buttons[0]~input_o\ & (\Add7~8_combout\)) # (!\buttons[0]~input_o\ & ((\count[3]~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[0]~input_o\,
	datac => \Add7~8_combout\,
	datad => \count[3]~48_combout\,
	combout => \Add7~10_combout\);

-- Location: LCCOMB_X66_Y53_N14
\count[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- count(3) = (GLOBAL(\count[1]~361clkctrl_outclk\) & (\Add7~10_combout\)) # (!GLOBAL(\count[1]~361clkctrl_outclk\) & ((count(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~10_combout\,
	datac => count(3),
	datad => \count[1]~361clkctrl_outclk\,
	combout => count(3));

-- Location: LCCOMB_X67_Y49_N8
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (count(4) & (\Add0~7\ $ (GND))) # (!count(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((count(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X66_Y49_N2
\count~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~49_combout\ = (\buttons[7]~input_o\ & (\Add0~8_combout\)) # (!\buttons[7]~input_o\ & ((count(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[7]~input_o\,
	datac => \Add0~8_combout\,
	datad => count(4),
	combout => \count~49_combout\);

-- Location: LCCOMB_X67_Y53_N8
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (\count~49_combout\ & (\Add1~7\ $ (GND))) # (!\count~49_combout\ & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((\count~49_combout\ & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~49_combout\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X66_Y49_N8
\count~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~50_combout\ = (\buttons[6]~input_o\ & ((\Add1~8_combout\))) # (!\buttons[6]~input_o\ & (\count~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[6]~input_o\,
	datab => \count~49_combout\,
	datad => \Add1~8_combout\,
	combout => \count~50_combout\);

-- Location: LCCOMB_X69_Y53_N8
\Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (\count~50_combout\ & (\Add2~7\ $ (GND))) # (!\count~50_combout\ & (!\Add2~7\ & VCC))
-- \Add2~9\ = CARRY((\count~50_combout\ & !\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~50_combout\,
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X66_Y49_N14
\count~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~51_combout\ = (\buttons[5]~input_o\ & ((\Add2~8_combout\))) # (!\buttons[5]~input_o\ & (\count~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[5]~input_o\,
	datac => \count~50_combout\,
	datad => \Add2~8_combout\,
	combout => \count~51_combout\);

-- Location: LCCOMB_X69_Y49_N8
\Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = (\count~51_combout\ & (\Add3~7\ $ (GND))) # (!\count~51_combout\ & (!\Add3~7\ & VCC))
-- \Add3~9\ = CARRY((\count~51_combout\ & !\Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~51_combout\,
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCCOMB_X73_Y49_N16
\count~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~52_combout\ = (\buttons[4]~input_o\ & ((\Add3~8_combout\))) # (!\buttons[4]~input_o\ & (\count~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[4]~input_o\,
	datac => \count~51_combout\,
	datad => \Add3~8_combout\,
	combout => \count~52_combout\);

-- Location: LCCOMB_X72_Y53_N8
\Add4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~8_combout\ = (\count~52_combout\ & (\Add4~7\ $ (GND))) # (!\count~52_combout\ & (!\Add4~7\ & VCC))
-- \Add4~9\ = CARRY((\count~52_combout\ & !\Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~52_combout\,
	datad => VCC,
	cin => \Add4~7\,
	combout => \Add4~8_combout\,
	cout => \Add4~9\);

-- Location: LCCOMB_X73_Y49_N30
\count~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~53_combout\ = (\buttons[3]~input_o\ & (\Add4~8_combout\)) # (!\buttons[3]~input_o\ & ((\count~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[3]~input_o\,
	datac => \Add4~8_combout\,
	datad => \count~52_combout\,
	combout => \count~53_combout\);

-- Location: LCCOMB_X69_Y51_N8
\Add5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~8_combout\ = (\count~53_combout\ & (\Add5~7\ $ (GND))) # (!\count~53_combout\ & (!\Add5~7\ & VCC))
-- \Add5~9\ = CARRY((\count~53_combout\ & !\Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~53_combout\,
	datad => VCC,
	cin => \Add5~7\,
	combout => \Add5~8_combout\,
	cout => \Add5~9\);

-- Location: LCCOMB_X66_Y49_N4
\count[4]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[4]~56_combout\ = (\count[17]~21_combout\ & (((!\count[1]~20_combout\)))) # (!\count[17]~21_combout\ & ((\count[1]~20_combout\ & (\Add0~8_combout\)) # (!\count[1]~20_combout\ & ((\Add2~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[17]~21_combout\,
	datab => \Add0~8_combout\,
	datac => \count[1]~20_combout\,
	datad => \Add2~8_combout\,
	combout => \count[4]~56_combout\);

-- Location: LCCOMB_X66_Y49_N22
\count[4]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[4]~57_combout\ = (\count[17]~21_combout\ & ((\count[4]~56_combout\ & (\Add3~8_combout\)) # (!\count[4]~56_combout\ & ((\Add1~8_combout\))))) # (!\count[17]~21_combout\ & (((\count[4]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[17]~21_combout\,
	datab => \Add3~8_combout\,
	datac => \count[4]~56_combout\,
	datad => \Add1~8_combout\,
	combout => \count[4]~57_combout\);

-- Location: LCCOMB_X73_Y49_N22
\count[4]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[4]~58_combout\ = (\count[1]~18_combout\ & (((!\count[17]~19_combout\ & \count[4]~57_combout\)))) # (!\count[1]~18_combout\ & ((\Add5~8_combout\) # ((\count[17]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~8_combout\,
	datab => \count[1]~18_combout\,
	datac => \count[17]~19_combout\,
	datad => \count[4]~57_combout\,
	combout => \count[4]~58_combout\);

-- Location: LCCOMB_X73_Y49_N12
\count~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~54_combout\ = (\buttons[2]~input_o\ & ((\Add5~8_combout\))) # (!\buttons[2]~input_o\ & (\count~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[2]~input_o\,
	datac => \count~53_combout\,
	datad => \Add5~8_combout\,
	combout => \count~54_combout\);

-- Location: LCCOMB_X72_Y51_N8
\Add6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~8_combout\ = (\count~54_combout\ & (\Add6~7\ $ (GND))) # (!\count~54_combout\ & (!\Add6~7\ & VCC))
-- \Add6~9\ = CARRY((\count~54_combout\ & !\Add6~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~54_combout\,
	datad => VCC,
	cin => \Add6~7\,
	combout => \Add6~8_combout\,
	cout => \Add6~9\);

-- Location: LCCOMB_X73_Y49_N20
\count[4]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[4]~59_combout\ = (\count[17]~19_combout\ & ((\count[4]~58_combout\ & ((\Add6~8_combout\))) # (!\count[4]~58_combout\ & (\Add4~8_combout\)))) # (!\count[17]~19_combout\ & (((\count[4]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[17]~19_combout\,
	datab => \Add4~8_combout\,
	datac => \count[4]~58_combout\,
	datad => \Add6~8_combout\,
	combout => \count[4]~59_combout\);

-- Location: LCCOMB_X74_Y51_N4
\count~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~55_combout\ = (\buttons[1]~input_o\ & ((\Add6~8_combout\))) # (!\buttons[1]~input_o\ & (\count~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[1]~input_o\,
	datac => \count~54_combout\,
	datad => \Add6~8_combout\,
	combout => \count~55_combout\);

-- Location: LCCOMB_X70_Y51_N8
\Add7~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~11_combout\ = (\count~55_combout\ & (\Add7~9\ $ (GND))) # (!\count~55_combout\ & (!\Add7~9\ & VCC))
-- \Add7~12\ = CARRY((\count~55_combout\ & !\Add7~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~55_combout\,
	datad => VCC,
	cin => \Add7~9\,
	combout => \Add7~11_combout\,
	cout => \Add7~12\);

-- Location: LCCOMB_X66_Y49_N24
\Add7~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~13_combout\ = (\buttons[0]~input_o\ & ((\Add7~11_combout\))) # (!\buttons[0]~input_o\ & (\count[4]~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[4]~59_combout\,
	datac => \Add7~11_combout\,
	datad => \buttons[0]~input_o\,
	combout => \Add7~13_combout\);

-- Location: LCCOMB_X66_Y49_N16
\count[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- count(4) = (GLOBAL(\count[1]~361clkctrl_outclk\) & (\Add7~13_combout\)) # (!GLOBAL(\count[1]~361clkctrl_outclk\) & ((count(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~13_combout\,
	datab => count(4),
	datad => \count[1]~361clkctrl_outclk\,
	combout => count(4));

-- Location: LCCOMB_X67_Y49_N10
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (count(5) & (!\Add0~9\)) # (!count(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X70_Y49_N4
\count~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~60_combout\ = (\buttons[7]~input_o\ & ((\Add0~10_combout\))) # (!\buttons[7]~input_o\ & (count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(5),
	datac => \buttons[7]~input_o\,
	datad => \Add0~10_combout\,
	combout => \count~60_combout\);

-- Location: LCCOMB_X67_Y53_N10
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\count~60_combout\ & (!\Add1~9\)) # (!\count~60_combout\ & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!\count~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~60_combout\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X70_Y49_N2
\count~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~61_combout\ = (\buttons[6]~input_o\ & ((\Add1~10_combout\))) # (!\buttons[6]~input_o\ & (\count~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[6]~input_o\,
	datac => \count~60_combout\,
	datad => \Add1~10_combout\,
	combout => \count~61_combout\);

-- Location: LCCOMB_X69_Y53_N10
\Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (\count~61_combout\ & (!\Add2~9\)) # (!\count~61_combout\ & ((\Add2~9\) # (GND)))
-- \Add2~11\ = CARRY((!\Add2~9\) # (!\count~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~61_combout\,
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X70_Y49_N8
\count~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~62_combout\ = (\buttons[5]~input_o\ & (\Add2~10_combout\)) # (!\buttons[5]~input_o\ & ((\count~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[5]~input_o\,
	datac => \Add2~10_combout\,
	datad => \count~61_combout\,
	combout => \count~62_combout\);

-- Location: LCCOMB_X69_Y49_N10
\Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (\count~62_combout\ & (!\Add3~9\)) # (!\count~62_combout\ & ((\Add3~9\) # (GND)))
-- \Add3~11\ = CARRY((!\Add3~9\) # (!\count~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~62_combout\,
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: LCCOMB_X70_Y49_N22
\count~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~63_combout\ = (\buttons[4]~input_o\ & ((\Add3~10_combout\))) # (!\buttons[4]~input_o\ & (\count~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[4]~input_o\,
	datac => \count~62_combout\,
	datad => \Add3~10_combout\,
	combout => \count~63_combout\);

-- Location: LCCOMB_X72_Y53_N10
\Add4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~10_combout\ = (\count~63_combout\ & (!\Add4~9\)) # (!\count~63_combout\ & ((\Add4~9\) # (GND)))
-- \Add4~11\ = CARRY((!\Add4~9\) # (!\count~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~63_combout\,
	datad => VCC,
	cin => \Add4~9\,
	combout => \Add4~10_combout\,
	cout => \Add4~11\);

-- Location: LCCOMB_X70_Y49_N6
\count[5]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[5]~67_combout\ = (\count[17]~21_combout\ & ((\Add1~10_combout\) # ((!\count[1]~20_combout\)))) # (!\count[17]~21_combout\ & (((\count[1]~20_combout\ & \Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~10_combout\,
	datab => \count[17]~21_combout\,
	datac => \count[1]~20_combout\,
	datad => \Add0~10_combout\,
	combout => \count[5]~67_combout\);

-- Location: LCCOMB_X70_Y49_N0
\count[5]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[5]~68_combout\ = (\count[1]~20_combout\ & (((\count[5]~67_combout\)))) # (!\count[1]~20_combout\ & ((\count[5]~67_combout\ & (\Add3~10_combout\)) # (!\count[5]~67_combout\ & ((\Add2~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~10_combout\,
	datab => \count[1]~20_combout\,
	datac => \Add2~10_combout\,
	datad => \count[5]~67_combout\,
	combout => \count[5]~68_combout\);

-- Location: LCCOMB_X70_Y49_N26
\count[5]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[5]~69_combout\ = (\count[17]~19_combout\ & ((\Add4~10_combout\) # ((!\count[1]~18_combout\)))) # (!\count[17]~19_combout\ & (((\count[1]~18_combout\ & \count[5]~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~10_combout\,
	datab => \count[17]~19_combout\,
	datac => \count[1]~18_combout\,
	datad => \count[5]~68_combout\,
	combout => \count[5]~69_combout\);

-- Location: LCCOMB_X70_Y49_N16
\count~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~64_combout\ = (\buttons[3]~input_o\ & ((\Add4~10_combout\))) # (!\buttons[3]~input_o\ & (\count~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[3]~input_o\,
	datac => \count~63_combout\,
	datad => \Add4~10_combout\,
	combout => \count~64_combout\);

-- Location: LCCOMB_X69_Y51_N10
\Add5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~10_combout\ = (\count~64_combout\ & (!\Add5~9\)) # (!\count~64_combout\ & ((\Add5~9\) # (GND)))
-- \Add5~11\ = CARRY((!\Add5~9\) # (!\count~64_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~64_combout\,
	datad => VCC,
	cin => \Add5~9\,
	combout => \Add5~10_combout\,
	cout => \Add5~11\);

-- Location: LCCOMB_X70_Y49_N14
\count~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~65_combout\ = (\buttons[2]~input_o\ & ((\Add5~10_combout\))) # (!\buttons[2]~input_o\ & (\count~64_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[2]~input_o\,
	datab => \count~64_combout\,
	datad => \Add5~10_combout\,
	combout => \count~65_combout\);

-- Location: LCCOMB_X72_Y51_N10
\Add6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~10_combout\ = (\count~65_combout\ & (!\Add6~9\)) # (!\count~65_combout\ & ((\Add6~9\) # (GND)))
-- \Add6~11\ = CARRY((!\Add6~9\) # (!\count~65_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~65_combout\,
	datad => VCC,
	cin => \Add6~9\,
	combout => \Add6~10_combout\,
	cout => \Add6~11\);

-- Location: LCCOMB_X70_Y49_N24
\count[5]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[5]~70_combout\ = (\count[5]~69_combout\ & (((\count[1]~18_combout\) # (\Add6~10_combout\)))) # (!\count[5]~69_combout\ & (\Add5~10_combout\ & (!\count[1]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[5]~69_combout\,
	datab => \Add5~10_combout\,
	datac => \count[1]~18_combout\,
	datad => \Add6~10_combout\,
	combout => \count[5]~70_combout\);

-- Location: LCCOMB_X70_Y49_N12
\count~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~66_combout\ = (\buttons[1]~input_o\ & ((\Add6~10_combout\))) # (!\buttons[1]~input_o\ & (\count~65_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[1]~input_o\,
	datac => \count~65_combout\,
	datad => \Add6~10_combout\,
	combout => \count~66_combout\);

-- Location: LCCOMB_X70_Y51_N10
\Add7~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~14_combout\ = (\count~66_combout\ & (!\Add7~12\)) # (!\count~66_combout\ & ((\Add7~12\) # (GND)))
-- \Add7~15\ = CARRY((!\Add7~12\) # (!\count~66_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~66_combout\,
	datad => VCC,
	cin => \Add7~12\,
	combout => \Add7~14_combout\,
	cout => \Add7~15\);

-- Location: LCCOMB_X70_Y49_N10
\Add7~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~16_combout\ = (\buttons[0]~input_o\ & ((\Add7~14_combout\))) # (!\buttons[0]~input_o\ & (\count[5]~70_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count[5]~70_combout\,
	datac => \buttons[0]~input_o\,
	datad => \Add7~14_combout\,
	combout => \Add7~16_combout\);

-- Location: LCCOMB_X70_Y49_N18
\count[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- count(5) = (GLOBAL(\count[1]~361clkctrl_outclk\) & ((\Add7~16_combout\))) # (!GLOBAL(\count[1]~361clkctrl_outclk\) & (count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(5),
	datac => \Add7~16_combout\,
	datad => \count[1]~361clkctrl_outclk\,
	combout => count(5));

-- Location: LCCOMB_X67_Y49_N12
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (count(6) & (\Add0~11\ $ (GND))) # (!count(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((count(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X68_Y49_N8
\count~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~71_combout\ = (\buttons[7]~input_o\ & ((\Add0~12_combout\))) # (!\buttons[7]~input_o\ & (count(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[7]~input_o\,
	datab => count(6),
	datad => \Add0~12_combout\,
	combout => \count~71_combout\);

-- Location: LCCOMB_X67_Y53_N12
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (\count~71_combout\ & (\Add1~11\ $ (GND))) # (!\count~71_combout\ & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((\count~71_combout\ & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~71_combout\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X68_Y49_N2
\count~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~72_combout\ = (\buttons[6]~input_o\ & (\Add1~12_combout\)) # (!\buttons[6]~input_o\ & ((\count~71_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[6]~input_o\,
	datac => \Add1~12_combout\,
	datad => \count~71_combout\,
	combout => \count~72_combout\);

-- Location: LCCOMB_X69_Y53_N12
\Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (\count~72_combout\ & (\Add2~11\ $ (GND))) # (!\count~72_combout\ & (!\Add2~11\ & VCC))
-- \Add2~13\ = CARRY((\count~72_combout\ & !\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~72_combout\,
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X68_Y49_N16
\count~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~73_combout\ = (\buttons[5]~input_o\ & ((\Add2~12_combout\))) # (!\buttons[5]~input_o\ & (\count~72_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[5]~input_o\,
	datac => \count~72_combout\,
	datad => \Add2~12_combout\,
	combout => \count~73_combout\);

-- Location: LCCOMB_X69_Y49_N12
\Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = (\count~73_combout\ & (\Add3~11\ $ (GND))) # (!\count~73_combout\ & (!\Add3~11\ & VCC))
-- \Add3~13\ = CARRY((\count~73_combout\ & !\Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~73_combout\,
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: LCCOMB_X68_Y49_N14
\count~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~74_combout\ = (\buttons[4]~input_o\ & (\Add3~12_combout\)) # (!\buttons[4]~input_o\ & ((\count~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[4]~input_o\,
	datac => \Add3~12_combout\,
	datad => \count~73_combout\,
	combout => \count~74_combout\);

-- Location: LCCOMB_X72_Y53_N12
\Add4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~12_combout\ = (\count~74_combout\ & (\Add4~11\ $ (GND))) # (!\count~74_combout\ & (!\Add4~11\ & VCC))
-- \Add4~13\ = CARRY((\count~74_combout\ & !\Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~74_combout\,
	datad => VCC,
	cin => \Add4~11\,
	combout => \Add4~12_combout\,
	cout => \Add4~13\);

-- Location: LCCOMB_X68_Y49_N28
\count~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~75_combout\ = (\buttons[3]~input_o\ & ((\Add4~12_combout\))) # (!\buttons[3]~input_o\ & (\count~74_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[3]~input_o\,
	datac => \count~74_combout\,
	datad => \Add4~12_combout\,
	combout => \count~75_combout\);

-- Location: LCCOMB_X69_Y51_N12
\Add5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~12_combout\ = (\count~75_combout\ & (\Add5~11\ $ (GND))) # (!\count~75_combout\ & (!\Add5~11\ & VCC))
-- \Add5~13\ = CARRY((\count~75_combout\ & !\Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~75_combout\,
	datad => VCC,
	cin => \Add5~11\,
	combout => \Add5~12_combout\,
	cout => \Add5~13\);

-- Location: LCCOMB_X68_Y49_N30
\count~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~76_combout\ = (\buttons[2]~input_o\ & ((\Add5~12_combout\))) # (!\buttons[2]~input_o\ & (\count~75_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count~75_combout\,
	datac => \buttons[2]~input_o\,
	datad => \Add5~12_combout\,
	combout => \count~76_combout\);

-- Location: LCCOMB_X72_Y51_N12
\Add6~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~12_combout\ = (\count~76_combout\ & (\Add6~11\ $ (GND))) # (!\count~76_combout\ & (!\Add6~11\ & VCC))
-- \Add6~13\ = CARRY((\count~76_combout\ & !\Add6~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~76_combout\,
	datad => VCC,
	cin => \Add6~11\,
	combout => \Add6~12_combout\,
	cout => \Add6~13\);

-- Location: LCCOMB_X68_Y49_N24
\count~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~77_combout\ = (\buttons[1]~input_o\ & ((\Add6~12_combout\))) # (!\buttons[1]~input_o\ & (\count~76_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[1]~input_o\,
	datac => \count~76_combout\,
	datad => \Add6~12_combout\,
	combout => \count~77_combout\);

-- Location: LCCOMB_X70_Y51_N12
\Add7~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~17_combout\ = (\count~77_combout\ & (\Add7~15\ $ (GND))) # (!\count~77_combout\ & (!\Add7~15\ & VCC))
-- \Add7~18\ = CARRY((\count~77_combout\ & !\Add7~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~77_combout\,
	datad => VCC,
	cin => \Add7~15\,
	combout => \Add7~17_combout\,
	cout => \Add7~18\);

-- Location: LCCOMB_X70_Y49_N28
\count[6]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[6]~78_combout\ = (\count[1]~20_combout\ & (\Add0~12_combout\ & ((!\count[17]~21_combout\)))) # (!\count[1]~20_combout\ & (((\Add2~12_combout\) # (\count[17]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[1]~20_combout\,
	datab => \Add0~12_combout\,
	datac => \Add2~12_combout\,
	datad => \count[17]~21_combout\,
	combout => \count[6]~78_combout\);

-- Location: LCCOMB_X68_Y49_N22
\count[6]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[6]~79_combout\ = (\count[17]~21_combout\ & ((\count[6]~78_combout\ & ((\Add3~12_combout\))) # (!\count[6]~78_combout\ & (\Add1~12_combout\)))) # (!\count[17]~21_combout\ & (((\count[6]~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[17]~21_combout\,
	datab => \Add1~12_combout\,
	datac => \Add3~12_combout\,
	datad => \count[6]~78_combout\,
	combout => \count[6]~79_combout\);

-- Location: LCCOMB_X68_Y49_N4
\count[6]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[6]~80_combout\ = (\count[1]~18_combout\ & (!\count[17]~19_combout\ & (\count[6]~79_combout\))) # (!\count[1]~18_combout\ & ((\count[17]~19_combout\) # ((\Add5~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[1]~18_combout\,
	datab => \count[17]~19_combout\,
	datac => \count[6]~79_combout\,
	datad => \Add5~12_combout\,
	combout => \count[6]~80_combout\);

-- Location: LCCOMB_X68_Y49_N6
\count[6]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[6]~81_combout\ = (\count[17]~19_combout\ & ((\count[6]~80_combout\ & ((\Add6~12_combout\))) # (!\count[6]~80_combout\ & (\Add4~12_combout\)))) # (!\count[17]~19_combout\ & (((\count[6]~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~12_combout\,
	datab => \count[17]~19_combout\,
	datac => \count[6]~80_combout\,
	datad => \Add6~12_combout\,
	combout => \count[6]~81_combout\);

-- Location: LCCOMB_X68_Y49_N0
\Add7~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~19_combout\ = (\buttons[0]~input_o\ & (\Add7~17_combout\)) # (!\buttons[0]~input_o\ & ((\count[6]~81_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[0]~input_o\,
	datac => \Add7~17_combout\,
	datad => \count[6]~81_combout\,
	combout => \Add7~19_combout\);

-- Location: LCCOMB_X68_Y49_N18
\count[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- count(6) = (GLOBAL(\count[1]~361clkctrl_outclk\) & (\Add7~19_combout\)) # (!GLOBAL(\count[1]~361clkctrl_outclk\) & ((count(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add7~19_combout\,
	datac => count(6),
	datad => \count[1]~361clkctrl_outclk\,
	combout => count(6));

-- Location: LCCOMB_X67_Y49_N14
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (count(7) & (!\Add0~13\)) # (!count(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X68_Y49_N10
\count~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~82_combout\ = (\buttons[7]~input_o\ & ((\Add0~14_combout\))) # (!\buttons[7]~input_o\ & (count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[7]~input_o\,
	datac => count(7),
	datad => \Add0~14_combout\,
	combout => \count~82_combout\);

-- Location: LCCOMB_X67_Y53_N14
\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (\count~82_combout\ & (!\Add1~13\)) # (!\count~82_combout\ & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!\count~82_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~82_combout\,
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X68_Y49_N12
\count~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~83_combout\ = (\buttons[6]~input_o\ & ((\Add1~14_combout\))) # (!\buttons[6]~input_o\ & (\count~82_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count~82_combout\,
	datab => \buttons[6]~input_o\,
	datad => \Add1~14_combout\,
	combout => \count~83_combout\);

-- Location: LCCOMB_X69_Y53_N14
\Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (\count~83_combout\ & (!\Add2~13\)) # (!\count~83_combout\ & ((\Add2~13\) # (GND)))
-- \Add2~15\ = CARRY((!\Add2~13\) # (!\count~83_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~83_combout\,
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: LCCOMB_X68_Y49_N26
\count~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~84_combout\ = (\buttons[5]~input_o\ & (\Add2~14_combout\)) # (!\buttons[5]~input_o\ & ((\count~83_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[5]~input_o\,
	datac => \Add2~14_combout\,
	datad => \count~83_combout\,
	combout => \count~84_combout\);

-- Location: LCCOMB_X69_Y49_N14
\Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = (\count~84_combout\ & (!\Add3~13\)) # (!\count~84_combout\ & ((\Add3~13\) # (GND)))
-- \Add3~15\ = CARRY((!\Add3~13\) # (!\count~84_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~84_combout\,
	datad => VCC,
	cin => \Add3~13\,
	combout => \Add3~14_combout\,
	cout => \Add3~15\);

-- Location: LCCOMB_X68_Y49_N20
\count~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~85_combout\ = (\buttons[4]~input_o\ & ((\Add3~14_combout\))) # (!\buttons[4]~input_o\ & (\count~84_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[4]~input_o\,
	datac => \count~84_combout\,
	datad => \Add3~14_combout\,
	combout => \count~85_combout\);

-- Location: LCCOMB_X72_Y53_N14
\Add4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~14_combout\ = (\count~85_combout\ & (!\Add4~13\)) # (!\count~85_combout\ & ((\Add4~13\) # (GND)))
-- \Add4~15\ = CARRY((!\Add4~13\) # (!\count~85_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~85_combout\,
	datad => VCC,
	cin => \Add4~13\,
	combout => \Add4~14_combout\,
	cout => \Add4~15\);

-- Location: LCCOMB_X72_Y49_N26
\count~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~86_combout\ = (\buttons[3]~input_o\ & ((\Add4~14_combout\))) # (!\buttons[3]~input_o\ & (\count~85_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[3]~input_o\,
	datac => \count~85_combout\,
	datad => \Add4~14_combout\,
	combout => \count~86_combout\);

-- Location: LCCOMB_X69_Y51_N14
\Add5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~14_combout\ = (\count~86_combout\ & (!\Add5~13\)) # (!\count~86_combout\ & ((\Add5~13\) # (GND)))
-- \Add5~15\ = CARRY((!\Add5~13\) # (!\count~86_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~86_combout\,
	datad => VCC,
	cin => \Add5~13\,
	combout => \Add5~14_combout\,
	cout => \Add5~15\);

-- Location: LCCOMB_X72_Y49_N4
\count~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~87_combout\ = (\buttons[2]~input_o\ & ((\Add5~14_combout\))) # (!\buttons[2]~input_o\ & (\count~86_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[2]~input_o\,
	datac => \count~86_combout\,
	datad => \Add5~14_combout\,
	combout => \count~87_combout\);

-- Location: LCCOMB_X72_Y51_N14
\Add6~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~14_combout\ = (\count~87_combout\ & (!\Add6~13\)) # (!\count~87_combout\ & ((\Add6~13\) # (GND)))
-- \Add6~15\ = CARRY((!\Add6~13\) # (!\count~87_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~87_combout\,
	datad => VCC,
	cin => \Add6~13\,
	combout => \Add6~14_combout\,
	cout => \Add6~15\);

-- Location: LCCOMB_X70_Y49_N30
\count[7]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[7]~89_combout\ = (\count[17]~21_combout\ & (((\Add1~14_combout\) # (!\count[1]~20_combout\)))) # (!\count[17]~21_combout\ & (\Add0~14_combout\ & ((\count[1]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datab => \count[17]~21_combout\,
	datac => \Add1~14_combout\,
	datad => \count[1]~20_combout\,
	combout => \count[7]~89_combout\);

-- Location: LCCOMB_X70_Y49_N20
\count[7]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[7]~90_combout\ = (\count[7]~89_combout\ & ((\Add3~14_combout\) # ((\count[1]~20_combout\)))) # (!\count[7]~89_combout\ & (((\Add2~14_combout\ & !\count[1]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~14_combout\,
	datab => \count[7]~89_combout\,
	datac => \Add2~14_combout\,
	datad => \count[1]~20_combout\,
	combout => \count[7]~90_combout\);

-- Location: LCCOMB_X72_Y49_N6
\count[7]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[7]~91_combout\ = (\count[17]~19_combout\ & ((\Add4~14_combout\) # ((!\count[1]~18_combout\)))) # (!\count[17]~19_combout\ & (((\count[1]~18_combout\ & \count[7]~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~14_combout\,
	datab => \count[17]~19_combout\,
	datac => \count[1]~18_combout\,
	datad => \count[7]~90_combout\,
	combout => \count[7]~91_combout\);

-- Location: LCCOMB_X72_Y49_N12
\count[7]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[7]~92_combout\ = (\count[1]~18_combout\ & (((\count[7]~91_combout\)))) # (!\count[1]~18_combout\ & ((\count[7]~91_combout\ & ((\Add6~14_combout\))) # (!\count[7]~91_combout\ & (\Add5~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[1]~18_combout\,
	datab => \Add5~14_combout\,
	datac => \Add6~14_combout\,
	datad => \count[7]~91_combout\,
	combout => \count[7]~92_combout\);

-- Location: LCCOMB_X73_Y51_N10
\count~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~88_combout\ = (\buttons[1]~input_o\ & ((\Add6~14_combout\))) # (!\buttons[1]~input_o\ & (\count~87_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[1]~input_o\,
	datac => \count~87_combout\,
	datad => \Add6~14_combout\,
	combout => \count~88_combout\);

-- Location: LCCOMB_X70_Y51_N14
\Add7~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~20_combout\ = (\count~88_combout\ & (!\Add7~18\)) # (!\count~88_combout\ & ((\Add7~18\) # (GND)))
-- \Add7~21\ = CARRY((!\Add7~18\) # (!\count~88_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~88_combout\,
	datad => VCC,
	cin => \Add7~18\,
	combout => \Add7~20_combout\,
	cout => \Add7~21\);

-- Location: LCCOMB_X72_Y49_N18
\Add7~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~22_combout\ = (\buttons[0]~input_o\ & ((\Add7~20_combout\))) # (!\buttons[0]~input_o\ & (\count[7]~92_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[7]~92_combout\,
	datac => \buttons[0]~input_o\,
	datad => \Add7~20_combout\,
	combout => \Add7~22_combout\);

-- Location: LCCOMB_X72_Y49_N22
\count[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- count(7) = (GLOBAL(\count[1]~361clkctrl_outclk\) & ((\Add7~22_combout\))) # (!GLOBAL(\count[1]~361clkctrl_outclk\) & (count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(7),
	datac => \Add7~22_combout\,
	datad => \count[1]~361clkctrl_outclk\,
	combout => count(7));

-- Location: LCCOMB_X67_Y49_N16
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (count(8) & (\Add0~15\ $ (GND))) # (!count(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((count(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X66_Y51_N16
\count~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~93_combout\ = (\buttons[7]~input_o\ & ((\Add0~16_combout\))) # (!\buttons[7]~input_o\ & (count(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(8),
	datac => \buttons[7]~input_o\,
	datad => \Add0~16_combout\,
	combout => \count~93_combout\);

-- Location: LCCOMB_X67_Y53_N16
\Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (\count~93_combout\ & (\Add1~15\ $ (GND))) # (!\count~93_combout\ & (!\Add1~15\ & VCC))
-- \Add1~17\ = CARRY((\count~93_combout\ & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~93_combout\,
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X66_Y51_N26
\count~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~94_combout\ = (\buttons[6]~input_o\ & ((\Add1~16_combout\))) # (!\buttons[6]~input_o\ & (\count~93_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count~93_combout\,
	datac => \buttons[6]~input_o\,
	datad => \Add1~16_combout\,
	combout => \count~94_combout\);

-- Location: LCCOMB_X69_Y53_N16
\Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = (\count~94_combout\ & (\Add2~15\ $ (GND))) # (!\count~94_combout\ & (!\Add2~15\ & VCC))
-- \Add2~17\ = CARRY((\count~94_combout\ & !\Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~94_combout\,
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: LCCOMB_X66_Y51_N24
\count~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~95_combout\ = (\buttons[5]~input_o\ & ((\Add2~16_combout\))) # (!\buttons[5]~input_o\ & (\count~94_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[5]~input_o\,
	datac => \count~94_combout\,
	datad => \Add2~16_combout\,
	combout => \count~95_combout\);

-- Location: LCCOMB_X69_Y49_N16
\Add3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~16_combout\ = (\count~95_combout\ & (\Add3~15\ $ (GND))) # (!\count~95_combout\ & (!\Add3~15\ & VCC))
-- \Add3~17\ = CARRY((\count~95_combout\ & !\Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~95_combout\,
	datad => VCC,
	cin => \Add3~15\,
	combout => \Add3~16_combout\,
	cout => \Add3~17\);

-- Location: LCCOMB_X66_Y51_N2
\count~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~96_combout\ = (\buttons[4]~input_o\ & ((\Add3~16_combout\))) # (!\buttons[4]~input_o\ & (\count~95_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count~95_combout\,
	datac => \buttons[4]~input_o\,
	datad => \Add3~16_combout\,
	combout => \count~96_combout\);

-- Location: LCCOMB_X72_Y53_N16
\Add4~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~16_combout\ = (\count~96_combout\ & (\Add4~15\ $ (GND))) # (!\count~96_combout\ & (!\Add4~15\ & VCC))
-- \Add4~17\ = CARRY((\count~96_combout\ & !\Add4~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~96_combout\,
	datad => VCC,
	cin => \Add4~15\,
	combout => \Add4~16_combout\,
	cout => \Add4~17\);

-- Location: LCCOMB_X66_Y51_N20
\count~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~97_combout\ = (\buttons[3]~input_o\ & ((\Add4~16_combout\))) # (!\buttons[3]~input_o\ & (\count~96_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count~96_combout\,
	datac => \buttons[3]~input_o\,
	datad => \Add4~16_combout\,
	combout => \count~97_combout\);

-- Location: LCCOMB_X69_Y51_N16
\Add5~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~16_combout\ = (\count~97_combout\ & (\Add5~15\ $ (GND))) # (!\count~97_combout\ & (!\Add5~15\ & VCC))
-- \Add5~17\ = CARRY((\count~97_combout\ & !\Add5~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~97_combout\,
	datad => VCC,
	cin => \Add5~15\,
	combout => \Add5~16_combout\,
	cout => \Add5~17\);

-- Location: LCCOMB_X66_Y51_N22
\count~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~98_combout\ = (\buttons[2]~input_o\ & ((\Add5~16_combout\))) # (!\buttons[2]~input_o\ & (\count~97_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count~97_combout\,
	datac => \buttons[2]~input_o\,
	datad => \Add5~16_combout\,
	combout => \count~98_combout\);

-- Location: LCCOMB_X72_Y51_N16
\Add6~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~16_combout\ = (\count~98_combout\ & (\Add6~15\ $ (GND))) # (!\count~98_combout\ & (!\Add6~15\ & VCC))
-- \Add6~17\ = CARRY((\count~98_combout\ & !\Add6~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~98_combout\,
	datad => VCC,
	cin => \Add6~15\,
	combout => \Add6~16_combout\,
	cout => \Add6~17\);

-- Location: LCCOMB_X66_Y51_N8
\count~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~99_combout\ = (\buttons[1]~input_o\ & ((\Add6~16_combout\))) # (!\buttons[1]~input_o\ & (\count~98_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[1]~input_o\,
	datac => \count~98_combout\,
	datad => \Add6~16_combout\,
	combout => \count~99_combout\);

-- Location: LCCOMB_X70_Y51_N16
\Add7~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~23_combout\ = (\count~99_combout\ & (\Add7~21\ $ (GND))) # (!\count~99_combout\ & (!\Add7~21\ & VCC))
-- \Add7~24\ = CARRY((\count~99_combout\ & !\Add7~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~99_combout\,
	datad => VCC,
	cin => \Add7~21\,
	combout => \Add7~23_combout\,
	cout => \Add7~24\);

-- Location: LCCOMB_X66_Y51_N14
\count[8]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[8]~100_combout\ = (\count[1]~20_combout\ & (\Add0~16_combout\ & (!\count[17]~21_combout\))) # (!\count[1]~20_combout\ & (((\count[17]~21_combout\) # (\Add2~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \count[1]~20_combout\,
	datac => \count[17]~21_combout\,
	datad => \Add2~16_combout\,
	combout => \count[8]~100_combout\);

-- Location: LCCOMB_X66_Y51_N28
\count[8]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[8]~101_combout\ = (\count[17]~21_combout\ & ((\count[8]~100_combout\ & ((\Add3~16_combout\))) # (!\count[8]~100_combout\ & (\Add1~16_combout\)))) # (!\count[17]~21_combout\ & (((\count[8]~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~16_combout\,
	datab => \count[17]~21_combout\,
	datac => \count[8]~100_combout\,
	datad => \Add3~16_combout\,
	combout => \count[8]~101_combout\);

-- Location: LCCOMB_X66_Y51_N6
\count[8]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[8]~102_combout\ = (\count[17]~19_combout\ & (((!\count[1]~18_combout\)))) # (!\count[17]~19_combout\ & ((\count[1]~18_combout\ & ((\count[8]~101_combout\))) # (!\count[1]~18_combout\ & (\Add5~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~16_combout\,
	datab => \count[17]~19_combout\,
	datac => \count[1]~18_combout\,
	datad => \count[8]~101_combout\,
	combout => \count[8]~102_combout\);

-- Location: LCCOMB_X66_Y51_N0
\count[8]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[8]~103_combout\ = (\count[8]~102_combout\ & (((\Add6~16_combout\) # (!\count[17]~19_combout\)))) # (!\count[8]~102_combout\ & (\Add4~16_combout\ & (\count[17]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[8]~102_combout\,
	datab => \Add4~16_combout\,
	datac => \count[17]~19_combout\,
	datad => \Add6~16_combout\,
	combout => \count[8]~103_combout\);

-- Location: LCCOMB_X66_Y51_N30
\Add7~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~25_combout\ = (\buttons[0]~input_o\ & (\Add7~23_combout\)) # (!\buttons[0]~input_o\ & ((\count[8]~103_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[0]~input_o\,
	datac => \Add7~23_combout\,
	datad => \count[8]~103_combout\,
	combout => \Add7~25_combout\);

-- Location: LCCOMB_X66_Y51_N12
\count[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- count(8) = (GLOBAL(\count[1]~361clkctrl_outclk\) & ((\Add7~25_combout\))) # (!GLOBAL(\count[1]~361clkctrl_outclk\) & (count(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(8),
	datac => \Add7~25_combout\,
	datad => \count[1]~361clkctrl_outclk\,
	combout => count(8));

-- Location: LCCOMB_X67_Y49_N18
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (count(9) & (!\Add0~17\)) # (!count(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X66_Y49_N26
\count~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~104_combout\ = (\buttons[7]~input_o\ & ((\Add0~18_combout\))) # (!\buttons[7]~input_o\ & (count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[7]~input_o\,
	datac => count(9),
	datad => \Add0~18_combout\,
	combout => \count~104_combout\);

-- Location: LCCOMB_X67_Y53_N18
\Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (\count~104_combout\ & (!\Add1~17\)) # (!\count~104_combout\ & ((\Add1~17\) # (GND)))
-- \Add1~19\ = CARRY((!\Add1~17\) # (!\count~104_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~104_combout\,
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X66_Y49_N28
\count~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~105_combout\ = (\buttons[6]~input_o\ & ((\Add1~18_combout\))) # (!\buttons[6]~input_o\ & (\count~104_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[6]~input_o\,
	datac => \count~104_combout\,
	datad => \Add1~18_combout\,
	combout => \count~105_combout\);

-- Location: LCCOMB_X69_Y53_N18
\Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = (\count~105_combout\ & (!\Add2~17\)) # (!\count~105_combout\ & ((\Add2~17\) # (GND)))
-- \Add2~19\ = CARRY((!\Add2~17\) # (!\count~105_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~105_combout\,
	datad => VCC,
	cin => \Add2~17\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

-- Location: LCCOMB_X66_Y49_N30
\count~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~106_combout\ = (\buttons[5]~input_o\ & (\Add2~18_combout\)) # (!\buttons[5]~input_o\ & ((\count~105_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[5]~input_o\,
	datac => \Add2~18_combout\,
	datad => \count~105_combout\,
	combout => \count~106_combout\);

-- Location: LCCOMB_X69_Y49_N18
\Add3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~18_combout\ = (\count~106_combout\ & (!\Add3~17\)) # (!\count~106_combout\ & ((\Add3~17\) # (GND)))
-- \Add3~19\ = CARRY((!\Add3~17\) # (!\count~106_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~106_combout\,
	datad => VCC,
	cin => \Add3~17\,
	combout => \Add3~18_combout\,
	cout => \Add3~19\);

-- Location: LCCOMB_X73_Y51_N0
\count~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~107_combout\ = (\buttons[4]~input_o\ & ((\Add3~18_combout\))) # (!\buttons[4]~input_o\ & (\count~106_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[4]~input_o\,
	datac => \count~106_combout\,
	datad => \Add3~18_combout\,
	combout => \count~107_combout\);

-- Location: LCCOMB_X72_Y53_N18
\Add4~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~18_combout\ = (\count~107_combout\ & (!\Add4~17\)) # (!\count~107_combout\ & ((\Add4~17\) # (GND)))
-- \Add4~19\ = CARRY((!\Add4~17\) # (!\count~107_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~107_combout\,
	datad => VCC,
	cin => \Add4~17\,
	combout => \Add4~18_combout\,
	cout => \Add4~19\);

-- Location: LCCOMB_X66_Y49_N0
\count[9]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[9]~111_combout\ = (\count[17]~21_combout\ & (((\Add1~18_combout\) # (!\count[1]~20_combout\)))) # (!\count[17]~21_combout\ & (\Add0~18_combout\ & (\count[1]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[17]~21_combout\,
	datab => \Add0~18_combout\,
	datac => \count[1]~20_combout\,
	datad => \Add1~18_combout\,
	combout => \count[9]~111_combout\);

-- Location: LCCOMB_X66_Y49_N18
\count[9]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[9]~112_combout\ = (\count[9]~111_combout\ & (((\count[1]~20_combout\) # (\Add3~18_combout\)))) # (!\count[9]~111_combout\ & (\Add2~18_combout\ & (!\count[1]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~18_combout\,
	datab => \count[9]~111_combout\,
	datac => \count[1]~20_combout\,
	datad => \Add3~18_combout\,
	combout => \count[9]~112_combout\);

-- Location: LCCOMB_X73_Y51_N8
\count[9]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[9]~113_combout\ = (\count[1]~18_combout\ & ((\count[17]~19_combout\ & (\Add4~18_combout\)) # (!\count[17]~19_combout\ & ((\count[9]~112_combout\))))) # (!\count[1]~18_combout\ & (((\count[17]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~18_combout\,
	datab => \count[9]~112_combout\,
	datac => \count[1]~18_combout\,
	datad => \count[17]~19_combout\,
	combout => \count[9]~113_combout\);

-- Location: LCCOMB_X73_Y51_N6
\count~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~108_combout\ = (\buttons[3]~input_o\ & ((\Add4~18_combout\))) # (!\buttons[3]~input_o\ & (\count~107_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count~107_combout\,
	datac => \buttons[3]~input_o\,
	datad => \Add4~18_combout\,
	combout => \count~108_combout\);

-- Location: LCCOMB_X69_Y51_N18
\Add5~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~18_combout\ = (\count~108_combout\ & (!\Add5~17\)) # (!\count~108_combout\ & ((\Add5~17\) # (GND)))
-- \Add5~19\ = CARRY((!\Add5~17\) # (!\count~108_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~108_combout\,
	datad => VCC,
	cin => \Add5~17\,
	combout => \Add5~18_combout\,
	cout => \Add5~19\);

-- Location: LCCOMB_X73_Y51_N28
\count~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~109_combout\ = (\buttons[2]~input_o\ & (\Add5~18_combout\)) # (!\buttons[2]~input_o\ & ((\count~108_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[2]~input_o\,
	datac => \Add5~18_combout\,
	datad => \count~108_combout\,
	combout => \count~109_combout\);

-- Location: LCCOMB_X72_Y51_N18
\Add6~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~18_combout\ = (\count~109_combout\ & (!\Add6~17\)) # (!\count~109_combout\ & ((\Add6~17\) # (GND)))
-- \Add6~19\ = CARRY((!\Add6~17\) # (!\count~109_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~109_combout\,
	datad => VCC,
	cin => \Add6~17\,
	combout => \Add6~18_combout\,
	cout => \Add6~19\);

-- Location: LCCOMB_X73_Y51_N18
\count[9]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[9]~114_combout\ = (\count[1]~18_combout\ & (\count[9]~113_combout\)) # (!\count[1]~18_combout\ & ((\count[9]~113_combout\ & ((\Add6~18_combout\))) # (!\count[9]~113_combout\ & (\Add5~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[1]~18_combout\,
	datab => \count[9]~113_combout\,
	datac => \Add5~18_combout\,
	datad => \Add6~18_combout\,
	combout => \count[9]~114_combout\);

-- Location: LCCOMB_X73_Y51_N22
\count~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~110_combout\ = (\buttons[1]~input_o\ & ((\Add6~18_combout\))) # (!\buttons[1]~input_o\ & (\count~109_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[1]~input_o\,
	datab => \count~109_combout\,
	datad => \Add6~18_combout\,
	combout => \count~110_combout\);

-- Location: LCCOMB_X70_Y51_N18
\Add7~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~26_combout\ = (\count~110_combout\ & (!\Add7~24\)) # (!\count~110_combout\ & ((\Add7~24\) # (GND)))
-- \Add7~27\ = CARRY((!\Add7~24\) # (!\count~110_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~110_combout\,
	datad => VCC,
	cin => \Add7~24\,
	combout => \Add7~26_combout\,
	cout => \Add7~27\);

-- Location: LCCOMB_X66_Y51_N4
\Add7~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~28_combout\ = (\buttons[0]~input_o\ & ((\Add7~26_combout\))) # (!\buttons[0]~input_o\ & (\count[9]~114_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count[9]~114_combout\,
	datac => \buttons[0]~input_o\,
	datad => \Add7~26_combout\,
	combout => \Add7~28_combout\);

-- Location: LCCOMB_X66_Y51_N10
\count[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- count(9) = (GLOBAL(\count[1]~361clkctrl_outclk\) & ((\Add7~28_combout\))) # (!GLOBAL(\count[1]~361clkctrl_outclk\) & (count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(9),
	datac => \count[1]~361clkctrl_outclk\,
	datad => \Add7~28_combout\,
	combout => count(9));

-- Location: LCCOMB_X67_Y49_N20
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (count(10) & (\Add0~19\ $ (GND))) # (!count(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((count(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X68_Y53_N30
\count~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~115_combout\ = (\buttons[7]~input_o\ & ((\Add0~20_combout\))) # (!\buttons[7]~input_o\ & (count(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(10),
	datac => \Add0~20_combout\,
	datad => \buttons[7]~input_o\,
	combout => \count~115_combout\);

-- Location: LCCOMB_X67_Y53_N20
\Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (\count~115_combout\ & (\Add1~19\ $ (GND))) # (!\count~115_combout\ & (!\Add1~19\ & VCC))
-- \Add1~21\ = CARRY((\count~115_combout\ & !\Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~115_combout\,
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: LCCOMB_X68_Y53_N8
\count~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~116_combout\ = (\buttons[6]~input_o\ & ((\Add1~20_combout\))) # (!\buttons[6]~input_o\ & (\count~115_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[6]~input_o\,
	datac => \count~115_combout\,
	datad => \Add1~20_combout\,
	combout => \count~116_combout\);

-- Location: LCCOMB_X69_Y53_N20
\Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = (\count~116_combout\ & (\Add2~19\ $ (GND))) # (!\count~116_combout\ & (!\Add2~19\ & VCC))
-- \Add2~21\ = CARRY((\count~116_combout\ & !\Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~116_combout\,
	datad => VCC,
	cin => \Add2~19\,
	combout => \Add2~20_combout\,
	cout => \Add2~21\);

-- Location: LCCOMB_X68_Y53_N6
\count~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~117_combout\ = (\buttons[5]~input_o\ & ((\Add2~20_combout\))) # (!\buttons[5]~input_o\ & (\count~116_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count~116_combout\,
	datac => \Add2~20_combout\,
	datad => \buttons[5]~input_o\,
	combout => \count~117_combout\);

-- Location: LCCOMB_X69_Y49_N20
\Add3~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~20_combout\ = (\count~117_combout\ & (\Add3~19\ $ (GND))) # (!\count~117_combout\ & (!\Add3~19\ & VCC))
-- \Add3~21\ = CARRY((\count~117_combout\ & !\Add3~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~117_combout\,
	datad => VCC,
	cin => \Add3~19\,
	combout => \Add3~20_combout\,
	cout => \Add3~21\);

-- Location: LCCOMB_X68_Y53_N0
\count~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~118_combout\ = (\buttons[4]~input_o\ & ((\Add3~20_combout\))) # (!\buttons[4]~input_o\ & (\count~117_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count~117_combout\,
	datab => \buttons[4]~input_o\,
	datad => \Add3~20_combout\,
	combout => \count~118_combout\);

-- Location: LCCOMB_X72_Y53_N20
\Add4~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~20_combout\ = (\count~118_combout\ & (\Add4~19\ $ (GND))) # (!\count~118_combout\ & (!\Add4~19\ & VCC))
-- \Add4~21\ = CARRY((\count~118_combout\ & !\Add4~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~118_combout\,
	datad => VCC,
	cin => \Add4~19\,
	combout => \Add4~20_combout\,
	cout => \Add4~21\);

-- Location: LCCOMB_X68_Y53_N10
\count~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~119_combout\ = (\buttons[3]~input_o\ & (\Add4~20_combout\)) # (!\buttons[3]~input_o\ & ((\count~118_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[3]~input_o\,
	datac => \Add4~20_combout\,
	datad => \count~118_combout\,
	combout => \count~119_combout\);

-- Location: LCCOMB_X69_Y51_N20
\Add5~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~20_combout\ = (\count~119_combout\ & (\Add5~19\ $ (GND))) # (!\count~119_combout\ & (!\Add5~19\ & VCC))
-- \Add5~21\ = CARRY((\count~119_combout\ & !\Add5~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~119_combout\,
	datad => VCC,
	cin => \Add5~19\,
	combout => \Add5~20_combout\,
	cout => \Add5~21\);

-- Location: LCCOMB_X68_Y53_N4
\count~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~120_combout\ = (\buttons[2]~input_o\ & (\Add5~20_combout\)) # (!\buttons[2]~input_o\ & ((\count~119_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[2]~input_o\,
	datac => \Add5~20_combout\,
	datad => \count~119_combout\,
	combout => \count~120_combout\);

-- Location: LCCOMB_X72_Y51_N20
\Add6~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~20_combout\ = (\count~120_combout\ & (\Add6~19\ $ (GND))) # (!\count~120_combout\ & (!\Add6~19\ & VCC))
-- \Add6~21\ = CARRY((\count~120_combout\ & !\Add6~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~120_combout\,
	datad => VCC,
	cin => \Add6~19\,
	combout => \Add6~20_combout\,
	cout => \Add6~21\);

-- Location: LCCOMB_X68_Y51_N30
\count~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~121_combout\ = (\buttons[1]~input_o\ & ((\Add6~20_combout\))) # (!\buttons[1]~input_o\ & (\count~120_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[1]~input_o\,
	datac => \count~120_combout\,
	datad => \Add6~20_combout\,
	combout => \count~121_combout\);

-- Location: LCCOMB_X70_Y51_N20
\Add7~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~29_combout\ = (\count~121_combout\ & (\Add7~27\ $ (GND))) # (!\count~121_combout\ & (!\Add7~27\ & VCC))
-- \Add7~30\ = CARRY((\count~121_combout\ & !\Add7~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~121_combout\,
	datad => VCC,
	cin => \Add7~27\,
	combout => \Add7~29_combout\,
	cout => \Add7~30\);

-- Location: LCCOMB_X68_Y53_N2
\count[10]~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[10]~122_combout\ = (\count[1]~20_combout\ & (\Add0~20_combout\ & ((!\count[17]~21_combout\)))) # (!\count[1]~20_combout\ & (((\Add2~20_combout\) # (\count[17]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~20_combout\,
	datab => \count[1]~20_combout\,
	datac => \Add2~20_combout\,
	datad => \count[17]~21_combout\,
	combout => \count[10]~122_combout\);

-- Location: LCCOMB_X68_Y53_N16
\count[10]~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[10]~123_combout\ = (\count[17]~21_combout\ & ((\count[10]~122_combout\ & ((\Add3~20_combout\))) # (!\count[10]~122_combout\ & (\Add1~20_combout\)))) # (!\count[17]~21_combout\ & (((\count[10]~122_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[17]~21_combout\,
	datab => \Add1~20_combout\,
	datac => \count[10]~122_combout\,
	datad => \Add3~20_combout\,
	combout => \count[10]~123_combout\);

-- Location: LCCOMB_X68_Y53_N18
\count[10]~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[10]~124_combout\ = (\count[17]~19_combout\ & (((!\count[1]~18_combout\)))) # (!\count[17]~19_combout\ & ((\count[1]~18_combout\ & (\count[10]~123_combout\)) # (!\count[1]~18_combout\ & ((\Add5~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[17]~19_combout\,
	datab => \count[10]~123_combout\,
	datac => \Add5~20_combout\,
	datad => \count[1]~18_combout\,
	combout => \count[10]~124_combout\);

-- Location: LCCOMB_X68_Y53_N12
\count[10]~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[10]~125_combout\ = (\count[17]~19_combout\ & ((\count[10]~124_combout\ & ((\Add6~20_combout\))) # (!\count[10]~124_combout\ & (\Add4~20_combout\)))) # (!\count[17]~19_combout\ & (\count[10]~124_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[17]~19_combout\,
	datab => \count[10]~124_combout\,
	datac => \Add4~20_combout\,
	datad => \Add6~20_combout\,
	combout => \count[10]~125_combout\);

-- Location: LCCOMB_X68_Y53_N26
\Add7~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~31_combout\ = (\buttons[0]~input_o\ & (\Add7~29_combout\)) # (!\buttons[0]~input_o\ & ((\count[10]~125_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[0]~input_o\,
	datac => \Add7~29_combout\,
	datad => \count[10]~125_combout\,
	combout => \Add7~31_combout\);

-- Location: LCCOMB_X68_Y53_N22
\count[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- count(10) = (GLOBAL(\count[1]~361clkctrl_outclk\) & (\Add7~31_combout\)) # (!GLOBAL(\count[1]~361clkctrl_outclk\) & ((count(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add7~31_combout\,
	datac => count(10),
	datad => \count[1]~361clkctrl_outclk\,
	combout => count(10));

-- Location: LCCOMB_X67_Y49_N22
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (count(11) & (!\Add0~21\)) # (!count(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!count(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X68_Y53_N20
\count~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~126_combout\ = (\buttons[7]~input_o\ & ((\Add0~22_combout\))) # (!\buttons[7]~input_o\ & (count(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[7]~input_o\,
	datab => count(11),
	datad => \Add0~22_combout\,
	combout => \count~126_combout\);

-- Location: LCCOMB_X67_Y53_N22
\Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (\count~126_combout\ & (!\Add1~21\)) # (!\count~126_combout\ & ((\Add1~21\) # (GND)))
-- \Add1~23\ = CARRY((!\Add1~21\) # (!\count~126_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~126_combout\,
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: LCCOMB_X68_Y53_N14
\count~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~127_combout\ = (\buttons[6]~input_o\ & ((\Add1~22_combout\))) # (!\buttons[6]~input_o\ & (\count~126_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count~126_combout\,
	datac => \buttons[6]~input_o\,
	datad => \Add1~22_combout\,
	combout => \count~127_combout\);

-- Location: LCCOMB_X69_Y53_N22
\Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~22_combout\ = (\count~127_combout\ & (!\Add2~21\)) # (!\count~127_combout\ & ((\Add2~21\) # (GND)))
-- \Add2~23\ = CARRY((!\Add2~21\) # (!\count~127_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~127_combout\,
	datad => VCC,
	cin => \Add2~21\,
	combout => \Add2~22_combout\,
	cout => \Add2~23\);

-- Location: LCCOMB_X68_Y53_N28
\count~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~128_combout\ = (\buttons[5]~input_o\ & ((\Add2~22_combout\))) # (!\buttons[5]~input_o\ & (\count~127_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[5]~input_o\,
	datac => \count~127_combout\,
	datad => \Add2~22_combout\,
	combout => \count~128_combout\);

-- Location: LCCOMB_X69_Y49_N22
\Add3~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~22_combout\ = (\count~128_combout\ & (!\Add3~21\)) # (!\count~128_combout\ & ((\Add3~21\) # (GND)))
-- \Add3~23\ = CARRY((!\Add3~21\) # (!\count~128_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~128_combout\,
	datad => VCC,
	cin => \Add3~21\,
	combout => \Add3~22_combout\,
	cout => \Add3~23\);

-- Location: LCCOMB_X73_Y51_N12
\count~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~129_combout\ = (\buttons[4]~input_o\ & ((\Add3~22_combout\))) # (!\buttons[4]~input_o\ & (\count~128_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[4]~input_o\,
	datac => \count~128_combout\,
	datad => \Add3~22_combout\,
	combout => \count~129_combout\);

-- Location: LCCOMB_X72_Y53_N22
\Add4~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~22_combout\ = (\count~129_combout\ & (!\Add4~21\)) # (!\count~129_combout\ & ((\Add4~21\) # (GND)))
-- \Add4~23\ = CARRY((!\Add4~21\) # (!\count~129_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~129_combout\,
	datad => VCC,
	cin => \Add4~21\,
	combout => \Add4~22_combout\,
	cout => \Add4~23\);

-- Location: LCCOMB_X73_Y51_N2
\count~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~130_combout\ = (\buttons[3]~input_o\ & (\Add4~22_combout\)) # (!\buttons[3]~input_o\ & ((\count~129_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[3]~input_o\,
	datac => \Add4~22_combout\,
	datad => \count~129_combout\,
	combout => \count~130_combout\);

-- Location: LCCOMB_X69_Y51_N22
\Add5~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~22_combout\ = (\count~130_combout\ & (!\Add5~21\)) # (!\count~130_combout\ & ((\Add5~21\) # (GND)))
-- \Add5~23\ = CARRY((!\Add5~21\) # (!\count~130_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~130_combout\,
	datad => VCC,
	cin => \Add5~21\,
	combout => \Add5~22_combout\,
	cout => \Add5~23\);

-- Location: LCCOMB_X73_Y51_N20
\count~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~131_combout\ = (\buttons[2]~input_o\ & (\Add5~22_combout\)) # (!\buttons[2]~input_o\ & ((\count~130_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[2]~input_o\,
	datac => \Add5~22_combout\,
	datad => \count~130_combout\,
	combout => \count~131_combout\);

-- Location: LCCOMB_X72_Y51_N22
\Add6~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~22_combout\ = (\count~131_combout\ & (!\Add6~21\)) # (!\count~131_combout\ & ((\Add6~21\) # (GND)))
-- \Add6~23\ = CARRY((!\Add6~21\) # (!\count~131_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~131_combout\,
	datad => VCC,
	cin => \Add6~21\,
	combout => \Add6~22_combout\,
	cout => \Add6~23\);

-- Location: LCCOMB_X73_Y51_N26
\count~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~132_combout\ = (\buttons[1]~input_o\ & ((\Add6~22_combout\))) # (!\buttons[1]~input_o\ & (\count~131_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[1]~input_o\,
	datab => \count~131_combout\,
	datad => \Add6~22_combout\,
	combout => \count~132_combout\);

-- Location: LCCOMB_X70_Y51_N22
\Add7~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~32_combout\ = (\count~132_combout\ & (!\Add7~30\)) # (!\count~132_combout\ & ((\Add7~30\) # (GND)))
-- \Add7~33\ = CARRY((!\Add7~30\) # (!\count~132_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~132_combout\,
	datad => VCC,
	cin => \Add7~30\,
	combout => \Add7~32_combout\,
	cout => \Add7~33\);

-- Location: LCCOMB_X70_Y52_N8
\count[11]~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[11]~133_combout\ = (\count[17]~21_combout\ & ((\Add1~22_combout\) # ((!\count[1]~20_combout\)))) # (!\count[17]~21_combout\ & (((\Add0~22_combout\ & \count[1]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~22_combout\,
	datab => \count[17]~21_combout\,
	datac => \Add0~22_combout\,
	datad => \count[1]~20_combout\,
	combout => \count[11]~133_combout\);

-- Location: LCCOMB_X70_Y52_N30
\count[11]~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[11]~134_combout\ = (\count[1]~20_combout\ & (((\count[11]~133_combout\)))) # (!\count[1]~20_combout\ & ((\count[11]~133_combout\ & ((\Add3~22_combout\))) # (!\count[11]~133_combout\ & (\Add2~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[1]~20_combout\,
	datab => \Add2~22_combout\,
	datac => \count[11]~133_combout\,
	datad => \Add3~22_combout\,
	combout => \count[11]~134_combout\);

-- Location: LCCOMB_X73_Y51_N4
\count[11]~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[11]~135_combout\ = (\count[1]~18_combout\ & ((\count[17]~19_combout\ & ((\Add4~22_combout\))) # (!\count[17]~19_combout\ & (\count[11]~134_combout\)))) # (!\count[1]~18_combout\ & (((\count[17]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[1]~18_combout\,
	datab => \count[11]~134_combout\,
	datac => \Add4~22_combout\,
	datad => \count[17]~19_combout\,
	combout => \count[11]~135_combout\);

-- Location: LCCOMB_X73_Y51_N14
\count[11]~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[11]~136_combout\ = (\count[1]~18_combout\ & (\count[11]~135_combout\)) # (!\count[1]~18_combout\ & ((\count[11]~135_combout\ & ((\Add6~22_combout\))) # (!\count[11]~135_combout\ & (\Add5~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[1]~18_combout\,
	datab => \count[11]~135_combout\,
	datac => \Add5~22_combout\,
	datad => \Add6~22_combout\,
	combout => \count[11]~136_combout\);

-- Location: LCCOMB_X68_Y51_N12
\Add7~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~34_combout\ = (\buttons[0]~input_o\ & (\Add7~32_combout\)) # (!\buttons[0]~input_o\ & ((\count[11]~136_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[0]~input_o\,
	datac => \Add7~32_combout\,
	datad => \count[11]~136_combout\,
	combout => \Add7~34_combout\);

-- Location: LCCOMB_X68_Y51_N16
\count[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- count(11) = (GLOBAL(\count[1]~361clkctrl_outclk\) & ((\Add7~34_combout\))) # (!GLOBAL(\count[1]~361clkctrl_outclk\) & (count(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(11),
	datac => \Add7~34_combout\,
	datad => \count[1]~361clkctrl_outclk\,
	combout => count(11));

-- Location: LCCOMB_X67_Y49_N24
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (count(12) & (\Add0~23\ $ (GND))) # (!count(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((count(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X68_Y51_N10
\count~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~137_combout\ = (\buttons[7]~input_o\ & ((\Add0~24_combout\))) # (!\buttons[7]~input_o\ & (count(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[7]~input_o\,
	datac => count(12),
	datad => \Add0~24_combout\,
	combout => \count~137_combout\);

-- Location: LCCOMB_X67_Y53_N24
\Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (\count~137_combout\ & (\Add1~23\ $ (GND))) # (!\count~137_combout\ & (!\Add1~23\ & VCC))
-- \Add1~25\ = CARRY((\count~137_combout\ & !\Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~137_combout\,
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: LCCOMB_X68_Y51_N24
\count~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~138_combout\ = (\buttons[6]~input_o\ & (\Add1~24_combout\)) # (!\buttons[6]~input_o\ & ((\count~137_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[6]~input_o\,
	datac => \Add1~24_combout\,
	datad => \count~137_combout\,
	combout => \count~138_combout\);

-- Location: LCCOMB_X69_Y53_N24
\Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~24_combout\ = (\count~138_combout\ & (\Add2~23\ $ (GND))) # (!\count~138_combout\ & (!\Add2~23\ & VCC))
-- \Add2~25\ = CARRY((\count~138_combout\ & !\Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~138_combout\,
	datad => VCC,
	cin => \Add2~23\,
	combout => \Add2~24_combout\,
	cout => \Add2~25\);

-- Location: LCCOMB_X68_Y51_N18
\count~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~139_combout\ = (\buttons[5]~input_o\ & ((\Add2~24_combout\))) # (!\buttons[5]~input_o\ & (\count~138_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count~138_combout\,
	datac => \buttons[5]~input_o\,
	datad => \Add2~24_combout\,
	combout => \count~139_combout\);

-- Location: LCCOMB_X69_Y49_N24
\Add3~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~24_combout\ = (\count~139_combout\ & (\Add3~23\ $ (GND))) # (!\count~139_combout\ & (!\Add3~23\ & VCC))
-- \Add3~25\ = CARRY((\count~139_combout\ & !\Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~139_combout\,
	datad => VCC,
	cin => \Add3~23\,
	combout => \Add3~24_combout\,
	cout => \Add3~25\);

-- Location: LCCOMB_X68_Y51_N0
\count~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~140_combout\ = (\buttons[4]~input_o\ & (\Add3~24_combout\)) # (!\buttons[4]~input_o\ & ((\count~139_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[4]~input_o\,
	datac => \Add3~24_combout\,
	datad => \count~139_combout\,
	combout => \count~140_combout\);

-- Location: LCCOMB_X72_Y53_N24
\Add4~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~24_combout\ = (\count~140_combout\ & (\Add4~23\ $ (GND))) # (!\count~140_combout\ & (!\Add4~23\ & VCC))
-- \Add4~25\ = CARRY((\count~140_combout\ & !\Add4~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~140_combout\,
	datad => VCC,
	cin => \Add4~23\,
	combout => \Add4~24_combout\,
	cout => \Add4~25\);

-- Location: LCCOMB_X68_Y51_N6
\count~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~141_combout\ = (\buttons[3]~input_o\ & ((\Add4~24_combout\))) # (!\buttons[3]~input_o\ & (\count~140_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count~140_combout\,
	datac => \buttons[3]~input_o\,
	datad => \Add4~24_combout\,
	combout => \count~141_combout\);

-- Location: LCCOMB_X69_Y51_N24
\Add5~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~24_combout\ = (\count~141_combout\ & (\Add5~23\ $ (GND))) # (!\count~141_combout\ & (!\Add5~23\ & VCC))
-- \Add5~25\ = CARRY((\count~141_combout\ & !\Add5~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~141_combout\,
	datad => VCC,
	cin => \Add5~23\,
	combout => \Add5~24_combout\,
	cout => \Add5~25\);

-- Location: LCCOMB_X68_Y51_N20
\count~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~142_combout\ = (\buttons[2]~input_o\ & ((\Add5~24_combout\))) # (!\buttons[2]~input_o\ & (\count~141_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count~141_combout\,
	datac => \buttons[2]~input_o\,
	datad => \Add5~24_combout\,
	combout => \count~142_combout\);

-- Location: LCCOMB_X72_Y51_N24
\Add6~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~24_combout\ = (\count~142_combout\ & (\Add6~23\ $ (GND))) # (!\count~142_combout\ & (!\Add6~23\ & VCC))
-- \Add6~25\ = CARRY((\count~142_combout\ & !\Add6~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~142_combout\,
	datad => VCC,
	cin => \Add6~23\,
	combout => \Add6~24_combout\,
	cout => \Add6~25\);

-- Location: LCCOMB_X68_Y51_N14
\count~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~143_combout\ = (\buttons[1]~input_o\ & (\Add6~24_combout\)) # (!\buttons[1]~input_o\ & ((\count~142_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[1]~input_o\,
	datac => \Add6~24_combout\,
	datad => \count~142_combout\,
	combout => \count~143_combout\);

-- Location: LCCOMB_X70_Y51_N24
\Add7~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~35_combout\ = (\count~143_combout\ & (\Add7~33\ $ (GND))) # (!\count~143_combout\ & (!\Add7~33\ & VCC))
-- \Add7~36\ = CARRY((\count~143_combout\ & !\Add7~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~143_combout\,
	datad => VCC,
	cin => \Add7~33\,
	combout => \Add7~35_combout\,
	cout => \Add7~36\);

-- Location: LCCOMB_X65_Y51_N8
\count[12]~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[12]~144_combout\ = (\count[1]~20_combout\ & (((\Add0~24_combout\ & !\count[17]~21_combout\)))) # (!\count[1]~20_combout\ & ((\Add2~24_combout\) # ((\count[17]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[1]~20_combout\,
	datab => \Add2~24_combout\,
	datac => \Add0~24_combout\,
	datad => \count[17]~21_combout\,
	combout => \count[12]~144_combout\);

-- Location: LCCOMB_X68_Y51_N4
\count[12]~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[12]~145_combout\ = (\count[17]~21_combout\ & ((\count[12]~144_combout\ & ((\Add3~24_combout\))) # (!\count[12]~144_combout\ & (\Add1~24_combout\)))) # (!\count[17]~21_combout\ & (((\count[12]~144_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~24_combout\,
	datab => \count[17]~21_combout\,
	datac => \Add3~24_combout\,
	datad => \count[12]~144_combout\,
	combout => \count[12]~145_combout\);

-- Location: LCCOMB_X68_Y51_N2
\count[12]~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[12]~146_combout\ = (\count[1]~18_combout\ & (!\count[17]~19_combout\ & (\count[12]~145_combout\))) # (!\count[1]~18_combout\ & ((\count[17]~19_combout\) # ((\Add5~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[1]~18_combout\,
	datab => \count[17]~19_combout\,
	datac => \count[12]~145_combout\,
	datad => \Add5~24_combout\,
	combout => \count[12]~146_combout\);

-- Location: LCCOMB_X68_Y51_N28
\count[12]~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[12]~147_combout\ = (\count[17]~19_combout\ & ((\count[12]~146_combout\ & ((\Add6~24_combout\))) # (!\count[12]~146_combout\ & (\Add4~24_combout\)))) # (!\count[17]~19_combout\ & (((\count[12]~146_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~24_combout\,
	datab => \count[17]~19_combout\,
	datac => \Add6~24_combout\,
	datad => \count[12]~146_combout\,
	combout => \count[12]~147_combout\);

-- Location: LCCOMB_X68_Y51_N26
\Add7~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~37_combout\ = (\buttons[0]~input_o\ & (\Add7~35_combout\)) # (!\buttons[0]~input_o\ & ((\count[12]~147_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[0]~input_o\,
	datac => \Add7~35_combout\,
	datad => \count[12]~147_combout\,
	combout => \Add7~37_combout\);

-- Location: LCCOMB_X68_Y51_N22
\count[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- count(12) = (GLOBAL(\count[1]~361clkctrl_outclk\) & ((\Add7~37_combout\))) # (!GLOBAL(\count[1]~361clkctrl_outclk\) & (count(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(12),
	datab => \Add7~37_combout\,
	datad => \count[1]~361clkctrl_outclk\,
	combout => count(12));

-- Location: LCCOMB_X67_Y49_N26
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (count(13) & (!\Add0~25\)) # (!count(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!count(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X67_Y51_N18
\count~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~148_combout\ = (\buttons[7]~input_o\ & ((\Add0~26_combout\))) # (!\buttons[7]~input_o\ & (count(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[7]~input_o\,
	datac => count(13),
	datad => \Add0~26_combout\,
	combout => \count~148_combout\);

-- Location: LCCOMB_X67_Y53_N26
\Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (\count~148_combout\ & (!\Add1~25\)) # (!\count~148_combout\ & ((\Add1~25\) # (GND)))
-- \Add1~27\ = CARRY((!\Add1~25\) # (!\count~148_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~148_combout\,
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: LCCOMB_X67_Y51_N0
\count~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~149_combout\ = (\buttons[6]~input_o\ & ((\Add1~26_combout\))) # (!\buttons[6]~input_o\ & (\count~148_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count~148_combout\,
	datac => \buttons[6]~input_o\,
	datad => \Add1~26_combout\,
	combout => \count~149_combout\);

-- Location: LCCOMB_X69_Y53_N26
\Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~26_combout\ = (\count~149_combout\ & (!\Add2~25\)) # (!\count~149_combout\ & ((\Add2~25\) # (GND)))
-- \Add2~27\ = CARRY((!\Add2~25\) # (!\count~149_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~149_combout\,
	datad => VCC,
	cin => \Add2~25\,
	combout => \Add2~26_combout\,
	cout => \Add2~27\);

-- Location: LCCOMB_X67_Y51_N14
\count~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~150_combout\ = (\buttons[5]~input_o\ & ((\Add2~26_combout\))) # (!\buttons[5]~input_o\ & (\count~149_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count~149_combout\,
	datac => \buttons[5]~input_o\,
	datad => \Add2~26_combout\,
	combout => \count~150_combout\);

-- Location: LCCOMB_X69_Y49_N26
\Add3~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~26_combout\ = (\count~150_combout\ & (!\Add3~25\)) # (!\count~150_combout\ & ((\Add3~25\) # (GND)))
-- \Add3~27\ = CARRY((!\Add3~25\) # (!\count~150_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~150_combout\,
	datad => VCC,
	cin => \Add3~25\,
	combout => \Add3~26_combout\,
	cout => \Add3~27\);

-- Location: LCCOMB_X67_Y51_N4
\count~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~151_combout\ = (\buttons[4]~input_o\ & ((\Add3~26_combout\))) # (!\buttons[4]~input_o\ & (\count~150_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[4]~input_o\,
	datac => \count~150_combout\,
	datad => \Add3~26_combout\,
	combout => \count~151_combout\);

-- Location: LCCOMB_X72_Y53_N26
\Add4~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~26_combout\ = (\count~151_combout\ & (!\Add4~25\)) # (!\count~151_combout\ & ((\Add4~25\) # (GND)))
-- \Add4~27\ = CARRY((!\Add4~25\) # (!\count~151_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~151_combout\,
	datad => VCC,
	cin => \Add4~25\,
	combout => \Add4~26_combout\,
	cout => \Add4~27\);

-- Location: LCCOMB_X67_Y51_N30
\count~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~152_combout\ = (\buttons[3]~input_o\ & ((\Add4~26_combout\))) # (!\buttons[3]~input_o\ & (\count~151_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[3]~input_o\,
	datab => \count~151_combout\,
	datac => \Add4~26_combout\,
	combout => \count~152_combout\);

-- Location: LCCOMB_X69_Y51_N26
\Add5~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~26_combout\ = (\count~152_combout\ & (!\Add5~25\)) # (!\count~152_combout\ & ((\Add5~25\) # (GND)))
-- \Add5~27\ = CARRY((!\Add5~25\) # (!\count~152_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~152_combout\,
	datad => VCC,
	cin => \Add5~25\,
	combout => \Add5~26_combout\,
	cout => \Add5~27\);

-- Location: LCCOMB_X67_Y51_N24
\count~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~153_combout\ = (\buttons[2]~input_o\ & ((\Add5~26_combout\))) # (!\buttons[2]~input_o\ & (\count~152_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[2]~input_o\,
	datac => \count~152_combout\,
	datad => \Add5~26_combout\,
	combout => \count~153_combout\);

-- Location: LCCOMB_X72_Y51_N26
\Add6~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~26_combout\ = (\count~153_combout\ & (!\Add6~25\)) # (!\count~153_combout\ & ((\Add6~25\) # (GND)))
-- \Add6~27\ = CARRY((!\Add6~25\) # (!\count~153_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~153_combout\,
	datad => VCC,
	cin => \Add6~25\,
	combout => \Add6~26_combout\,
	cout => \Add6~27\);

-- Location: LCCOMB_X67_Y51_N10
\count~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~154_combout\ = (\buttons[1]~input_o\ & ((\Add6~26_combout\))) # (!\buttons[1]~input_o\ & (\count~153_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count~153_combout\,
	datac => \buttons[1]~input_o\,
	datad => \Add6~26_combout\,
	combout => \count~154_combout\);

-- Location: LCCOMB_X70_Y51_N26
\Add7~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~38_combout\ = (\count~154_combout\ & (!\Add7~36\)) # (!\count~154_combout\ & ((\Add7~36\) # (GND)))
-- \Add7~39\ = CARRY((!\Add7~36\) # (!\count~154_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~154_combout\,
	datad => VCC,
	cin => \Add7~36\,
	combout => \Add7~38_combout\,
	cout => \Add7~39\);

-- Location: LCCOMB_X66_Y51_N18
\count[13]~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[13]~155_combout\ = (\count[1]~20_combout\ & ((\count[17]~21_combout\ & (\Add1~26_combout\)) # (!\count[17]~21_combout\ & ((\Add0~26_combout\))))) # (!\count[1]~20_combout\ & (((\count[17]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~26_combout\,
	datab => \count[1]~20_combout\,
	datac => \count[17]~21_combout\,
	datad => \Add0~26_combout\,
	combout => \count[13]~155_combout\);

-- Location: LCCOMB_X67_Y51_N16
\count[13]~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[13]~156_combout\ = (\count[1]~20_combout\ & (((\count[13]~155_combout\)))) # (!\count[1]~20_combout\ & ((\count[13]~155_combout\ & ((\Add3~26_combout\))) # (!\count[13]~155_combout\ & (\Add2~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[1]~20_combout\,
	datab => \Add2~26_combout\,
	datac => \count[13]~155_combout\,
	datad => \Add3~26_combout\,
	combout => \count[13]~156_combout\);

-- Location: LCCOMB_X67_Y51_N26
\count[13]~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[13]~157_combout\ = (\count[17]~19_combout\ & ((\Add4~26_combout\) # ((!\count[1]~18_combout\)))) # (!\count[17]~19_combout\ & (((\count[13]~156_combout\ & \count[1]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~26_combout\,
	datab => \count[13]~156_combout\,
	datac => \count[17]~19_combout\,
	datad => \count[1]~18_combout\,
	combout => \count[13]~157_combout\);

-- Location: LCCOMB_X67_Y51_N20
\count[13]~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[13]~158_combout\ = (\count[1]~18_combout\ & (((\count[13]~157_combout\)))) # (!\count[1]~18_combout\ & ((\count[13]~157_combout\ & ((\Add6~26_combout\))) # (!\count[13]~157_combout\ & (\Add5~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[1]~18_combout\,
	datab => \Add5~26_combout\,
	datac => \count[13]~157_combout\,
	datad => \Add6~26_combout\,
	combout => \count[13]~158_combout\);

-- Location: LCCOMB_X67_Y51_N2
\Add7~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~40_combout\ = (\buttons[0]~input_o\ & (\Add7~38_combout\)) # (!\buttons[0]~input_o\ & ((\count[13]~158_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[0]~input_o\,
	datac => \Add7~38_combout\,
	datad => \count[13]~158_combout\,
	combout => \Add7~40_combout\);

-- Location: LCCOMB_X67_Y51_N8
\count[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- count(13) = (GLOBAL(\count[1]~361clkctrl_outclk\) & (\Add7~40_combout\)) # (!GLOBAL(\count[1]~361clkctrl_outclk\) & ((count(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~40_combout\,
	datac => count(13),
	datad => \count[1]~361clkctrl_outclk\,
	combout => count(13));

-- Location: LCCOMB_X67_Y49_N28
\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (count(14) & (\Add0~27\ $ (GND))) # (!count(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((count(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X70_Y53_N12
\count~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~159_combout\ = (\buttons[7]~input_o\ & (\Add0~28_combout\)) # (!\buttons[7]~input_o\ & ((count(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[7]~input_o\,
	datac => \Add0~28_combout\,
	datad => count(14),
	combout => \count~159_combout\);

-- Location: LCCOMB_X67_Y53_N28
\Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = (\count~159_combout\ & (\Add1~27\ $ (GND))) # (!\count~159_combout\ & (!\Add1~27\ & VCC))
-- \Add1~29\ = CARRY((\count~159_combout\ & !\Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~159_combout\,
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: LCCOMB_X70_Y53_N26
\count~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~160_combout\ = (\buttons[6]~input_o\ & ((\Add1~28_combout\))) # (!\buttons[6]~input_o\ & (\count~159_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count~159_combout\,
	datac => \buttons[6]~input_o\,
	datad => \Add1~28_combout\,
	combout => \count~160_combout\);

-- Location: LCCOMB_X69_Y53_N28
\Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~28_combout\ = (\count~160_combout\ & (\Add2~27\ $ (GND))) # (!\count~160_combout\ & (!\Add2~27\ & VCC))
-- \Add2~29\ = CARRY((\count~160_combout\ & !\Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~160_combout\,
	datad => VCC,
	cin => \Add2~27\,
	combout => \Add2~28_combout\,
	cout => \Add2~29\);

-- Location: LCCOMB_X70_Y53_N24
\count~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~161_combout\ = (\buttons[5]~input_o\ & ((\Add2~28_combout\))) # (!\buttons[5]~input_o\ & (\count~160_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[5]~input_o\,
	datac => \count~160_combout\,
	datad => \Add2~28_combout\,
	combout => \count~161_combout\);

-- Location: LCCOMB_X69_Y49_N28
\Add3~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~28_combout\ = (\count~161_combout\ & (\Add3~27\ $ (GND))) # (!\count~161_combout\ & (!\Add3~27\ & VCC))
-- \Add3~29\ = CARRY((\count~161_combout\ & !\Add3~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~161_combout\,
	datad => VCC,
	cin => \Add3~27\,
	combout => \Add3~28_combout\,
	cout => \Add3~29\);

-- Location: LCCOMB_X70_Y53_N2
\count[14]~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[14]~166_combout\ = (\count[17]~21_combout\ & (((!\count[1]~20_combout\)))) # (!\count[17]~21_combout\ & ((\count[1]~20_combout\ & ((\Add0~28_combout\))) # (!\count[1]~20_combout\ & (\Add2~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[17]~21_combout\,
	datab => \Add2~28_combout\,
	datac => \Add0~28_combout\,
	datad => \count[1]~20_combout\,
	combout => \count[14]~166_combout\);

-- Location: LCCOMB_X70_Y53_N4
\count[14]~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[14]~167_combout\ = (\count[17]~21_combout\ & ((\count[14]~166_combout\ & (\Add3~28_combout\)) # (!\count[14]~166_combout\ & ((\Add1~28_combout\))))) # (!\count[17]~21_combout\ & (((\count[14]~166_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[17]~21_combout\,
	datab => \Add3~28_combout\,
	datac => \count[14]~166_combout\,
	datad => \Add1~28_combout\,
	combout => \count[14]~167_combout\);

-- Location: LCCOMB_X70_Y53_N6
\count~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~162_combout\ = (\buttons[4]~input_o\ & ((\Add3~28_combout\))) # (!\buttons[4]~input_o\ & (\count~161_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count~161_combout\,
	datac => \buttons[4]~input_o\,
	datad => \Add3~28_combout\,
	combout => \count~162_combout\);

-- Location: LCCOMB_X72_Y53_N28
\Add4~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~28_combout\ = (\count~162_combout\ & (\Add4~27\ $ (GND))) # (!\count~162_combout\ & (!\Add4~27\ & VCC))
-- \Add4~29\ = CARRY((\count~162_combout\ & !\Add4~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~162_combout\,
	datad => VCC,
	cin => \Add4~27\,
	combout => \Add4~28_combout\,
	cout => \Add4~29\);

-- Location: LCCOMB_X70_Y53_N28
\count~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~163_combout\ = (\buttons[3]~input_o\ & (\Add4~28_combout\)) # (!\buttons[3]~input_o\ & ((\count~162_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[3]~input_o\,
	datac => \Add4~28_combout\,
	datad => \count~162_combout\,
	combout => \count~163_combout\);

-- Location: LCCOMB_X69_Y51_N28
\Add5~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~28_combout\ = (\count~163_combout\ & (\Add5~27\ $ (GND))) # (!\count~163_combout\ & (!\Add5~27\ & VCC))
-- \Add5~29\ = CARRY((\count~163_combout\ & !\Add5~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~163_combout\,
	datad => VCC,
	cin => \Add5~27\,
	combout => \Add5~28_combout\,
	cout => \Add5~29\);

-- Location: LCCOMB_X70_Y52_N20
\count[14]~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[14]~168_combout\ = (\count[1]~18_combout\ & (\count[14]~167_combout\ & ((!\count[17]~19_combout\)))) # (!\count[1]~18_combout\ & (((\Add5~28_combout\) # (\count[17]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[1]~18_combout\,
	datab => \count[14]~167_combout\,
	datac => \Add5~28_combout\,
	datad => \count[17]~19_combout\,
	combout => \count[14]~168_combout\);

-- Location: LCCOMB_X70_Y53_N30
\count~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~164_combout\ = (\buttons[2]~input_o\ & ((\Add5~28_combout\))) # (!\buttons[2]~input_o\ & (\count~163_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count~163_combout\,
	datac => \buttons[2]~input_o\,
	datad => \Add5~28_combout\,
	combout => \count~164_combout\);

-- Location: LCCOMB_X72_Y51_N28
\Add6~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~28_combout\ = (\count~164_combout\ & (\Add6~27\ $ (GND))) # (!\count~164_combout\ & (!\Add6~27\ & VCC))
-- \Add6~29\ = CARRY((\count~164_combout\ & !\Add6~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~164_combout\,
	datad => VCC,
	cin => \Add6~27\,
	combout => \Add6~28_combout\,
	cout => \Add6~29\);

-- Location: LCCOMB_X67_Y51_N12
\count[14]~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[14]~169_combout\ = (\count[17]~19_combout\ & ((\count[14]~168_combout\ & ((\Add6~28_combout\))) # (!\count[14]~168_combout\ & (\Add4~28_combout\)))) # (!\count[17]~19_combout\ & (\count[14]~168_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[17]~19_combout\,
	datab => \count[14]~168_combout\,
	datac => \Add4~28_combout\,
	datad => \Add6~28_combout\,
	combout => \count[14]~169_combout\);

-- Location: LCCOMB_X70_Y53_N16
\count~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~165_combout\ = (\buttons[1]~input_o\ & ((\Add6~28_combout\))) # (!\buttons[1]~input_o\ & (\count~164_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[1]~input_o\,
	datac => \count~164_combout\,
	datad => \Add6~28_combout\,
	combout => \count~165_combout\);

-- Location: LCCOMB_X70_Y51_N28
\Add7~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~41_combout\ = (\count~165_combout\ & (\Add7~39\ $ (GND))) # (!\count~165_combout\ & (!\Add7~39\ & VCC))
-- \Add7~42\ = CARRY((\count~165_combout\ & !\Add7~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~165_combout\,
	datad => VCC,
	cin => \Add7~39\,
	combout => \Add7~41_combout\,
	cout => \Add7~42\);

-- Location: LCCOMB_X67_Y51_N22
\Add7~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~43_combout\ = (\buttons[0]~input_o\ & ((\Add7~41_combout\))) # (!\buttons[0]~input_o\ & (\count[14]~169_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[14]~169_combout\,
	datab => \buttons[0]~input_o\,
	datad => \Add7~41_combout\,
	combout => \Add7~43_combout\);

-- Location: LCCOMB_X67_Y51_N6
\count[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- count(14) = (GLOBAL(\count[1]~361clkctrl_outclk\) & ((\Add7~43_combout\))) # (!GLOBAL(\count[1]~361clkctrl_outclk\) & (count(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(14),
	datac => \Add7~43_combout\,
	datad => \count[1]~361clkctrl_outclk\,
	combout => count(14));

-- Location: LCCOMB_X67_Y49_N30
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (count(15) & (!\Add0~29\)) # (!count(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!count(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X70_Y53_N10
\count~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~170_combout\ = (\buttons[7]~input_o\ & ((\Add0~30_combout\))) # (!\buttons[7]~input_o\ & (count(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(15),
	datac => \buttons[7]~input_o\,
	datad => \Add0~30_combout\,
	combout => \count~170_combout\);

-- Location: LCCOMB_X67_Y53_N30
\Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (\count~170_combout\ & (!\Add1~29\)) # (!\count~170_combout\ & ((\Add1~29\) # (GND)))
-- \Add1~31\ = CARRY((!\Add1~29\) # (!\count~170_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~170_combout\,
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: LCCOMB_X70_Y53_N20
\count~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~171_combout\ = (\buttons[6]~input_o\ & (\Add1~30_combout\)) # (!\buttons[6]~input_o\ & ((\count~170_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[6]~input_o\,
	datac => \Add1~30_combout\,
	datad => \count~170_combout\,
	combout => \count~171_combout\);

-- Location: LCCOMB_X69_Y53_N30
\Add2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~30_combout\ = (\count~171_combout\ & (!\Add2~29\)) # (!\count~171_combout\ & ((\Add2~29\) # (GND)))
-- \Add2~31\ = CARRY((!\Add2~29\) # (!\count~171_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~171_combout\,
	datad => VCC,
	cin => \Add2~29\,
	combout => \Add2~30_combout\,
	cout => \Add2~31\);

-- Location: LCCOMB_X70_Y53_N18
\count~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~172_combout\ = (\buttons[5]~input_o\ & ((\Add2~30_combout\))) # (!\buttons[5]~input_o\ & (\count~171_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[5]~input_o\,
	datab => \count~171_combout\,
	datad => \Add2~30_combout\,
	combout => \count~172_combout\);

-- Location: LCCOMB_X69_Y49_N30
\Add3~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~30_combout\ = (\count~172_combout\ & (!\Add3~29\)) # (!\count~172_combout\ & ((\Add3~29\) # (GND)))
-- \Add3~31\ = CARRY((!\Add3~29\) # (!\count~172_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~172_combout\,
	datad => VCC,
	cin => \Add3~29\,
	combout => \Add3~30_combout\,
	cout => \Add3~31\);

-- Location: LCCOMB_X70_Y53_N8
\count~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~173_combout\ = (\buttons[4]~input_o\ & ((\Add3~30_combout\))) # (!\buttons[4]~input_o\ & (\count~172_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count~172_combout\,
	datac => \buttons[4]~input_o\,
	datad => \Add3~30_combout\,
	combout => \count~173_combout\);

-- Location: LCCOMB_X72_Y53_N30
\Add4~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~30_combout\ = (\count~173_combout\ & (!\Add4~29\)) # (!\count~173_combout\ & ((\Add4~29\) # (GND)))
-- \Add4~31\ = CARRY((!\Add4~29\) # (!\count~173_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~173_combout\,
	datad => VCC,
	cin => \Add4~29\,
	combout => \Add4~30_combout\,
	cout => \Add4~31\);

-- Location: LCCOMB_X70_Y53_N22
\count~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~174_combout\ = (\buttons[3]~input_o\ & ((\Add4~30_combout\))) # (!\buttons[3]~input_o\ & (\count~173_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[3]~input_o\,
	datac => \count~173_combout\,
	datad => \Add4~30_combout\,
	combout => \count~174_combout\);

-- Location: LCCOMB_X69_Y51_N30
\Add5~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~30_combout\ = (\count~174_combout\ & (!\Add5~29\)) # (!\count~174_combout\ & ((\Add5~29\) # (GND)))
-- \Add5~31\ = CARRY((!\Add5~29\) # (!\count~174_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~174_combout\,
	datad => VCC,
	cin => \Add5~29\,
	combout => \Add5~30_combout\,
	cout => \Add5~31\);

-- Location: LCCOMB_X73_Y51_N16
\count~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~175_combout\ = (\buttons[2]~input_o\ & ((\Add5~30_combout\))) # (!\buttons[2]~input_o\ & (\count~174_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[2]~input_o\,
	datac => \count~174_combout\,
	datad => \Add5~30_combout\,
	combout => \count~175_combout\);

-- Location: LCCOMB_X72_Y51_N30
\Add6~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~30_combout\ = (\count~175_combout\ & (!\Add6~29\)) # (!\count~175_combout\ & ((\Add6~29\) # (GND)))
-- \Add6~31\ = CARRY((!\Add6~29\) # (!\count~175_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~175_combout\,
	datad => VCC,
	cin => \Add6~29\,
	combout => \Add6~30_combout\,
	cout => \Add6~31\);

-- Location: LCCOMB_X73_Y51_N30
\count~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~176_combout\ = (\buttons[1]~input_o\ & ((\Add6~30_combout\))) # (!\buttons[1]~input_o\ & (\count~175_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[1]~input_o\,
	datab => \count~175_combout\,
	datad => \Add6~30_combout\,
	combout => \count~176_combout\);

-- Location: LCCOMB_X70_Y51_N30
\Add7~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~44_combout\ = (\count~176_combout\ & (!\Add7~42\)) # (!\count~176_combout\ & ((\Add7~42\) # (GND)))
-- \Add7~45\ = CARRY((!\Add7~42\) # (!\count~176_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~176_combout\,
	datad => VCC,
	cin => \Add7~42\,
	combout => \Add7~44_combout\,
	cout => \Add7~45\);

-- Location: LCCOMB_X70_Y53_N0
\count[15]~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[15]~177_combout\ = (\count[17]~21_combout\ & ((\Add1~30_combout\) # ((!\count[1]~20_combout\)))) # (!\count[17]~21_combout\ & (((\Add0~30_combout\ & \count[1]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~30_combout\,
	datab => \Add0~30_combout\,
	datac => \count[17]~21_combout\,
	datad => \count[1]~20_combout\,
	combout => \count[15]~177_combout\);

-- Location: LCCOMB_X70_Y53_N14
\count[15]~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[15]~178_combout\ = (\count[15]~177_combout\ & (((\count[1]~20_combout\) # (\Add3~30_combout\)))) # (!\count[15]~177_combout\ & (\Add2~30_combout\ & (!\count[1]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[15]~177_combout\,
	datab => \Add2~30_combout\,
	datac => \count[1]~20_combout\,
	datad => \Add3~30_combout\,
	combout => \count[15]~178_combout\);

-- Location: LCCOMB_X70_Y48_N24
\count[15]~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[15]~179_combout\ = (\count[1]~18_combout\ & ((\count[17]~19_combout\ & ((\Add4~30_combout\))) # (!\count[17]~19_combout\ & (\count[15]~178_combout\)))) # (!\count[1]~18_combout\ & (\count[17]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[1]~18_combout\,
	datab => \count[17]~19_combout\,
	datac => \count[15]~178_combout\,
	datad => \Add4~30_combout\,
	combout => \count[15]~179_combout\);

-- Location: LCCOMB_X70_Y48_N18
\count[15]~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[15]~180_combout\ = (\count[1]~18_combout\ & (((\count[15]~179_combout\)))) # (!\count[1]~18_combout\ & ((\count[15]~179_combout\ & ((\Add6~30_combout\))) # (!\count[15]~179_combout\ & (\Add5~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[1]~18_combout\,
	datab => \Add5~30_combout\,
	datac => \count[15]~179_combout\,
	datad => \Add6~30_combout\,
	combout => \count[15]~180_combout\);

-- Location: LCCOMB_X70_Y48_N4
\Add7~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~46_combout\ = (\buttons[0]~input_o\ & (\Add7~44_combout\)) # (!\buttons[0]~input_o\ & ((\count[15]~180_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[0]~input_o\,
	datac => \Add7~44_combout\,
	datad => \count[15]~180_combout\,
	combout => \Add7~46_combout\);

-- Location: LCCOMB_X70_Y48_N6
\count[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- count(15) = (GLOBAL(\count[1]~361clkctrl_outclk\) & ((\Add7~46_combout\))) # (!GLOBAL(\count[1]~361clkctrl_outclk\) & (count(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(15),
	datac => \Add7~46_combout\,
	datad => \count[1]~361clkctrl_outclk\,
	combout => count(15));

-- Location: LCCOMB_X67_Y48_N0
\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (count(16) & (\Add0~31\ $ (GND))) # (!count(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((count(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X70_Y48_N22
\count~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~181_combout\ = (\buttons[7]~input_o\ & ((\Add0~32_combout\))) # (!\buttons[7]~input_o\ & (count(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(16),
	datac => \buttons[7]~input_o\,
	datad => \Add0~32_combout\,
	combout => \count~181_combout\);

-- Location: LCCOMB_X67_Y52_N0
\Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = (\count~181_combout\ & (\Add1~31\ $ (GND))) # (!\count~181_combout\ & (!\Add1~31\ & VCC))
-- \Add1~33\ = CARRY((\count~181_combout\ & !\Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~181_combout\,
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

-- Location: LCCOMB_X70_Y48_N16
\count~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~182_combout\ = (\buttons[6]~input_o\ & ((\Add1~32_combout\))) # (!\buttons[6]~input_o\ & (\count~181_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[6]~input_o\,
	datac => \count~181_combout\,
	datad => \Add1~32_combout\,
	combout => \count~182_combout\);

-- Location: LCCOMB_X69_Y52_N0
\Add2~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~32_combout\ = (\count~182_combout\ & (\Add2~31\ $ (GND))) # (!\count~182_combout\ & (!\Add2~31\ & VCC))
-- \Add2~33\ = CARRY((\count~182_combout\ & !\Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~182_combout\,
	datad => VCC,
	cin => \Add2~31\,
	combout => \Add2~32_combout\,
	cout => \Add2~33\);

-- Location: LCCOMB_X70_Y48_N2
\count~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~183_combout\ = (\buttons[5]~input_o\ & (\Add2~32_combout\)) # (!\buttons[5]~input_o\ & ((\count~182_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[5]~input_o\,
	datac => \Add2~32_combout\,
	datad => \count~182_combout\,
	combout => \count~183_combout\);

-- Location: LCCOMB_X69_Y48_N0
\Add3~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~32_combout\ = (\count~183_combout\ & (\Add3~31\ $ (GND))) # (!\count~183_combout\ & (!\Add3~31\ & VCC))
-- \Add3~33\ = CARRY((\count~183_combout\ & !\Add3~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~183_combout\,
	datad => VCC,
	cin => \Add3~31\,
	combout => \Add3~32_combout\,
	cout => \Add3~33\);

-- Location: LCCOMB_X70_Y48_N20
\count~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~184_combout\ = (\buttons[4]~input_o\ & (\Add3~32_combout\)) # (!\buttons[4]~input_o\ & ((\count~183_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[4]~input_o\,
	datac => \Add3~32_combout\,
	datad => \count~183_combout\,
	combout => \count~184_combout\);

-- Location: LCCOMB_X72_Y52_N0
\Add4~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~32_combout\ = (\count~184_combout\ & (\Add4~31\ $ (GND))) # (!\count~184_combout\ & (!\Add4~31\ & VCC))
-- \Add4~33\ = CARRY((\count~184_combout\ & !\Add4~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~184_combout\,
	datad => VCC,
	cin => \Add4~31\,
	combout => \Add4~32_combout\,
	cout => \Add4~33\);

-- Location: LCCOMB_X70_Y48_N10
\count~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~185_combout\ = (\buttons[3]~input_o\ & ((\Add4~32_combout\))) # (!\buttons[3]~input_o\ & (\count~184_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count~184_combout\,
	datac => \buttons[3]~input_o\,
	datad => \Add4~32_combout\,
	combout => \count~185_combout\);

-- Location: LCCOMB_X69_Y50_N0
\Add5~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~32_combout\ = (\count~185_combout\ & (\Add5~31\ $ (GND))) # (!\count~185_combout\ & (!\Add5~31\ & VCC))
-- \Add5~33\ = CARRY((\count~185_combout\ & !\Add5~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~185_combout\,
	datad => VCC,
	cin => \Add5~31\,
	combout => \Add5~32_combout\,
	cout => \Add5~33\);

-- Location: LCCOMB_X68_Y50_N4
\count~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~186_combout\ = (\buttons[2]~input_o\ & (\Add5~32_combout\)) # (!\buttons[2]~input_o\ & ((\count~185_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[2]~input_o\,
	datac => \Add5~32_combout\,
	datad => \count~185_combout\,
	combout => \count~186_combout\);

-- Location: LCCOMB_X72_Y50_N0
\Add6~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~32_combout\ = (\count~186_combout\ & (\Add6~31\ $ (GND))) # (!\count~186_combout\ & (!\Add6~31\ & VCC))
-- \Add6~33\ = CARRY((\count~186_combout\ & !\Add6~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~186_combout\,
	datad => VCC,
	cin => \Add6~31\,
	combout => \Add6~32_combout\,
	cout => \Add6~33\);

-- Location: LCCOMB_X70_Y48_N8
\count[16]~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[16]~188_combout\ = (\count[1]~20_combout\ & (\Add0~32_combout\ & ((!\count[17]~21_combout\)))) # (!\count[1]~20_combout\ & (((\Add2~32_combout\) # (\count[17]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~32_combout\,
	datab => \count[1]~20_combout\,
	datac => \Add2~32_combout\,
	datad => \count[17]~21_combout\,
	combout => \count[16]~188_combout\);

-- Location: LCCOMB_X70_Y48_N14
\count[16]~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[16]~189_combout\ = (\count[17]~21_combout\ & ((\count[16]~188_combout\ & (\Add3~32_combout\)) # (!\count[16]~188_combout\ & ((\Add1~32_combout\))))) # (!\count[17]~21_combout\ & (((\count[16]~188_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~32_combout\,
	datab => \count[17]~21_combout\,
	datac => \count[16]~188_combout\,
	datad => \Add1~32_combout\,
	combout => \count[16]~189_combout\);

-- Location: LCCOMB_X70_Y48_N12
\count[16]~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[16]~190_combout\ = (\count[1]~18_combout\ & (!\count[17]~19_combout\ & (\count[16]~189_combout\))) # (!\count[1]~18_combout\ & ((\count[17]~19_combout\) # ((\Add5~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[1]~18_combout\,
	datab => \count[17]~19_combout\,
	datac => \count[16]~189_combout\,
	datad => \Add5~32_combout\,
	combout => \count[16]~190_combout\);

-- Location: LCCOMB_X70_Y48_N26
\count[16]~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[16]~191_combout\ = (\count[17]~19_combout\ & ((\count[16]~190_combout\ & ((\Add6~32_combout\))) # (!\count[16]~190_combout\ & (\Add4~32_combout\)))) # (!\count[17]~19_combout\ & (((\count[16]~190_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~32_combout\,
	datab => \count[17]~19_combout\,
	datac => \Add6~32_combout\,
	datad => \count[16]~190_combout\,
	combout => \count[16]~191_combout\);

-- Location: LCCOMB_X68_Y50_N30
\count~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~187_combout\ = (\buttons[1]~input_o\ & ((\Add6~32_combout\))) # (!\buttons[1]~input_o\ & (\count~186_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count~186_combout\,
	datac => \Add6~32_combout\,
	datad => \buttons[1]~input_o\,
	combout => \count~187_combout\);

-- Location: LCCOMB_X70_Y50_N0
\Add7~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~47_combout\ = (\count~187_combout\ & (\Add7~45\ $ (GND))) # (!\count~187_combout\ & (!\Add7~45\ & VCC))
-- \Add7~48\ = CARRY((\count~187_combout\ & !\Add7~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~187_combout\,
	datad => VCC,
	cin => \Add7~45\,
	combout => \Add7~47_combout\,
	cout => \Add7~48\);

-- Location: LCCOMB_X70_Y48_N28
\Add7~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~49_combout\ = (\buttons[0]~input_o\ & ((\Add7~47_combout\))) # (!\buttons[0]~input_o\ & (\count[16]~191_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[0]~input_o\,
	datac => \count[16]~191_combout\,
	datad => \Add7~47_combout\,
	combout => \Add7~49_combout\);

-- Location: LCCOMB_X70_Y48_N0
\count[16]\ : cycloneive_lcell_comb
-- Equation(s):
-- count(16) = (GLOBAL(\count[1]~361clkctrl_outclk\) & ((\Add7~49_combout\))) # (!GLOBAL(\count[1]~361clkctrl_outclk\) & (count(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(16),
	datac => \Add7~49_combout\,
	datad => \count[1]~361clkctrl_outclk\,
	combout => count(16));

-- Location: LCCOMB_X67_Y48_N2
\Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (count(17) & (!\Add0~33\)) # (!count(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!count(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X68_Y50_N24
\count~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~192_combout\ = (\buttons[7]~input_o\ & ((\Add0~34_combout\))) # (!\buttons[7]~input_o\ & (count(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[7]~input_o\,
	datab => count(17),
	datad => \Add0~34_combout\,
	combout => \count~192_combout\);

-- Location: LCCOMB_X67_Y52_N2
\Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (\count~192_combout\ & (!\Add1~33\)) # (!\count~192_combout\ & ((\Add1~33\) # (GND)))
-- \Add1~35\ = CARRY((!\Add1~33\) # (!\count~192_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~192_combout\,
	datad => VCC,
	cin => \Add1~33\,
	combout => \Add1~34_combout\,
	cout => \Add1~35\);

-- Location: LCCOMB_X68_Y50_N22
\count~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~193_combout\ = (\buttons[6]~input_o\ & (\Add1~34_combout\)) # (!\buttons[6]~input_o\ & ((\count~192_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[6]~input_o\,
	datac => \Add1~34_combout\,
	datad => \count~192_combout\,
	combout => \count~193_combout\);

-- Location: LCCOMB_X69_Y52_N2
\Add2~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~34_combout\ = (\count~193_combout\ & (!\Add2~33\)) # (!\count~193_combout\ & ((\Add2~33\) # (GND)))
-- \Add2~35\ = CARRY((!\Add2~33\) # (!\count~193_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~193_combout\,
	datad => VCC,
	cin => \Add2~33\,
	combout => \Add2~34_combout\,
	cout => \Add2~35\);

-- Location: LCCOMB_X68_Y50_N8
\count~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~194_combout\ = (\buttons[5]~input_o\ & ((\Add2~34_combout\))) # (!\buttons[5]~input_o\ & (\count~193_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[5]~input_o\,
	datac => \count~193_combout\,
	datad => \Add2~34_combout\,
	combout => \count~194_combout\);

-- Location: LCCOMB_X69_Y48_N2
\Add3~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~34_combout\ = (\count~194_combout\ & (!\Add3~33\)) # (!\count~194_combout\ & ((\Add3~33\) # (GND)))
-- \Add3~35\ = CARRY((!\Add3~33\) # (!\count~194_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~194_combout\,
	datad => VCC,
	cin => \Add3~33\,
	combout => \Add3~34_combout\,
	cout => \Add3~35\);

-- Location: LCCOMB_X68_Y50_N26
\count~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~195_combout\ = (\buttons[4]~input_o\ & ((\Add3~34_combout\))) # (!\buttons[4]~input_o\ & (\count~194_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[4]~input_o\,
	datac => \count~194_combout\,
	datad => \Add3~34_combout\,
	combout => \count~195_combout\);

-- Location: LCCOMB_X72_Y52_N2
\Add4~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~34_combout\ = (\count~195_combout\ & (!\Add4~33\)) # (!\count~195_combout\ & ((\Add4~33\) # (GND)))
-- \Add4~35\ = CARRY((!\Add4~33\) # (!\count~195_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~195_combout\,
	datad => VCC,
	cin => \Add4~33\,
	combout => \Add4~34_combout\,
	cout => \Add4~35\);

-- Location: LCCOMB_X68_Y50_N2
\count[17]~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[17]~199_combout\ = (\count[1]~20_combout\ & ((\count[17]~21_combout\ & ((\Add1~34_combout\))) # (!\count[17]~21_combout\ & (\Add0~34_combout\)))) # (!\count[1]~20_combout\ & (((\count[17]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[1]~20_combout\,
	datab => \Add0~34_combout\,
	datac => \Add1~34_combout\,
	datad => \count[17]~21_combout\,
	combout => \count[17]~199_combout\);

-- Location: LCCOMB_X68_Y50_N0
\count[17]~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[17]~200_combout\ = (\count[17]~199_combout\ & (((\count[1]~20_combout\) # (\Add3~34_combout\)))) # (!\count[17]~199_combout\ & (\Add2~34_combout\ & (!\count[1]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[17]~199_combout\,
	datab => \Add2~34_combout\,
	datac => \count[1]~20_combout\,
	datad => \Add3~34_combout\,
	combout => \count[17]~200_combout\);

-- Location: LCCOMB_X68_Y50_N6
\count[17]~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[17]~201_combout\ = (\count[17]~19_combout\ & ((\Add4~34_combout\) # ((!\count[1]~18_combout\)))) # (!\count[17]~19_combout\ & (((\count[17]~200_combout\ & \count[1]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~34_combout\,
	datab => \count[17]~200_combout\,
	datac => \count[17]~19_combout\,
	datad => \count[1]~18_combout\,
	combout => \count[17]~201_combout\);

-- Location: LCCOMB_X68_Y50_N28
\count~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~196_combout\ = (\buttons[3]~input_o\ & ((\Add4~34_combout\))) # (!\buttons[3]~input_o\ & (\count~195_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[3]~input_o\,
	datac => \count~195_combout\,
	datad => \Add4~34_combout\,
	combout => \count~196_combout\);

-- Location: LCCOMB_X69_Y50_N2
\Add5~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~34_combout\ = (\count~196_combout\ & (!\Add5~33\)) # (!\count~196_combout\ & ((\Add5~33\) # (GND)))
-- \Add5~35\ = CARRY((!\Add5~33\) # (!\count~196_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~196_combout\,
	datad => VCC,
	cin => \Add5~33\,
	combout => \Add5~34_combout\,
	cout => \Add5~35\);

-- Location: LCCOMB_X68_Y50_N10
\count~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~197_combout\ = (\buttons[2]~input_o\ & ((\Add5~34_combout\))) # (!\buttons[2]~input_o\ & (\count~196_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count~196_combout\,
	datac => \buttons[2]~input_o\,
	datad => \Add5~34_combout\,
	combout => \count~197_combout\);

-- Location: LCCOMB_X72_Y50_N2
\Add6~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~34_combout\ = (\count~197_combout\ & (!\Add6~33\)) # (!\count~197_combout\ & ((\Add6~33\) # (GND)))
-- \Add6~35\ = CARRY((!\Add6~33\) # (!\count~197_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~197_combout\,
	datad => VCC,
	cin => \Add6~33\,
	combout => \Add6~34_combout\,
	cout => \Add6~35\);

-- Location: LCCOMB_X68_Y50_N20
\count[17]~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[17]~202_combout\ = (\count[17]~201_combout\ & ((\count[1]~18_combout\) # ((\Add6~34_combout\)))) # (!\count[17]~201_combout\ & (!\count[1]~18_combout\ & ((\Add5~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[17]~201_combout\,
	datab => \count[1]~18_combout\,
	datac => \Add6~34_combout\,
	datad => \Add5~34_combout\,
	combout => \count[17]~202_combout\);

-- Location: LCCOMB_X68_Y50_N12
\count~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~198_combout\ = (\buttons[1]~input_o\ & (\Add6~34_combout\)) # (!\buttons[1]~input_o\ & ((\count~197_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[1]~input_o\,
	datac => \Add6~34_combout\,
	datad => \count~197_combout\,
	combout => \count~198_combout\);

-- Location: LCCOMB_X70_Y50_N2
\Add7~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~50_combout\ = (\count~198_combout\ & (!\Add7~48\)) # (!\count~198_combout\ & ((\Add7~48\) # (GND)))
-- \Add7~51\ = CARRY((!\Add7~48\) # (!\count~198_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~198_combout\,
	datad => VCC,
	cin => \Add7~48\,
	combout => \Add7~50_combout\,
	cout => \Add7~51\);

-- Location: LCCOMB_X68_Y50_N14
\Add7~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~52_combout\ = (\buttons[0]~input_o\ & ((\Add7~50_combout\))) # (!\buttons[0]~input_o\ & (\count[17]~202_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count[17]~202_combout\,
	datac => \buttons[0]~input_o\,
	datad => \Add7~50_combout\,
	combout => \Add7~52_combout\);

-- Location: LCCOMB_X68_Y50_N18
\count[17]\ : cycloneive_lcell_comb
-- Equation(s):
-- count(17) = (GLOBAL(\count[1]~361clkctrl_outclk\) & ((\Add7~52_combout\))) # (!GLOBAL(\count[1]~361clkctrl_outclk\) & (count(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(17),
	datac => \Add7~52_combout\,
	datad => \count[1]~361clkctrl_outclk\,
	combout => count(17));

-- Location: LCCOMB_X67_Y48_N4
\Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (count(18) & (\Add0~35\ $ (GND))) # (!count(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((count(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X68_Y48_N8
\count~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~203_combout\ = (\buttons[7]~input_o\ & (\Add0~36_combout\)) # (!\buttons[7]~input_o\ & ((count(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[7]~input_o\,
	datac => \Add0~36_combout\,
	datad => count(18),
	combout => \count~203_combout\);

-- Location: LCCOMB_X67_Y52_N4
\Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = (\count~203_combout\ & (\Add1~35\ $ (GND))) # (!\count~203_combout\ & (!\Add1~35\ & VCC))
-- \Add1~37\ = CARRY((\count~203_combout\ & !\Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~203_combout\,
	datad => VCC,
	cin => \Add1~35\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

-- Location: LCCOMB_X68_Y48_N10
\count~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~204_combout\ = (\buttons[6]~input_o\ & ((\Add1~36_combout\))) # (!\buttons[6]~input_o\ & (\count~203_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[6]~input_o\,
	datab => \count~203_combout\,
	datac => \Add1~36_combout\,
	combout => \count~204_combout\);

-- Location: LCCOMB_X69_Y52_N4
\Add2~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~36_combout\ = (\count~204_combout\ & (\Add2~35\ $ (GND))) # (!\count~204_combout\ & (!\Add2~35\ & VCC))
-- \Add2~37\ = CARRY((\count~204_combout\ & !\Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~204_combout\,
	datad => VCC,
	cin => \Add2~35\,
	combout => \Add2~36_combout\,
	cout => \Add2~37\);

-- Location: LCCOMB_X68_Y48_N16
\count~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~205_combout\ = (\buttons[5]~input_o\ & ((\Add2~36_combout\))) # (!\buttons[5]~input_o\ & (\count~204_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count~204_combout\,
	datab => \buttons[5]~input_o\,
	datac => \Add2~36_combout\,
	combout => \count~205_combout\);

-- Location: LCCOMB_X69_Y48_N4
\Add3~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~36_combout\ = (\count~205_combout\ & (\Add3~35\ $ (GND))) # (!\count~205_combout\ & (!\Add3~35\ & VCC))
-- \Add3~37\ = CARRY((\count~205_combout\ & !\Add3~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~205_combout\,
	datad => VCC,
	cin => \Add3~35\,
	combout => \Add3~36_combout\,
	cout => \Add3~37\);

-- Location: LCCOMB_X68_Y48_N2
\count~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~206_combout\ = (\buttons[4]~input_o\ & ((\Add3~36_combout\))) # (!\buttons[4]~input_o\ & (\count~205_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count~205_combout\,
	datac => \buttons[4]~input_o\,
	datad => \Add3~36_combout\,
	combout => \count~206_combout\);

-- Location: LCCOMB_X72_Y52_N4
\Add4~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~36_combout\ = (\count~206_combout\ & (\Add4~35\ $ (GND))) # (!\count~206_combout\ & (!\Add4~35\ & VCC))
-- \Add4~37\ = CARRY((\count~206_combout\ & !\Add4~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~206_combout\,
	datad => VCC,
	cin => \Add4~35\,
	combout => \Add4~36_combout\,
	cout => \Add4~37\);

-- Location: LCCOMB_X68_Y48_N4
\count~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~207_combout\ = (\buttons[3]~input_o\ & ((\Add4~36_combout\))) # (!\buttons[3]~input_o\ & (\count~206_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[3]~input_o\,
	datab => \count~206_combout\,
	datad => \Add4~36_combout\,
	combout => \count~207_combout\);

-- Location: LCCOMB_X69_Y50_N4
\Add5~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~36_combout\ = (\count~207_combout\ & (\Add5~35\ $ (GND))) # (!\count~207_combout\ & (!\Add5~35\ & VCC))
-- \Add5~37\ = CARRY((\count~207_combout\ & !\Add5~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~207_combout\,
	datad => VCC,
	cin => \Add5~35\,
	combout => \Add5~36_combout\,
	cout => \Add5~37\);

-- Location: LCCOMB_X68_Y48_N22
\count~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~208_combout\ = (\buttons[2]~input_o\ & ((\Add5~36_combout\))) # (!\buttons[2]~input_o\ & (\count~207_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[2]~input_o\,
	datab => \count~207_combout\,
	datac => \Add5~36_combout\,
	combout => \count~208_combout\);

-- Location: LCCOMB_X72_Y50_N4
\Add6~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~36_combout\ = (\count~208_combout\ & (\Add6~35\ $ (GND))) # (!\count~208_combout\ & (!\Add6~35\ & VCC))
-- \Add6~37\ = CARRY((\count~208_combout\ & !\Add6~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~208_combout\,
	datad => VCC,
	cin => \Add6~35\,
	combout => \Add6~36_combout\,
	cout => \Add6~37\);

-- Location: LCCOMB_X68_Y48_N12
\count~209\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~209_combout\ = (\buttons[1]~input_o\ & ((\Add6~36_combout\))) # (!\buttons[1]~input_o\ & (\count~208_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[1]~input_o\,
	datac => \count~208_combout\,
	datad => \Add6~36_combout\,
	combout => \count~209_combout\);

-- Location: LCCOMB_X70_Y50_N4
\Add7~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~53_combout\ = (\count~209_combout\ & (\Add7~51\ $ (GND))) # (!\count~209_combout\ & (!\Add7~51\ & VCC))
-- \Add7~54\ = CARRY((\count~209_combout\ & !\Add7~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~209_combout\,
	datad => VCC,
	cin => \Add7~51\,
	combout => \Add7~53_combout\,
	cout => \Add7~54\);

-- Location: LCCOMB_X68_Y48_N14
\count[18]~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[18]~210_combout\ = (\count[17]~21_combout\ & (((!\count[1]~20_combout\)))) # (!\count[17]~21_combout\ & ((\count[1]~20_combout\ & (\Add0~36_combout\)) # (!\count[1]~20_combout\ & ((\Add2~36_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[17]~21_combout\,
	datab => \Add0~36_combout\,
	datac => \Add2~36_combout\,
	datad => \count[1]~20_combout\,
	combout => \count[18]~210_combout\);

-- Location: LCCOMB_X68_Y48_N28
\count[18]~211\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[18]~211_combout\ = (\count[18]~210_combout\ & (((\Add3~36_combout\)) # (!\count[17]~21_combout\))) # (!\count[18]~210_combout\ & (\count[17]~21_combout\ & (\Add1~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[18]~210_combout\,
	datab => \count[17]~21_combout\,
	datac => \Add1~36_combout\,
	datad => \Add3~36_combout\,
	combout => \count[18]~211_combout\);

-- Location: LCCOMB_X68_Y48_N26
\count[18]~212\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[18]~212_combout\ = (\count[1]~18_combout\ & (!\count[17]~19_combout\ & ((\count[18]~211_combout\)))) # (!\count[1]~18_combout\ & ((\count[17]~19_combout\) # ((\Add5~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[1]~18_combout\,
	datab => \count[17]~19_combout\,
	datac => \Add5~36_combout\,
	datad => \count[18]~211_combout\,
	combout => \count[18]~212_combout\);

-- Location: LCCOMB_X68_Y48_N24
\count[18]~213\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[18]~213_combout\ = (\count[17]~19_combout\ & ((\count[18]~212_combout\ & ((\Add6~36_combout\))) # (!\count[18]~212_combout\ & (\Add4~36_combout\)))) # (!\count[17]~19_combout\ & (((\count[18]~212_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~36_combout\,
	datab => \count[17]~19_combout\,
	datac => \count[18]~212_combout\,
	datad => \Add6~36_combout\,
	combout => \count[18]~213_combout\);

-- Location: LCCOMB_X68_Y48_N30
\Add7~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~55_combout\ = (\buttons[0]~input_o\ & (\Add7~53_combout\)) # (!\buttons[0]~input_o\ & ((\count[18]~213_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[0]~input_o\,
	datac => \Add7~53_combout\,
	datad => \count[18]~213_combout\,
	combout => \Add7~55_combout\);

-- Location: LCCOMB_X68_Y48_N6
\count[18]\ : cycloneive_lcell_comb
-- Equation(s):
-- count(18) = (GLOBAL(\count[1]~361clkctrl_outclk\) & ((\Add7~55_combout\))) # (!GLOBAL(\count[1]~361clkctrl_outclk\) & (count(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(18),
	datac => \Add7~55_combout\,
	datad => \count[1]~361clkctrl_outclk\,
	combout => count(18));

-- Location: LCCOMB_X67_Y48_N6
\Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (count(19) & (!\Add0~37\)) # (!count(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!count(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X68_Y48_N20
\count~214\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~214_combout\ = (\buttons[7]~input_o\ & (\Add0~38_combout\)) # (!\buttons[7]~input_o\ & ((count(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[7]~input_o\,
	datac => \Add0~38_combout\,
	datad => count(19),
	combout => \count~214_combout\);

-- Location: LCCOMB_X67_Y52_N6
\Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (\count~214_combout\ & (!\Add1~37\)) # (!\count~214_combout\ & ((\Add1~37\) # (GND)))
-- \Add1~39\ = CARRY((!\Add1~37\) # (!\count~214_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~214_combout\,
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~38_combout\,
	cout => \Add1~39\);

-- Location: LCCOMB_X68_Y48_N18
\count~215\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~215_combout\ = (\buttons[6]~input_o\ & ((\Add1~38_combout\))) # (!\buttons[6]~input_o\ & (\count~214_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[6]~input_o\,
	datab => \count~214_combout\,
	datad => \Add1~38_combout\,
	combout => \count~215_combout\);

-- Location: LCCOMB_X69_Y52_N6
\Add2~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~38_combout\ = (\count~215_combout\ & (!\Add2~37\)) # (!\count~215_combout\ & ((\Add2~37\) # (GND)))
-- \Add2~39\ = CARRY((!\Add2~37\) # (!\count~215_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~215_combout\,
	datad => VCC,
	cin => \Add2~37\,
	combout => \Add2~38_combout\,
	cout => \Add2~39\);

-- Location: LCCOMB_X72_Y49_N20
\count~216\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~216_combout\ = (\buttons[5]~input_o\ & ((\Add2~38_combout\))) # (!\buttons[5]~input_o\ & (\count~215_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[5]~input_o\,
	datac => \count~215_combout\,
	datad => \Add2~38_combout\,
	combout => \count~216_combout\);

-- Location: LCCOMB_X69_Y48_N6
\Add3~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~38_combout\ = (\count~216_combout\ & (!\Add3~37\)) # (!\count~216_combout\ & ((\Add3~37\) # (GND)))
-- \Add3~39\ = CARRY((!\Add3~37\) # (!\count~216_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~216_combout\,
	datad => VCC,
	cin => \Add3~37\,
	combout => \Add3~38_combout\,
	cout => \Add3~39\);

-- Location: LCCOMB_X68_Y48_N0
\count[19]~221\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[19]~221_combout\ = (\count[17]~21_combout\ & (((\Add1~38_combout\)) # (!\count[1]~20_combout\))) # (!\count[17]~21_combout\ & (\count[1]~20_combout\ & (\Add0~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[17]~21_combout\,
	datab => \count[1]~20_combout\,
	datac => \Add0~38_combout\,
	datad => \Add1~38_combout\,
	combout => \count[19]~221_combout\);

-- Location: LCCOMB_X73_Y48_N0
\count[19]~222\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[19]~222_combout\ = (\count[1]~20_combout\ & (((\count[19]~221_combout\)))) # (!\count[1]~20_combout\ & ((\count[19]~221_combout\ & ((\Add3~38_combout\))) # (!\count[19]~221_combout\ & (\Add2~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[1]~20_combout\,
	datab => \Add2~38_combout\,
	datac => \Add3~38_combout\,
	datad => \count[19]~221_combout\,
	combout => \count[19]~222_combout\);

-- Location: LCCOMB_X72_Y49_N14
\count~217\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~217_combout\ = (\buttons[4]~input_o\ & ((\Add3~38_combout\))) # (!\buttons[4]~input_o\ & (\count~216_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[4]~input_o\,
	datab => \count~216_combout\,
	datad => \Add3~38_combout\,
	combout => \count~217_combout\);

-- Location: LCCOMB_X72_Y52_N6
\Add4~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~38_combout\ = (\count~217_combout\ & (!\Add4~37\)) # (!\count~217_combout\ & ((\Add4~37\) # (GND)))
-- \Add4~39\ = CARRY((!\Add4~37\) # (!\count~217_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~217_combout\,
	datad => VCC,
	cin => \Add4~37\,
	combout => \Add4~38_combout\,
	cout => \Add4~39\);

-- Location: LCCOMB_X73_Y48_N18
\count[19]~223\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[19]~223_combout\ = (\count[17]~19_combout\ & (((\Add4~38_combout\) # (!\count[1]~18_combout\)))) # (!\count[17]~19_combout\ & (\count[19]~222_combout\ & (\count[1]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[17]~19_combout\,
	datab => \count[19]~222_combout\,
	datac => \count[1]~18_combout\,
	datad => \Add4~38_combout\,
	combout => \count[19]~223_combout\);

-- Location: LCCOMB_X72_Y49_N8
\count~218\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~218_combout\ = (\buttons[3]~input_o\ & ((\Add4~38_combout\))) # (!\buttons[3]~input_o\ & (\count~217_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[3]~input_o\,
	datac => \count~217_combout\,
	datad => \Add4~38_combout\,
	combout => \count~218_combout\);

-- Location: LCCOMB_X69_Y50_N6
\Add5~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~38_combout\ = (\count~218_combout\ & (!\Add5~37\)) # (!\count~218_combout\ & ((\Add5~37\) # (GND)))
-- \Add5~39\ = CARRY((!\Add5~37\) # (!\count~218_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~218_combout\,
	datad => VCC,
	cin => \Add5~37\,
	combout => \Add5~38_combout\,
	cout => \Add5~39\);

-- Location: LCCOMB_X72_Y49_N2
\count~219\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~219_combout\ = (\buttons[2]~input_o\ & ((\Add5~38_combout\))) # (!\buttons[2]~input_o\ & (\count~218_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[2]~input_o\,
	datac => \count~218_combout\,
	datad => \Add5~38_combout\,
	combout => \count~219_combout\);

-- Location: LCCOMB_X72_Y50_N6
\Add6~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~38_combout\ = (\count~219_combout\ & (!\Add6~37\)) # (!\count~219_combout\ & ((\Add6~37\) # (GND)))
-- \Add6~39\ = CARRY((!\Add6~37\) # (!\count~219_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~219_combout\,
	datad => VCC,
	cin => \Add6~37\,
	combout => \Add6~38_combout\,
	cout => \Add6~39\);

-- Location: LCCOMB_X66_Y48_N8
\count[19]~224\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[19]~224_combout\ = (\count[19]~223_combout\ & ((\count[1]~18_combout\) # ((\Add6~38_combout\)))) # (!\count[19]~223_combout\ & (!\count[1]~18_combout\ & (\Add5~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[19]~223_combout\,
	datab => \count[1]~18_combout\,
	datac => \Add5~38_combout\,
	datad => \Add6~38_combout\,
	combout => \count[19]~224_combout\);

-- Location: LCCOMB_X72_Y49_N16
\count~220\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~220_combout\ = (\buttons[1]~input_o\ & (\Add6~38_combout\)) # (!\buttons[1]~input_o\ & ((\count~219_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[1]~input_o\,
	datac => \Add6~38_combout\,
	datad => \count~219_combout\,
	combout => \count~220_combout\);

-- Location: LCCOMB_X70_Y50_N6
\Add7~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~56_combout\ = (\count~220_combout\ & (!\Add7~54\)) # (!\count~220_combout\ & ((\Add7~54\) # (GND)))
-- \Add7~57\ = CARRY((!\Add7~54\) # (!\count~220_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~220_combout\,
	datad => VCC,
	cin => \Add7~54\,
	combout => \Add7~56_combout\,
	cout => \Add7~57\);

-- Location: LCCOMB_X66_Y48_N22
\Add7~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~58_combout\ = (\buttons[0]~input_o\ & ((\Add7~56_combout\))) # (!\buttons[0]~input_o\ & (\count[19]~224_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[0]~input_o\,
	datac => \count[19]~224_combout\,
	datad => \Add7~56_combout\,
	combout => \Add7~58_combout\);

-- Location: LCCOMB_X66_Y48_N16
\count[19]\ : cycloneive_lcell_comb
-- Equation(s):
-- count(19) = (GLOBAL(\count[1]~361clkctrl_outclk\) & ((\Add7~58_combout\))) # (!GLOBAL(\count[1]~361clkctrl_outclk\) & (count(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(19),
	datac => \count[1]~361clkctrl_outclk\,
	datad => \Add7~58_combout\,
	combout => count(19));

-- Location: LCCOMB_X67_Y48_N8
\Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (count(20) & (\Add0~39\ $ (GND))) # (!count(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((count(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X66_Y50_N24
\count~225\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~225_combout\ = (\buttons[7]~input_o\ & (\Add0~40_combout\)) # (!\buttons[7]~input_o\ & ((count(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[7]~input_o\,
	datac => \Add0~40_combout\,
	datad => count(20),
	combout => \count~225_combout\);

-- Location: LCCOMB_X67_Y52_N8
\Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~40_combout\ = (\count~225_combout\ & (\Add1~39\ $ (GND))) # (!\count~225_combout\ & (!\Add1~39\ & VCC))
-- \Add1~41\ = CARRY((\count~225_combout\ & !\Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~225_combout\,
	datad => VCC,
	cin => \Add1~39\,
	combout => \Add1~40_combout\,
	cout => \Add1~41\);

-- Location: LCCOMB_X66_Y50_N6
\count~226\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~226_combout\ = (\buttons[6]~input_o\ & ((\Add1~40_combout\))) # (!\buttons[6]~input_o\ & (\count~225_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[6]~input_o\,
	datab => \count~225_combout\,
	datad => \Add1~40_combout\,
	combout => \count~226_combout\);

-- Location: LCCOMB_X69_Y52_N8
\Add2~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~40_combout\ = (\count~226_combout\ & (\Add2~39\ $ (GND))) # (!\count~226_combout\ & (!\Add2~39\ & VCC))
-- \Add2~41\ = CARRY((\count~226_combout\ & !\Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~226_combout\,
	datad => VCC,
	cin => \Add2~39\,
	combout => \Add2~40_combout\,
	cout => \Add2~41\);

-- Location: LCCOMB_X66_Y50_N4
\count~227\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~227_combout\ = (\buttons[5]~input_o\ & ((\Add2~40_combout\))) # (!\buttons[5]~input_o\ & (\count~226_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count~226_combout\,
	datac => \buttons[5]~input_o\,
	datad => \Add2~40_combout\,
	combout => \count~227_combout\);

-- Location: LCCOMB_X69_Y48_N8
\Add3~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~40_combout\ = (\count~227_combout\ & (\Add3~39\ $ (GND))) # (!\count~227_combout\ & (!\Add3~39\ & VCC))
-- \Add3~41\ = CARRY((\count~227_combout\ & !\Add3~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~227_combout\,
	datad => VCC,
	cin => \Add3~39\,
	combout => \Add3~40_combout\,
	cout => \Add3~41\);

-- Location: LCCOMB_X66_Y50_N2
\count~228\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~228_combout\ = (\buttons[4]~input_o\ & ((\Add3~40_combout\))) # (!\buttons[4]~input_o\ & (\count~227_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[4]~input_o\,
	datac => \count~227_combout\,
	datad => \Add3~40_combout\,
	combout => \count~228_combout\);

-- Location: LCCOMB_X72_Y52_N8
\Add4~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~40_combout\ = (\count~228_combout\ & (\Add4~39\ $ (GND))) # (!\count~228_combout\ & (!\Add4~39\ & VCC))
-- \Add4~41\ = CARRY((\count~228_combout\ & !\Add4~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~228_combout\,
	datad => VCC,
	cin => \Add4~39\,
	combout => \Add4~40_combout\,
	cout => \Add4~41\);

-- Location: LCCOMB_X66_Y50_N28
\count~229\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~229_combout\ = (\buttons[3]~input_o\ & ((\Add4~40_combout\))) # (!\buttons[3]~input_o\ & (\count~228_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count~228_combout\,
	datac => \buttons[3]~input_o\,
	datad => \Add4~40_combout\,
	combout => \count~229_combout\);

-- Location: LCCOMB_X69_Y50_N8
\Add5~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~40_combout\ = (\count~229_combout\ & (\Add5~39\ $ (GND))) # (!\count~229_combout\ & (!\Add5~39\ & VCC))
-- \Add5~41\ = CARRY((\count~229_combout\ & !\Add5~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~229_combout\,
	datad => VCC,
	cin => \Add5~39\,
	combout => \Add5~40_combout\,
	cout => \Add5~41\);

-- Location: LCCOMB_X66_Y50_N18
\count~230\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~230_combout\ = (\buttons[2]~input_o\ & (\Add5~40_combout\)) # (!\buttons[2]~input_o\ & ((\count~229_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[2]~input_o\,
	datac => \Add5~40_combout\,
	datad => \count~229_combout\,
	combout => \count~230_combout\);

-- Location: LCCOMB_X72_Y50_N8
\Add6~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~40_combout\ = (\count~230_combout\ & (\Add6~39\ $ (GND))) # (!\count~230_combout\ & (!\Add6~39\ & VCC))
-- \Add6~41\ = CARRY((\count~230_combout\ & !\Add6~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~230_combout\,
	datad => VCC,
	cin => \Add6~39\,
	combout => \Add6~40_combout\,
	cout => \Add6~41\);

-- Location: LCCOMB_X66_Y50_N8
\count~231\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~231_combout\ = (\buttons[1]~input_o\ & ((\Add6~40_combout\))) # (!\buttons[1]~input_o\ & (\count~230_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count~230_combout\,
	datac => \buttons[1]~input_o\,
	datad => \Add6~40_combout\,
	combout => \count~231_combout\);

-- Location: LCCOMB_X70_Y50_N8
\Add7~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~59_combout\ = (\count~231_combout\ & (\Add7~57\ $ (GND))) # (!\count~231_combout\ & (!\Add7~57\ & VCC))
-- \Add7~60\ = CARRY((\count~231_combout\ & !\Add7~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~231_combout\,
	datad => VCC,
	cin => \Add7~57\,
	combout => \Add7~59_combout\,
	cout => \Add7~60\);

-- Location: LCCOMB_X66_Y50_N30
\count[20]~232\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[20]~232_combout\ = (\count[1]~20_combout\ & (((\Add0~40_combout\ & !\count[17]~21_combout\)))) # (!\count[1]~20_combout\ & ((\Add2~40_combout\) # ((\count[17]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[1]~20_combout\,
	datab => \Add2~40_combout\,
	datac => \Add0~40_combout\,
	datad => \count[17]~21_combout\,
	combout => \count[20]~232_combout\);

-- Location: LCCOMB_X66_Y50_N16
\count[20]~233\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[20]~233_combout\ = (\count[17]~21_combout\ & ((\count[20]~232_combout\ & ((\Add3~40_combout\))) # (!\count[20]~232_combout\ & (\Add1~40_combout\)))) # (!\count[17]~21_combout\ & (((\count[20]~232_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[17]~21_combout\,
	datab => \Add1~40_combout\,
	datac => \count[20]~232_combout\,
	datad => \Add3~40_combout\,
	combout => \count[20]~233_combout\);

-- Location: LCCOMB_X66_Y50_N22
\count[20]~234\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[20]~234_combout\ = (\count[1]~18_combout\ & (!\count[17]~19_combout\ & ((\count[20]~233_combout\)))) # (!\count[1]~18_combout\ & ((\count[17]~19_combout\) # ((\Add5~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[1]~18_combout\,
	datab => \count[17]~19_combout\,
	datac => \Add5~40_combout\,
	datad => \count[20]~233_combout\,
	combout => \count[20]~234_combout\);

-- Location: LCCOMB_X66_Y50_N0
\count[20]~235\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[20]~235_combout\ = (\count[17]~19_combout\ & ((\count[20]~234_combout\ & ((\Add6~40_combout\))) # (!\count[20]~234_combout\ & (\Add4~40_combout\)))) # (!\count[17]~19_combout\ & (((\count[20]~234_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~40_combout\,
	datab => \count[17]~19_combout\,
	datac => \count[20]~234_combout\,
	datad => \Add6~40_combout\,
	combout => \count[20]~235_combout\);

-- Location: LCCOMB_X66_Y50_N26
\Add7~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~61_combout\ = (\buttons[0]~input_o\ & (\Add7~59_combout\)) # (!\buttons[0]~input_o\ & ((\count[20]~235_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[0]~input_o\,
	datac => \Add7~59_combout\,
	datad => \count[20]~235_combout\,
	combout => \Add7~61_combout\);

-- Location: LCCOMB_X66_Y50_N20
\count[20]\ : cycloneive_lcell_comb
-- Equation(s):
-- count(20) = (GLOBAL(\count[1]~361clkctrl_outclk\) & (\Add7~61_combout\)) # (!GLOBAL(\count[1]~361clkctrl_outclk\) & ((count(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~61_combout\,
	datab => count(20),
	datad => \count[1]~361clkctrl_outclk\,
	combout => count(20));

-- Location: LCCOMB_X67_Y48_N10
\Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (count(21) & (!\Add0~41\)) # (!count(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!count(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X66_Y52_N6
\count~236\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~236_combout\ = (\buttons[7]~input_o\ & (\Add0~42_combout\)) # (!\buttons[7]~input_o\ & ((count(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[7]~input_o\,
	datac => \Add0~42_combout\,
	datad => count(21),
	combout => \count~236_combout\);

-- Location: LCCOMB_X67_Y52_N10
\Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (\count~236_combout\ & (!\Add1~41\)) # (!\count~236_combout\ & ((\Add1~41\) # (GND)))
-- \Add1~43\ = CARRY((!\Add1~41\) # (!\count~236_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~236_combout\,
	datad => VCC,
	cin => \Add1~41\,
	combout => \Add1~42_combout\,
	cout => \Add1~43\);

-- Location: LCCOMB_X66_Y52_N20
\count~237\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~237_combout\ = (\buttons[6]~input_o\ & (\Add1~42_combout\)) # (!\buttons[6]~input_o\ & ((\count~236_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[6]~input_o\,
	datac => \Add1~42_combout\,
	datad => \count~236_combout\,
	combout => \count~237_combout\);

-- Location: LCCOMB_X69_Y52_N10
\Add2~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~42_combout\ = (\count~237_combout\ & (!\Add2~41\)) # (!\count~237_combout\ & ((\Add2~41\) # (GND)))
-- \Add2~43\ = CARRY((!\Add2~41\) # (!\count~237_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~237_combout\,
	datad => VCC,
	cin => \Add2~41\,
	combout => \Add2~42_combout\,
	cout => \Add2~43\);

-- Location: LCCOMB_X68_Y52_N8
\count~238\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~238_combout\ = (\buttons[5]~input_o\ & ((\Add2~42_combout\))) # (!\buttons[5]~input_o\ & (\count~237_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[5]~input_o\,
	datac => \count~237_combout\,
	datad => \Add2~42_combout\,
	combout => \count~238_combout\);

-- Location: LCCOMB_X69_Y48_N10
\Add3~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~42_combout\ = (\count~238_combout\ & (!\Add3~41\)) # (!\count~238_combout\ & ((\Add3~41\) # (GND)))
-- \Add3~43\ = CARRY((!\Add3~41\) # (!\count~238_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~238_combout\,
	datad => VCC,
	cin => \Add3~41\,
	combout => \Add3~42_combout\,
	cout => \Add3~43\);

-- Location: LCCOMB_X68_Y52_N30
\count~239\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~239_combout\ = (\buttons[4]~input_o\ & ((\Add3~42_combout\))) # (!\buttons[4]~input_o\ & (\count~238_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[4]~input_o\,
	datab => \count~238_combout\,
	datac => \Add3~42_combout\,
	combout => \count~239_combout\);

-- Location: LCCOMB_X72_Y52_N10
\Add4~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~42_combout\ = (\count~239_combout\ & (!\Add4~41\)) # (!\count~239_combout\ & ((\Add4~41\) # (GND)))
-- \Add4~43\ = CARRY((!\Add4~41\) # (!\count~239_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~239_combout\,
	datad => VCC,
	cin => \Add4~41\,
	combout => \Add4~42_combout\,
	cout => \Add4~43\);

-- Location: LCCOMB_X68_Y52_N12
\count~240\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~240_combout\ = (\buttons[3]~input_o\ & ((\Add4~42_combout\))) # (!\buttons[3]~input_o\ & (\count~239_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[3]~input_o\,
	datac => \count~239_combout\,
	datad => \Add4~42_combout\,
	combout => \count~240_combout\);

-- Location: LCCOMB_X69_Y50_N10
\Add5~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~42_combout\ = (\count~240_combout\ & (!\Add5~41\)) # (!\count~240_combout\ & ((\Add5~41\) # (GND)))
-- \Add5~43\ = CARRY((!\Add5~41\) # (!\count~240_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~240_combout\,
	datad => VCC,
	cin => \Add5~41\,
	combout => \Add5~42_combout\,
	cout => \Add5~43\);

-- Location: LCCOMB_X68_Y52_N10
\count~241\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~241_combout\ = (\buttons[2]~input_o\ & (\Add5~42_combout\)) # (!\buttons[2]~input_o\ & ((\count~240_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[2]~input_o\,
	datac => \Add5~42_combout\,
	datad => \count~240_combout\,
	combout => \count~241_combout\);

-- Location: LCCOMB_X72_Y50_N10
\Add6~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~42_combout\ = (\count~241_combout\ & (!\Add6~41\)) # (!\count~241_combout\ & ((\Add6~41\) # (GND)))
-- \Add6~43\ = CARRY((!\Add6~41\) # (!\count~241_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~241_combout\,
	datad => VCC,
	cin => \Add6~41\,
	combout => \Add6~42_combout\,
	cout => \Add6~43\);

-- Location: LCCOMB_X68_Y50_N16
\count~242\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~242_combout\ = (\buttons[1]~input_o\ & (\Add6~42_combout\)) # (!\buttons[1]~input_o\ & ((\count~241_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[1]~input_o\,
	datac => \Add6~42_combout\,
	datad => \count~241_combout\,
	combout => \count~242_combout\);

-- Location: LCCOMB_X70_Y50_N10
\Add7~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~62_combout\ = (\count~242_combout\ & (!\Add7~60\)) # (!\count~242_combout\ & ((\Add7~60\) # (GND)))
-- \Add7~63\ = CARRY((!\Add7~60\) # (!\count~242_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~242_combout\,
	datad => VCC,
	cin => \Add7~60\,
	combout => \Add7~62_combout\,
	cout => \Add7~63\);

-- Location: LCCOMB_X66_Y52_N26
\count[21]~243\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[21]~243_combout\ = (\count[1]~20_combout\ & ((\count[17]~21_combout\ & ((\Add1~42_combout\))) # (!\count[17]~21_combout\ & (\Add0~42_combout\)))) # (!\count[1]~20_combout\ & (((\count[17]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[1]~20_combout\,
	datab => \Add0~42_combout\,
	datac => \Add1~42_combout\,
	datad => \count[17]~21_combout\,
	combout => \count[21]~243_combout\);

-- Location: LCCOMB_X66_Y52_N16
\count[21]~244\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[21]~244_combout\ = (\count[1]~20_combout\ & (\count[21]~243_combout\)) # (!\count[1]~20_combout\ & ((\count[21]~243_combout\ & (\Add3~42_combout\)) # (!\count[21]~243_combout\ & ((\Add2~42_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[1]~20_combout\,
	datab => \count[21]~243_combout\,
	datac => \Add3~42_combout\,
	datad => \Add2~42_combout\,
	combout => \count[21]~244_combout\);

-- Location: LCCOMB_X66_Y52_N30
\count[21]~245\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[21]~245_combout\ = (\count[1]~18_combout\ & ((\count[17]~19_combout\ & (\Add4~42_combout\)) # (!\count[17]~19_combout\ & ((\count[21]~244_combout\))))) # (!\count[1]~18_combout\ & (((\count[17]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~42_combout\,
	datab => \count[1]~18_combout\,
	datac => \count[17]~19_combout\,
	datad => \count[21]~244_combout\,
	combout => \count[21]~245_combout\);

-- Location: LCCOMB_X66_Y52_N28
\count[21]~246\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[21]~246_combout\ = (\count[21]~245_combout\ & ((\count[1]~18_combout\) # ((\Add6~42_combout\)))) # (!\count[21]~245_combout\ & (!\count[1]~18_combout\ & (\Add5~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[21]~245_combout\,
	datab => \count[1]~18_combout\,
	datac => \Add5~42_combout\,
	datad => \Add6~42_combout\,
	combout => \count[21]~246_combout\);

-- Location: LCCOMB_X66_Y52_N22
\Add7~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~64_combout\ = (\buttons[0]~input_o\ & (\Add7~62_combout\)) # (!\buttons[0]~input_o\ & ((\count[21]~246_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[0]~input_o\,
	datac => \Add7~62_combout\,
	datad => \count[21]~246_combout\,
	combout => \Add7~64_combout\);

-- Location: LCCOMB_X66_Y52_N10
\count[21]\ : cycloneive_lcell_comb
-- Equation(s):
-- count(21) = (GLOBAL(\count[1]~361clkctrl_outclk\) & ((\Add7~64_combout\))) # (!GLOBAL(\count[1]~361clkctrl_outclk\) & (count(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(21),
	datac => \count[1]~361clkctrl_outclk\,
	datad => \Add7~64_combout\,
	combout => count(21));

-- Location: LCCOMB_X67_Y48_N12
\Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (count(22) & (\Add0~43\ $ (GND))) # (!count(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((count(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X68_Y52_N4
\count~247\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~247_combout\ = (\buttons[7]~input_o\ & ((\Add0~44_combout\))) # (!\buttons[7]~input_o\ & (count(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[7]~input_o\,
	datab => count(22),
	datac => \Add0~44_combout\,
	combout => \count~247_combout\);

-- Location: LCCOMB_X67_Y52_N12
\Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = (\count~247_combout\ & (\Add1~43\ $ (GND))) # (!\count~247_combout\ & (!\Add1~43\ & VCC))
-- \Add1~45\ = CARRY((\count~247_combout\ & !\Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~247_combout\,
	datad => VCC,
	cin => \Add1~43\,
	combout => \Add1~44_combout\,
	cout => \Add1~45\);

-- Location: LCCOMB_X68_Y52_N14
\count~248\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~248_combout\ = (\buttons[6]~input_o\ & ((\Add1~44_combout\))) # (!\buttons[6]~input_o\ & (\count~247_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[6]~input_o\,
	datac => \count~247_combout\,
	datad => \Add1~44_combout\,
	combout => \count~248_combout\);

-- Location: LCCOMB_X69_Y52_N12
\Add2~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~44_combout\ = (\count~248_combout\ & (\Add2~43\ $ (GND))) # (!\count~248_combout\ & (!\Add2~43\ & VCC))
-- \Add2~45\ = CARRY((\count~248_combout\ & !\Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~248_combout\,
	datad => VCC,
	cin => \Add2~43\,
	combout => \Add2~44_combout\,
	cout => \Add2~45\);

-- Location: LCCOMB_X68_Y52_N0
\count~249\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~249_combout\ = (\buttons[5]~input_o\ & ((\Add2~44_combout\))) # (!\buttons[5]~input_o\ & (\count~248_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[5]~input_o\,
	datac => \count~248_combout\,
	datad => \Add2~44_combout\,
	combout => \count~249_combout\);

-- Location: LCCOMB_X69_Y48_N12
\Add3~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~44_combout\ = (\count~249_combout\ & (\Add3~43\ $ (GND))) # (!\count~249_combout\ & (!\Add3~43\ & VCC))
-- \Add3~45\ = CARRY((\count~249_combout\ & !\Add3~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~249_combout\,
	datad => VCC,
	cin => \Add3~43\,
	combout => \Add3~44_combout\,
	cout => \Add3~45\);

-- Location: LCCOMB_X68_Y52_N26
\count~250\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~250_combout\ = (\buttons[4]~input_o\ & ((\Add3~44_combout\))) # (!\buttons[4]~input_o\ & (\count~249_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[4]~input_o\,
	datab => \count~249_combout\,
	datad => \Add3~44_combout\,
	combout => \count~250_combout\);

-- Location: LCCOMB_X72_Y52_N12
\Add4~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~44_combout\ = (\count~250_combout\ & (\Add4~43\ $ (GND))) # (!\count~250_combout\ & (!\Add4~43\ & VCC))
-- \Add4~45\ = CARRY((\count~250_combout\ & !\Add4~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~250_combout\,
	datad => VCC,
	cin => \Add4~43\,
	combout => \Add4~44_combout\,
	cout => \Add4~45\);

-- Location: LCCOMB_X68_Y52_N2
\count[22]~254\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[22]~254_combout\ = (\count[17]~21_combout\ & (!\count[1]~20_combout\)) # (!\count[17]~21_combout\ & ((\count[1]~20_combout\ & (\Add0~44_combout\)) # (!\count[1]~20_combout\ & ((\Add2~44_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[17]~21_combout\,
	datab => \count[1]~20_combout\,
	datac => \Add0~44_combout\,
	datad => \Add2~44_combout\,
	combout => \count[22]~254_combout\);

-- Location: LCCOMB_X68_Y52_N16
\count[22]~255\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[22]~255_combout\ = (\count[17]~21_combout\ & ((\count[22]~254_combout\ & (\Add3~44_combout\)) # (!\count[22]~254_combout\ & ((\Add1~44_combout\))))) # (!\count[17]~21_combout\ & (((\count[22]~254_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[17]~21_combout\,
	datab => \Add3~44_combout\,
	datac => \count[22]~254_combout\,
	datad => \Add1~44_combout\,
	combout => \count[22]~255_combout\);

-- Location: LCCOMB_X68_Y52_N24
\count~251\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~251_combout\ = (\buttons[3]~input_o\ & ((\Add4~44_combout\))) # (!\buttons[3]~input_o\ & (\count~250_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count~250_combout\,
	datab => \buttons[3]~input_o\,
	datac => \Add4~44_combout\,
	combout => \count~251_combout\);

-- Location: LCCOMB_X69_Y50_N12
\Add5~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~44_combout\ = (\count~251_combout\ & (\Add5~43\ $ (GND))) # (!\count~251_combout\ & (!\Add5~43\ & VCC))
-- \Add5~45\ = CARRY((\count~251_combout\ & !\Add5~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~251_combout\,
	datad => VCC,
	cin => \Add5~43\,
	combout => \Add5~44_combout\,
	cout => \Add5~45\);

-- Location: LCCOMB_X66_Y52_N4
\count[22]~256\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[22]~256_combout\ = (\count[1]~18_combout\ & (\count[22]~255_combout\ & (!\count[17]~19_combout\))) # (!\count[1]~18_combout\ & (((\count[17]~19_combout\) # (\Add5~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[22]~255_combout\,
	datab => \count[1]~18_combout\,
	datac => \count[17]~19_combout\,
	datad => \Add5~44_combout\,
	combout => \count[22]~256_combout\);

-- Location: LCCOMB_X68_Y52_N22
\count~252\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~252_combout\ = (\buttons[2]~input_o\ & (\Add5~44_combout\)) # (!\buttons[2]~input_o\ & ((\count~251_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[2]~input_o\,
	datac => \Add5~44_combout\,
	datad => \count~251_combout\,
	combout => \count~252_combout\);

-- Location: LCCOMB_X72_Y50_N12
\Add6~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~44_combout\ = (\count~252_combout\ & (\Add6~43\ $ (GND))) # (!\count~252_combout\ & (!\Add6~43\ & VCC))
-- \Add6~45\ = CARRY((\count~252_combout\ & !\Add6~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~252_combout\,
	datad => VCC,
	cin => \Add6~43\,
	combout => \Add6~44_combout\,
	cout => \Add6~45\);

-- Location: LCCOMB_X66_Y52_N14
\count[22]~257\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[22]~257_combout\ = (\count[17]~19_combout\ & ((\count[22]~256_combout\ & ((\Add6~44_combout\))) # (!\count[22]~256_combout\ & (\Add4~44_combout\)))) # (!\count[17]~19_combout\ & (((\count[22]~256_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[17]~19_combout\,
	datab => \Add4~44_combout\,
	datac => \count[22]~256_combout\,
	datad => \Add6~44_combout\,
	combout => \count[22]~257_combout\);

-- Location: LCCOMB_X68_Y52_N28
\count~253\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~253_combout\ = (\buttons[1]~input_o\ & ((\Add6~44_combout\))) # (!\buttons[1]~input_o\ & (\count~252_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[1]~input_o\,
	datac => \count~252_combout\,
	datad => \Add6~44_combout\,
	combout => \count~253_combout\);

-- Location: LCCOMB_X70_Y50_N12
\Add7~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~65_combout\ = (\count~253_combout\ & (\Add7~63\ $ (GND))) # (!\count~253_combout\ & (!\Add7~63\ & VCC))
-- \Add7~66\ = CARRY((\count~253_combout\ & !\Add7~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~253_combout\,
	datad => VCC,
	cin => \Add7~63\,
	combout => \Add7~65_combout\,
	cout => \Add7~66\);

-- Location: LCCOMB_X66_Y52_N24
\Add7~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~67_combout\ = (\buttons[0]~input_o\ & ((\Add7~65_combout\))) # (!\buttons[0]~input_o\ & (\count[22]~257_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[0]~input_o\,
	datac => \count[22]~257_combout\,
	datad => \Add7~65_combout\,
	combout => \Add7~67_combout\);

-- Location: LCCOMB_X66_Y52_N8
\count[22]\ : cycloneive_lcell_comb
-- Equation(s):
-- count(22) = (GLOBAL(\count[1]~361clkctrl_outclk\) & ((\Add7~67_combout\))) # (!GLOBAL(\count[1]~361clkctrl_outclk\) & (count(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(22),
	datac => \Add7~67_combout\,
	datad => \count[1]~361clkctrl_outclk\,
	combout => count(22));

-- Location: LCCOMB_X67_Y48_N14
\Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (count(23) & (!\Add0~45\)) # (!count(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!count(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X67_Y50_N0
\count~258\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~258_combout\ = (\buttons[7]~input_o\ & ((\Add0~46_combout\))) # (!\buttons[7]~input_o\ & (count(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[7]~input_o\,
	datac => count(23),
	datad => \Add0~46_combout\,
	combout => \count~258_combout\);

-- Location: LCCOMB_X67_Y52_N14
\Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~46_combout\ = (\count~258_combout\ & (!\Add1~45\)) # (!\count~258_combout\ & ((\Add1~45\) # (GND)))
-- \Add1~47\ = CARRY((!\Add1~45\) # (!\count~258_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~258_combout\,
	datad => VCC,
	cin => \Add1~45\,
	combout => \Add1~46_combout\,
	cout => \Add1~47\);

-- Location: LCCOMB_X67_Y50_N6
\count~259\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~259_combout\ = (\buttons[6]~input_o\ & ((\Add1~46_combout\))) # (!\buttons[6]~input_o\ & (\count~258_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count~258_combout\,
	datac => \buttons[6]~input_o\,
	datad => \Add1~46_combout\,
	combout => \count~259_combout\);

-- Location: LCCOMB_X69_Y52_N14
\Add2~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~46_combout\ = (\count~259_combout\ & (!\Add2~45\)) # (!\count~259_combout\ & ((\Add2~45\) # (GND)))
-- \Add2~47\ = CARRY((!\Add2~45\) # (!\count~259_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~259_combout\,
	datad => VCC,
	cin => \Add2~45\,
	combout => \Add2~46_combout\,
	cout => \Add2~47\);

-- Location: LCCOMB_X67_Y50_N12
\count~260\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~260_combout\ = (\buttons[5]~input_o\ & ((\Add2~46_combout\))) # (!\buttons[5]~input_o\ & (\count~259_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count~259_combout\,
	datac => \buttons[5]~input_o\,
	datad => \Add2~46_combout\,
	combout => \count~260_combout\);

-- Location: LCCOMB_X69_Y48_N14
\Add3~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~46_combout\ = (\count~260_combout\ & (!\Add3~45\)) # (!\count~260_combout\ & ((\Add3~45\) # (GND)))
-- \Add3~47\ = CARRY((!\Add3~45\) # (!\count~260_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~260_combout\,
	datad => VCC,
	cin => \Add3~45\,
	combout => \Add3~46_combout\,
	cout => \Add3~47\);

-- Location: LCCOMB_X67_Y50_N2
\count~261\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~261_combout\ = (\buttons[4]~input_o\ & (\Add3~46_combout\)) # (!\buttons[4]~input_o\ & ((\count~260_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[4]~input_o\,
	datac => \Add3~46_combout\,
	datad => \count~260_combout\,
	combout => \count~261_combout\);

-- Location: LCCOMB_X72_Y52_N14
\Add4~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~46_combout\ = (\count~261_combout\ & (!\Add4~45\)) # (!\count~261_combout\ & ((\Add4~45\) # (GND)))
-- \Add4~47\ = CARRY((!\Add4~45\) # (!\count~261_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~261_combout\,
	datad => VCC,
	cin => \Add4~45\,
	combout => \Add4~46_combout\,
	cout => \Add4~47\);

-- Location: LCCOMB_X67_Y50_N28
\count~262\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~262_combout\ = (\buttons[3]~input_o\ & ((\Add4~46_combout\))) # (!\buttons[3]~input_o\ & (\count~261_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count~261_combout\,
	datac => \buttons[3]~input_o\,
	datad => \Add4~46_combout\,
	combout => \count~262_combout\);

-- Location: LCCOMB_X69_Y50_N14
\Add5~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~46_combout\ = (\count~262_combout\ & (!\Add5~45\)) # (!\count~262_combout\ & ((\Add5~45\) # (GND)))
-- \Add5~47\ = CARRY((!\Add5~45\) # (!\count~262_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~262_combout\,
	datad => VCC,
	cin => \Add5~45\,
	combout => \Add5~46_combout\,
	cout => \Add5~47\);

-- Location: LCCOMB_X73_Y50_N0
\count[23]~265\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[23]~265_combout\ = (\count[1]~20_combout\ & ((\count[17]~21_combout\ & ((\Add1~46_combout\))) # (!\count[17]~21_combout\ & (\Add0~46_combout\)))) # (!\count[1]~20_combout\ & (((\count[17]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[1]~20_combout\,
	datab => \Add0~46_combout\,
	datac => \count[17]~21_combout\,
	datad => \Add1~46_combout\,
	combout => \count[23]~265_combout\);

-- Location: LCCOMB_X67_Y50_N26
\count[23]~266\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[23]~266_combout\ = (\count[1]~20_combout\ & (\count[23]~265_combout\)) # (!\count[1]~20_combout\ & ((\count[23]~265_combout\ & (\Add3~46_combout\)) # (!\count[23]~265_combout\ & ((\Add2~46_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[1]~20_combout\,
	datab => \count[23]~265_combout\,
	datac => \Add3~46_combout\,
	datad => \Add2~46_combout\,
	combout => \count[23]~266_combout\);

-- Location: LCCOMB_X67_Y50_N8
\count[23]~267\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[23]~267_combout\ = (\count[1]~18_combout\ & ((\count[17]~19_combout\ & ((\Add4~46_combout\))) # (!\count[17]~19_combout\ & (\count[23]~266_combout\)))) # (!\count[1]~18_combout\ & (\count[17]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[1]~18_combout\,
	datab => \count[17]~19_combout\,
	datac => \count[23]~266_combout\,
	datad => \Add4~46_combout\,
	combout => \count[23]~267_combout\);

-- Location: LCCOMB_X67_Y50_N10
\count~263\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~263_combout\ = (\buttons[2]~input_o\ & ((\Add5~46_combout\))) # (!\buttons[2]~input_o\ & (\count~262_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count~262_combout\,
	datac => \buttons[2]~input_o\,
	datad => \Add5~46_combout\,
	combout => \count~263_combout\);

-- Location: LCCOMB_X72_Y50_N14
\Add6~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~46_combout\ = (\count~263_combout\ & (!\Add6~45\)) # (!\count~263_combout\ & ((\Add6~45\) # (GND)))
-- \Add6~47\ = CARRY((!\Add6~45\) # (!\count~263_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~263_combout\,
	datad => VCC,
	cin => \Add6~45\,
	combout => \Add6~46_combout\,
	cout => \Add6~47\);

-- Location: LCCOMB_X67_Y50_N30
\count[23]~268\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[23]~268_combout\ = (\count[1]~18_combout\ & (((\count[23]~267_combout\)))) # (!\count[1]~18_combout\ & ((\count[23]~267_combout\ & ((\Add6~46_combout\))) # (!\count[23]~267_combout\ & (\Add5~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[1]~18_combout\,
	datab => \Add5~46_combout\,
	datac => \count[23]~267_combout\,
	datad => \Add6~46_combout\,
	combout => \count[23]~268_combout\);

-- Location: LCCOMB_X67_Y50_N16
\count~264\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~264_combout\ = (\buttons[1]~input_o\ & ((\Add6~46_combout\))) # (!\buttons[1]~input_o\ & (\count~263_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count~263_combout\,
	datab => \buttons[1]~input_o\,
	datad => \Add6~46_combout\,
	combout => \count~264_combout\);

-- Location: LCCOMB_X70_Y50_N14
\Add7~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~68_combout\ = (\count~264_combout\ & (!\Add7~66\)) # (!\count~264_combout\ & ((\Add7~66\) # (GND)))
-- \Add7~69\ = CARRY((!\Add7~66\) # (!\count~264_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~264_combout\,
	datad => VCC,
	cin => \Add7~66\,
	combout => \Add7~68_combout\,
	cout => \Add7~69\);

-- Location: LCCOMB_X67_Y50_N24
\Add7~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~70_combout\ = (\buttons[0]~input_o\ & ((\Add7~68_combout\))) # (!\buttons[0]~input_o\ & (\count[23]~268_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[23]~268_combout\,
	datac => \buttons[0]~input_o\,
	datad => \Add7~68_combout\,
	combout => \Add7~70_combout\);

-- Location: LCCOMB_X67_Y50_N4
\count[23]\ : cycloneive_lcell_comb
-- Equation(s):
-- count(23) = (GLOBAL(\count[1]~361clkctrl_outclk\) & ((\Add7~70_combout\))) # (!GLOBAL(\count[1]~361clkctrl_outclk\) & (count(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(23),
	datac => \count[1]~361clkctrl_outclk\,
	datad => \Add7~70_combout\,
	combout => count(23));

-- Location: LCCOMB_X67_Y48_N16
\Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (count(24) & (\Add0~47\ $ (GND))) # (!count(24) & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((count(24) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: LCCOMB_X68_Y54_N6
\count~269\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~269_combout\ = (\buttons[7]~input_o\ & ((\Add0~48_combout\))) # (!\buttons[7]~input_o\ & (count(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[7]~input_o\,
	datac => count(24),
	datad => \Add0~48_combout\,
	combout => \count~269_combout\);

-- Location: LCCOMB_X67_Y52_N16
\Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~48_combout\ = (\count~269_combout\ & (\Add1~47\ $ (GND))) # (!\count~269_combout\ & (!\Add1~47\ & VCC))
-- \Add1~49\ = CARRY((\count~269_combout\ & !\Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~269_combout\,
	datad => VCC,
	cin => \Add1~47\,
	combout => \Add1~48_combout\,
	cout => \Add1~49\);

-- Location: LCCOMB_X68_Y54_N12
\count~270\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~270_combout\ = (\buttons[6]~input_o\ & ((\Add1~48_combout\))) # (!\buttons[6]~input_o\ & (\count~269_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count~269_combout\,
	datab => \buttons[6]~input_o\,
	datad => \Add1~48_combout\,
	combout => \count~270_combout\);

-- Location: LCCOMB_X69_Y52_N16
\Add2~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~48_combout\ = (\count~270_combout\ & (\Add2~47\ $ (GND))) # (!\count~270_combout\ & (!\Add2~47\ & VCC))
-- \Add2~49\ = CARRY((\count~270_combout\ & !\Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~270_combout\,
	datad => VCC,
	cin => \Add2~47\,
	combout => \Add2~48_combout\,
	cout => \Add2~49\);

-- Location: LCCOMB_X68_Y54_N26
\count~271\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~271_combout\ = (\buttons[5]~input_o\ & (\Add2~48_combout\)) # (!\buttons[5]~input_o\ & ((\count~270_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[5]~input_o\,
	datac => \Add2~48_combout\,
	datad => \count~270_combout\,
	combout => \count~271_combout\);

-- Location: LCCOMB_X69_Y48_N16
\Add3~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~48_combout\ = (\count~271_combout\ & (\Add3~47\ $ (GND))) # (!\count~271_combout\ & (!\Add3~47\ & VCC))
-- \Add3~49\ = CARRY((\count~271_combout\ & !\Add3~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~271_combout\,
	datad => VCC,
	cin => \Add3~47\,
	combout => \Add3~48_combout\,
	cout => \Add3~49\);

-- Location: LCCOMB_X72_Y49_N30
\count~272\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~272_combout\ = (\buttons[4]~input_o\ & ((\Add3~48_combout\))) # (!\buttons[4]~input_o\ & (\count~271_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[4]~input_o\,
	datab => \count~271_combout\,
	datad => \Add3~48_combout\,
	combout => \count~272_combout\);

-- Location: LCCOMB_X72_Y52_N16
\Add4~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~48_combout\ = (\count~272_combout\ & (\Add4~47\ $ (GND))) # (!\count~272_combout\ & (!\Add4~47\ & VCC))
-- \Add4~49\ = CARRY((\count~272_combout\ & !\Add4~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~272_combout\,
	datad => VCC,
	cin => \Add4~47\,
	combout => \Add4~48_combout\,
	cout => \Add4~49\);

-- Location: LCCOMB_X72_Y49_N0
\count~273\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~273_combout\ = (\buttons[3]~input_o\ & ((\Add4~48_combout\))) # (!\buttons[3]~input_o\ & (\count~272_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[3]~input_o\,
	datac => \count~272_combout\,
	datad => \Add4~48_combout\,
	combout => \count~273_combout\);

-- Location: LCCOMB_X69_Y50_N16
\Add5~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~48_combout\ = (\count~273_combout\ & (\Add5~47\ $ (GND))) # (!\count~273_combout\ & (!\Add5~47\ & VCC))
-- \Add5~49\ = CARRY((\count~273_combout\ & !\Add5~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~273_combout\,
	datad => VCC,
	cin => \Add5~47\,
	combout => \Add5~48_combout\,
	cout => \Add5~49\);

-- Location: LCCOMB_X72_Y49_N10
\count~274\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~274_combout\ = (\buttons[2]~input_o\ & ((\Add5~48_combout\))) # (!\buttons[2]~input_o\ & (\count~273_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count~273_combout\,
	datac => \buttons[2]~input_o\,
	datad => \Add5~48_combout\,
	combout => \count~274_combout\);

-- Location: LCCOMB_X72_Y50_N16
\Add6~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~48_combout\ = (\count~274_combout\ & (\Add6~47\ $ (GND))) # (!\count~274_combout\ & (!\Add6~47\ & VCC))
-- \Add6~49\ = CARRY((\count~274_combout\ & !\Add6~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~274_combout\,
	datad => VCC,
	cin => \Add6~47\,
	combout => \Add6~48_combout\,
	cout => \Add6~49\);

-- Location: LCCOMB_X68_Y52_N18
\count[24]~276\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[24]~276_combout\ = (\count[17]~21_combout\ & (!\count[1]~20_combout\)) # (!\count[17]~21_combout\ & ((\count[1]~20_combout\ & (\Add0~48_combout\)) # (!\count[1]~20_combout\ & ((\Add2~48_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[17]~21_combout\,
	datab => \count[1]~20_combout\,
	datac => \Add0~48_combout\,
	datad => \Add2~48_combout\,
	combout => \count[24]~276_combout\);

-- Location: LCCOMB_X68_Y52_N20
\count[24]~277\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[24]~277_combout\ = (\count[24]~276_combout\ & ((\Add3~48_combout\) # ((!\count[17]~21_combout\)))) # (!\count[24]~276_combout\ & (((\Add1~48_combout\ & \count[17]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~48_combout\,
	datab => \count[24]~276_combout\,
	datac => \Add1~48_combout\,
	datad => \count[17]~21_combout\,
	combout => \count[24]~277_combout\);

-- Location: LCCOMB_X67_Y50_N18
\count[24]~278\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[24]~278_combout\ = (\count[1]~18_combout\ & (!\count[17]~19_combout\ & (\count[24]~277_combout\))) # (!\count[1]~18_combout\ & ((\count[17]~19_combout\) # ((\Add5~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[1]~18_combout\,
	datab => \count[17]~19_combout\,
	datac => \count[24]~277_combout\,
	datad => \Add5~48_combout\,
	combout => \count[24]~278_combout\);

-- Location: LCCOMB_X67_Y50_N20
\count[24]~279\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[24]~279_combout\ = (\count[17]~19_combout\ & ((\count[24]~278_combout\ & ((\Add6~48_combout\))) # (!\count[24]~278_combout\ & (\Add4~48_combout\)))) # (!\count[17]~19_combout\ & (((\count[24]~278_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~48_combout\,
	datab => \count[17]~19_combout\,
	datac => \Add6~48_combout\,
	datad => \count[24]~278_combout\,
	combout => \count[24]~279_combout\);

-- Location: LCCOMB_X72_Y49_N28
\count~275\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~275_combout\ = (\buttons[1]~input_o\ & (\Add6~48_combout\)) # (!\buttons[1]~input_o\ & ((\count~274_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[1]~input_o\,
	datac => \Add6~48_combout\,
	datad => \count~274_combout\,
	combout => \count~275_combout\);

-- Location: LCCOMB_X70_Y50_N16
\Add7~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~71_combout\ = (\count~275_combout\ & (\Add7~69\ $ (GND))) # (!\count~275_combout\ & (!\Add7~69\ & VCC))
-- \Add7~72\ = CARRY((\count~275_combout\ & !\Add7~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~275_combout\,
	datad => VCC,
	cin => \Add7~69\,
	combout => \Add7~71_combout\,
	cout => \Add7~72\);

-- Location: LCCOMB_X67_Y50_N14
\Add7~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~73_combout\ = (\buttons[0]~input_o\ & ((\Add7~71_combout\))) # (!\buttons[0]~input_o\ & (\count[24]~279_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count[24]~279_combout\,
	datac => \buttons[0]~input_o\,
	datad => \Add7~71_combout\,
	combout => \Add7~73_combout\);

-- Location: LCCOMB_X67_Y50_N22
\count[24]\ : cycloneive_lcell_comb
-- Equation(s):
-- count(24) = (GLOBAL(\count[1]~361clkctrl_outclk\) & ((\Add7~73_combout\))) # (!GLOBAL(\count[1]~361clkctrl_outclk\) & (count(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(24),
	datac => \count[1]~361clkctrl_outclk\,
	datad => \Add7~73_combout\,
	combout => count(24));

-- Location: LCCOMB_X67_Y48_N18
\Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (count(25) & (!\Add0~49\)) # (!count(25) & ((\Add0~49\) # (GND)))
-- \Add0~51\ = CARRY((!\Add0~49\) # (!count(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(25),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: LCCOMB_X72_Y48_N12
\count~280\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~280_combout\ = (\buttons[7]~input_o\ & ((\Add0~50_combout\))) # (!\buttons[7]~input_o\ & (count(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(25),
	datac => \buttons[7]~input_o\,
	datad => \Add0~50_combout\,
	combout => \count~280_combout\);

-- Location: LCCOMB_X67_Y52_N18
\Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~50_combout\ = (\count~280_combout\ & (!\Add1~49\)) # (!\count~280_combout\ & ((\Add1~49\) # (GND)))
-- \Add1~51\ = CARRY((!\Add1~49\) # (!\count~280_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~280_combout\,
	datad => VCC,
	cin => \Add1~49\,
	combout => \Add1~50_combout\,
	cout => \Add1~51\);

-- Location: LCCOMB_X72_Y48_N26
\count~281\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~281_combout\ = (\buttons[6]~input_o\ & ((\Add1~50_combout\))) # (!\buttons[6]~input_o\ & (\count~280_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count~280_combout\,
	datac => \buttons[6]~input_o\,
	datad => \Add1~50_combout\,
	combout => \count~281_combout\);

-- Location: LCCOMB_X69_Y52_N18
\Add2~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~50_combout\ = (\count~281_combout\ & (!\Add2~49\)) # (!\count~281_combout\ & ((\Add2~49\) # (GND)))
-- \Add2~51\ = CARRY((!\Add2~49\) # (!\count~281_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~281_combout\,
	datad => VCC,
	cin => \Add2~49\,
	combout => \Add2~50_combout\,
	cout => \Add2~51\);

-- Location: LCCOMB_X72_Y48_N16
\count~282\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~282_combout\ = (\buttons[5]~input_o\ & ((\Add2~50_combout\))) # (!\buttons[5]~input_o\ & (\count~281_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[5]~input_o\,
	datac => \count~281_combout\,
	datad => \Add2~50_combout\,
	combout => \count~282_combout\);

-- Location: LCCOMB_X69_Y48_N18
\Add3~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~50_combout\ = (\count~282_combout\ & (!\Add3~49\)) # (!\count~282_combout\ & ((\Add3~49\) # (GND)))
-- \Add3~51\ = CARRY((!\Add3~49\) # (!\count~282_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~282_combout\,
	datad => VCC,
	cin => \Add3~49\,
	combout => \Add3~50_combout\,
	cout => \Add3~51\);

-- Location: LCCOMB_X72_Y48_N30
\count~283\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~283_combout\ = (\buttons[4]~input_o\ & (\Add3~50_combout\)) # (!\buttons[4]~input_o\ & ((\count~282_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[4]~input_o\,
	datac => \Add3~50_combout\,
	datad => \count~282_combout\,
	combout => \count~283_combout\);

-- Location: LCCOMB_X72_Y52_N18
\Add4~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~50_combout\ = (\count~283_combout\ & (!\Add4~49\)) # (!\count~283_combout\ & ((\Add4~49\) # (GND)))
-- \Add4~51\ = CARRY((!\Add4~49\) # (!\count~283_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~283_combout\,
	datad => VCC,
	cin => \Add4~49\,
	combout => \Add4~50_combout\,
	cout => \Add4~51\);

-- Location: LCCOMB_X72_Y48_N0
\count~284\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~284_combout\ = (\buttons[3]~input_o\ & ((\Add4~50_combout\))) # (!\buttons[3]~input_o\ & (\count~283_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[3]~input_o\,
	datac => \count~283_combout\,
	datad => \Add4~50_combout\,
	combout => \count~284_combout\);

-- Location: LCCOMB_X69_Y50_N18
\Add5~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~50_combout\ = (\count~284_combout\ & (!\Add5~49\)) # (!\count~284_combout\ & ((\Add5~49\) # (GND)))
-- \Add5~51\ = CARRY((!\Add5~49\) # (!\count~284_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~284_combout\,
	datad => VCC,
	cin => \Add5~49\,
	combout => \Add5~50_combout\,
	cout => \Add5~51\);

-- Location: LCCOMB_X72_Y48_N2
\count[25]~287\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[25]~287_combout\ = (\count[1]~20_combout\ & ((\count[17]~21_combout\ & ((\Add1~50_combout\))) # (!\count[17]~21_combout\ & (\Add0~50_combout\)))) # (!\count[1]~20_combout\ & (((\count[17]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~50_combout\,
	datab => \count[1]~20_combout\,
	datac => \count[17]~21_combout\,
	datad => \Add1~50_combout\,
	combout => \count[25]~287_combout\);

-- Location: LCCOMB_X72_Y48_N8
\count[25]~288\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[25]~288_combout\ = (\count[25]~287_combout\ & (((\Add3~50_combout\) # (\count[1]~20_combout\)))) # (!\count[25]~287_combout\ & (\Add2~50_combout\ & ((!\count[1]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~50_combout\,
	datab => \count[25]~287_combout\,
	datac => \Add3~50_combout\,
	datad => \count[1]~20_combout\,
	combout => \count[25]~288_combout\);

-- Location: LCCOMB_X72_Y48_N14
\count[25]~289\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[25]~289_combout\ = (\count[1]~18_combout\ & ((\count[17]~19_combout\ & ((\Add4~50_combout\))) # (!\count[17]~19_combout\ & (\count[25]~288_combout\)))) # (!\count[1]~18_combout\ & (\count[17]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[1]~18_combout\,
	datab => \count[17]~19_combout\,
	datac => \count[25]~288_combout\,
	datad => \Add4~50_combout\,
	combout => \count[25]~289_combout\);

-- Location: LCCOMB_X72_Y48_N6
\count~285\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~285_combout\ = (\buttons[2]~input_o\ & ((\Add5~50_combout\))) # (!\buttons[2]~input_o\ & (\count~284_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count~284_combout\,
	datac => \buttons[2]~input_o\,
	datad => \Add5~50_combout\,
	combout => \count~285_combout\);

-- Location: LCCOMB_X72_Y50_N18
\Add6~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~50_combout\ = (\count~285_combout\ & (!\Add6~49\)) # (!\count~285_combout\ & ((\Add6~49\) # (GND)))
-- \Add6~51\ = CARRY((!\Add6~49\) # (!\count~285_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~285_combout\,
	datad => VCC,
	cin => \Add6~49\,
	combout => \Add6~50_combout\,
	cout => \Add6~51\);

-- Location: LCCOMB_X72_Y48_N28
\count[25]~290\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[25]~290_combout\ = (\count[25]~289_combout\ & (((\count[1]~18_combout\) # (\Add6~50_combout\)))) # (!\count[25]~289_combout\ & (\Add5~50_combout\ & (!\count[1]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~50_combout\,
	datab => \count[25]~289_combout\,
	datac => \count[1]~18_combout\,
	datad => \Add6~50_combout\,
	combout => \count[25]~290_combout\);

-- Location: LCCOMB_X72_Y48_N24
\count~286\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~286_combout\ = (\buttons[1]~input_o\ & ((\Add6~50_combout\))) # (!\buttons[1]~input_o\ & (\count~285_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count~285_combout\,
	datab => \buttons[1]~input_o\,
	datad => \Add6~50_combout\,
	combout => \count~286_combout\);

-- Location: LCCOMB_X70_Y50_N18
\Add7~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~74_combout\ = (\count~286_combout\ & (!\Add7~72\)) # (!\count~286_combout\ & ((\Add7~72\) # (GND)))
-- \Add7~75\ = CARRY((!\Add7~72\) # (!\count~286_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~286_combout\,
	datad => VCC,
	cin => \Add7~72\,
	combout => \Add7~74_combout\,
	cout => \Add7~75\);

-- Location: LCCOMB_X72_Y48_N18
\Add7~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~76_combout\ = (\buttons[0]~input_o\ & ((\Add7~74_combout\))) # (!\buttons[0]~input_o\ & (\count[25]~290_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count[25]~290_combout\,
	datac => \buttons[0]~input_o\,
	datad => \Add7~74_combout\,
	combout => \Add7~76_combout\);

-- Location: LCCOMB_X72_Y48_N20
\count[25]\ : cycloneive_lcell_comb
-- Equation(s):
-- count(25) = (GLOBAL(\count[1]~361clkctrl_outclk\) & ((\Add7~76_combout\))) # (!GLOBAL(\count[1]~361clkctrl_outclk\) & (count(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(25),
	datac => \Add7~76_combout\,
	datad => \count[1]~361clkctrl_outclk\,
	combout => count(25));

-- Location: LCCOMB_X67_Y48_N20
\Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (count(26) & (\Add0~51\ $ (GND))) # (!count(26) & (!\Add0~51\ & VCC))
-- \Add0~53\ = CARRY((count(26) & !\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(26),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: LCCOMB_X70_Y52_N6
\count~291\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~291_combout\ = (\buttons[7]~input_o\ & ((\Add0~52_combout\))) # (!\buttons[7]~input_o\ & (count(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(26),
	datab => \buttons[7]~input_o\,
	datad => \Add0~52_combout\,
	combout => \count~291_combout\);

-- Location: LCCOMB_X67_Y52_N20
\Add1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~52_combout\ = (\count~291_combout\ & (\Add1~51\ $ (GND))) # (!\count~291_combout\ & (!\Add1~51\ & VCC))
-- \Add1~53\ = CARRY((\count~291_combout\ & !\Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~291_combout\,
	datad => VCC,
	cin => \Add1~51\,
	combout => \Add1~52_combout\,
	cout => \Add1~53\);

-- Location: LCCOMB_X70_Y52_N0
\count~292\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~292_combout\ = (\buttons[6]~input_o\ & (\Add1~52_combout\)) # (!\buttons[6]~input_o\ & ((\count~291_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[6]~input_o\,
	datac => \Add1~52_combout\,
	datad => \count~291_combout\,
	combout => \count~292_combout\);

-- Location: LCCOMB_X69_Y52_N20
\Add2~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~52_combout\ = (\count~292_combout\ & (\Add2~51\ $ (GND))) # (!\count~292_combout\ & (!\Add2~51\ & VCC))
-- \Add2~53\ = CARRY((\count~292_combout\ & !\Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~292_combout\,
	datad => VCC,
	cin => \Add2~51\,
	combout => \Add2~52_combout\,
	cout => \Add2~53\);

-- Location: LCCOMB_X70_Y52_N26
\count~293\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~293_combout\ = (\buttons[5]~input_o\ & ((\Add2~52_combout\))) # (!\buttons[5]~input_o\ & (\count~292_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count~292_combout\,
	datac => \buttons[5]~input_o\,
	datad => \Add2~52_combout\,
	combout => \count~293_combout\);

-- Location: LCCOMB_X69_Y48_N20
\Add3~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~52_combout\ = (\count~293_combout\ & (\Add3~51\ $ (GND))) # (!\count~293_combout\ & (!\Add3~51\ & VCC))
-- \Add3~53\ = CARRY((\count~293_combout\ & !\Add3~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~293_combout\,
	datad => VCC,
	cin => \Add3~51\,
	combout => \Add3~52_combout\,
	cout => \Add3~53\);

-- Location: LCCOMB_X70_Y52_N16
\count~294\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~294_combout\ = (\buttons[4]~input_o\ & ((\Add3~52_combout\))) # (!\buttons[4]~input_o\ & (\count~293_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[4]~input_o\,
	datac => \count~293_combout\,
	datad => \Add3~52_combout\,
	combout => \count~294_combout\);

-- Location: LCCOMB_X72_Y52_N20
\Add4~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~52_combout\ = (\count~294_combout\ & (\Add4~51\ $ (GND))) # (!\count~294_combout\ & (!\Add4~51\ & VCC))
-- \Add4~53\ = CARRY((\count~294_combout\ & !\Add4~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~294_combout\,
	datad => VCC,
	cin => \Add4~51\,
	combout => \Add4~52_combout\,
	cout => \Add4~53\);

-- Location: LCCOMB_X70_Y52_N12
\count[26]~298\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[26]~298_combout\ = (\count[1]~20_combout\ & (((!\count[17]~21_combout\ & \Add0~52_combout\)))) # (!\count[1]~20_combout\ & ((\Add2~52_combout\) # ((\count[17]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[1]~20_combout\,
	datab => \Add2~52_combout\,
	datac => \count[17]~21_combout\,
	datad => \Add0~52_combout\,
	combout => \count[26]~298_combout\);

-- Location: LCCOMB_X70_Y52_N18
\count[26]~299\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[26]~299_combout\ = (\count[26]~298_combout\ & (((\Add3~52_combout\) # (!\count[17]~21_combout\)))) # (!\count[26]~298_combout\ & (\Add1~52_combout\ & (\count[17]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[26]~298_combout\,
	datab => \Add1~52_combout\,
	datac => \count[17]~21_combout\,
	datad => \Add3~52_combout\,
	combout => \count[26]~299_combout\);

-- Location: LCCOMB_X70_Y52_N22
\count~295\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~295_combout\ = (\buttons[3]~input_o\ & ((\Add4~52_combout\))) # (!\buttons[3]~input_o\ & (\count~294_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[3]~input_o\,
	datab => \count~294_combout\,
	datad => \Add4~52_combout\,
	combout => \count~295_combout\);

-- Location: LCCOMB_X69_Y50_N20
\Add5~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~52_combout\ = (\count~295_combout\ & (\Add5~51\ $ (GND))) # (!\count~295_combout\ & (!\Add5~51\ & VCC))
-- \Add5~53\ = CARRY((\count~295_combout\ & !\Add5~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~295_combout\,
	datad => VCC,
	cin => \Add5~51\,
	combout => \Add5~52_combout\,
	cout => \Add5~53\);

-- Location: LCCOMB_X70_Y52_N4
\count[26]~300\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[26]~300_combout\ = (\count[1]~18_combout\ & (\count[26]~299_combout\ & (!\count[17]~19_combout\))) # (!\count[1]~18_combout\ & (((\count[17]~19_combout\) # (\Add5~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[1]~18_combout\,
	datab => \count[26]~299_combout\,
	datac => \count[17]~19_combout\,
	datad => \Add5~52_combout\,
	combout => \count[26]~300_combout\);

-- Location: LCCOMB_X70_Y52_N28
\count~296\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~296_combout\ = (\buttons[2]~input_o\ & ((\Add5~52_combout\))) # (!\buttons[2]~input_o\ & (\count~295_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[2]~input_o\,
	datac => \count~295_combout\,
	datad => \Add5~52_combout\,
	combout => \count~296_combout\);

-- Location: LCCOMB_X72_Y50_N20
\Add6~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~52_combout\ = (\count~296_combout\ & (\Add6~51\ $ (GND))) # (!\count~296_combout\ & (!\Add6~51\ & VCC))
-- \Add6~53\ = CARRY((\count~296_combout\ & !\Add6~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~296_combout\,
	datad => VCC,
	cin => \Add6~51\,
	combout => \Add6~52_combout\,
	cout => \Add6~53\);

-- Location: LCCOMB_X70_Y52_N14
\count[26]~301\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[26]~301_combout\ = (\count[17]~19_combout\ & ((\count[26]~300_combout\ & ((\Add6~52_combout\))) # (!\count[26]~300_combout\ & (\Add4~52_combout\)))) # (!\count[17]~19_combout\ & (((\count[26]~300_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[17]~19_combout\,
	datab => \Add4~52_combout\,
	datac => \count[26]~300_combout\,
	datad => \Add6~52_combout\,
	combout => \count[26]~301_combout\);

-- Location: LCCOMB_X70_Y52_N2
\count~297\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~297_combout\ = (\buttons[1]~input_o\ & ((\Add6~52_combout\))) # (!\buttons[1]~input_o\ & (\count~296_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count~296_combout\,
	datac => \buttons[1]~input_o\,
	datad => \Add6~52_combout\,
	combout => \count~297_combout\);

-- Location: LCCOMB_X70_Y50_N20
\Add7~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~77_combout\ = (\count~297_combout\ & (\Add7~75\ $ (GND))) # (!\count~297_combout\ & (!\Add7~75\ & VCC))
-- \Add7~78\ = CARRY((\count~297_combout\ & !\Add7~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~297_combout\,
	datad => VCC,
	cin => \Add7~75\,
	combout => \Add7~77_combout\,
	cout => \Add7~78\);

-- Location: LCCOMB_X70_Y52_N24
\Add7~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~79_combout\ = (\buttons[0]~input_o\ & ((\Add7~77_combout\))) # (!\buttons[0]~input_o\ & (\count[26]~301_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[0]~input_o\,
	datac => \count[26]~301_combout\,
	datad => \Add7~77_combout\,
	combout => \Add7~79_combout\);

-- Location: LCCOMB_X70_Y52_N10
\count[26]\ : cycloneive_lcell_comb
-- Equation(s):
-- count(26) = (GLOBAL(\count[1]~361clkctrl_outclk\) & (\Add7~79_combout\)) # (!GLOBAL(\count[1]~361clkctrl_outclk\) & ((count(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add7~79_combout\,
	datac => \count[1]~361clkctrl_outclk\,
	datad => count(26),
	combout => count(26));

-- Location: LCCOMB_X67_Y48_N22
\Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (count(27) & (!\Add0~53\)) # (!count(27) & ((\Add0~53\) # (GND)))
-- \Add0~55\ = CARRY((!\Add0~53\) # (!count(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(27),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: LCCOMB_X73_Y52_N8
\count~302\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~302_combout\ = (\buttons[7]~input_o\ & ((\Add0~54_combout\))) # (!\buttons[7]~input_o\ & (count(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[7]~input_o\,
	datac => count(27),
	datad => \Add0~54_combout\,
	combout => \count~302_combout\);

-- Location: LCCOMB_X67_Y52_N22
\Add1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~54_combout\ = (\count~302_combout\ & (!\Add1~53\)) # (!\count~302_combout\ & ((\Add1~53\) # (GND)))
-- \Add1~55\ = CARRY((!\Add1~53\) # (!\count~302_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~302_combout\,
	datad => VCC,
	cin => \Add1~53\,
	combout => \Add1~54_combout\,
	cout => \Add1~55\);

-- Location: LCCOMB_X73_Y52_N22
\count[27]~309\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[27]~309_combout\ = (\count[1]~20_combout\ & ((\count[17]~21_combout\ & ((\Add1~54_combout\))) # (!\count[17]~21_combout\ & (\Add0~54_combout\)))) # (!\count[1]~20_combout\ & (((\count[17]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[1]~20_combout\,
	datab => \Add0~54_combout\,
	datac => \count[17]~21_combout\,
	datad => \Add1~54_combout\,
	combout => \count[27]~309_combout\);

-- Location: LCCOMB_X73_Y52_N14
\count~303\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~303_combout\ = (\buttons[6]~input_o\ & ((\Add1~54_combout\))) # (!\buttons[6]~input_o\ & (\count~302_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[6]~input_o\,
	datac => \count~302_combout\,
	datad => \Add1~54_combout\,
	combout => \count~303_combout\);

-- Location: LCCOMB_X69_Y52_N22
\Add2~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~54_combout\ = (\count~303_combout\ & (!\Add2~53\)) # (!\count~303_combout\ & ((\Add2~53\) # (GND)))
-- \Add2~55\ = CARRY((!\Add2~53\) # (!\count~303_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~303_combout\,
	datad => VCC,
	cin => \Add2~53\,
	combout => \Add2~54_combout\,
	cout => \Add2~55\);

-- Location: LCCOMB_X73_Y52_N16
\count~304\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~304_combout\ = (\buttons[5]~input_o\ & ((\Add2~54_combout\))) # (!\buttons[5]~input_o\ & (\count~303_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[5]~input_o\,
	datac => \count~303_combout\,
	datad => \Add2~54_combout\,
	combout => \count~304_combout\);

-- Location: LCCOMB_X69_Y48_N22
\Add3~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~54_combout\ = (\count~304_combout\ & (!\Add3~53\)) # (!\count~304_combout\ & ((\Add3~53\) # (GND)))
-- \Add3~55\ = CARRY((!\Add3~53\) # (!\count~304_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~304_combout\,
	datad => VCC,
	cin => \Add3~53\,
	combout => \Add3~54_combout\,
	cout => \Add3~55\);

-- Location: LCCOMB_X73_Y52_N12
\count[27]~310\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[27]~310_combout\ = (\count[27]~309_combout\ & (((\Add3~54_combout\) # (\count[1]~20_combout\)))) # (!\count[27]~309_combout\ & (\Add2~54_combout\ & ((!\count[1]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[27]~309_combout\,
	datab => \Add2~54_combout\,
	datac => \Add3~54_combout\,
	datad => \count[1]~20_combout\,
	combout => \count[27]~310_combout\);

-- Location: LCCOMB_X73_Y52_N6
\count~305\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~305_combout\ = (\buttons[4]~input_o\ & (\Add3~54_combout\)) # (!\buttons[4]~input_o\ & ((\count~304_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[4]~input_o\,
	datac => \Add3~54_combout\,
	datad => \count~304_combout\,
	combout => \count~305_combout\);

-- Location: LCCOMB_X72_Y52_N22
\Add4~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~54_combout\ = (\count~305_combout\ & (!\Add4~53\)) # (!\count~305_combout\ & ((\Add4~53\) # (GND)))
-- \Add4~55\ = CARRY((!\Add4~53\) # (!\count~305_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~305_combout\,
	datad => VCC,
	cin => \Add4~53\,
	combout => \Add4~54_combout\,
	cout => \Add4~55\);

-- Location: LCCOMB_X73_Y52_N26
\count[27]~311\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[27]~311_combout\ = (\count[17]~19_combout\ & (((\Add4~54_combout\) # (!\count[1]~18_combout\)))) # (!\count[17]~19_combout\ & (\count[27]~310_combout\ & (\count[1]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[27]~310_combout\,
	datab => \count[17]~19_combout\,
	datac => \count[1]~18_combout\,
	datad => \Add4~54_combout\,
	combout => \count[27]~311_combout\);

-- Location: LCCOMB_X73_Y52_N20
\count~306\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~306_combout\ = (\buttons[3]~input_o\ & ((\Add4~54_combout\))) # (!\buttons[3]~input_o\ & (\count~305_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count~305_combout\,
	datab => \buttons[3]~input_o\,
	datad => \Add4~54_combout\,
	combout => \count~306_combout\);

-- Location: LCCOMB_X69_Y50_N22
\Add5~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~54_combout\ = (\count~306_combout\ & (!\Add5~53\)) # (!\count~306_combout\ & ((\Add5~53\) # (GND)))
-- \Add5~55\ = CARRY((!\Add5~53\) # (!\count~306_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~306_combout\,
	datad => VCC,
	cin => \Add5~53\,
	combout => \Add5~54_combout\,
	cout => \Add5~55\);

-- Location: LCCOMB_X73_Y52_N10
\count~307\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~307_combout\ = (\buttons[2]~input_o\ & ((\Add5~54_combout\))) # (!\buttons[2]~input_o\ & (\count~306_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count~306_combout\,
	datac => \buttons[2]~input_o\,
	datad => \Add5~54_combout\,
	combout => \count~307_combout\);

-- Location: LCCOMB_X72_Y50_N22
\Add6~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~54_combout\ = (\count~307_combout\ & (!\Add6~53\)) # (!\count~307_combout\ & ((\Add6~53\) # (GND)))
-- \Add6~55\ = CARRY((!\Add6~53\) # (!\count~307_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~307_combout\,
	datad => VCC,
	cin => \Add6~53\,
	combout => \Add6~54_combout\,
	cout => \Add6~55\);

-- Location: LCCOMB_X72_Y48_N4
\count[27]~312\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[27]~312_combout\ = (\count[1]~18_combout\ & (\count[27]~311_combout\)) # (!\count[1]~18_combout\ & ((\count[27]~311_combout\ & ((\Add6~54_combout\))) # (!\count[27]~311_combout\ & (\Add5~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[1]~18_combout\,
	datab => \count[27]~311_combout\,
	datac => \Add5~54_combout\,
	datad => \Add6~54_combout\,
	combout => \count[27]~312_combout\);

-- Location: LCCOMB_X73_Y52_N4
\count~308\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~308_combout\ = (\buttons[1]~input_o\ & (\Add6~54_combout\)) # (!\buttons[1]~input_o\ & ((\count~307_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[1]~input_o\,
	datac => \Add6~54_combout\,
	datad => \count~307_combout\,
	combout => \count~308_combout\);

-- Location: LCCOMB_X70_Y50_N22
\Add7~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~80_combout\ = (\count~308_combout\ & (!\Add7~78\)) # (!\count~308_combout\ & ((\Add7~78\) # (GND)))
-- \Add7~81\ = CARRY((!\Add7~78\) # (!\count~308_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~308_combout\,
	datad => VCC,
	cin => \Add7~78\,
	combout => \Add7~80_combout\,
	cout => \Add7~81\);

-- Location: LCCOMB_X72_Y48_N22
\Add7~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~82_combout\ = (\buttons[0]~input_o\ & ((\Add7~80_combout\))) # (!\buttons[0]~input_o\ & (\count[27]~312_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[0]~input_o\,
	datac => \count[27]~312_combout\,
	datad => \Add7~80_combout\,
	combout => \Add7~82_combout\);

-- Location: LCCOMB_X72_Y48_N10
\count[27]\ : cycloneive_lcell_comb
-- Equation(s):
-- count(27) = (GLOBAL(\count[1]~361clkctrl_outclk\) & ((\Add7~82_combout\))) # (!GLOBAL(\count[1]~361clkctrl_outclk\) & (count(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(27),
	datac => \Add7~82_combout\,
	datad => \count[1]~361clkctrl_outclk\,
	combout => count(27));

-- Location: LCCOMB_X67_Y48_N24
\Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (count(28) & (\Add0~55\ $ (GND))) # (!count(28) & (!\Add0~55\ & VCC))
-- \Add0~57\ = CARRY((count(28) & !\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(28),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: LCCOMB_X70_Y54_N26
\count~313\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~313_combout\ = (\buttons[7]~input_o\ & ((\Add0~56_combout\))) # (!\buttons[7]~input_o\ & (count(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(28),
	datac => \buttons[7]~input_o\,
	datad => \Add0~56_combout\,
	combout => \count~313_combout\);

-- Location: LCCOMB_X67_Y52_N24
\Add1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~56_combout\ = (\count~313_combout\ & (\Add1~55\ $ (GND))) # (!\count~313_combout\ & (!\Add1~55\ & VCC))
-- \Add1~57\ = CARRY((\count~313_combout\ & !\Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~313_combout\,
	datad => VCC,
	cin => \Add1~55\,
	combout => \Add1~56_combout\,
	cout => \Add1~57\);

-- Location: LCCOMB_X70_Y54_N0
\count~314\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~314_combout\ = (\buttons[6]~input_o\ & ((\Add1~56_combout\))) # (!\buttons[6]~input_o\ & (\count~313_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[6]~input_o\,
	datac => \count~313_combout\,
	datad => \Add1~56_combout\,
	combout => \count~314_combout\);

-- Location: LCCOMB_X69_Y52_N24
\Add2~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~56_combout\ = (\count~314_combout\ & (\Add2~55\ $ (GND))) # (!\count~314_combout\ & (!\Add2~55\ & VCC))
-- \Add2~57\ = CARRY((\count~314_combout\ & !\Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~314_combout\,
	datad => VCC,
	cin => \Add2~55\,
	combout => \Add2~56_combout\,
	cout => \Add2~57\);

-- Location: LCCOMB_X70_Y54_N14
\count~315\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~315_combout\ = (\buttons[5]~input_o\ & (\Add2~56_combout\)) # (!\buttons[5]~input_o\ & ((\count~314_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[5]~input_o\,
	datac => \Add2~56_combout\,
	datad => \count~314_combout\,
	combout => \count~315_combout\);

-- Location: LCCOMB_X69_Y48_N24
\Add3~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~56_combout\ = (\count~315_combout\ & (\Add3~55\ $ (GND))) # (!\count~315_combout\ & (!\Add3~55\ & VCC))
-- \Add3~57\ = CARRY((\count~315_combout\ & !\Add3~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~315_combout\,
	datad => VCC,
	cin => \Add3~55\,
	combout => \Add3~56_combout\,
	cout => \Add3~57\);

-- Location: LCCOMB_X70_Y54_N28
\count~316\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~316_combout\ = (\buttons[4]~input_o\ & ((\Add3~56_combout\))) # (!\buttons[4]~input_o\ & (\count~315_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[4]~input_o\,
	datac => \count~315_combout\,
	datad => \Add3~56_combout\,
	combout => \count~316_combout\);

-- Location: LCCOMB_X72_Y52_N24
\Add4~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~56_combout\ = (\count~316_combout\ & (\Add4~55\ $ (GND))) # (!\count~316_combout\ & (!\Add4~55\ & VCC))
-- \Add4~57\ = CARRY((\count~316_combout\ & !\Add4~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~316_combout\,
	datad => VCC,
	cin => \Add4~55\,
	combout => \Add4~56_combout\,
	cout => \Add4~57\);

-- Location: LCCOMB_X70_Y54_N20
\count[28]~320\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[28]~320_combout\ = (\count[17]~21_combout\ & (((!\count[1]~20_combout\)))) # (!\count[17]~21_combout\ & ((\count[1]~20_combout\ & ((\Add0~56_combout\))) # (!\count[1]~20_combout\ & (\Add2~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[17]~21_combout\,
	datab => \Add2~56_combout\,
	datac => \count[1]~20_combout\,
	datad => \Add0~56_combout\,
	combout => \count[28]~320_combout\);

-- Location: LCCOMB_X70_Y54_N30
\count[28]~321\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[28]~321_combout\ = (\count[28]~320_combout\ & (((\Add3~56_combout\) # (!\count[17]~21_combout\)))) # (!\count[28]~320_combout\ & (\Add1~56_combout\ & (\count[17]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~56_combout\,
	datab => \count[28]~320_combout\,
	datac => \count[17]~21_combout\,
	datad => \Add3~56_combout\,
	combout => \count[28]~321_combout\);

-- Location: LCCOMB_X70_Y54_N6
\count~317\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~317_combout\ = (\buttons[3]~input_o\ & ((\Add4~56_combout\))) # (!\buttons[3]~input_o\ & (\count~316_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[3]~input_o\,
	datab => \count~316_combout\,
	datad => \Add4~56_combout\,
	combout => \count~317_combout\);

-- Location: LCCOMB_X69_Y50_N24
\Add5~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~56_combout\ = (\count~317_combout\ & (\Add5~55\ $ (GND))) # (!\count~317_combout\ & (!\Add5~55\ & VCC))
-- \Add5~57\ = CARRY((\count~317_combout\ & !\Add5~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~317_combout\,
	datad => VCC,
	cin => \Add5~55\,
	combout => \Add5~56_combout\,
	cout => \Add5~57\);

-- Location: LCCOMB_X70_Y54_N4
\count[28]~322\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[28]~322_combout\ = (\count[1]~18_combout\ & (!\count[17]~19_combout\ & (\count[28]~321_combout\))) # (!\count[1]~18_combout\ & ((\count[17]~19_combout\) # ((\Add5~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[1]~18_combout\,
	datab => \count[17]~19_combout\,
	datac => \count[28]~321_combout\,
	datad => \Add5~56_combout\,
	combout => \count[28]~322_combout\);

-- Location: LCCOMB_X70_Y54_N16
\count~318\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~318_combout\ = (\buttons[2]~input_o\ & ((\Add5~56_combout\))) # (!\buttons[2]~input_o\ & (\count~317_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count~317_combout\,
	datac => \buttons[2]~input_o\,
	datad => \Add5~56_combout\,
	combout => \count~318_combout\);

-- Location: LCCOMB_X72_Y50_N24
\Add6~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~56_combout\ = (\count~318_combout\ & (\Add6~55\ $ (GND))) # (!\count~318_combout\ & (!\Add6~55\ & VCC))
-- \Add6~57\ = CARRY((\count~318_combout\ & !\Add6~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~318_combout\,
	datad => VCC,
	cin => \Add6~55\,
	combout => \Add6~56_combout\,
	cout => \Add6~57\);

-- Location: LCCOMB_X70_Y54_N22
\count[28]~323\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[28]~323_combout\ = (\count[17]~19_combout\ & ((\count[28]~322_combout\ & ((\Add6~56_combout\))) # (!\count[28]~322_combout\ & (\Add4~56_combout\)))) # (!\count[17]~19_combout\ & (((\count[28]~322_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~56_combout\,
	datab => \count[17]~19_combout\,
	datac => \count[28]~322_combout\,
	datad => \Add6~56_combout\,
	combout => \count[28]~323_combout\);

-- Location: LCCOMB_X70_Y54_N18
\count~319\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~319_combout\ = (\buttons[1]~input_o\ & ((\Add6~56_combout\))) # (!\buttons[1]~input_o\ & (\count~318_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count~318_combout\,
	datac => \buttons[1]~input_o\,
	datad => \Add6~56_combout\,
	combout => \count~319_combout\);

-- Location: LCCOMB_X70_Y50_N24
\Add7~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~83_combout\ = (\count~319_combout\ & (\Add7~81\ $ (GND))) # (!\count~319_combout\ & (!\Add7~81\ & VCC))
-- \Add7~84\ = CARRY((\count~319_combout\ & !\Add7~81\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~319_combout\,
	datad => VCC,
	cin => \Add7~81\,
	combout => \Add7~83_combout\,
	cout => \Add7~84\);

-- Location: LCCOMB_X70_Y54_N8
\Add7~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~85_combout\ = (\buttons[0]~input_o\ & ((\Add7~83_combout\))) # (!\buttons[0]~input_o\ & (\count[28]~323_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[0]~input_o\,
	datac => \count[28]~323_combout\,
	datad => \Add7~83_combout\,
	combout => \Add7~85_combout\);

-- Location: LCCOMB_X70_Y54_N10
\count[28]\ : cycloneive_lcell_comb
-- Equation(s):
-- count(28) = (GLOBAL(\count[1]~361clkctrl_outclk\) & (\Add7~85_combout\)) # (!GLOBAL(\count[1]~361clkctrl_outclk\) & ((count(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add7~85_combout\,
	datac => \count[1]~361clkctrl_outclk\,
	datad => count(28),
	combout => count(28));

-- Location: LCCOMB_X67_Y48_N26
\Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (count(29) & (!\Add0~57\)) # (!count(29) & ((\Add0~57\) # (GND)))
-- \Add0~59\ = CARRY((!\Add0~57\) # (!count(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(29),
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: LCCOMB_X73_Y48_N16
\count~328\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~328_combout\ = (\buttons[7]~input_o\ & ((\Add0~58_combout\))) # (!\buttons[7]~input_o\ & (count(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[7]~input_o\,
	datac => count(29),
	datad => \Add0~58_combout\,
	combout => \count~328_combout\);

-- Location: LCCOMB_X67_Y52_N26
\Add1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~58_combout\ = (\count~328_combout\ & (!\Add1~57\)) # (!\count~328_combout\ & ((\Add1~57\) # (GND)))
-- \Add1~59\ = CARRY((!\Add1~57\) # (!\count~328_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~328_combout\,
	datad => VCC,
	cin => \Add1~57\,
	combout => \Add1~58_combout\,
	cout => \Add1~59\);

-- Location: LCCOMB_X73_Y48_N14
\count~329\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~329_combout\ = (\buttons[6]~input_o\ & ((\Add1~58_combout\))) # (!\buttons[6]~input_o\ & (\count~328_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[6]~input_o\,
	datab => \count~328_combout\,
	datad => \Add1~58_combout\,
	combout => \count~329_combout\);

-- Location: LCCOMB_X69_Y52_N26
\Add2~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~58_combout\ = (\count~329_combout\ & (!\Add2~57\)) # (!\count~329_combout\ & ((\Add2~57\) # (GND)))
-- \Add2~59\ = CARRY((!\Add2~57\) # (!\count~329_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~329_combout\,
	datad => VCC,
	cin => \Add2~57\,
	combout => \Add2~58_combout\,
	cout => \Add2~59\);

-- Location: LCCOMB_X73_Y48_N20
\count~330\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~330_combout\ = (\buttons[5]~input_o\ & ((\Add2~58_combout\))) # (!\buttons[5]~input_o\ & (\count~329_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[5]~input_o\,
	datac => \count~329_combout\,
	datad => \Add2~58_combout\,
	combout => \count~330_combout\);

-- Location: LCCOMB_X69_Y48_N26
\Add3~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~58_combout\ = (\count~330_combout\ & (!\Add3~57\)) # (!\count~330_combout\ & ((\Add3~57\) # (GND)))
-- \Add3~59\ = CARRY((!\Add3~57\) # (!\count~330_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~330_combout\,
	datad => VCC,
	cin => \Add3~57\,
	combout => \Add3~58_combout\,
	cout => \Add3~59\);

-- Location: LCCOMB_X73_Y48_N26
\count[29]~335\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[29]~335_combout\ = (\count[17]~21_combout\ & ((\Add1~58_combout\) # ((!\count[1]~20_combout\)))) # (!\count[17]~21_combout\ & (((\count[1]~20_combout\ & \Add0~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[17]~21_combout\,
	datab => \Add1~58_combout\,
	datac => \count[1]~20_combout\,
	datad => \Add0~58_combout\,
	combout => \count[29]~335_combout\);

-- Location: LCCOMB_X73_Y48_N12
\count[29]~336\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[29]~336_combout\ = (\count[29]~335_combout\ & ((\Add3~58_combout\) # ((\count[1]~20_combout\)))) # (!\count[29]~335_combout\ & (((!\count[1]~20_combout\ & \Add2~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~58_combout\,
	datab => \count[29]~335_combout\,
	datac => \count[1]~20_combout\,
	datad => \Add2~58_combout\,
	combout => \count[29]~336_combout\);

-- Location: LCCOMB_X73_Y48_N30
\count~331\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~331_combout\ = (\buttons[4]~input_o\ & (\Add3~58_combout\)) # (!\buttons[4]~input_o\ & ((\count~330_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[4]~input_o\,
	datac => \Add3~58_combout\,
	datad => \count~330_combout\,
	combout => \count~331_combout\);

-- Location: LCCOMB_X72_Y52_N26
\Add4~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~58_combout\ = (\count~331_combout\ & (!\Add4~57\)) # (!\count~331_combout\ & ((\Add4~57\) # (GND)))
-- \Add4~59\ = CARRY((!\Add4~57\) # (!\count~331_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~331_combout\,
	datad => VCC,
	cin => \Add4~57\,
	combout => \Add4~58_combout\,
	cout => \Add4~59\);

-- Location: LCCOMB_X73_Y48_N10
\count[29]~337\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[29]~337_combout\ = (\count[17]~19_combout\ & (((\Add4~58_combout\) # (!\count[1]~18_combout\)))) # (!\count[17]~19_combout\ & (\count[29]~336_combout\ & (\count[1]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[29]~336_combout\,
	datab => \count[17]~19_combout\,
	datac => \count[1]~18_combout\,
	datad => \Add4~58_combout\,
	combout => \count[29]~337_combout\);

-- Location: LCCOMB_X73_Y48_N28
\count~332\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~332_combout\ = (\buttons[3]~input_o\ & ((\Add4~58_combout\))) # (!\buttons[3]~input_o\ & (\count~331_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[3]~input_o\,
	datac => \count~331_combout\,
	datad => \Add4~58_combout\,
	combout => \count~332_combout\);

-- Location: LCCOMB_X69_Y50_N26
\Add5~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~58_combout\ = (\count~332_combout\ & (!\Add5~57\)) # (!\count~332_combout\ & ((\Add5~57\) # (GND)))
-- \Add5~59\ = CARRY((!\Add5~57\) # (!\count~332_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~332_combout\,
	datad => VCC,
	cin => \Add5~57\,
	combout => \Add5~58_combout\,
	cout => \Add5~59\);

-- Location: LCCOMB_X73_Y48_N6
\count~333\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~333_combout\ = (\buttons[2]~input_o\ & ((\Add5~58_combout\))) # (!\buttons[2]~input_o\ & (\count~332_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[2]~input_o\,
	datab => \count~332_combout\,
	datad => \Add5~58_combout\,
	combout => \count~333_combout\);

-- Location: LCCOMB_X72_Y50_N26
\Add6~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~58_combout\ = (\count~333_combout\ & (!\Add6~57\)) # (!\count~333_combout\ & ((\Add6~57\) # (GND)))
-- \Add6~59\ = CARRY((!\Add6~57\) # (!\count~333_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~333_combout\,
	datad => VCC,
	cin => \Add6~57\,
	combout => \Add6~58_combout\,
	cout => \Add6~59\);

-- Location: LCCOMB_X73_Y48_N8
\count[29]~338\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[29]~338_combout\ = (\count[29]~337_combout\ & ((\count[1]~18_combout\) # ((\Add6~58_combout\)))) # (!\count[29]~337_combout\ & (!\count[1]~18_combout\ & ((\Add5~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[29]~337_combout\,
	datab => \count[1]~18_combout\,
	datac => \Add6~58_combout\,
	datad => \Add5~58_combout\,
	combout => \count[29]~338_combout\);

-- Location: LCCOMB_X73_Y48_N24
\count~334\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~334_combout\ = (\buttons[1]~input_o\ & (\Add6~58_combout\)) # (!\buttons[1]~input_o\ & ((\count~333_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[1]~input_o\,
	datac => \Add6~58_combout\,
	datad => \count~333_combout\,
	combout => \count~334_combout\);

-- Location: LCCOMB_X70_Y50_N26
\Add7~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~87_combout\ = (\count~334_combout\ & (!\Add7~84\)) # (!\count~334_combout\ & ((\Add7~84\) # (GND)))
-- \Add7~88\ = CARRY((!\Add7~84\) # (!\count~334_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~334_combout\,
	datad => VCC,
	cin => \Add7~84\,
	combout => \Add7~87_combout\,
	cout => \Add7~88\);

-- Location: LCCOMB_X73_Y48_N22
\Add7~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~89_combout\ = (\buttons[0]~input_o\ & ((\Add7~87_combout\))) # (!\buttons[0]~input_o\ & (\count[29]~338_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[0]~input_o\,
	datac => \count[29]~338_combout\,
	datad => \Add7~87_combout\,
	combout => \Add7~89_combout\);

-- Location: LCCOMB_X73_Y48_N4
\count[29]\ : cycloneive_lcell_comb
-- Equation(s):
-- count(29) = (GLOBAL(\count[1]~361clkctrl_outclk\) & (\Add7~89_combout\)) # (!GLOBAL(\count[1]~361clkctrl_outclk\) & ((count(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~89_combout\,
	datac => count(29),
	datad => \count[1]~361clkctrl_outclk\,
	combout => count(29));

-- Location: LCCOMB_X67_Y48_N28
\Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (count(30) & (\Add0~59\ $ (GND))) # (!count(30) & (!\Add0~59\ & VCC))
-- \Add0~61\ = CARRY((count(30) & !\Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(30),
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: LCCOMB_X68_Y52_N6
\count~339\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~339_combout\ = (\buttons[7]~input_o\ & ((\Add0~60_combout\))) # (!\buttons[7]~input_o\ & (count(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[7]~input_o\,
	datac => count(30),
	datad => \Add0~60_combout\,
	combout => \count~339_combout\);

-- Location: LCCOMB_X67_Y52_N28
\Add1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~60_combout\ = (\count~339_combout\ & (\Add1~59\ $ (GND))) # (!\count~339_combout\ & (!\Add1~59\ & VCC))
-- \Add1~61\ = CARRY((\count~339_combout\ & !\Add1~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~339_combout\,
	datad => VCC,
	cin => \Add1~59\,
	combout => \Add1~60_combout\,
	cout => \Add1~61\);

-- Location: LCCOMB_X68_Y54_N24
\count~340\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~340_combout\ = (\buttons[6]~input_o\ & (\Add1~60_combout\)) # (!\buttons[6]~input_o\ & ((\count~339_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[6]~input_o\,
	datac => \Add1~60_combout\,
	datad => \count~339_combout\,
	combout => \count~340_combout\);

-- Location: LCCOMB_X69_Y52_N28
\Add2~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~60_combout\ = (\count~340_combout\ & (\Add2~59\ $ (GND))) # (!\count~340_combout\ & (!\Add2~59\ & VCC))
-- \Add2~61\ = CARRY((\count~340_combout\ & !\Add2~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~340_combout\,
	datad => VCC,
	cin => \Add2~59\,
	combout => \Add2~60_combout\,
	cout => \Add2~61\);

-- Location: LCCOMB_X69_Y54_N22
\count~341\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~341_combout\ = (\buttons[5]~input_o\ & (\Add2~60_combout\)) # (!\buttons[5]~input_o\ & ((\count~340_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[5]~input_o\,
	datac => \Add2~60_combout\,
	datad => \count~340_combout\,
	combout => \count~341_combout\);

-- Location: LCCOMB_X69_Y48_N28
\Add3~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~60_combout\ = (\count~341_combout\ & (\Add3~59\ $ (GND))) # (!\count~341_combout\ & (!\Add3~59\ & VCC))
-- \Add3~61\ = CARRY((\count~341_combout\ & !\Add3~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~341_combout\,
	datad => VCC,
	cin => \Add3~59\,
	combout => \Add3~60_combout\,
	cout => \Add3~61\);

-- Location: LCCOMB_X69_Y54_N28
\count~342\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~342_combout\ = (\buttons[4]~input_o\ & (\Add3~60_combout\)) # (!\buttons[4]~input_o\ & ((\count~341_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[4]~input_o\,
	datac => \Add3~60_combout\,
	datad => \count~341_combout\,
	combout => \count~342_combout\);

-- Location: LCCOMB_X72_Y52_N28
\Add4~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~60_combout\ = (\count~342_combout\ & (\Add4~59\ $ (GND))) # (!\count~342_combout\ & (!\Add4~59\ & VCC))
-- \Add4~61\ = CARRY((\count~342_combout\ & !\Add4~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~342_combout\,
	datad => VCC,
	cin => \Add4~59\,
	combout => \Add4~60_combout\,
	cout => \Add4~61\);

-- Location: LCCOMB_X69_Y54_N18
\count~343\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~343_combout\ = (\buttons[3]~input_o\ & ((\Add4~60_combout\))) # (!\buttons[3]~input_o\ & (\count~342_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[3]~input_o\,
	datab => \count~342_combout\,
	datad => \Add4~60_combout\,
	combout => \count~343_combout\);

-- Location: LCCOMB_X69_Y50_N28
\Add5~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~60_combout\ = (\count~343_combout\ & (\Add5~59\ $ (GND))) # (!\count~343_combout\ & (!\Add5~59\ & VCC))
-- \Add5~61\ = CARRY((\count~343_combout\ & !\Add5~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~343_combout\,
	datad => VCC,
	cin => \Add5~59\,
	combout => \Add5~60_combout\,
	cout => \Add5~61\);

-- Location: LCCOMB_X69_Y54_N20
\count[30]~346\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[30]~346_combout\ = (\count[1]~20_combout\ & (\Add0~60_combout\ & ((!\count[17]~21_combout\)))) # (!\count[1]~20_combout\ & (((\Add2~60_combout\) # (\count[17]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[1]~20_combout\,
	datab => \Add0~60_combout\,
	datac => \Add2~60_combout\,
	datad => \count[17]~21_combout\,
	combout => \count[30]~346_combout\);

-- Location: LCCOMB_X69_Y54_N10
\count[30]~347\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[30]~347_combout\ = (\count[30]~346_combout\ & ((\Add3~60_combout\) # ((!\count[17]~21_combout\)))) # (!\count[30]~346_combout\ & (((\Add1~60_combout\ & \count[17]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~60_combout\,
	datab => \count[30]~346_combout\,
	datac => \Add1~60_combout\,
	datad => \count[17]~21_combout\,
	combout => \count[30]~347_combout\);

-- Location: LCCOMB_X69_Y54_N4
\count[30]~348\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[30]~348_combout\ = (\count[17]~19_combout\ & (!\count[1]~18_combout\)) # (!\count[17]~19_combout\ & ((\count[1]~18_combout\ & ((\count[30]~347_combout\))) # (!\count[1]~18_combout\ & (\Add5~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[17]~19_combout\,
	datab => \count[1]~18_combout\,
	datac => \Add5~60_combout\,
	datad => \count[30]~347_combout\,
	combout => \count[30]~348_combout\);

-- Location: LCCOMB_X69_Y54_N8
\count~344\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~344_combout\ = (\buttons[2]~input_o\ & (\Add5~60_combout\)) # (!\buttons[2]~input_o\ & ((\count~343_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[2]~input_o\,
	datac => \Add5~60_combout\,
	datad => \count~343_combout\,
	combout => \count~344_combout\);

-- Location: LCCOMB_X72_Y50_N28
\Add6~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~60_combout\ = (\count~344_combout\ & (\Add6~59\ $ (GND))) # (!\count~344_combout\ & (!\Add6~59\ & VCC))
-- \Add6~61\ = CARRY((\count~344_combout\ & !\Add6~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~344_combout\,
	datad => VCC,
	cin => \Add6~59\,
	combout => \Add6~60_combout\,
	cout => \Add6~61\);

-- Location: LCCOMB_X69_Y54_N14
\count[30]~349\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[30]~349_combout\ = (\count[17]~19_combout\ & ((\count[30]~348_combout\ & ((\Add6~60_combout\))) # (!\count[30]~348_combout\ & (\Add4~60_combout\)))) # (!\count[17]~19_combout\ & (((\count[30]~348_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~60_combout\,
	datab => \count[17]~19_combout\,
	datac => \count[30]~348_combout\,
	datad => \Add6~60_combout\,
	combout => \count[30]~349_combout\);

-- Location: LCCOMB_X69_Y54_N26
\count~345\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~345_combout\ = (\buttons[1]~input_o\ & ((\Add6~60_combout\))) # (!\buttons[1]~input_o\ & (\count~344_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[1]~input_o\,
	datac => \count~344_combout\,
	datad => \Add6~60_combout\,
	combout => \count~345_combout\);

-- Location: LCCOMB_X70_Y50_N28
\Add7~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~90_combout\ = (\count~345_combout\ & (\Add7~88\ $ (GND))) # (!\count~345_combout\ & (!\Add7~88\ & VCC))
-- \Add7~91\ = CARRY((\count~345_combout\ & !\Add7~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count~345_combout\,
	datad => VCC,
	cin => \Add7~88\,
	combout => \Add7~90_combout\,
	cout => \Add7~91\);

-- Location: LCCOMB_X73_Y50_N22
\Add7~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~92_combout\ = (\buttons[0]~input_o\ & ((\Add7~90_combout\))) # (!\buttons[0]~input_o\ & (\count[30]~349_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[0]~input_o\,
	datac => \count[30]~349_combout\,
	datad => \Add7~90_combout\,
	combout => \Add7~92_combout\);

-- Location: LCCOMB_X73_Y50_N16
\count[30]\ : cycloneive_lcell_comb
-- Equation(s):
-- count(30) = (GLOBAL(\count[1]~361clkctrl_outclk\) & ((\Add7~92_combout\))) # (!GLOBAL(\count[1]~361clkctrl_outclk\) & (count(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(30),
	datac => \count[1]~361clkctrl_outclk\,
	datad => \Add7~92_combout\,
	combout => count(30));

-- Location: LCCOMB_X67_Y48_N30
\Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = \Add0~61\ $ (count(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => count(31),
	cin => \Add0~61\,
	combout => \Add0~62_combout\);

-- Location: LCCOMB_X73_Y50_N28
\count~350\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~350_combout\ = (\buttons[7]~input_o\ & (\Add0~62_combout\)) # (!\buttons[7]~input_o\ & ((count(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~62_combout\,
	datab => count(31),
	datac => \buttons[7]~input_o\,
	combout => \count~350_combout\);

-- Location: LCCOMB_X67_Y52_N30
\Add1~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~62_combout\ = \Add1~61\ $ (\count~350_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \count~350_combout\,
	cin => \Add1~61\,
	combout => \Add1~62_combout\);

-- Location: LCCOMB_X73_Y50_N18
\count~351\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~351_combout\ = (\buttons[6]~input_o\ & ((\Add1~62_combout\))) # (!\buttons[6]~input_o\ & (\count~350_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count~350_combout\,
	datac => \buttons[6]~input_o\,
	datad => \Add1~62_combout\,
	combout => \count~351_combout\);

-- Location: LCCOMB_X69_Y52_N30
\Add2~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~62_combout\ = \count~351_combout\ $ (\Add2~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count~351_combout\,
	cin => \Add2~61\,
	combout => \Add2~62_combout\);

-- Location: LCCOMB_X73_Y50_N12
\count~352\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~352_combout\ = (\buttons[5]~input_o\ & (\Add2~62_combout\)) # (!\buttons[5]~input_o\ & ((\count~351_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[5]~input_o\,
	datac => \Add2~62_combout\,
	datad => \count~351_combout\,
	combout => \count~352_combout\);

-- Location: LCCOMB_X69_Y48_N30
\Add3~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~62_combout\ = \Add3~61\ $ (\count~352_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \count~352_combout\,
	cin => \Add3~61\,
	combout => \Add3~62_combout\);

-- Location: LCCOMB_X73_Y50_N2
\count~353\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~353_combout\ = (\buttons[4]~input_o\ & (\Add3~62_combout\)) # (!\buttons[4]~input_o\ & ((\count~352_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttons[4]~input_o\,
	datac => \Add3~62_combout\,
	datad => \count~352_combout\,
	combout => \count~353_combout\);

-- Location: LCCOMB_X72_Y52_N30
\Add4~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~62_combout\ = \Add4~61\ $ (\count~353_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \count~353_combout\,
	cin => \Add4~61\,
	combout => \Add4~62_combout\);

-- Location: LCCOMB_X73_Y50_N24
\count~354\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~354_combout\ = (\buttons[3]~input_o\ & ((\Add4~62_combout\))) # (!\buttons[3]~input_o\ & (\count~353_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[3]~input_o\,
	datac => \count~353_combout\,
	datad => \Add4~62_combout\,
	combout => \count~354_combout\);

-- Location: LCCOMB_X69_Y50_N30
\Add5~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~62_combout\ = \Add5~61\ $ (\count~354_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \count~354_combout\,
	cin => \Add5~61\,
	combout => \Add5~62_combout\);

-- Location: LCCOMB_X73_Y50_N26
\count~355\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~355_combout\ = (\buttons[2]~input_o\ & (\Add5~62_combout\)) # (!\buttons[2]~input_o\ & ((\count~354_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[2]~input_o\,
	datac => \Add5~62_combout\,
	datad => \count~354_combout\,
	combout => \count~355_combout\);

-- Location: LCCOMB_X72_Y50_N30
\Add6~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~62_combout\ = \Add6~61\ $ (\count~355_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \count~355_combout\,
	cin => \Add6~61\,
	combout => \Add6~62_combout\);

-- Location: LCCOMB_X73_Y50_N6
\count[31]~357\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[31]~357_combout\ = (\count[1]~20_combout\ & ((\count[17]~21_combout\ & ((\Add1~62_combout\))) # (!\count[17]~21_combout\ & (\Add0~62_combout\)))) # (!\count[1]~20_combout\ & (((\count[17]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~62_combout\,
	datab => \count[1]~20_combout\,
	datac => \count[17]~21_combout\,
	datad => \Add1~62_combout\,
	combout => \count[31]~357_combout\);

-- Location: LCCOMB_X73_Y50_N4
\count[31]~358\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[31]~358_combout\ = (\count[1]~20_combout\ & (((\count[31]~357_combout\)))) # (!\count[1]~20_combout\ & ((\count[31]~357_combout\ & ((\Add3~62_combout\))) # (!\count[31]~357_combout\ & (\Add2~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[1]~20_combout\,
	datab => \Add2~62_combout\,
	datac => \Add3~62_combout\,
	datad => \count[31]~357_combout\,
	combout => \count[31]~358_combout\);

-- Location: LCCOMB_X73_Y50_N10
\count[31]~359\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[31]~359_combout\ = (\count[17]~19_combout\ & (((\Add4~62_combout\)) # (!\count[1]~18_combout\))) # (!\count[17]~19_combout\ & (\count[1]~18_combout\ & (\count[31]~358_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[17]~19_combout\,
	datab => \count[1]~18_combout\,
	datac => \count[31]~358_combout\,
	datad => \Add4~62_combout\,
	combout => \count[31]~359_combout\);

-- Location: LCCOMB_X73_Y50_N8
\count[31]~360\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[31]~360_combout\ = (\count[1]~18_combout\ & (((\count[31]~359_combout\)))) # (!\count[1]~18_combout\ & ((\count[31]~359_combout\ & ((\Add6~62_combout\))) # (!\count[31]~359_combout\ & (\Add5~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~62_combout\,
	datab => \count[1]~18_combout\,
	datac => \Add6~62_combout\,
	datad => \count[31]~359_combout\,
	combout => \count[31]~360_combout\);

-- Location: LCCOMB_X73_Y50_N20
\count~356\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~356_combout\ = (\buttons[1]~input_o\ & ((\Add6~62_combout\))) # (!\buttons[1]~input_o\ & (\count~355_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count~355_combout\,
	datab => \buttons[1]~input_o\,
	datac => \Add6~62_combout\,
	combout => \count~356_combout\);

-- Location: LCCOMB_X70_Y50_N30
\Add7~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~93_combout\ = \Add7~91\ $ (\count~356_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \count~356_combout\,
	cin => \Add7~91\,
	combout => \Add7~93_combout\);

-- Location: LCCOMB_X73_Y50_N30
\Add7~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~95_combout\ = (\buttons[0]~input_o\ & ((\Add7~93_combout\))) # (!\buttons[0]~input_o\ & (\count[31]~360_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[0]~input_o\,
	datac => \count[31]~360_combout\,
	datad => \Add7~93_combout\,
	combout => \Add7~95_combout\);

-- Location: LCCOMB_X73_Y50_N14
\count[31]\ : cycloneive_lcell_comb
-- Equation(s):
-- count(31) = (GLOBAL(\count[1]~361clkctrl_outclk\) & ((\Add7~95_combout\))) # (!GLOBAL(\count[1]~361clkctrl_outclk\) & (count(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(31),
	datac => \count[1]~361clkctrl_outclk\,
	datad => \Add7~95_combout\,
	combout => count(31));

-- Location: LCCOMB_X65_Y49_N26
\Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (!count(29) & (!count(30) & (!count(31) & count(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(29),
	datab => count(30),
	datac => count(31),
	datad => count(0),
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X67_Y51_N28
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!count(14) & (!count(16) & (!count(15) & !count(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(14),
	datab => count(16),
	datac => count(15),
	datad => count(13),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X65_Y49_N28
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!count(8) & (!count(5) & (!count(7) & !count(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(8),
	datab => count(5),
	datac => count(7),
	datad => count(6),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X66_Y50_N12
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!count(1) & (!count(2) & (!count(3) & !count(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datab => count(2),
	datac => count(3),
	datad => count(4),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X68_Y53_N24
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!count(10) & (!count(11) & (!count(12) & !count(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(10),
	datab => count(11),
	datac => count(12),
	datad => count(9),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X65_Y49_N18
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~3_combout\ & (\Equal0~1_combout\ & (\Equal0~0_combout\ & \Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~2_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X65_Y49_N8
\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!count(25) & (!count(26) & (!count(27) & !count(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(25),
	datab => count(26),
	datac => count(27),
	datad => count(28),
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X66_Y52_N12
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!count(22) & !count(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count(22),
	datad => count(21),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X66_Y48_N28
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!count(17) & (!count(19) & (!count(20) & !count(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(17),
	datab => count(19),
	datac => count(20),
	datad => count(18),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X66_Y48_N18
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (\Equal0~6_combout\ & (!count(23) & (!count(24) & \Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => count(23),
	datac => count(24),
	datad => \Equal0~5_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X65_Y49_N12
\Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\Equal0~9_combout\ & (\Equal0~4_combout\ & (\Equal0~8_combout\ & \Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datab => \Equal0~4_combout\,
	datac => \Equal0~8_combout\,
	datad => \Equal0~7_combout\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X69_Y72_N0
\coffe_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \coffe_out~0_combout\ = (\Equal0~10_combout\ & \buttons[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~10_combout\,
	datac => \buttons[0]~input_o\,
	combout => \coffe_out~0_combout\);

-- Location: LCCOMB_X74_Y72_N0
\coffe_out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \coffe_out~1_combout\ = (\Equal0~10_combout\ & \buttons[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~10_combout\,
	datad => \buttons[1]~input_o\,
	combout => \coffe_out~1_combout\);

-- Location: LCCOMB_X74_Y72_N2
\coffe_out~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \coffe_out~2_combout\ = (\buttons[2]~input_o\ & \Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \buttons[2]~input_o\,
	datad => \Equal0~10_combout\,
	combout => \coffe_out~2_combout\);

-- Location: LCCOMB_X69_Y72_N2
\coffe_out~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \coffe_out~3_combout\ = (\Equal0~10_combout\ & \buttons[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~10_combout\,
	datad => \buttons[3]~input_o\,
	combout => \coffe_out~3_combout\);

-- Location: LCCOMB_X69_Y72_N16
\coffe_out~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \coffe_out~4_combout\ = (\Equal0~10_combout\ & \buttons[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~10_combout\,
	datac => \buttons[4]~input_o\,
	combout => \coffe_out~4_combout\);

-- Location: LCCOMB_X65_Y72_N4
\coffe_out~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \coffe_out~5_combout\ = (\buttons[5]~input_o\ & \Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \buttons[5]~input_o\,
	datad => \Equal0~10_combout\,
	combout => \coffe_out~5_combout\);

-- Location: LCCOMB_X65_Y72_N10
\coffe_out~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \coffe_out~6_combout\ = (\Equal0~10_combout\ & \buttons[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~10_combout\,
	datac => \buttons[6]~input_o\,
	combout => \coffe_out~6_combout\);

-- Location: LCCOMB_X65_Y72_N0
\coffe_out~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \coffe_out~7_combout\ = (\buttons[7]~input_o\ & \Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \buttons[7]~input_o\,
	datad => \Equal0~10_combout\,
	combout => \coffe_out~7_combout\);

ww_coffe_out(0) <= \coffe_out[0]~output_o\;

ww_coffe_out(1) <= \coffe_out[1]~output_o\;

ww_coffe_out(2) <= \coffe_out[2]~output_o\;

ww_coffe_out(3) <= \coffe_out[3]~output_o\;

ww_coffe_out(4) <= \coffe_out[4]~output_o\;

ww_coffe_out(5) <= \coffe_out[5]~output_o\;

ww_coffe_out(6) <= \coffe_out[6]~output_o\;

ww_coffe_out(7) <= \coffe_out[7]~output_o\;

ww_error_flag <= \error_flag~output_o\;
END structure;


