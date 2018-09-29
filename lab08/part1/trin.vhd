LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
ENTITY trin IS
PORT ( X : IN STD_LOGIC_VECTOR(8 DOWNTO 0) ;
		 E : IN STD_LOGIC ;
		 F : OUT STD_LOGIC_VECTOR(8 DOWNTO 0) ) ;
END trin ;
ARCHITECTURE Behavior OF trin IS
BEGIN
F <= (OTHERS => '0') WHEN E = '0' ELSE X ;
END Behavior ;