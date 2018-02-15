library ieee;
use ieee.std_logic_1164.all;

Entity BCD7Seg is
	Port(ent: in std_logic_vector(3 downTo 0);
			en: in std_logic;
			sal: out std_logic_vector(6 downTo 0));
end BCD7Seg;

Architecture sol of BCD7Seg is
signal w : std_logic_vector(6 downTo 0);	
begin
with ent select
	w <= "1111001" when "0001",
		  "0100100" when "0010",
		  "0110000" when "0011",
		  "0011001" when "0100",
		  "0010010" when "0101",
		  "0000010" when "0110",
		  "1111000" when "0111",
		  "0000000" when "1000",
		  "0010000" when "1001",
		  "1000000" when others;
	sal <= w when en = '1' else "1111111";
end sol;