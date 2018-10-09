library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity counter is
	port(Din:in std_logic_vector(8 downto 0);
			clk: in std_logic;
			result: buffer integer range 0 to 8;
			done: out std_logic);
end counter;

architecture str of counter is
	type state_type is (T1,T2,T3);
	signal a: std_logic_vector(7 downto 0);
	signal curr: state_type;
	signal EA,LB,EB:std_logic;
begin
	trans:process(din,clk,curr,a)
	begin
		if din(8) = '0' then
			curr <= T1;
		elsif clk'event and clk='1' then
			case curr is
				when T1=>
					if din(8) = '0' then
						curr <= T1;
					else
						curr <= T2;
					end if;
				when T2 =>
					if A = 1 then 
						curr <= T3;
					else
						curr <= T1;
					end if;
				when T3 =>
					if din(8) ='1' then curr<=T3;
					else curr<=T1;
					end if;
			end case;
		end if;
	end process;
	
	output: PROCESS(curr,A(0))
	begin
		EA <='0'; LB<='0';EB <='0';Done <='0';
		case curr is
			when T1 => 
				LB <= '1';
			when T2 =>
				EA <= '1';
				if a(0) = '1' then 
					EB <='1';
				end if;
			when T3 =>
				done <= '1';
		end case;
	end process;
	
	upcounter:process(din(8),clk)
	begin
		if din(8) ='0' then
			result <= 0;
		elsif clk'event and clk = '1' then
			if LB = '1' then 
				result <= 0;
			elsif EB = '1' then
				result <= result +1;
			end if;
		end if;
	end process;
	
	shifter: process(Din,clk,EA)
	begin
		if clk'event and clk ='1' and EA = '1' then
			a(7 downto 1)<= din(6 downto 0);
			a(0) <= '0';
		end if;
	end process;
end str;			
	
			

				
				
				
	
	
	
				
		