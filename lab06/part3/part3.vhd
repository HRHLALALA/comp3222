LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY part3 IS
	PORT(	sw:	in std_logic_vector(1 downto 0);
			key:	in std_logic_vector(0 downto 0);
			ledr: out std_logic_vector(3 downto 0);
			ledg:	out std_logic_vector(0 downto 0));

END part3;
	
architecture behavior of part3 is
signal clk,w,en,prev:std_logic;
signal result:std_logic_vector(3 downto 0);
begin
	clk <=key(0);
	w <= sw(1);
	en<=sw(0);
	
	
	process(clk,en,w)
	begin
		if en = '0' then
			result <= "0000";
		elsif clk'event and clk = '1' then
			if w=prev then 
				result(3 downto 1) <= result(2 downto 0);
				result(0)<='1';
			else
				prev<=w;
				result <= "0001";
			end if;
		end if;
		if result = "1111" then 
			ledg(0)<='1';
		else	
			ledg(0)<='0';
		end if;
	end process;
	ledr<=result;
end behavior;
			
			
				
			
			
