library ieee;
use ieee.std_logic_1164;

entity fan7_nor is
	port(v: in std_logic_vector(7 downto 0);
		  result: out std_logic);
end fan7_nor;

architecture structure of fan7_nor is
begin
	result <= v(0) nor v(1) nor v(2) nor v(3) nor v(4) nor v(5) nor v(6) nor v(7);
end structure;