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
	signal curr: state;
	signal Ain,Ain1: std_logic_vector(7 downto 0);
	signal ena,z,enSub: std_logic;
begin 
	process(clk,curr,z,s)
	begin
		if rst = '0' then
			curr <= Q1;
		elsif clk'event and clk ='1' then
			case curr is
			when Q1 =>
				if s = '1' then
					curr <= Q2;
				else
					curr <= Q1;
				end if;
			when Q2 => 
				curr <= Q3;
			when Q3 =>
				if z = '1' then
					curr <= Q2;
				elsif s = '0' then
					curr <= Q1;
				else 
					curr <= Q3;
				end if;
			end case;
		end if;
	end process;
	
	process(curr,Ain)
	begin 
		ena <= '0';
		z <= '0';
		Div3 <= '0';
		done <= '0';
		enSub <= '0';
		case curr is
		when Q1 => 
			ena <= '1';
			Ain <= Ain1;
		when Q2 =>
			if Ain >= "00000011" then 
				ena <= '1';
				enSub <= '1';
			end if;
		when Q3 =>
			if Ain < "00000011" then
				done <= '1';
				if Ain <= "00000000" then 
					div3 <= '1';
				end if;
			else
				z <= '1';
			end if;
		end case;
	end process;
	
	process(clk,ena,enSub)
	begin 
		if clk'event and clk = '1' then 
			if ena = '1' then
				if enSub = '1' then
					Ain <= Ain - "00000011";
				else 
					Ain <= A;
				end if;
			end if;
		end if;
	end process;
	R <= Ain;
end beh;