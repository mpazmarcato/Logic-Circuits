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
-- Generated on "12/01/2024 11:53:11"
                                                             
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
SIGNAL bin_buttons : STD_LOGIC_VECTOR(0 TO 2);
SIGNAL coffe_out : STD_LOGIC_VECTOR(0 TO 7);
COMPONENT coffe_machine
	PORT (
	bin_buttons : IN STD_LOGIC_VECTOR(0 TO 2);
	coffe_out : OUT STD_LOGIC_VECTOR(0 TO 7)
	);
END COMPONENT;
BEGIN
	i1 : coffe_machine
	PORT MAP (
-- list connections between master ports and signals
	bin_buttons => bin_buttons,
	coffe_out => coffe_out
	);
-- bin_buttons[2]
t_prcs_bin_buttons_2: PROCESS
BEGIN
	bin_buttons(2) <= '0';
WAIT;
END PROCESS t_prcs_bin_buttons_2;
-- bin_buttons[1]
t_prcs_bin_buttons_1: PROCESS
BEGIN
	bin_buttons(1) <= '0';
WAIT;
END PROCESS t_prcs_bin_buttons_1;
-- bin_buttons[0]
t_prcs_bin_buttons_0: PROCESS
BEGIN
	bin_buttons(0) <= '0';
WAIT;
END PROCESS t_prcs_bin_buttons_0;
END coffe_machine_arch;
