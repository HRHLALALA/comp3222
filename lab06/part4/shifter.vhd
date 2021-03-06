library ieee;
use ieee.std_logic_1164;

entity regi_shifter is
	port( data: in std_logic_vector(3 downto 0);
			load,en: in std_logic;
			curr: out std_logic_vector(3 downto 0);
			node: out std_logic);
			
end regi_shifter;

architecture stru of regi_shifter is
begin
	curr(3 downto 1)<=data(2 downto 0);
	node<=data(3);
	curr(0)<=load;
end stru;