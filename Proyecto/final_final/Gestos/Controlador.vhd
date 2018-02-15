library ieee;
use ieee.std_logic_1164.all;

Entity Controlador is
	Port(
		Resetn, clock: in std_logic;
		start,stop, Gesto0, Gesto1, Gesto2, Gesto3, HayGestoY, HayGestoX: in std_logic;
		led, EnMost, EnG: out std_logic;
		Selec: out std_logic_vector(1 downTo 0);
		est: out std_logic_vector(3 downTo 0)
	);
end Controlador;

Architecture sol of Controlador is
	Type estado is (Ta, Tb, Tc, Td, Te, Tf, Tg, Th, Ti, Tj);
	signal y: estado;
Begin
--Transiciones
Process(Resetn, clock)
Begin
	if Resetn = '0' then y<= Ta;
	elsif clock'event and clock = '1' then
		case y is
			when Ta => if start = '1' then y<=Tb; end if;
			when Tb => if start = '0' then y<=Tc; end if;
			when Tc => if stop = '1' then y<=Td;
						  elsif Gesto0 = '1' and HayGestoY = '1' then y<=Te;
						  elsif Gesto1 = '1' and HayGestoY = '1' then y<=Tf;
						  elsif Gesto2 = '1' and HayGestoX = '1' then y<=Tg;
						  elsif Gesto3 = '1' and HayGestoX = '1' then y<=Th;
						  else y<= Tc;
						  end if;
			when Td => if stop = '0' then y<=Ti; end if;
			when Te => y<=Tc;
			when Tf => y<=Tc;
			when Tg => y<=Tc;
			when Th => y<=Tc;
			when Ti => if stop = '1' then y<= Tj; end if;
			when Tj => if stop = '0' then y<= Tc; end if;
		end case;
	end if;
end Process;

--Salidas
Process(Resetn, clock, stop, Gesto0, Gesto1, Gesto2, Gesto3, HayGestoY, HayGestoX)
Begin
	led<='0'; EnMost<='0'; EnG<='0'; EnMost<='0'; Selec <= "00"; est <= "0000";
	case y is
		when Ta => est <= "0001";
		when Tb => est <= "0010";
		when Tc => led<='1'; EnMost<='1'; est<="0011";
		when Td => led <= '1'; est<="0100";
		when Te => led<='1'; Selec<="00"; EnG<='1'; EnMost<='1'; est<="0101";
		when Tf => led<='1'; Selec<="01"; EnG<='1'; EnMost<='1'; est<="0110";
		when Tg => led<='1'; Selec<="10"; EnG<='1'; EnMost<='1'; est<="0111";
		when Th => led<='1'; Selec<="11"; EnG<='1'; EnMost<='1'; est<="1000";
		When Ti => est <= "1001";
		when Tj => est <= "1010";
	end case;
end Process;
end sol;