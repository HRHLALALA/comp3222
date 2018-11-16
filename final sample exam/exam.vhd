library ieee;
use ieee.std_logic_1164.all;

entity exam is 
	port ( sw: in std_logic_vector(9 downto 0);
			 key:in std_logic_vector(3 downto 0);
			 ledr: out std_logic_vector(7 downto 0);
			 ledg: out std_logic_vector(7 downto 0));
end entity;

architecture bav of exam is 
	component divider
		port(A: in std_logic_vector(7 downto 0);
			  s: in std_logic;
			  rst: in std_logic;
			  clk: in std_logic;
			  R: out std_logic_vector( 7 downto 0);
			  Done: out std_logic;
			  Div3: out std_logic);
	end component;
begin 
	run: divider port map(sw(7 downto 0),sw(9),key(0),key(3),ledr(7 downto 0),ledg(0),ledg(7));
end bav;