-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "01/25/2018 10:07:11"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Gestos
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Gestos_vhd_vec_tst IS
END Gestos_vhd_vec_tst;
ARCHITECTURE Gestos_arch OF Gestos_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL est : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL led : STD_LOGIC;
SIGNAL Out7Seg : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL Resetn : STD_LOGIC;
SIGNAL RestaX : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL restaY : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Sensibilidad : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL start : STD_LOGIC;
SIGNAL stop : STD_LOGIC;
SIGNAL x : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL y : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT Gestos
	PORT (
	clock : IN STD_LOGIC;
	est : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	led : OUT STD_LOGIC;
	Out7Seg : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	Resetn : IN STD_LOGIC;
	RestaX : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	restaY : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	Sensibilidad : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	start : IN STD_LOGIC;
	stop : IN STD_LOGIC;
	x : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	y : IN STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Gestos
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	est => est,
	led => led,
	Out7Seg => Out7Seg,
	Resetn => Resetn,
	RestaX => RestaX,
	restaY => restaY,
	Sensibilidad => Sensibilidad,
	start => start,
	stop => stop,
	x => x,
	y => y
	);

-- Resetn
t_prcs_Resetn: PROCESS
BEGIN
	Resetn <= '1';
WAIT;
END PROCESS t_prcs_Resetn;

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 5000 ps;
	clock <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;

-- start
t_prcs_start: PROCESS
BEGIN
	start <= '0';
	WAIT FOR 50000 ps;
	start <= '1';
	WAIT FOR 40000 ps;
	start <= '0';
WAIT;
END PROCESS t_prcs_start;

-- stop
t_prcs_stop: PROCESS
BEGIN
	stop <= '0';
	WAIT FOR 550000 ps;
	stop <= '1';
	WAIT FOR 60000 ps;
	stop <= '0';
	WAIT FOR 260000 ps;
	stop <= '1';
	WAIT FOR 80000 ps;
	stop <= '0';
WAIT;
END PROCESS t_prcs_stop;
-- x[7]
t_prcs_x_7: PROCESS
BEGIN
	x(7) <= '1';
	WAIT FOR 120000 ps;
	x(7) <= '0';
	WAIT FOR 150000 ps;
	x(7) <= '1';
WAIT;
END PROCESS t_prcs_x_7;
-- x[6]
t_prcs_x_6: PROCESS
BEGIN
	x(6) <= '0';
	WAIT FOR 120000 ps;
	x(6) <= '1';
	WAIT FOR 150000 ps;
	x(6) <= '0';
WAIT;
END PROCESS t_prcs_x_6;
-- x[5]
t_prcs_x_5: PROCESS
BEGIN
	x(5) <= '0';
	WAIT FOR 120000 ps;
	x(5) <= '1';
	WAIT FOR 150000 ps;
	x(5) <= '0';
WAIT;
END PROCESS t_prcs_x_5;
-- x[4]
t_prcs_x_4: PROCESS
BEGIN
	x(4) <= '0';
	WAIT FOR 120000 ps;
	x(4) <= '1';
	WAIT FOR 150000 ps;
	x(4) <= '0';
WAIT;
END PROCESS t_prcs_x_4;
-- x[3]
t_prcs_x_3: PROCESS
BEGIN
	x(3) <= '0';
	WAIT FOR 120000 ps;
	x(3) <= '1';
	WAIT FOR 150000 ps;
	x(3) <= '0';
WAIT;
END PROCESS t_prcs_x_3;
-- x[2]
t_prcs_x_2: PROCESS
BEGIN
	x(2) <= '0';
	WAIT FOR 120000 ps;
	x(2) <= '1';
	WAIT FOR 120000 ps;
	x(2) <= '0';
	WAIT FOR 510000 ps;
	x(2) <= '1';
	WAIT FOR 70000 ps;
	x(2) <= '0';
WAIT;
END PROCESS t_prcs_x_2;
-- x[1]
t_prcs_x_1: PROCESS
BEGIN
	x(1) <= '0';
	WAIT FOR 120000 ps;
	x(1) <= '1';
	WAIT FOR 60000 ps;
	x(1) <= '0';
	WAIT FOR 60000 ps;
	x(1) <= '1';
	WAIT FOR 30000 ps;
	x(1) <= '0';
	WAIT FOR 440000 ps;
	x(1) <= '1';
	WAIT FOR 40000 ps;
	x(1) <= '0';
	WAIT FOR 40000 ps;
	x(1) <= '1';
	WAIT FOR 30000 ps;
	x(1) <= '0';
WAIT;
END PROCESS t_prcs_x_1;
-- x[0]
t_prcs_x_0: PROCESS
BEGIN
	x(0) <= '0';
	WAIT FOR 120000 ps;
	x(0) <= '1';
	WAIT FOR 30000 ps;
	x(0) <= '0';
	WAIT FOR 30000 ps;
	x(0) <= '1';
	WAIT FOR 30000 ps;
	x(0) <= '0';
	WAIT FOR 30000 ps;
	x(0) <= '1';
	WAIT FOR 30000 ps;
	x(0) <= '0';
	WAIT FOR 420000 ps;
	x(0) <= '1';
	WAIT FOR 20000 ps;
	FOR i IN 1 TO 2
	LOOP
		x(0) <= '0';
		WAIT FOR 20000 ps;
		x(0) <= '1';
		WAIT FOR 20000 ps;
	END LOOP;
	x(0) <= '0';
	WAIT FOR 20000 ps;
	x(0) <= '1';
	WAIT FOR 10000 ps;
	x(0) <= '0';
