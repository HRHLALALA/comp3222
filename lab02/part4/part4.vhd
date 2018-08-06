LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY part4 IS
	PORT ( C : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			HEX0:OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
			LEDR:OUT STD_LOGIC_VECTOR(1 DOWNTO 0));
END part4;

ARCHITECTURE Behavior OF part4 IS
BEGIN
	LEDR<=C;
	

	
	HEX0<="0100001" when (C="00") else --d
			"0000110" when (C="01") else --E
			"1111001" when (C="10") else --1
			"1111111";
	



END Behavior;