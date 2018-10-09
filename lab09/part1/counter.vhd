library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity counter is
	port(Din:in std_logic_vector(8 downto 0);
			clk: in std_logic_vector(0 downto 0);
			Dout: out std_logic_vector(7 downto 0);
			done: out std_logic_vector(0 downto 0));
end counter;

architecture str of counter is
	type state_type is (T1,T2,T3);
	signal result: std_logic_vector(7 downto 0);
	signal curr,nex: state_type;
begin
	trans:process(clk,curr,a)
	begin
		if din(8) = '0' then
			nex <= T1;
		elsif clk'event and clk = '1' then
			case curr is
				when T1=>
					if s = '0' then
						nex <= T1;
					else
						nex <= T2;
					end if;
				when T2 =>
					if A = 1 then 
						nex <= T3;
					else
						nex <= T1;
					end if;
				when T3 =>
					if s ='1' then nex<=T3;
					else nex<=T1;
					end if;
			end case;
		end if;
	end process;
	
	output: PROCESS(curr,A(0))
	begin
		case curr is
			when T1 => 
				EP <= '1';
			when T2 =>
				EA <= 
			

				
				
				
	
	
	
				
		