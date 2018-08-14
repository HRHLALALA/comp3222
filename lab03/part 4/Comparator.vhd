LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY Comparator IS
	PORT (X:	IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			Z: OUT STD_LOGIC);
END Comparator;

ARCHITECTURE Structure OF Comparator IS

BEGIN
	Z<=(X(3) AND X(2)) OR (X(3) AND X(1));
END Structure;



