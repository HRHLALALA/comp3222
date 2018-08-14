LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY CircuitA IS
	PORT (V: IN STD_LOGIC_VECTOR(0 TO 2);
				A: OUT STD_LOGIC_VECTOR(2 DOWNTO 0));
END CircuitA;
--MINUS 2
ARCHITECTURE Structure OF CircuitA IS
BEGIN
	A(0)<= V(2) OR (NOT V(0) AND NOT V(1));
	A(1)<=NOT V(1);
	A(2)<= (NOT V(0) AND NOT V(1)) OR (V(0) AND V(1));
END Structure;