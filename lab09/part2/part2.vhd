library ieee;
use ieee.std_logic_1164.all;

entity part2 is
	port(sw: in std_logic_vector(8 downto 0);
		 key: in std_logic_vector(1 downto 0);
		 clock_50: in std_logic;
		 ledg: out std_logic_vector(7 downto 0);
		 ledr: out std_logic_vector(7 downto 0));
end part2;

architecture str of part2 is
	component search is
		port(A: in std_logic_vector(7 downto 0);
			start,Restart,clk: in std_logic;
			result: out std_logic_vector(7 downto 0);
			debug: out std_logic_vector(6 downto 0);
			found: out std_logic);
	end component;
begin 
	sea: search port map(sw(7 downto 0),sw(8),key(0),clock_50,ledr,ledg(7 downto 1),ledg(0));
end str;