LIBRARY IEEE;
USE  IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

ENTITY setpoint is
	PORT(
	set :out STD_LOGIC_VECTOR(7 downTo 0);
	setn : out STD_LOGIC_VECTOR(7 downTo 0)
	);
end setpoint;

ARCHITECTURE sol of setpoint is
signal valorcentral: std_logic_vector(7 downTo 0);
BEGIN
   valorcentral <= std_logic_vector(to_unsigned(128, 8));  --numero, numero de bits
	set <= valorcentral;
	setn <= valorcentral;
END sol;