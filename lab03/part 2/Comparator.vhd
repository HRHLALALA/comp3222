LIBRARY ieee;
USE ieee.std_logic_1164.all;
LIBRARY fulladd;
ENTITY Comparator IS
	PORT (X,Y:	IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			Z: OUT STD_LOGIC);
END Comparator;

ARCHITECTURE Structure OF Comparator IS
	SIGNAL S: STD_LOGIC_VECTOR(0 TO 3);
	SIGNAL C: STD_LOGIC_VECTOR(1 TO 4);
	COMPONENT fulladd
		PORT(Cin,x,y	:IN STD_LOGIC;
			s,Cout	:OUT STD_LOGIC);
	END COMPONENT;
BEGIN
	stage0: fulladd PORT MAP('1',X(0),NOT Y(0),S(0),C(1));
	stage1: fulladd PORT MAP(C(1),X(1),NOT Y(1),S(1),C(2));
	stage2: fulladd PORT MAP(C(2),X(2),NOT Y(2),S(2),C(3));
	stage3: fulladd PORT MAP(C(3),X(3),NOT Y(3),S(3),C(4));
	Z<= C(4) XOR C(3);
END Structure;



