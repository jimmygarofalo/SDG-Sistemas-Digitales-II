library ieee;
use ieee.std_logic_1164.all;

package componentes is

component registro_d_i
	generic(n : integer := 4);
	Port( Resetn, Clock : in std_logic;
			En, Ld, L : in std_logic;
			Entpar	: in std_logic_vector(n-1 downTo 0);
			Q	: buffer std_logic_vector (n-1 downTo 0));
end component;

component registro_i_d
	generic(n : integer := 4);
	Port( Resetn, Clock : in std_logic;
			En, Ld, R : in std_logic;
			Entpar	: in std_logic_vector(n-1 downTo 0);
			Q	: buffer std_logic_vector (n-1 downTo 0));
end component;

component RegSost
	Generic(n: integer:=4);
	Port(Resetn, clock: in std_logic;
		En: in std_logic;
		Ent: in std_logic_vector(n-1 downTo 0);
		Q: out std_logic_vector(n-1 downTo 0));
end component;

component Mux2a1
	generic(n: integer:=4);
	port( sel  : in std_logic;
			ent0, ent1 : in std_logic_vector(n-1 downTo 0);
			s : out std_logic_vector(n-1 downTo 0));
end component;

end componentes;