library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use IEEE.numeric_std.all;
entity part1 is
	port(sw:in std_logic_vector(8 downto 0);
			CLOCK_50:in std_logic;
			key: in std_logic_vector(1 downto 0);
			ledr: buffer unsigned(8 downto 0);
			ledg: out std_logic_vector(7 downto 0));
end part1;

architecture str of part1 is
	component counter is
		port(Din:in std_logic_vector(8 downto 0);
				clk,key: in std_logic;
				result: buffer unsigned(8 downto 0);
				debug: out std_logic_vector(7 downto 1);
				done: out std_logic);
	end component;
begin
	coun: counter port map(sw,cloCK_50,key(0),ledr,ledg(7 downto 1),ledg(0));
end str;
	
	