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
-- Generated on "12/03/2024 15:01:47"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          deslocador
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY deslocador_vhd_vec_tst IS
END deslocador_vhd_vec_tst;
ARCHITECTURE deslocador_arch OF deslocador_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL DESLOCA : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL E : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL S : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT deslocador
	PORT (
	DESLOCA : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	E : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	S : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : deslocador
	PORT MAP (
-- list connections between master ports and signals
	DESLOCA => DESLOCA,
	E => E,
	S => S
	);
-- DESLOCA[1]
t_prcs_DESLOCA_1: PROCESS
BEGIN
	DESLOCA(1) <= '0';
WAIT;
END PROCESS t_prcs_DESLOCA_1;
-- DESLOCA[0]
t_prcs_DESLOCA_0: PROCESS
BEGIN
	DESLOCA(0) <= '1';
WAIT;
END PROCESS t_prcs_DESLOCA_0;
-- E[7]
t_prcs_E_7: PROCESS
BEGIN
	E(7) <= '1';
WAIT;
END PROCESS t_prcs_E_7;
-- E[6]
t_prcs_E_6: PROCESS
BEGIN
	E(6) <= '0';
WAIT;
END PROCESS t_prcs_E_6;
-- E[5]
t_prcs_E_5: PROCESS
BEGIN
	E(5) <= '1';
WAIT;
END PROCESS t_prcs_E_5;
-- E[4]
t_prcs_E_4: PROCESS
BEGIN
	E(4) <= '0';
WAIT;
END PROCESS t_prcs_E_4;
-- E[3]
t_prcs_E_3: PROCESS
BEGIN
	E(3) <= '1';
WAIT;
END PROCESS t_prcs_E_3;
-- E[2]
t_prcs_E_2: PROCESS
BEGIN
	E(2) <= '0';
WAIT;
END PROCESS t_prcs_E_2;
-- E[1]
t_prcs_E_1: PROCESS
BEGIN
	E(1) <= '1';
WAIT;
END PROCESS t_prcs_E_1;
-- E[0]
t_prcs_E_0: PROCESS
BEGIN
	E(0) <= '0';
WAIT;
END PROCESS t_prcs_E_0;
END deslocador_arch;
