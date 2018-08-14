LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY CircuitA IS
	PORT (V: IN STD_LOGIC_VECTOR(2 DOWNTO 0);
				A: OUT STD_LOGIC_VECTOR(0 TO 2));
END CircuitA;
--MINUS 2
ARCHITECTURE Structure OF CircuitA IS
BEGIN
	A(0)<=(V(0) AND V(1)) OR (V(0) AND V(2));
	A(1)<=NOT V(1);
	A(2)<= V(0) and V(1);
END Structure;