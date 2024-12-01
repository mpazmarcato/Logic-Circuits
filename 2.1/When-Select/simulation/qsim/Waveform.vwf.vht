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
-- Generated on "12/01/2024 07:46:16"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          demux_1x4_when_select
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY demux_1x4_when_select_vhd_vec_tst IS
END demux_1x4_when_select_vhd_vec_tst;
ARCHITECTURE demux_1x4_when_select_arch OF demux_1x4_when_select_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL S0 : STD_LOGIC;
SIGNAL S1 : STD_LOGIC;
SIGNAL X : STD_LOGIC;
SIGNAL Y : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT demux_1x4_when_select
	PORT (
	S0 : IN STD_LOGIC;
	S1 : IN STD_LOGIC;
	X : IN STD_LOGIC;
	Y : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : demux_1x4_when_select
	PORT MAP (
-- list connections between master ports and signals
	S0 => S0,
	S1 => S1,
	X => X,
	Y => Y
	);

-- S0
t_prcs_S0: PROCESS
BEGIN
	S0 <= '0';
	WAIT FOR 150000 ps;
	S0 <= '1';
	WAIT FOR 100000 ps;
	S0 <= '0';
WAIT;
END PROCESS t_prcs_S0;

-- S1
t_prcs_S1: PROCESS
BEGIN
	S1 <= '0';
	WAIT FOR 100000 ps;
	S1 <= '1';
	WAIT FOR 50000 ps;
	S1 <= '0';
	WAIT FOR 50000 ps;
	S1 <= '1';
	WAIT FOR 50000 ps;
	S1 <= '0';
WAIT;
END PROCESS t_prcs_S1;

-- X
t_prcs_X: PROCESS
BEGIN
	X <= '0';
	WAIT FOR 50000 ps;
	X <= '1';
	WAIT FOR 400000 ps;
	X <= '0';
WAIT;
END PROCESS t_prcs_X;
END demux_1x4_when_select_arch;
