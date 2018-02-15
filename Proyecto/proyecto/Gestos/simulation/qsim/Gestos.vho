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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.0.0 Build 595 04/25/2017 SJ Standard Edition"

-- DATE "01/18/2018 10:37:46"

-- 
-- Device: Altera 5M160ZT100C4 Package TQFP100
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	Gestos IS
    PORT (
	led : OUT std_logic;
	Resetn : IN std_logic;
	clock : IN std_logic;
	start : IN std_logic;
	stop : IN std_logic;
	y : IN std_logic_vector(7 DOWNTO 0);
	x : IN std_logic_vector(7 DOWNTO 0);
	Sensibilidad : IN std_logic_vector(7 DOWNTO 0);
	est : OUT std_logic_vector(3 DOWNTO 0);
	Out7Seg : OUT std_logic_vector(6 DOWNTO 0);
	RestaX : OUT std_logic_vector(7 DOWNTO 0);
	restaY : OUT std_logic_vector(7 DOWNTO 0)
	);
END Gestos;

-- Design Ports Information


ARCHITECTURE structure OF Gestos IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_led : std_logic;
SIGNAL ww_Resetn : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_stop : std_logic;
SIGNAL ww_y : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_x : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Sensibilidad : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_est : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Out7Seg : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_RestaX : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_restaY : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst19|Add1~42\ : std_logic;
SIGNAL \inst26|Add1~42\ : std_logic;
SIGNAL \inst24|LessThan1~5\ : std_logic;
SIGNAL \inst30|LessThan1~5\ : std_logic;
SIGNAL \inst24|LessThan1~10\ : std_logic;
SIGNAL \inst30|LessThan1~10\ : std_logic;
SIGNAL \inst24|LessThan1~15\ : std_logic;
SIGNAL \inst30|LessThan1~15\ : std_logic;
SIGNAL \inst24|LessThan1~20\ : std_logic;
SIGNAL \inst30|LessThan1~20\ : std_logic;
SIGNAL \inst24|LessThan1~25\ : std_logic;
SIGNAL \inst30|LessThan1~25\ : std_logic;
SIGNAL \inst24|LessThan1~30\ : std_logic;
SIGNAL \inst30|LessThan1~30\ : std_logic;
SIGNAL \inst24|LessThan1~35\ : std_logic;
SIGNAL \inst30|LessThan1~35\ : std_logic;
SIGNAL \clock~combout\ : std_logic;
SIGNAL \stop~combout\ : std_logic;
SIGNAL \inst19|Add1~44_cout0\ : std_logic;
SIGNAL \inst19|Add1~44COUT1_48\ : std_logic;
SIGNAL \inst19|Add1~38\ : std_logic;
SIGNAL \inst19|Add1~38COUT1_49\ : std_logic;
SIGNAL \inst19|Add1~32\ : std_logic;
SIGNAL \inst19|Add1~32COUT1_50\ : std_logic;
SIGNAL \inst19|Add1~26\ : std_logic;
SIGNAL \inst19|Add1~26COUT1_51\ : std_logic;
SIGNAL \inst19|Add1~20\ : std_logic;
SIGNAL \inst19|Add1~14\ : std_logic;
SIGNAL \inst19|Add1~14COUT1_52\ : std_logic;
SIGNAL \inst19|Add1~8\ : std_logic;
SIGNAL \inst19|Add1~8COUT1_53\ : std_logic;
SIGNAL \inst19|Add1~0_combout\ : std_logic;
SIGNAL \inst19|Add1~5_combout\ : std_logic;
SIGNAL \inst19|Add1~18_combout\ : std_logic;
SIGNAL \inst19|Add1~23_combout\ : std_logic;
SIGNAL \inst19|Add1~24_combout\ : std_logic;
SIGNAL \inst19|Add1~29_combout\ : std_logic;
SIGNAL \inst19|Add1~30_combout\ : std_logic;
SIGNAL \inst19|Add1~35_combout\ : std_logic;
SIGNAL \inst19|Add1~36_combout\ : std_logic;
SIGNAL \inst19|Add1~41_combout\ : std_logic;
SIGNAL \inst24|LessThan1~37_cout0\ : std_logic;
SIGNAL \inst24|LessThan1~37COUT1_41\ : std_logic;
SIGNAL \inst24|LessThan1~32_cout0\ : std_logic;
SIGNAL \inst24|LessThan1~32COUT1_42\ : std_logic;
SIGNAL \inst24|LessThan1~27_cout0\ : std_logic;
SIGNAL \inst24|LessThan1~27COUT1_43\ : std_logic;
SIGNAL \inst24|LessThan1~22_cout0\ : std_logic;
SIGNAL \inst24|LessThan1~22COUT1_44\ : std_logic;
SIGNAL \inst24|LessThan1~17_cout\ : std_logic;
SIGNAL \inst19|Add1~6_combout\ : std_logic;
SIGNAL \inst19|Add1~11_combout\ : std_logic;
SIGNAL \inst19|Add1~12_combout\ : std_logic;
SIGNAL \inst19|Add1~17_combout\ : std_logic;
SIGNAL \inst24|LessThan1~12_cout0\ : std_logic;
SIGNAL \inst24|LessThan1~12COUT1_45\ : std_logic;
SIGNAL \inst24|LessThan1~7_cout0\ : std_logic;
SIGNAL \inst24|LessThan1~7COUT1_46\ : std_logic;
SIGNAL \inst24|LessThan1~0_combout\ : std_logic;
SIGNAL \inst|LessThan1~0_combout\ : std_logic;
SIGNAL \inst|LessThan1~1_combout\ : std_logic;
SIGNAL \inst26|Add1~44_cout0\ : std_logic;
SIGNAL \inst26|Add1~44COUT1_48\ : std_logic;
SIGNAL \inst26|Add1~38\ : std_logic;
SIGNAL \inst26|Add1~38COUT1_49\ : std_logic;
SIGNAL \inst26|Add1~32\ : std_logic;
SIGNAL \inst26|Add1~32COUT1_50\ : std_logic;
SIGNAL \inst26|Add1~26\ : std_logic;
SIGNAL \inst26|Add1~26COUT1_51\ : std_logic;
SIGNAL \inst26|Add1~20\ : std_logic;
SIGNAL \inst26|Add1~14\ : std_logic;
SIGNAL \inst26|Add1~14COUT1_52\ : std_logic;
SIGNAL \inst26|Add1~8\ : std_logic;
SIGNAL \inst26|Add1~8COUT1_53\ : std_logic;
SIGNAL \inst26|Add1~0_combout\ : std_logic;
SIGNAL \inst26|Add1~5_combout\ : std_logic;
SIGNAL \inst26|Add1~18_combout\ : std_logic;
SIGNAL \inst26|Add1~23_combout\ : std_logic;
SIGNAL \inst26|Add1~24_combout\ : std_logic;
SIGNAL \inst26|Add1~29_combout\ : std_logic;
SIGNAL \inst26|Add1~30_combout\ : std_logic;
SIGNAL \inst26|Add1~35_combout\ : std_logic;
SIGNAL \inst26|Add1~36_combout\ : std_logic;
SIGNAL \inst26|Add1~41_combout\ : std_logic;
SIGNAL \inst30|LessThan1~37_cout0\ : std_logic;
SIGNAL \inst30|LessThan1~37COUT1_41\ : std_logic;
SIGNAL \inst30|LessThan1~32_cout0\ : std_logic;
SIGNAL \inst30|LessThan1~32COUT1_42\ : std_logic;
SIGNAL \inst30|LessThan1~27_cout0\ : std_logic;
SIGNAL \inst30|LessThan1~27COUT1_43\ : std_logic;
SIGNAL \inst30|LessThan1~22_cout0\ : std_logic;
SIGNAL \inst30|LessThan1~22COUT1_44\ : std_logic;
SIGNAL \inst30|LessThan1~17_cout\ : std_logic;
SIGNAL \inst26|Add1~6_combout\ : std_logic;
SIGNAL \inst26|Add1~11_combout\ : std_logic;
SIGNAL \inst26|Add1~12_combout\ : std_logic;
SIGNAL \inst26|Add1~17_combout\ : std_logic;
SIGNAL \inst30|LessThan1~12_cout0\ : std_logic;
SIGNAL \inst30|LessThan1~12COUT1_45\ : std_logic;
SIGNAL \inst30|LessThan1~7_cout0\ : std_logic;
SIGNAL \inst30|LessThan1~7COUT1_46\ : std_logic;
SIGNAL \inst30|LessThan1~0_combout\ : std_logic;
SIGNAL \inst3|LessThan1~0_combout\ : std_logic;
SIGNAL \inst3|LessThan1~1_combout\ : std_logic;
SIGNAL \inst43|Selector6~0_combout\ : std_logic;
SIGNAL \inst43|Selector6~1_combout\ : std_logic;
SIGNAL \inst43|Selector2~1_combout\ : std_logic;
SIGNAL \start~combout\ : std_logic;
SIGNAL \Resetn~combout\ : std_logic;
SIGNAL \inst43|y.Te~regout\ : std_logic;
SIGNAL \inst43|y.Tg~regout\ : std_logic;
SIGNAL \inst43|y.Tf~regout\ : std_logic;
SIGNAL \inst43|y.Th~regout\ : std_logic;
SIGNAL \inst43|WideOr7~0_combout\ : std_logic;
SIGNAL \inst43|Selector2~0_combout\ : std_logic;
SIGNAL \inst43|y.Tc~regout\ : std_logic;
SIGNAL \inst43|y.Td~regout\ : std_logic;
SIGNAL \inst43|y.Ti~regout\ : std_logic;
SIGNAL \inst43|Selector0~3_combout\ : std_logic;
SIGNAL \inst43|Selector0~1_combout\ : std_logic;
SIGNAL \inst43|Selector0~0\ : std_logic;
SIGNAL \inst43|Selector0~2_combout\ : std_logic;
SIGNAL \inst43|y.Ta~regout\ : std_logic;
SIGNAL \inst43|Selector1~0_combout\ : std_logic;
SIGNAL \inst43|y.Tb~regout\ : std_logic;
SIGNAL \inst43|y.Tj~regout\ : std_logic;
SIGNAL \inst43|WideOr5~0_combout\ : std_logic;
SIGNAL \inst43|WideOr1~0_combout\ : std_logic;
SIGNAL \inst43|WideOr2~combout\ : std_logic;
SIGNAL \inst43|WideOr5~1_combout\ : std_logic;
SIGNAL \inst43|WideOr3~combout\ : std_logic;
SIGNAL \inst43|WideOr4~combout\ : std_logic;
SIGNAL \inst38|sal[6]~0_combout\ : std_logic;
SIGNAL \inst38|sal[5]~1_combout\ : std_logic;
SIGNAL \inst38|sal[4]~2_combout\ : std_logic;
SIGNAL \inst38|sal[3]~3_combout\ : std_logic;
SIGNAL \inst38|sal[2]~4_combout\ : std_logic;
SIGNAL \inst43|WideOr6~combout\ : std_logic;
SIGNAL \inst37|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \x~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \y~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Sensibilidad~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_Resetn~combout\ : std_logic;
SIGNAL \inst38|ALT_INV_sal[4]~2_combout\ : std_logic;
SIGNAL \inst43|ALT_INV_WideOr3~combout\ : std_logic;