WAIT;
END PROCESS t_prcs_x_0;
-- y[7]
t_prcs_y_7: PROCESS
BEGIN
	y(7) <= '1';
	WAIT FOR 330000 ps;
	y(7) <= '0';
	WAIT FOR 150000 ps;
	y(7) <= '1';
WAIT;
END PROCESS t_prcs_y_7;
-- y[6]
t_prcs_y_6: PROCESS
BEGIN
	y(6) <= '0';
	WAIT FOR 330000 ps;
	y(6) <= '1';
	WAIT FOR 150000 ps;
	y(6) <= '0';
WAIT;
END PROCESS t_prcs_y_6;
-- y[5]
t_prcs_y_5: PROCESS
BEGIN
	y(5) <= '0';
	WAIT FOR 330000 ps;
	y(5) <= '1';
	WAIT FOR 150000 ps;
	y(5) <= '0';
WAIT;
END PROCESS t_prcs_y_5;
-- y[4]
t_prcs_y_4: PROCESS
BEGIN
	y(4) <= '0';
	WAIT FOR 330000 ps;
	y(4) <= '1';
	WAIT FOR 150000 ps;
	y(4) <= '0';
WAIT;
END PROCESS t_prcs_y_4;
-- y[3]
t_prcs_y_3: PROCESS
BEGIN
	y(3) <= '0';
	WAIT FOR 330000 ps;
	y(3) <= '1';
	WAIT FOR 150000 ps;
	y(3) <= '0';
WAIT;
END PROCESS t_prcs_y_3;
-- y[2]
t_prcs_y_2: PROCESS
BEGIN
	y(2) <= '0';
	WAIT FOR 330000 ps;
	y(2) <= '1';
	WAIT FOR 120000 ps;
	y(2) <= '0';
WAIT;
END PROCESS t_prcs_y_2;
-- y[1]
t_prcs_y_1: PROCESS
BEGIN
	y(1) <= '0';
	WAIT FOR 330000 ps;
	y(1) <= '1';
	WAIT FOR 60000 ps;
	y(1) <= '0';
	WAIT FOR 60000 ps;
	y(1) <= '1';
	WAIT FOR 30000 ps;
	y(1) <= '0';
WAIT;
END PROCESS t_prcs_y_1;
-- y[0]
t_prcs_y_0: PROCESS
BEGIN
	y(0) <= '0';
	WAIT FOR 330000 ps;
	y(0) <= '1';
	WAIT FOR 30000 ps;
	y(0) <= '0';
	WAIT FOR 30000 ps;
	y(0) <= '1';
	WAIT FOR 30000 ps;
	y(0) <= '0';
	WAIT FOR 30000 ps;
	y(0) <= '1';
	WAIT FOR 30000 ps;
	y(0) <= '0';
WAIT;
END PROCESS t_prcs_y_0;
-- Sensibilidad[7]
t_prcs_Sensibilidad_7: PROCESS
BEGIN
	Sensibilidad(7) <= '0';
WAIT;
END PROCESS t_prcs_Sensibilidad_7;
-- Sensibilidad[6]
t_prcs_Sensibilidad_6: PROCESS
BEGIN
	Sensibilidad(6) <= '0';
WAIT;
END PROCESS t_prcs_Sensibilidad_6;
-- Sensibilidad[5]
t_prcs_Sensibilidad_5: PROCESS
BEGIN
	Sensibilidad(5) <= '0';
WAIT;
END PROCESS t_prcs_Sensibilidad_5;
-- Sensibilidad[4]
t_prcs_Sensibilidad_4: PROCESS
BEGIN
	Sensibilidad(4) <= '0';
WAIT;
END PROCESS t_prcs_Sensibilidad_4;
-- Sensibilidad[3]
t_prcs_Sensibilidad_3: PROCESS
BEGIN
	Sensibilidad(3) <= '0';
WAIT;
END PROCESS t_prcs_Sensibilidad_3;
-- Sensibilidad[2]
t_prcs_Sensibilidad_2: PROCESS
BEGIN
	Sensibilidad(2) <= '0';
WAIT;
END PROCESS t_prcs_Sensibilidad_2;
-- Sensibilidad[1]
t_prcs_Sensibilidad_1: PROCESS
BEGIN
	Sensibilidad(1) <= '1';
WAIT;
END PROCESS t_prcs_Sensibilidad_1;
-- Sensibilidad[0]
t_prcs_Sensibilidad_0: PROCESS
BEGIN
	Sensibilidad(0) <= '1';
WAIT;
END PROCESS t_prcs_Sensibilidad_0;
END Gestos_arch;
