library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned;
use IEEE.numeric_std.all;
library regi_shifter;
entity part4 is
	port(	sw: in std_logic_vector(2 downto 0);
			clock_50:in std_logic;
			key:in std_logic_vector(1 downto 0);
			ledg: out std_logic_vector(4 downto 0);
			ledr: out std_logic_vector(9 downto 0));
end part4;

architecture beha of part4 is
	component regi_shifter is
		port( data: in std_logic_vector(3 downto 0);
				load,en: in std_logic;
				curr: out std_logic_vector(3 downto 0);
				node: out std_logic);
	end component;

	
	function to_seq(sw:in std_logic_vector(2 downto 0)) return string is
	begin
	case sw is
		when "000" => return "10--"; --A
		when "001" => return "0111"; --B
		when "010" => return "0101";	--C
		when "011" => return "011-"; --D
		when "100" => return "1---"; --E
		when "101" => return "1100"; --F
		when "110" => return "001-"; --G
		when "111" => return "1111"; --H
		when others => return "----"; --others
	end case;
	end to_seq;
	
	component displayCHAR IS
	PORT( char: IN character;
			ledr: out std_logic);
			 
	END component;
	
	signal pw,pw2: string(1 to 4);
	signal n: std_logic;
	signal curr:character;
	type state is (re,full,wa,dark);
	signal f_q,f_p:state; --current state,next state
	signal count,count1,count2,second: integer range 0 to 75000000;
begin
	
	process(CLOck_50,KEY(0))
	begin
	if key(0)='0' then
		f_q <= re;
	elsif clock_50'event and clock_50 = '1' then
		f_q <= f_p;
	end if;
	end process;
	

	process(f_q,curr,clock_50)
	begin
		if clock_50'event and clock_50='1' then
		case f_q is
			when re =>
				ledg<="00001";
				ledr(0)<='0';
				pw <= to_seq(sw);
				f_p<=wa;
			when wa =>
				ledg<="00010";
				ledr(0) <= '0';
				if key(1)='0' then
					f_p<=dark;
				end if;
			when full =>
				ledg<="00100";
				ledr(0)<='1';
				if count = second then
					count<=0;
					f_p<=dark;
				else
					count<= count +1;
				end if;
			when dark=>
				ledg<="10000";
				ledr(0)<='0';
				if count = 12000000 then
					count <= 0;
					curr<=pw(1);
					pw2(1 to 3)<=pw(2 to 4);
					pw2(4)<='-';
					pw<=pw2;
					if curr='1' then
						second <= 25000000;
						f_p<=full;
					elsif curr ='0' then
						second <= 75000000;
						f_p<=full;
					end if;
				else
					count<=count+1;
				end if;
		end case;
		end if;
		end process;
end beha;