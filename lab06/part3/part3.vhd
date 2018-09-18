LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY part2 IS
	PORT(	sw:	in std_logic_vector(1 downto 0);
			key:	in std_logic_vector(0 downto 0);
			ledr: out std_logic_vector(3 downto 0);
			ledg:	out std_logic_vector(0 downto 0));

END part2;
	
architecture behavior of part2 is
signal clk,w,en:std_logic;
signal result:std_logic_vector(3 downto 0);
begin
	clk <=key(0);
	w <= sw(1);
	en<=sw(0);
	
	
	process(clk,clr,w)
	begin
		if clr = '0' then
			result <= "0000";
		else if clk'event and clk = '1' then
			result(3 downto 1) <= result(2 downto 0);
			result(0)<=w and result(0);
		end if;
	end process;
	ledg(0)<='1' when result="1111" else '0';
	ledr<=result;
end behavior;
			
			
				
			
			
