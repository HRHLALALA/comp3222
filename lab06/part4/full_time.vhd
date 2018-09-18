LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
use IEEE.numeric_std.all;

entity full_time is
	port(CLK: in std_logic);
end full_time;

architecture beh of full_time is
	signal count: unsigned(27 downto 0):=0;
begin
	process(clk)
	begin
	if clk'event and clk = '1' then
		if count<75000000 then
			count <= count +1;
		end if;
	end if;
	end process;
	
end beh;