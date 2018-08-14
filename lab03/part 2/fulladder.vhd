LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY fulladd  IS
	PORT(Cin,x,y	:IN STD_LOGIC;
			s,Cout	:OUT STD_LOGIC);
END fulladd;

ARCHITECTURE LogicFunction OF fulladd IS
BEGIN
		s<=x XOR y XOR Cin;
		Cout <= (x AND y) OR (Cin AND y);
END LogicFunction;