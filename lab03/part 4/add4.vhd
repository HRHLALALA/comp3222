LIBRARY ieee;
USE ieee.std_logic_1164.all;
LIBRARY fulladd;


ENTITY adder4 IS
	PORT(Cin	:IN STD_LOGIC;
			X	:IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			Y	:IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			S	:OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
			Cout: OUT STD_LOGIC);
END adder4;

ARCHITECTURE Structure OF adder4 IS
	SIGNAL C1,C2,C3:STD_LOGIC;
	COMPONENT fulladd  IS
		PORT(Cin,x,y	:IN STD_LOGIC;
			s,Cout	:OUT STD_LOGIC);
	END COMPONENT;
	
BEGIN
	stage0: fulladd PORT MAP(Cin,X(0),Y(0),S(0),C1);
	stage1: fulladd PORT MAP(C1,X(1),Y(1),S(1),C2);
	stage2: fulladd PORT MAP(C2,X(2),Y(2),S(2),C3);
	stage3: fulladd PORT MAP(Cin=>C3,Cout => Cout,x=>X(3),y=>Y(3),s=>S(3));
END Structure;