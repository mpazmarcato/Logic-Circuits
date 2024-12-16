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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "12/16/2024 15:41:03"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          coffe_machine
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY coffe_machine_vhd_vec_tst IS
END coffe_machine_vhd_vec_tst;
ARCHITECTURE coffe_machine_arch OF coffe_machine_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL buttons : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL coffe_out : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL debug_count : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL error_flag : STD_LOGIC;
COMPONENT coffe_machine
	PORT (
	buttons : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	coffe_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	debug_count : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	error_flag : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : coffe_machine
	PORT MAP (
-- list connections between master ports and signals
	buttons => buttons,
	coffe_out => coffe_out,
	debug_count => debug_count,
	error_flag => error_flag
	);
-- buttons[7]
t_prcs_buttons_7: PROCESS
BEGIN
	buttons(7) <= '0';
WAIT;
END PROCESS t_prcs_buttons_7;
-- buttons[6]
t_prcs_buttons_6: PROCESS
BEGIN
	buttons(6) <= '0';
WAIT;
END PROCESS t_prcs_buttons_6;
-- buttons[5]
t_prcs_buttons_5: PROCESS
BEGIN
	buttons(5) <= '0';
WAIT;
END PROCESS t_prcs_buttons_5;
-- buttons[4]
t_prcs_buttons_4: PROCESS
BEGIN
	buttons(4) <= '0';
WAIT;
END PROCESS t_prcs_buttons_4;
-- buttons[3]
t_prcs_buttons_3: PROCESS
BEGIN
	buttons(3) <= '0';
WAIT;
END PROCESS t_prcs_buttons_3;
-- buttons[2]
t_prcs_buttons_2: PROCESS
BEGIN
	buttons(2) <= '1';
WAIT;
END PROCESS t_prcs_buttons_2;
-- buttons[1]
t_prcs_buttons_1: PROCESS
BEGIN
	buttons(1) <= '0';
WAIT;
END PROCESS t_prcs_buttons_1;
-- buttons[0]
t_prcs_buttons_0: PROCESS
BEGIN
	buttons(0) <= '0';
WAIT;
END PROCESS t_prcs_buttons_0;
END coffe_machine_arch;
