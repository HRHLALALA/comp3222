LIBRARY ieee;
USE ieee.std_logic_1164.all;


ENTITY part1 IS
	PORT ( SW : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			LEDR: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			HEX0 : OUT STD_LOGIC_VECTOR(0 TO 6);
			HEX1 : OUT STD_LOGIC_VECTOR(0 TO 6));
END part1;


ARCHITECTURE Behavior OF part1 IS
	COMPONENT displayNumber
		PORT(s	:IN	STD_LOGIC_VECTOR(3 DOWNTO 0);
			  HEX	:OUT	STD_LOGIC_VECTOR(0 TO 6));
	END COMPONENT;
BEGIN
	stage :	LEDR<=SW;
	stage0: displayNumber PORT MAP(SW(3 DOWNTO 0),HEX0);
	stage1: displayNumber PORT MAP(SW(7 DOWNTO 4),HEX1);
END Behavior;


LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY	displayNumber IS
	PORT(s	:IN	STD_LOGIC_VECTOR(0 TO 3);
			  HEX	:OUT	STD_LOGIC_VECTOR(0 TO 6));
END displayNumber;

ARCHITECTURE Behavior OF displayNumber IS
BEGIN
	HEX(0) <= NOT(s(2) or s(0) or (s(1) and s(3)) OR (not s(1) and not s(3)));
	HEX(1) <= NOT((s(2) AND s(3)) OR (NOT s(2) AND NOT s(3)) OR s(0) OR NOT s(1));
	HEX(2) <= NOT(s(0) or s(1) or not s(2) or s(3));
	HEX(3) <= (s(1) and not s(2) and not s(3)) or (s(1) and s(2) and s(3) ) or (not s(0)and not s(1) and not s(2) and s(3));
	HEX(4) <= s(3) or (not s(2)and s(1)) or (s(2) and s(0));
	HEX(5) <= NOT (s(0) or (not s(2) and not s(3)) or (not s(2) and s(1)) or (not s(3) and s(1)));
	HEX(6) <= NOT (s(0) or (not s(1) and s(2)) or (not s(2) and s(1)) or (s(1) and not s(3)));

END Behavior;	