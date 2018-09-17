library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_misc.all;

entity part1 is
	port( key:in std_logic_vector(1 downto 0); --key
			sw	:in std_logic_vector(1 downto 0); -- active low synchronous reset input and w input
			LEDG: out std_logic_vector(7 downto 0); --0:z
			LEDR: out std_logic_vector(8 downto 0)); --state 
end part1;

architecture structure of part1 is
	component D_FF IS
		PORT(D,CLOCK:IN STD_LOGIC;
				Q		:OUT STD_LOGIC);
	END component;
	signal v: std_LOGIC_vector(8 downto 0);
	signal result: std_LOGIC_vector(8 downto 0):="000000000";
begin
	--w:sw(1)   reset:sw(0) clk: key(0)  z:ledg0
	--stage1:LEDG(0)<=v(4) or v(8);
	A: D_FF port map(sw(0),key(0),v(0));
	B: D_FF port map(sw(0) and (or_reduce(result(8 downto 5)) or result(0)) and not result(2) and not sw(1),key(0),v(1));
	C: D_FF port map(sw(0) and result(1) and not sw(1),key(0),v(2));
	D: D_FF port map(sw(0) and result(2) and not sw(1),key(0),v(3));
	E: D_FF port map(sw(0) and (result(3) or result(4)) and not sw(1),key(0),v(4));
	F: D_FF port map(sw(0) and or_reduce(result(4 downto 0)) and sw(1),key(0),v(5));
	G: D_FF port map(sw(0) and result(5) and sw(1),key(0),v(6));
	H: D_FF port map(sw(0) and result(6) and sw(1),key(0),v(7));
	I: D_FF port map(sw(0) and (result(7)or result(8)) and sw(1),key(0),v(8));
	display1: ledr(0)<=v(0) and not or_reduce(v(8 downto 1));
	display2: ledr(1)<=v(1) and not or_reduce(v(8 downto 2));
	display3: ledr(2)<=v(2) and not or_reduce(v(8 downto 3));
	display4: ledr(3)<=v(3) and not or_reduce(v(8 downto 4));
	display5: ledr(4)<=v(4) and not or_reduce(v(8 downto 5));
	display6: ledr(5)<=v(5) and not or_reduce(v(8 downto 6));
	display7: ledr(6)<=v(6) and not or_reduce(v(8 downto 7));
	display8: ledr(7)<=v(7) and not v(8);
	display9: ledr(8)<=v(8);
	print:LEDG<=result(7 downto 0);
	print2:result<=v;
end structure;
	