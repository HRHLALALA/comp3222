library ieee;
use ieee.std_logic_1164;

entity half_time is
	port(CLK: in std_logic);
end half_time;

architecture beh of half_time is
	signal count: unsigned(27 downto 0):=0;
begin
	process(clk)
	begin
	if clk'event and clk = '1' then
		if count<25000000 then
			count <= count +1;
		end if;
	end if;
	end process;
	
end beh;