BEGIN

led <= ww_led;
ww_Resetn <= Resetn;
ww_clock <= clock;
ww_start <= start;
ww_stop <= stop;
ww_y <= y;
ww_x <= x;
ww_Sensibilidad <= Sensibilidad;
est <= ww_est;
Out7Seg <= ww_Out7Seg;
RestaX <= ww_RestaX;
restaY <= ww_restaY;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Resetn~combout\ <= NOT \Resetn~combout\;
\inst38|ALT_INV_sal[4]~2_combout\ <= NOT \inst38|sal[4]~2_combout\;
\inst43|ALT_INV_WideOr3~combout\ <= NOT \inst43|WideOr3~combout\;

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clock~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clock,
	combout => \clock~combout\);

-- Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\stop~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_stop,
	combout => \stop~combout\);

-- Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x(7),
	combout => \x~combout\(7));

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Sensibilidad[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Sensibilidad(7),
	combout => \Sensibilidad~combout\(7));

-- Location: PIN_54,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x(4),
	combout => \x~combout\(4));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x(3),
	combout => \x~combout\(3));

-- Location: PIN_56,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x(2),
	combout => \x~combout\(2));

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x(1),
	combout => \x~combout\(1));

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x(0),
	combout => \x~combout\(0));

-- Location: LC_X7_Y1_N0
\inst19|Add1~44\ : maxv_lcell
-- Equation(s):
-- \inst19|Add1~44_cout0\ = CARRY(((!\x~combout\(0))))
-- \inst19|Add1~44COUT1_48\ = CARRY(((!\x~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff33",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \x~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst19|Add1~42\,
	cout0 => \inst19|Add1~44_cout0\,
	cout1 => \inst19|Add1~44COUT1_48\);

-- Location: LC_X7_Y1_N1
\inst19|Add1~36\ : maxv_lcell
-- Equation(s):
-- \inst19|Add1~36_combout\ = (\x~combout\(1) $ ((!\inst19|Add1~44_cout0\)))
-- \inst19|Add1~38\ = CARRY(((\x~combout\(1)) # (!\inst19|Add1~44_cout0\)))
-- \inst19|Add1~38COUT1_49\ = CARRY(((\x~combout\(1)) # (!\inst19|Add1~44COUT1_48\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c3cf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \x~combout\(1),
	cin0 => \inst19|Add1~44_cout0\,
	cin1 => \inst19|Add1~44COUT1_48\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst19|Add1~36_combout\,
	cout0 => \inst19|Add1~38\,
	cout1 => \inst19|Add1~38COUT1_49\);

-- Location: LC_X7_Y1_N2
\inst19|Add1~30\ : maxv_lcell
-- Equation(s):
-- \inst19|Add1~30_combout\ = \x~combout\(2) $ ((((\inst19|Add1~38\))))
-- \inst19|Add1~32\ = CARRY((!\x~combout\(2) & ((!\inst19|Add1~38\))))
-- \inst19|Add1~32COUT1_50\ = CARRY((!\x~combout\(2) & ((!\inst19|Add1~38COUT1_49\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a05",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \x~combout\(2),
	cin0 => \inst19|Add1~38\,
	cin1 => \inst19|Add1~38COUT1_49\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst19|Add1~30_combout\,
	cout0 => \inst19|Add1~32\,
	cout1 => \inst19|Add1~32COUT1_50\);

-- Location: LC_X7_Y1_N3
\inst19|Add1~24\ : maxv_lcell
-- Equation(s):
-- \inst19|Add1~24_combout\ = \x~combout\(3) $ ((((!\inst19|Add1~32\))))
-- \inst19|Add1~26\ = CARRY((\x~combout\(3)) # ((!\inst19|Add1~32\)))
-- \inst19|Add1~26COUT1_51\ = CARRY((\x~combout\(3)) # ((!\inst19|Add1~32COUT1_50\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a5af",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \x~combout\(3),
	cin0 => \inst19|Add1~32\,
	cin1 => \inst19|Add1~32COUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst19|Add1~24_combout\,
	cout0 => \inst19|Add1~26\,
	cout1 => \inst19|Add1~26COUT1_51\);

-- Location: LC_X7_Y1_N4
\inst19|Add1~18\ : maxv_lcell
-- Equation(s):
-- \inst19|Add1~18_combout\ = (\x~combout\(4) $ ((\inst19|Add1~26\)))
-- \inst19|Add1~20\ = CARRY(((!\x~combout\(4) & !\inst19|Add1~26COUT1_51\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c03",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \x~combout\(4),
	cin0 => \inst19|Add1~26\,
	cin1 => \inst19|Add1~26COUT1_51\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst19|Add1~18_combout\,
	cout => \inst19|Add1~20\);

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x(6),
	combout => \x~combout\(6));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x(5),
	combout => \x~combout\(5));

-- Location: LC_X7_Y1_N5
\inst19|Add1~12\ : maxv_lcell
-- Equation(s):
-- \inst19|Add1~12_combout\ = \x~combout\(5) $ ((((!\inst19|Add1~20\))))
-- \inst19|Add1~14\ = CARRY((\x~combout\(5)) # ((!\inst19|Add1~20\)))
-- \inst19|Add1~14COUT1_52\ = CARRY((\x~combout\(5)) # ((!\inst19|Add1~20\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a5af",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \x~combout\(5),
	cin => \inst19|Add1~20\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst19|Add1~12_combout\,
	cout0 => \inst19|Add1~14\,
	cout1 => \inst19|Add1~14COUT1_52\);

-- Location: LC_X7_Y1_N6
\inst19|Add1~6\ : maxv_lcell
-- Equation(s):
-- \inst19|Add1~6_combout\ = (\x~combout\(6) $ (((!\inst19|Add1~20\ & \inst19|Add1~14\) # (\inst19|Add1~20\ & \inst19|Add1~14COUT1_52\))))
-- \inst19|Add1~8\ = CARRY(((!\x~combout\(6) & !\inst19|Add1~14\)))
-- \inst19|Add1~8COUT1_53\ = CARRY(((!\x~combout\(6) & !\inst19|Add1~14COUT1_52\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c03",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \x~combout\(6),
	cin => \inst19|Add1~20\,
	cin0 => \inst19|Add1~14\,
	cin1 => \inst19|Add1~14COUT1_52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst19|Add1~6_combout\,
	cout0 => \inst19|Add1~8\,
	cout1 => \inst19|Add1~8COUT1_53\);

-- Location: LC_X7_Y1_N7
\inst19|Add1~0\ : maxv_lcell
-- Equation(s):
-- \inst19|Add1~0_combout\ = \x~combout\(7) $ (((((!\inst19|Add1~20\ & \inst19|Add1~8\) # (\inst19|Add1~20\ & \inst19|Add1~8COUT1_53\)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \x~combout\(7),
	cin => \inst19|Add1~20\,
	cin0 => \inst19|Add1~8\,
	cin1 => \inst19|Add1~8COUT1_53\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst19|Add1~0_combout\);

-- Location: LC_X6_Y1_N8
\inst19|Add1~5\ : maxv_lcell
-- Equation(s):
-- \inst19|Add1~5_combout\ = (((!\x~combout\(7) & \inst19|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \x~combout\(7),
	datad => \inst19|Add1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst19|Add1~5_combout\);

-- Location: LC_X7_Y1_N8
\inst19|Add1~23\ : maxv_lcell
-- Equation(s):
-- \inst19|Add1~23_combout\ = ((\x~combout\(7) & ((\x~combout\(4)))) # (!\x~combout\(7) & (\inst19|Add1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add1~18_combout\,
	datac => \x~combout\(7),
	datad => \x~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst19|Add1~23_combout\);

-- Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Sensibilidad[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Sensibilidad(4),
	combout => \Sensibilidad~combout\(4));

-- Location: LC_X7_Y1_N9
\inst19|Add1~29\ : maxv_lcell
-- Equation(s):
-- \inst19|Add1~29_combout\ = ((\x~combout\(7) & ((\x~combout\(3)))) # (!\x~combout\(7) & (\inst19|Add1~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add1~24_combout\,
	datac => \x~combout\(7),
	datad => \x~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst19|Add1~29_combout\);

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Sensibilidad[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Sensibilidad(3),
	combout => \Sensibilidad~combout\(3));

-- Location: LC_X6_Y1_N5
\inst19|Add1~35\ : maxv_lcell
-- Equation(s):
-- \inst19|Add1~35_combout\ = ((\x~combout\(7) & ((\x~combout\(2)))) # (!\x~combout\(7) & (\inst19|Add1~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \x~combout\(7),
	datac => \inst19|Add1~30_combout\,
	datad => \x~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst19|Add1~35_combout\);

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Sensibilidad[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Sensibilidad(2),
	combout => \Sensibilidad~combout\(2));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Sensibilidad[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Sensibilidad(1),
	combout => \Sensibilidad~combout\(1));

-- Location: LC_X6_Y1_N7
\inst19|Add1~41\ : maxv_lcell
-- Equation(s):
-- \inst19|Add1~41_combout\ = ((\x~combout\(7) & (\x~combout\(1))) # (!\x~combout\(7) & ((\inst19|Add1~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \x~combout\(7),
	datac => \x~combout\(1),
	datad => \inst19|Add1~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst19|Add1~41_combout\);

-- Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Sensibilidad[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Sensibilidad(0),
	combout => \Sensibilidad~combout\(0));

-- Location: LC_X6_Y2_N0
\inst24|LessThan1~37\ : maxv_lcell
-- Equation(s):
-- \inst24|LessThan1~37_cout0\ = CARRY((!\Sensibilidad~combout\(0) & (\x~combout\(0))))
-- \inst24|LessThan1~37COUT1_41\ = CARRY((!\Sensibilidad~combout\(0) & (\x~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff44",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Sensibilidad~combout\(0),
	datab => \x~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst24|LessThan1~35\,
	cout0 => \inst24|LessThan1~37_cout0\,
	cout1 => \inst24|LessThan1~37COUT1_41\);

-- Location: LC_X6_Y2_N1
\inst24|LessThan1~32\ : maxv_lcell
-- Equation(s):
-- \inst24|LessThan1~32_cout0\ = CARRY((\Sensibilidad~combout\(1) & ((!\inst24|LessThan1~37_cout0\) # (!\inst19|Add1~41_combout\))) # (!\Sensibilidad~combout\(1) & (!\inst19|Add1~41_combout\ & !\inst24|LessThan1~37_cout0\)))
-- \inst24|LessThan1~32COUT1_42\ = CARRY((\Sensibilidad~combout\(1) & ((!\inst24|LessThan1~37COUT1_41\) # (!\inst19|Add1~41_combout\))) # (!\Sensibilidad~combout\(1) & (!\inst19|Add1~41_combout\ & !\inst24|LessThan1~37COUT1_41\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Sensibilidad~combout\(1),
	datab => \inst19|Add1~41_combout\,
	cin0 => \inst24|LessThan1~37_cout0\,
	cin1 => \inst24|LessThan1~37COUT1_41\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst24|LessThan1~30\,
	cout0 => \inst24|LessThan1~32_cout0\,
	cout1 => \inst24|LessThan1~32COUT1_42\);

-- Location: LC_X6_Y2_N2
\inst24|LessThan1~27\ : maxv_lcell
-- Equation(s):
-- \inst24|LessThan1~27_cout0\ = CARRY((\inst19|Add1~35_combout\ & ((!\inst24|LessThan1~32_cout0\) # (!\Sensibilidad~combout\(2)))) # (!\inst19|Add1~35_combout\ & (!\Sensibilidad~combout\(2) & !\inst24|LessThan1~32_cout0\)))
-- \inst24|LessThan1~27COUT1_43\ = CARRY((\inst19|Add1~35_combout\ & ((!\inst24|LessThan1~32COUT1_42\) # (!\Sensibilidad~combout\(2)))) # (!\inst19|Add1~35_combout\ & (!\Sensibilidad~combout\(2) & !\inst24|LessThan1~32COUT1_42\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add1~35_combout\,
	datab => \Sensibilidad~combout\(2),
	cin0 => \inst24|LessThan1~32_cout0\,
	cin1 => \inst24|LessThan1~32COUT1_42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst24|LessThan1~25\,
	cout0 => \inst24|LessThan1~27_cout0\,
	cout1 => \inst24|LessThan1~27COUT1_43\);

-- Location: LC_X6_Y2_N3
\inst24|LessThan1~22\ : maxv_lcell
-- Equation(s):
-- \inst24|LessThan1~22_cout0\ = CARRY((\inst19|Add1~29_combout\ & (\Sensibilidad~combout\(3) & !\inst24|LessThan1~27_cout0\)) # (!\inst19|Add1~29_combout\ & ((\Sensibilidad~combout\(3)) # (!\inst24|LessThan1~27_cout0\))))
-- \inst24|LessThan1~22COUT1_44\ = CARRY((\inst19|Add1~29_combout\ & (\Sensibilidad~combout\(3) & !\inst24|LessThan1~27COUT1_43\)) # (!\inst19|Add1~29_combout\ & ((\Sensibilidad~combout\(3)) # (!\inst24|LessThan1~27COUT1_43\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add1~29_combout\,
	datab => \Sensibilidad~combout\(3),
	cin0 => \inst24|LessThan1~27_cout0\,
	cin1 => \inst24|LessThan1~27COUT1_43\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst24|LessThan1~20\,
	cout0 => \inst24|LessThan1~22_cout0\,
	cout1 => \inst24|LessThan1~22COUT1_44\);

-- Location: LC_X6_Y2_N4
\inst24|LessThan1~17\ : maxv_lcell
-- Equation(s):
-- \inst24|LessThan1~17_cout\ = CARRY((\inst19|Add1~23_combout\ & ((!\inst24|LessThan1~22COUT1_44\) # (!\Sensibilidad~combout\(4)))) # (!\inst19|Add1~23_combout\ & (!\Sensibilidad~combout\(4) & !\inst24|LessThan1~22COUT1_44\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add1~23_combout\,
	datab => \Sensibilidad~combout\(4),
	cin0 => \inst24|LessThan1~22_cout0\,
	cin1 => \inst24|LessThan1~22COUT1_44\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst24|LessThan1~15\,
	cout => \inst24|LessThan1~17_cout\);

-- Location: LC_X6_Y1_N6
\inst19|Add1~11\ : maxv_lcell
-- Equation(s):
-- \inst19|Add1~11_combout\ = (\x~combout\(7) & (\x~combout\(6))) # (!\x~combout\(7) & (((\inst19|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb88",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \x~combout\(6),
	datab => \x~combout\(7),
	datad => \inst19|Add1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst19|Add1~11_combout\);

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Sensibilidad[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Sensibilidad(6),
	combout => \Sensibilidad~combout\(6));

-- Location: LC_X6_Y1_N2
\inst19|Add1~17\ : maxv_lcell
-- Equation(s):
-- \inst19|Add1~17_combout\ = ((\x~combout\(7) & ((\x~combout\(5)))) # (!\x~combout\(7) & (\inst19|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Add1~12_combout\,
	datac => \x~combout\(7),
	datad => \x~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst19|Add1~17_combout\);

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Sensibilidad[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Sensibilidad(5),
	combout => \Sensibilidad~combout\(5));

-- Location: LC_X6_Y2_N5
\inst24|LessThan1~12\ : maxv_lcell
-- Equation(s):
-- \inst24|LessThan1~12_cout0\ = CARRY((\inst19|Add1~17_combout\ & (\Sensibilidad~combout\(5) & !\inst24|LessThan1~17_cout\)) # (!\inst19|Add1~17_combout\ & ((\Sensibilidad~combout\(5)) # (!\inst24|LessThan1~17_cout\))))
-- \inst24|LessThan1~12COUT1_45\ = CARRY((\inst19|Add1~17_combout\ & (\Sensibilidad~combout\(5) & !\inst24|LessThan1~17_cout\)) # (!\inst19|Add1~17_combout\ & ((\Sensibilidad~combout\(5)) # (!\inst24|LessThan1~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add1~17_combout\,
	datab => \Sensibilidad~combout\(5),
	cin => \inst24|LessThan1~17_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst24|LessThan1~10\,
	cout0 => \inst24|LessThan1~12_cout0\,
	cout1 => \inst24|LessThan1~12COUT1_45\);

-- Location: LC_X6_Y2_N6
\inst24|LessThan1~7\ : maxv_lcell
-- Equation(s):
-- \inst24|LessThan1~7_cout0\ = CARRY((\inst19|Add1~11_combout\ & ((!\inst24|LessThan1~12_cout0\) # (!\Sensibilidad~combout\(6)))) # (!\inst19|Add1~11_combout\ & (!\Sensibilidad~combout\(6) & !\inst24|LessThan1~12_cout0\)))
-- \inst24|LessThan1~7COUT1_46\ = CARRY((\inst19|Add1~11_combout\ & ((!\inst24|LessThan1~12COUT1_45\) # (!\Sensibilidad~combout\(6)))) # (!\inst19|Add1~11_combout\ & (!\Sensibilidad~combout\(6) & !\inst24|LessThan1~12COUT1_45\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Add1~11_combout\,
	datab => \Sensibilidad~combout\(6),
	cin => \inst24|LessThan1~17_cout\,
	cin0 => \inst24|LessThan1~12_cout0\,
	cin1 => \inst24|LessThan1~12COUT1_45\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst24|LessThan1~5\,
	cout0 => \inst24|LessThan1~7_cout0\,
	cout1 => \inst24|LessThan1~7COUT1_46\);

-- Location: LC_X6_Y2_N7
\inst24|LessThan1~0\ : maxv_lcell
-- Equation(s):
-- \inst24|LessThan1~0_combout\ = ((\Sensibilidad~combout\(7) & ((!\inst24|LessThan1~17_cout\ & \inst24|LessThan1~7_cout0\) # (\inst24|LessThan1~17_cout\ & \inst24|LessThan1~7COUT1_46\) & \inst19|Add1~5_combout\)) # (!\Sensibilidad~combout\(7) & 
-- (((!\inst24|LessThan1~17_cout\ & \inst24|LessThan1~7_cout0\) # (\inst24|LessThan1~17_cout\ & \inst24|LessThan1~7COUT1_46\)) # (\inst19|Add1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f330",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Sensibilidad~combout\(7),
	datad => \inst19|Add1~5_combout\,
	cin => \inst24|LessThan1~17_cout\,
	cin0 => \inst24|LessThan1~7_cout0\,
	cin1 => \inst24|LessThan1~7COUT1_46\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst24|LessThan1~0_combout\);

-- Location: LC_X6_Y1_N9
\inst|LessThan1~0\ : maxv_lcell
-- Equation(s):
-- \inst|LessThan1~0_combout\ = (\x~combout\(4)) # ((\x~combout\(3)) # ((\x~combout\(6)) # (\x~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \x~combout\(4),
	datab => \x~combout\(3),
	datac => \x~combout\(6),
	datad => \x~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|LessThan1~0_combout\);

-- Location: LC_X6_Y1_N4
\inst|LessThan1~1\ : maxv_lcell
-- Equation(s):
-- \inst|LessThan1~1_combout\ = (\x~combout\(1)) # ((\inst|LessThan1~0_combout\) # ((\x~combout\(0)) # (\x~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \x~combout\(1),
	datab => \inst|LessThan1~0_combout\,
	datac => \x~combout\(0),
	datad => \x~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|LessThan1~1_combout\);

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_y(7),
	combout => \y~combout\(7));

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_y(4),
	combout => \y~combout\(4));

-- Location: PIN_35,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_y(3),
	combout => \y~combout\(3));

-- Location: PIN_19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_y(2),
	combout => \y~combout\(2));

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_y(1),
	combout => \y~combout\(1));

-- Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_y(0),
	combout => \y~combout\(0));

-- Location: LC_X3_Y2_N0
\inst26|Add1~44\ : maxv_lcell
-- Equation(s):
-- \inst26|Add1~44_cout0\ = CARRY((!\y~combout\(0)))
-- \inst26|Add1~44COUT1_48\ = CARRY((!\y~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff55",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \y~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst26|Add1~42\,
	cout0 => \inst26|Add1~44_cout0\,
	cout1 => \inst26|Add1~44COUT1_48\);

-- Location: LC_X3_Y2_N1
\inst26|Add1~36\ : maxv_lcell
-- Equation(s):
-- \inst26|Add1~36_combout\ = \y~combout\(1) $ ((((!\inst26|Add1~44_cout0\))))
-- \inst26|Add1~38\ = CARRY((\y~combout\(1)) # ((!\inst26|Add1~44_cout0\)))
-- \inst26|Add1~38COUT1_49\ = CARRY((\y~combout\(1)) # ((!\inst26|Add1~44COUT1_48\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a5af",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \y~combout\(1),
	cin0 => \inst26|Add1~44_cout0\,
	cin1 => \inst26|Add1~44COUT1_48\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst26|Add1~36_combout\,
	cout0 => \inst26|Add1~38\,
	cout1 => \inst26|Add1~38COUT1_49\);

-- Location: LC_X3_Y2_N2
\inst26|Add1~30\ : maxv_lcell
-- Equation(s):
-- \inst26|Add1~30_combout\ = \y~combout\(2) $ ((((\inst26|Add1~38\))))
-- \inst26|Add1~32\ = CARRY((!\y~combout\(2) & ((!\inst26|Add1~38\))))
-- \inst26|Add1~32COUT1_50\ = CARRY((!\y~combout\(2) & ((!\inst26|Add1~38COUT1_49\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a05",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \y~combout\(2),
	cin0 => \inst26|Add1~38\,
	cin1 => \inst26|Add1~38COUT1_49\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst26|Add1~30_combout\,
	cout0 => \inst26|Add1~32\,
	cout1 => \inst26|Add1~32COUT1_50\);

-- Location: LC_X3_Y2_N3
\inst26|Add1~24\ : maxv_lcell
-- Equation(s):
-- \inst26|Add1~24_combout\ = (\y~combout\(3) $ ((!\inst26|Add1~32\)))
-- \inst26|Add1~26\ = CARRY(((\y~combout\(3)) # (!\inst26|Add1~32\)))
-- \inst26|Add1~26COUT1_51\ = CARRY(((\y~combout\(3)) # (!\inst26|Add1~32COUT1_50\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c3cf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \y~combout\(3),
	cin0 => \inst26|Add1~32\,
	cin1 => \inst26|Add1~32COUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst26|Add1~24_combout\,
	cout0 => \inst26|Add1~26\,
	cout1 => \inst26|Add1~26COUT1_51\);

-- Location: LC_X3_Y2_N4
\inst26|Add1~18\ : maxv_lcell
-- Equation(s):
-- \inst26|Add1~18_combout\ = \y~combout\(4) $ ((((\inst26|Add1~26\))))
-- \inst26|Add1~20\ = CARRY((!\y~combout\(4) & ((!\inst26|Add1~26COUT1_51\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a05",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \y~combout\(4),
	cin0 => \inst26|Add1~26\,
	cin1 => \inst26|Add1~26COUT1_51\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst26|Add1~18_combout\,
	cout => \inst26|Add1~20\);

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_y(6),
	combout => \y~combout\(6));

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_y(5),
	combout => \y~combout\(5));

-- Location: LC_X3_Y2_N5
\inst26|Add1~12\ : maxv_lcell
-- Equation(s):
-- \inst26|Add1~12_combout\ = (\y~combout\(5) $ ((!\inst26|Add1~20\)))
-- \inst26|Add1~14\ = CARRY(((\y~combout\(5)) # (!\inst26|Add1~20\)))
-- \inst26|Add1~14COUT1_52\ = CARRY(((\y~combout\(5)) # (!\inst26|Add1~20\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c3cf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \y~combout\(5),
	cin => \inst26|Add1~20\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst26|Add1~12_combout\,
	cout0 => \inst26|Add1~14\,
	cout1 => \inst26|Add1~14COUT1_52\);

-- Location: LC_X3_Y2_N6
\inst26|Add1~6\ : maxv_lcell
-- Equation(s):
-- \inst26|Add1~6_combout\ = (\y~combout\(6) $ (((!\inst26|Add1~20\ & \inst26|Add1~14\) # (\inst26|Add1~20\ & \inst26|Add1~14COUT1_52\))))
-- \inst26|Add1~8\ = CARRY(((!\y~combout\(6) & !\inst26|Add1~14\)))
-- \inst26|Add1~8COUT1_53\ = CARRY(((!\y~combout\(6) & !\inst26|Add1~14COUT1_52\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c03",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \y~combout\(6),
	cin => \inst26|Add1~20\,
	cin0 => \inst26|Add1~14\,
	cin1 => \inst26|Add1~14COUT1_52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst26|Add1~6_combout\,
	cout0 => \inst26|Add1~8\,
	cout1 => \inst26|Add1~8COUT1_53\);

-- Location: LC_X3_Y2_N7
\inst26|Add1~0\ : maxv_lcell
-- Equation(s):
-- \inst26|Add1~0_combout\ = \y~combout\(7) $ (((((!\inst26|Add1~20\ & \inst26|Add1~8\) # (\inst26|Add1~20\ & \inst26|Add1~8COUT1_53\)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \y~combout\(7),
	cin => \inst26|Add1~20\,
	cin0 => \inst26|Add1~8\,
	cin1 => \inst26|Add1~8COUT1_53\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst26|Add1~0_combout\);

-- Location: LC_X4_Y2_N0
\inst26|Add1~5\ : maxv_lcell
-- Equation(s):
-- \inst26|Add1~5_combout\ = ((\inst26|Add1~0_combout\ & (!\y~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst26|Add1~0_combout\,
	datac => \y~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst26|Add1~5_combout\);

-- Location: LC_X4_Y2_N2
\inst26|Add1~23\ : maxv_lcell
-- Equation(s):
-- \inst26|Add1~23_combout\ = (\y~combout\(7) & (((\y~combout\(4))))) # (!\y~combout\(7) & (\inst26|Add1~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4e4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \y~combout\(7),
	datab => \inst26|Add1~18_combout\,
	datac => \y~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst26|Add1~23_combout\);

-- Location: LC_X4_Y2_N6
\inst26|Add1~29\ : maxv_lcell
-- Equation(s):
-- \inst26|Add1~29_combout\ = (\y~combout\(7) & (((\y~combout\(3))))) # (!\y~combout\(7) & (\inst26|Add1~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4e4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \y~combout\(7),
	datab => \inst26|Add1~24_combout\,
	datac => \y~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst26|Add1~29_combout\);

-- Location: LC_X4_Y2_N8
\inst26|Add1~35\ : maxv_lcell
-- Equation(s):
-- \inst26|Add1~35_combout\ = (\y~combout\(7) & (((\y~combout\(2))))) # (!\y~combout\(7) & (\inst26|Add1~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4e4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \y~combout\(7),
	datab => \inst26|Add1~30_combout\,
	datac => \y~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst26|Add1~35_combout\);

-- Location: LC_X4_Y2_N9
\inst26|Add1~41\ : maxv_lcell
-- Equation(s):
-- \inst26|Add1~41_combout\ = (\y~combout\(7) & (\y~combout\(1))) # (!\y~combout\(7) & (((\inst26|Add1~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8d8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \y~combout\(7),
	datab => \y~combout\(1),
	datac => \inst26|Add1~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst26|Add1~41_combout\);

-- Location: LC_X5_Y2_N0
\inst30|LessThan1~37\ : maxv_lcell
-- Equation(s):
-- \inst30|LessThan1~37_cout0\ = CARRY((\y~combout\(0) & (!\Sensibilidad~combout\(0))))
-- \inst30|LessThan1~37COUT1_41\ = CARRY((\y~combout\(0) & (!\Sensibilidad~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff22",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \y~combout\(0),
	datab => \Sensibilidad~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst30|LessThan1~35\,
	cout0 => \inst30|LessThan1~37_cout0\,
	cout1 => \inst30|LessThan1~37COUT1_41\);

-- Location: LC_X5_Y2_N1
\inst30|LessThan1~32\ : maxv_lcell
-- Equation(s):
-- \inst30|LessThan1~32_cout0\ = CARRY((\inst26|Add1~41_combout\ & (\Sensibilidad~combout\(1) & !\inst30|LessThan1~37_cout0\)) # (!\inst26|Add1~41_combout\ & ((\Sensibilidad~combout\(1)) # (!\inst30|LessThan1~37_cout0\))))
-- \inst30|LessThan1~32COUT1_42\ = CARRY((\inst26|Add1~41_combout\ & (\Sensibilidad~combout\(1) & !\inst30|LessThan1~37COUT1_41\)) # (!\inst26|Add1~41_combout\ & ((\Sensibilidad~combout\(1)) # (!\inst30|LessThan1~37COUT1_41\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|Add1~41_combout\,
	datab => \Sensibilidad~combout\(1),
	cin0 => \inst30|LessThan1~37_cout0\,
	cin1 => \inst30|LessThan1~37COUT1_41\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst30|LessThan1~30\,
	cout0 => \inst30|LessThan1~32_cout0\,
	cout1 => \inst30|LessThan1~32COUT1_42\);

-- Location: LC_X5_Y2_N2
\inst30|LessThan1~27\ : maxv_lcell
-- Equation(s):
-- \inst30|LessThan1~27_cout0\ = CARRY((\inst26|Add1~35_combout\ & ((!\inst30|LessThan1~32_cout0\) # (!\Sensibilidad~combout\(2)))) # (!\inst26|Add1~35_combout\ & (!\Sensibilidad~combout\(2) & !\inst30|LessThan1~32_cout0\)))
-- \inst30|LessThan1~27COUT1_43\ = CARRY((\inst26|Add1~35_combout\ & ((!\inst30|LessThan1~32COUT1_42\) # (!\Sensibilidad~combout\(2)))) # (!\inst26|Add1~35_combout\ & (!\Sensibilidad~combout\(2) & !\inst30|LessThan1~32COUT1_42\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|Add1~35_combout\,
	datab => \Sensibilidad~combout\(2),
	cin0 => \inst30|LessThan1~32_cout0\,
	cin1 => \inst30|LessThan1~32COUT1_42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst30|LessThan1~25\,
	cout0 => \inst30|LessThan1~27_cout0\,
	cout1 => \inst30|LessThan1~27COUT1_43\);

-- Location: LC_X5_Y2_N3
\inst30|LessThan1~22\ : maxv_lcell
-- Equation(s):
-- \inst30|LessThan1~22_cout0\ = CARRY((\inst26|Add1~29_combout\ & (\Sensibilidad~combout\(3) & !\inst30|LessThan1~27_cout0\)) # (!\inst26|Add1~29_combout\ & ((\Sensibilidad~combout\(3)) # (!\inst30|LessThan1~27_cout0\))))
-- \inst30|LessThan1~22COUT1_44\ = CARRY((\inst26|Add1~29_combout\ & (\Sensibilidad~combout\(3) & !\inst30|LessThan1~27COUT1_43\)) # (!\inst26|Add1~29_combout\ & ((\Sensibilidad~combout\(3)) # (!\inst30|LessThan1~27COUT1_43\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|Add1~29_combout\,
	datab => \Sensibilidad~combout\(3),
	cin0 => \inst30|LessThan1~27_cout0\,
	cin1 => \inst30|LessThan1~27COUT1_43\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst30|LessThan1~20\,
	cout0 => \inst30|LessThan1~22_cout0\,
	cout1 => \inst30|LessThan1~22COUT1_44\);

-- Location: LC_X5_Y2_N4
\inst30|LessThan1~17\ : maxv_lcell
-- Equation(s):
-- \inst30|LessThan1~17_cout\ = CARRY((\inst26|Add1~23_combout\ & ((!\inst30|LessThan1~22COUT1_44\) # (!\Sensibilidad~combout\(4)))) # (!\inst26|Add1~23_combout\ & (!\Sensibilidad~combout\(4) & !\inst30|LessThan1~22COUT1_44\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|Add1~23_combout\,
	datab => \Sensibilidad~combout\(4),
	cin0 => \inst30|LessThan1~22_cout0\,
	cin1 => \inst30|LessThan1~22COUT1_44\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst30|LessThan1~15\,
	cout => \inst30|LessThan1~17_cout\);

-- Location: LC_X3_Y2_N8
\inst26|Add1~11\ : maxv_lcell
-- Equation(s):
-- \inst26|Add1~11_combout\ = (\y~combout\(7) & (((\y~combout\(6))))) # (!\y~combout\(7) & (\inst26|Add1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "caca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|Add1~6_combout\,
	datab => \y~combout\(6),
	datac => \y~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst26|Add1~11_combout\);

-- Location: LC_X4_Y2_N7
\inst26|Add1~17\ : maxv_lcell
-- Equation(s):
-- \inst26|Add1~17_combout\ = (\y~combout\(7) & (((\y~combout\(5))))) # (!\y~combout\(7) & (\inst26|Add1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "caca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|Add1~12_combout\,
	datab => \y~combout\(5),
	datac => \y~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst26|Add1~17_combout\);

-- Location: LC_X5_Y2_N5
\inst30|LessThan1~12\ : maxv_lcell
-- Equation(s):
-- \inst30|LessThan1~12_cout0\ = CARRY((\Sensibilidad~combout\(5) & ((!\inst30|LessThan1~17_cout\) # (!\inst26|Add1~17_combout\))) # (!\Sensibilidad~combout\(5) & (!\inst26|Add1~17_combout\ & !\inst30|LessThan1~17_cout\)))
-- \inst30|LessThan1~12COUT1_45\ = CARRY((\Sensibilidad~combout\(5) & ((!\inst30|LessThan1~17_cout\) # (!\inst26|Add1~17_combout\))) # (!\Sensibilidad~combout\(5) & (!\inst26|Add1~17_combout\ & !\inst30|LessThan1~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Sensibilidad~combout\(5),
	datab => \inst26|Add1~17_combout\,
	cin => \inst30|LessThan1~17_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst30|LessThan1~10\,
	cout0 => \inst30|LessThan1~12_cout0\,
	cout1 => \inst30|LessThan1~12COUT1_45\);

-- Location: LC_X5_Y2_N6
\inst30|LessThan1~7\ : maxv_lcell
-- Equation(s):
-- \inst30|LessThan1~7_cout0\ = CARRY((\inst26|Add1~11_combout\ & ((!\inst30|LessThan1~12_cout0\) # (!\Sensibilidad~combout\(6)))) # (!\inst26|Add1~11_combout\ & (!\Sensibilidad~combout\(6) & !\inst30|LessThan1~12_cout0\)))
-- \inst30|LessThan1~7COUT1_46\ = CARRY((\inst26|Add1~11_combout\ & ((!\inst30|LessThan1~12COUT1_45\) # (!\Sensibilidad~combout\(6)))) # (!\inst26|Add1~11_combout\ & (!\Sensibilidad~combout\(6) & !\inst30|LessThan1~12COUT1_45\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|Add1~11_combout\,
	datab => \Sensibilidad~combout\(6),
	cin => \inst30|LessThan1~17_cout\,
	cin0 => \inst30|LessThan1~12_cout0\,
	cin1 => \inst30|LessThan1~12COUT1_45\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst30|LessThan1~5\,
	cout0 => \inst30|LessThan1~7_cout0\,
	cout1 => \inst30|LessThan1~7COUT1_46\);

-- Location: LC_X5_Y2_N7
\inst30|LessThan1~0\ : maxv_lcell
-- Equation(s):
-- \inst30|LessThan1~0_combout\ = (\Sensibilidad~combout\(7) & ((((!\inst30|LessThan1~17_cout\ & \inst30|LessThan1~7_cout0\) # (\inst30|LessThan1~17_cout\ & \inst30|LessThan1~7COUT1_46\) & \inst26|Add1~5_combout\)))) # (!\Sensibilidad~combout\(7) & 
-- ((((!\inst30|LessThan1~17_cout\ & \inst30|LessThan1~7_cout0\) # (\inst30|LessThan1~17_cout\ & \inst30|LessThan1~7COUT1_46\)) # (\inst26|Add1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f550",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Sensibilidad~combout\(7),
	datad => \inst26|Add1~5_combout\,
	cin => \inst30|LessThan1~17_cout\,
	cin0 => \inst30|LessThan1~7_cout0\,
	cin1 => \inst30|LessThan1~7COUT1_46\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst30|LessThan1~0_combout\);

-- Location: LC_X3_Y2_N9
\inst3|LessThan1~0\ : maxv_lcell
-- Equation(s):
-- \inst3|LessThan1~0_combout\ = (\y~combout\(4)) # ((\y~combout\(6)) # ((\y~combout\(3)) # (\y~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \y~combout\(4),
	datab => \y~combout\(6),
	datac => \y~combout\(3),
	datad => \y~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst3|LessThan1~0_combout\);

-- Location: LC_X4_Y2_N5
\inst3|LessThan1~1\ : maxv_lcell
-- Equation(s):
-- \inst3|LessThan1~1_combout\ = (\inst3|LessThan1~0_combout\) # ((\y~combout\(1)) # ((\y~combout\(2)) # (\y~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LessThan1~0_combout\,
	datab => \y~combout\(1),
	datac => \y~combout\(2),
	datad => \y~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst3|LessThan1~1_combout\);

-- Location: LC_X4_Y4_N5
\inst43|Selector6~0\ : maxv_lcell
-- Equation(s):
-- \inst43|Selector6~0_combout\ = (((!\stop~combout\ & \inst43|y.Tc~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \stop~combout\,
	datad => \inst43|y.Tc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst43|Selector6~0_combout\);

-- Location: LC_X4_Y4_N6
\inst43|Selector6~1\ : maxv_lcell
-- Equation(s):
-- \inst43|Selector6~1_combout\ = (\inst43|Selector6~0_combout\ & (((\y~combout\(7) & !\inst3|LessThan1~1_combout\)) # (!\inst30|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5d00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|LessThan1~0_combout\,
	datab => \y~combout\(7),
	datac => \inst3|LessThan1~1_combout\,
	datad => \inst43|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst43|Selector6~1_combout\);

-- Location: LC_X4_Y4_N7
\inst43|Selector2~1\ : maxv_lcell
-- Equation(s):
-- \inst43|Selector2~1_combout\ = (\inst43|Selector6~1_combout\ & (((\x~combout\(7) & !\inst|LessThan1~1_combout\)) # (!\inst24|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3b00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \x~combout\(7),
	datab => \inst24|LessThan1~0_combout\,
	datac => \inst|LessThan1~1_combout\,
	datad => \inst43|Selector6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst43|Selector2~1_combout\);

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\start~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_start,
	combout => \start~combout\);

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Resetn~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Resetn,
	combout => \Resetn~combout\);

-- Location: LC_X4_Y4_N3
\inst43|y.Te\ : maxv_lcell
-- Equation(s):
-- \inst43|y.Te~regout\ = DFFEAS((\inst3|LessThan1~1_combout\ & (\y~combout\(7) & (\inst43|Selector6~0_combout\ & \inst30|LessThan1~0_combout\))), GLOBAL(\clock~combout\), GLOBAL(\Resetn~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \inst3|LessThan1~1_combout\,
	datab => \y~combout\(7),
	datac => \inst43|Selector6~0_combout\,
	datad => \inst30|LessThan1~0_combout\,
	aclr => \ALT_INV_Resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst43|y.Te~regout\);

-- Location: LC_X4_Y4_N2
\inst43|y.Tg\ : maxv_lcell
-- Equation(s):
-- \inst43|y.Tg~regout\ = DFFEAS((\x~combout\(7) & (\inst|LessThan1~1_combout\ & (\inst43|Selector6~1_combout\ & \inst24|LessThan1~0_combout\))), GLOBAL(\clock~combout\), GLOBAL(\Resetn~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \x~combout\(7),
	datab => \inst|LessThan1~1_combout\,
	datac => \inst43|Selector6~1_combout\,
	datad => \inst24|LessThan1~0_combout\,
	aclr => \ALT_INV_Resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst43|y.Tg~regout\);

-- Location: LC_X4_Y4_N4
\inst43|y.Tf\ : maxv_lcell
-- Equation(s):
-- \inst43|y.Tf~regout\ = DFFEAS((\inst30|LessThan1~0_combout\ & (!\y~combout\(7) & (!\stop~combout\ & \inst43|y.Tc~regout\))), GLOBAL(\clock~combout\), GLOBAL(\Resetn~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \inst30|LessThan1~0_combout\,
	datab => \y~combout\(7),
	datac => \stop~combout\,
	datad => \inst43|y.Tc~regout\,
	aclr => \ALT_INV_Resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst43|y.Tf~regout\);

-- Location: LC_X4_Y4_N8
\inst43|y.Th\ : maxv_lcell
-- Equation(s):
-- \inst43|y.Th~regout\ = DFFEAS((!\x~combout\(7) & (\inst24|LessThan1~0_combout\ & (\inst43|Selector6~1_combout\))), GLOBAL(\clock~combout\), GLOBAL(\Resetn~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4040",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \x~combout\(7),
	datab => \inst24|LessThan1~0_combout\,
	datac => \inst43|Selector6~1_combout\,
	aclr => \ALT_INV_Resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst43|y.Th~regout\);

-- Location: LC_X4_Y4_N1
\inst43|WideOr7~0\ : maxv_lcell
-- Equation(s):
-- \inst43|WideOr7~0_combout\ = (\inst43|y.Te~regout\) # ((\inst43|y.Tg~regout\) # ((\inst43|y.Tf~regout\) # (\inst43|y.Th~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst43|y.Te~regout\,
	datab => \inst43|y.Tg~regout\,
	datac => \inst43|y.Tf~regout\,
	datad => \inst43|y.Th~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst43|WideOr7~0_combout\);

-- Location: LC_X3_Y4_N0
\inst43|Selector2~0\ : maxv_lcell
-- Equation(s):
-- \inst43|Selector2~0_combout\ = ((!\inst43|WideOr7~0_combout\ & ((\start~combout\) # (!\inst43|y.Tb~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00bb",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \start~combout\,
	datab => \inst43|y.Tb~regout\,
	datad => \inst43|WideOr7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst43|Selector2~0_combout\);

-- Location: LC_X4_Y4_N9
\inst43|y.Tc\ : maxv_lcell
-- Equation(s):
-- \inst43|y.Tc~regout\ = DFFEAS((\inst43|Selector2~1_combout\) # (((!\stop~combout\ & \inst43|y.Tj~regout\)) # (!\inst43|Selector2~0_combout\)), GLOBAL(\clock~combout\), GLOBAL(\Resetn~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f4ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \stop~combout\,
	datab => \inst43|y.Tj~regout\,
	datac => \inst43|Selector2~1_combout\,
	datad => \inst43|Selector2~0_combout\,
	aclr => \ALT_INV_Resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst43|y.Tc~regout\);

-- Location: LC_X3_Y4_N3
\inst43|y.Td\ : maxv_lcell
-- Equation(s):
-- \inst43|y.Td~regout\ = DFFEAS(((\stop~combout\ & ((\inst43|y.Tc~regout\) # (\inst43|y.Td~regout\)))), GLOBAL(\clock~combout\), GLOBAL(\Resetn~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccc0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datab => \stop~combout\,
	datac => \inst43|y.Tc~regout\,
	datad => \inst43|y.Td~regout\,
	aclr => \ALT_INV_Resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst43|y.Td~regout\);

-- Location: LC_X3_Y4_N8
\inst43|y.Ti\ : maxv_lcell
-- Equation(s):
-- \inst43|y.Ti~regout\ = DFFEAS((!\stop~combout\ & ((\inst43|y.Ti~regout\) # ((\inst43|y.Td~regout\)))), GLOBAL(\clock~combout\), GLOBAL(\Resetn~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3322",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \inst43|y.Ti~regout\,
	datab => \stop~combout\,
	datad => \inst43|y.Td~regout\,
	aclr => \ALT_INV_Resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst43|y.Ti~regout\);

-- Location: LC_X3_Y4_N9
\inst43|Selector0~3\ : maxv_lcell
-- Equation(s):
-- \inst43|Selector0~3_combout\ = ((\stop~combout\ & ((\inst43|y.Ti~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \stop~combout\,
	datad => \inst43|y.Ti~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst43|Selector0~3_combout\);

-- Location: LC_X3_Y4_N7
\inst43|Selector0~1\ : maxv_lcell
-- Equation(s):
-- \inst43|Selector0~1_combout\ = (\start~combout\ & (((\stop~combout\ & \inst43|y.Ti~regout\)) # (!\inst43|y.Ta~regout\))) # (!\start~combout\ & (\stop~combout\ & ((\inst43|y.Ti~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ce0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \start~combout\,
	datab => \stop~combout\,
	datac => \inst43|y.Ta~regout\,
	datad => \inst43|y.Ti~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst43|Selector0~1_combout\);

-- Location: LC_X3_Y4_N6
\inst43|y.Tj\ : maxv_lcell
-- Equation(s):
-- \inst43|Selector0~0\ = (!\stop~combout\ & (!\inst43|y.Tb~regout\ & ((H1_y.Tj) # (\inst43|y.Td~regout\))))
-- \inst43|y.Tj~regout\ = DFFEAS(\inst43|Selector0~0\, GLOBAL(\clock~combout\), GLOBAL(\Resetn~combout\), , \inst43|Selector0~2_combout\, \inst43|Selector0~3_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \stop~combout\,
	datab => \inst43|y.Tb~regout\,
	datac => \inst43|Selector0~3_combout\,
	datad => \inst43|y.Td~regout\,
	aclr => \ALT_INV_Resetn~combout\,
	sload => VCC,
	ena => \inst43|Selector0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst43|Selector0~0\,
	regout => \inst43|y.Tj~regout\);

-- Location: LC_X3_Y4_N1
\inst43|Selector0~2\ : maxv_lcell
-- Equation(s):
-- \inst43|Selector0~2_combout\ = (\inst43|y.Tc~regout\) # ((\inst43|Selector0~1_combout\) # ((\inst43|Selector0~0\) # (!\inst43|Selector2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst43|y.Tc~regout\,
	datab => \inst43|Selector0~1_combout\,
	datac => \inst43|Selector0~0\,
	datad => \inst43|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst43|Selector0~2_combout\);

-- Location: LC_X3_Y4_N4
\inst43|y.Ta\ : maxv_lcell
-- Equation(s):
-- \inst43|y.Ta~regout\ = DFFEAS(VCC, GLOBAL(\clock~combout\), GLOBAL(\Resetn~combout\), , \inst43|Selector0~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	aclr => \ALT_INV_Resetn~combout\,
	ena => \inst43|Selector0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst43|y.Ta~regout\);

-- Location: LC_X3_Y4_N5
\inst43|Selector1~0\ : maxv_lcell
-- Equation(s):
-- \inst43|Selector1~0_combout\ = (!\inst43|y.Ta~regout\ & (((\start~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst43|y.Ta~regout\,
	datac => \start~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst43|Selector1~0_combout\);

-- Location: LC_X3_Y4_N2
\inst43|y.Tb\ : maxv_lcell
-- Equation(s):
-- \inst43|y.Tb~regout\ = DFFEAS((\inst43|y.Tb~regout\ & (((!\inst43|Selector0~3_combout\ & \inst43|Selector1~0_combout\)) # (!\inst43|Selector0~2_combout\))) # (!\inst43|y.Tb~regout\ & (!\inst43|Selector0~3_combout\ & (\inst43|Selector1~0_combout\))), 
-- GLOBAL(\clock~combout\), GLOBAL(\Resetn~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "30ba",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \inst43|y.Tb~regout\,
	datab => \inst43|Selector0~3_combout\,
	datac => \inst43|Selector1~0_combout\,
	datad => \inst43|Selector0~2_combout\,
	aclr => \ALT_INV_Resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst43|y.Tb~regout\);

-- Location: LC_X2_Y4_N6
\inst43|WideOr5~0\ : maxv_lcell
-- Equation(s):
-- \inst43|WideOr5~0_combout\ = (!\inst43|y.Tj~regout\ & (!\inst43|y.Ti~regout\ & (!\inst43|y.Tb~regout\ & \inst43|y.Ta~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst43|y.Tj~regout\,
	datab => \inst43|y.Ti~regout\,
	datac => \inst43|y.Tb~regout\,
	datad => \inst43|y.Ta~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst43|WideOr5~0_combout\);

-- Location: LC_X2_Y4_N9
\inst43|WideOr1~0\ : maxv_lcell
-- Equation(s):
-- \inst43|WideOr1~0_combout\ = ((\inst43|y.Ti~regout\) # ((\inst43|y.Tj~regout\) # (\inst43|y.Th~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst43|y.Ti~regout\,
	datac => \inst43|y.Tj~regout\,
	datad => \inst43|y.Th~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst43|WideOr1~0_combout\);

-- Location: LC_X2_Y4_N4
\inst43|WideOr2\ : maxv_lcell
-- Equation(s):
-- \inst43|WideOr2~combout\ = (\inst43|y.Te~regout\) # ((\inst43|y.Tg~regout\) # ((\inst43|y.Td~regout\) # (\inst43|y.Tf~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst43|y.Te~regout\,
	datab => \inst43|y.Tg~regout\,
	datac => \inst43|y.Td~regout\,
	datad => \inst43|y.Tf~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst43|WideOr2~combout\);

-- Location: LC_X2_Y4_N7
\inst43|WideOr5~1\ : maxv_lcell
-- Equation(s):
-- \inst43|WideOr5~1_combout\ = ((!\inst43|y.Ti~regout\ & ((\inst43|y.Ta~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst43|y.Ti~regout\,
	datad => \inst43|y.Ta~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst43|WideOr5~1_combout\);

-- Location: LC_X2_Y4_N2
\inst43|WideOr3\ : maxv_lcell
-- Equation(s):
-- \inst43|WideOr3~combout\ = (\inst43|y.Th~regout\) # (((\inst43|y.Td~regout\) # (\inst43|y.Te~regout\)) # (!\inst43|WideOr5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffb",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst43|y.Th~regout\,
	datab => \inst43|WideOr5~1_combout\,
	datac => \inst43|y.Td~regout\,
	datad => \inst43|y.Te~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst43|WideOr3~combout\);

-- Location: LC_X2_Y4_N3
\inst43|WideOr4\ : maxv_lcell
-- Equation(s):
-- \inst43|WideOr4~combout\ = (\inst43|y.Te~regout\) # ((\inst43|y.Tg~regout\) # ((\inst43|y.Tc~regout\) # (!\inst43|WideOr5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffef",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst43|y.Te~regout\,
	datab => \inst43|y.Tg~regout\,
	datac => \inst43|WideOr5~1_combout\,
	datad => \inst43|y.Tc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst43|WideOr4~combout\);

-- Location: LC_X5_Y4_N9
\inst37|Q[1]\ : maxv_lcell
-- Equation(s):
-- \inst37|Q\(1) = DFFEAS((((\inst43|y.Th~regout\) # (\inst43|y.Tg~regout\))), GLOBAL(\clock~combout\), GLOBAL(\Resetn~combout\), , \inst43|WideOr7~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \inst43|y.Th~regout\,
	datad => \inst43|y.Tg~regout\,
	aclr => \ALT_INV_Resetn~combout\,
	ena => \inst43|WideOr7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst37|Q\(1));

-- Location: LC_X5_Y4_N2
\inst38|sal[6]~0\ : maxv_lcell
-- Equation(s):
-- \inst38|sal[6]~0_combout\ = ((\inst43|y.Td~regout\) # ((!\inst37|Q\(1)) # (!\inst43|WideOr5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst43|y.Td~regout\,
	datac => \inst43|WideOr5~0_combout\,
	datad => \inst37|Q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst38|sal[6]~0_combout\);

-- Location: LC_X4_Y4_N0
\inst37|Q[0]\ : maxv_lcell
-- Equation(s):
-- \inst37|Q\(0) = DFFEAS(((\inst43|y.Tf~regout\) # ((\inst43|y.Th~regout\))), GLOBAL(\clock~combout\), GLOBAL(\Resetn~combout\), , \inst43|WideOr7~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datab => \inst43|y.Tf~regout\,
	datad => \inst43|y.Th~regout\,
	aclr => \ALT_INV_Resetn~combout\,
	ena => \inst43|WideOr7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst37|Q\(0));

-- Location: LC_X5_Y4_N0
\inst38|sal[5]~1\ : maxv_lcell
-- Equation(s):
-- \inst38|sal[5]~1_combout\ = (\inst43|y.Td~regout\) # ((\inst37|Q\(0)) # ((\inst37|Q\(1)) # (!\inst43|WideOr5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffef",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst43|y.Td~regout\,
	datab => \inst37|Q\(0),
	datac => \inst43|WideOr5~0_combout\,
	datad => \inst37|Q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst38|sal[5]~1_combout\);

-- Location: LC_X5_Y4_N1
\inst38|sal[4]~2\ : maxv_lcell
-- Equation(s):
-- \inst38|sal[4]~2_combout\ = ((!\inst43|y.Td~regout\ & (\inst43|WideOr5~0_combout\ & !\inst37|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst43|y.Td~regout\,
	datac => \inst43|WideOr5~0_combout\,
	datad => \inst37|Q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst38|sal[4]~2_combout\);

-- Location: LC_X5_Y4_N5
\inst38|sal[3]~3\ : maxv_lcell
-- Equation(s):
-- \inst38|sal[3]~3_combout\ = (\inst43|y.Td~regout\) # (((\inst37|Q\(0) & !\inst37|Q\(1))) # (!\inst43|WideOr5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afef",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst43|y.Td~regout\,
	datab => \inst37|Q\(0),
	datac => \inst43|WideOr5~0_combout\,
	datad => \inst37|Q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst38|sal[3]~3_combout\);

-- Location: LC_X5_Y4_N3
\inst38|sal[2]~4\ : maxv_lcell
-- Equation(s):
-- \inst38|sal[2]~4_combout\ = (\inst43|y.Td~regout\) # (((!\inst37|Q\(0) & \inst37|Q\(1))) # (!\inst43|WideOr5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bfaf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst43|y.Td~regout\,
	datab => \inst37|Q\(0),
	datac => \inst43|WideOr5~0_combout\,
	datad => \inst37|Q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst38|sal[2]~4_combout\);

-- Location: LC_X2_Y4_N8
\inst43|WideOr6\ : maxv_lcell
-- Equation(s):
-- \inst43|WideOr6~combout\ = (\inst43|y.Td~regout\) # ((\inst43|y.Tb~regout\) # ((\inst43|y.Tj~regout\) # (!\inst43|WideOr5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst43|y.Td~regout\,
	datab => \inst43|y.Tb~regout\,
	datac => \inst43|y.Tj~regout\,
	datad => \inst43|WideOr5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst43|WideOr6~combout\);

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst43|WideOr5~0_combout\,
	oe => VCC,
	padio => ww_led);

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\est[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst43|WideOr1~0_combout\,
	oe => VCC,
	padio => ww_est(3));

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\est[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst43|WideOr2~combout\,
	oe => VCC,
	padio => ww_est(2));

-- Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\est[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst43|ALT_INV_WideOr3~combout\,
	oe => VCC,
	padio => ww_est(1));

-- Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\est[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst43|WideOr4~combout\,
	oe => VCC,
	padio => ww_est(0));

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Out7Seg[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst38|sal[6]~0_combout\,
	oe => VCC,
	padio => ww_Out7Seg(6));

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Out7Seg[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst38|sal[5]~1_combout\,
	oe => VCC,
	padio => ww_Out7Seg(5));

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Out7Seg[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst38|ALT_INV_sal[4]~2_combout\,
	oe => VCC,
	padio => ww_Out7Seg(4));

-- Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Out7Seg[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst38|sal[3]~3_combout\,
	oe => VCC,
	padio => ww_Out7Seg(3));

-- Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Out7Seg[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst38|sal[2]~4_combout\,
	oe => VCC,
	padio => ww_Out7Seg(2));

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Out7Seg[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst43|WideOr6~combout\,
	oe => VCC,
	padio => ww_Out7Seg(1));

-- Location: PIN_83,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Out7Seg[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst38|sal[3]~3_combout\,
	oe => VCC,
	padio => ww_Out7Seg(0));

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\RestaX[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst19|Add1~5_combout\,
	oe => VCC,
	padio => ww_RestaX(7));

-- Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\RestaX[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst19|Add1~11_combout\,
	oe => VCC,
	padio => ww_RestaX(6));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\RestaX[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst19|Add1~17_combout\,
	oe => VCC,
	padio => ww_RestaX(5));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\RestaX[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst19|Add1~23_combout\,
	oe => VCC,
	padio => ww_RestaX(4));

-- Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\RestaX[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst19|Add1~29_combout\,
	oe => VCC,
	padio => ww_RestaX(3));

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\RestaX[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst19|Add1~35_combout\,
	oe => VCC,
	padio => ww_RestaX(2));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\RestaX[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst19|Add1~41_combout\,
	oe => VCC,
	padio => ww_RestaX(1));

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\RestaX[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \x~combout\(0),
	oe => VCC,
	padio => ww_RestaX(0));

-- Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\restaY[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst26|Add1~5_combout\,
	oe => VCC,
	padio => ww_restaY(7));

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\restaY[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst26|Add1~11_combout\,
	oe => VCC,
	padio => ww_restaY(6));

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\restaY[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst26|Add1~17_combout\,
	oe => VCC,
	padio => ww_restaY(5));

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\restaY[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst26|Add1~23_combout\,
	oe => VCC,
	padio => ww_restaY(4));

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\restaY[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst26|Add1~29_combout\,
	oe => VCC,
	padio => ww_restaY(3));

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\restaY[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst26|Add1~35_combout\,
	oe => VCC,
	padio => ww_restaY(2));

-- Location: PIN_36,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\restaY[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst26|Add1~41_combout\,
	oe => VCC,
	padio => ww_restaY(1));

-- Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\restaY[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \y~combout\(0),
	oe => VCC,
	padio => ww_restaY(0));
END structure;


