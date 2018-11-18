library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity divider is
	port(A: in std_logic_vector(7 downto 0);
		  s: in std_logic;
		  rst: in std_logic;
		  clk: in std_logic;
		  R: out std_logic_vector( 7 downto 0);
		  Done: out std_logic;
		  Div3: out std_logic);
end entity;

architecture beh of divider is
	type state is (Q1,Q2,Q3);
	signal curr,nex: state;
	signal Ain,Ain1,Ain3: std_logic_vector(7 downto 0);
	signal ena,z,enSub,less3: std_logic;
begin 
	process(clk,curr,z,s)
	begin
		if clk'event and clk = '1' then
			curr <= nex;
		end if;
	end process;
	
	process(curr,z,s,rst,less3)
	begin
		if rst = '0' then
			nex <= Q1;
		else
			case curr is
				when Q1 =>
					if s = '1' then 
						if less3 = '1' then
							nex <= Q3;
						else
							nex <= Q2;
						end if;
					else
						nex <= Q1;
					end if;
				when Q2 =>
					if less3 = '0' then
						nex <= Q2;
					else
						nex <= Q3;
					end if;
				when Q3 =>
					if s = '0' then
						nex <= Q1;
					else	
						nex <= Q3;
					end if;
			end case;
		end if;
	end process;
	
	process(nex,Ain)
	begin
		ena <= '0';
		enSub <= '0';
		done <= '0';
		div3 <='0';
		case nex is
			when Q1 =>
				enA <= '1';
			when Q2 =>
				enSub <= '1';
			when Q3=>
				if Ain = "00000000" then
					div3 <= '1';
				end if;
				done <= '1';
		end case;
	end process;
		
	process(clk,ena,enSub,s)
	begin
		if clk'event and clk = '1' then 
			if ena = '1' then
				Ain <= A;
			elsif enSub = '1' then
				Ain <= Ain1;
			end if;
		end if;
	end process;
	
	process(Ain)
	begin
		if Ain >= "00000011" then
			less3 <= '0';
		else
			less3 <= '1';
		end if;
	end process;
	
	Ain1 <= Ain - "00000011";
	R <= Ain;
end beh;