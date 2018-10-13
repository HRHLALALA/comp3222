library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
entity search is
	port(A: in std_logic_vector(7 downto 0);
		 start,Restart,clk: in std_logic;
		 result: out std_logic_vector(7 downto 0);
		 debug: out std_logic_vector(6 downto 0);
		 found: out std_logic);
end search;

architecture str of search is
	component memory_block
        port (address : in  std_logic_vector(4 downto 0);
              clock   : in  std_logic;
              q       : out std_logic_vector(7 downto 0));
   end component;
	type state is (T1,T2,T3,nop1,nop2);
	signal y : state;
	signal min,mid,max,curr_min,curr_max,curr_mid,count: integer range 0 to 31;
	signal data: std_logic_vector(7 downto 0);
begin
	process(clk, Restart,start,data)
	begin
	if Restart = '0' then
		y <=  T1;
		curr_min <= 0;
		curr_mid <= 15;
		curr_max <= 31;
		found <= '0';
		result <=(others=>'0');
	elsif clk'event and clk = '1' then
		case y is 
			when T1 => 
				--debug(2 downto 0) <= "100";
				if start = '1' then 
					y <= T2;
				else 
					y <= T1;
				end if;
			when T2 =>
				--debug(2 downto 0) <= "010";
				--debug(4 downto 0) <= std_logic_vector(to_unsigned(curr_mid,5));
				--result(4 downto 0) <= std_logic_vector(to_unsigned(curr_mid,5));
				--debug <= data(6 downto 0);
				if data = A then
					y <= T3;
				elsif data < A then
					min <= curr_mid + 1;
					max <= curr_max;
					y<=nop1;
				else
					max <= curr_mid;
					min <= curr_min;
					y <= nop1;
				end if;
				curr_mid <= (min + max)/2;
				curr_min <= min;
				curr_max <= max;
--			if data = A then
--				y <= T3;
--			else
--				curr_mid <= curr_mid +1;
--			end if;
			when nop1 =>
				curr_mid <= (min + max)/2;
				curr_min <= min;
				curr_max <= max;
				y <=nop2;
			when nop2=>
				curr_mid <= (min + max)/2;
				curr_min <= min;
				curr_max <= max;
				y<=T2;
			when T3 =>
				--debug(2 downto 0) <= "001"; 
				found <='1';
				result(4 downto 0) <= std_logic_vector(to_unsigned(curr_mid,5));
				if curr_min = curr_max then
					debug(6) <='1';
				else
					debug(6) <='0';
				end if;
				if start ='1' then
					y <= T3;
				else 
					y <= T1;
				end if;
		end case;
					
	end if;
	end process;	

	mem: memory_block port map(std_logic_vector(to_unsigned(curr_mid,5)),not clk,data);
	--lo: debug(4 downto 0) <= std_logic_vector(to_unsigned(curr_mid,5));


end str;