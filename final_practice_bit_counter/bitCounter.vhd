library ieee;
use ieee.std_logic_1164.all;

entity bitCounter is
	port (A: in std_logic_vector(8 downto 0);
			rst: in std_logic;
			n : out std_logic_vector(4 downto 0));
end entity;

architecture beh of bitCounter is
	type state is (Q1,Q2,Q3)
	signal curr :state
	signal s: std_logic;
	signal Ain: std_logic vector
begin
	process(clk,curr,rst)
	begin
		if rst = '0' then
			curr <= Q1;
		elsif clk'event and clk = '1' then
			case curr
				when Q1 =>
					if s = '0' then
						curr <= Q1;
					else
						curr <= Q2;
					end if;
				when Q2 =>
					if Ain = "00000000" then
						curr => Q3;
					end if;
				when Q3 =>
					if s = '0' then 
						curr => Q1;
					else 
						curr => Q3;
					end if;
			end case;
		end if;
	end process;
	
	process(curr)
	begin
		case curr
			while Q1 =>
				enA <= '1';
			while Q2 =>
				shift_right(A);
				if Ain(0) = '1' THEN 
					B <= B + "00000001";
				end if;
			while Q3 => 
				Done = '1';
		end case;
	end process;
	
	Process(rst,clk)
	begin
		if rst = '0' then
			B <= (others=>'0');
		elsif clk'event and clk = '1' then 
			if LB = '1' then
				B <= (others => '0');
			else 
				B <= B + "00000001";
			end if;
		end if;
	end process;
	
	process(rst)
	begin
	
	end process;
	
	