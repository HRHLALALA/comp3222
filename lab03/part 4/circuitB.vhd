LIBRARY ieee;
USE ieee.std_logic_1164.all;
LIBRARY displayNumber;
ENTITY circuitB  IS
	PORT(Z	:IN STD_LOGIC;
		  HEX	:OUT STD_LOGIC_VECTOR(0 TO 6));
END circuitB;

ARCHITECTURE LogicFunction OF circuitB IS
	COMPONENT displayNumber
		PORT(s	:IN	STD_LOGIC_VECTOR(3 DOWNTO 0);
			  HEX	:OUT	STD_LOGIC_VECTOR(0 TO 6));
	END COMPONENT;
	SIGNAL C:STD_LOGIC_VECTOR(3 DOWNTO 0);
BEGIN
	stage0: C(3 DOWNTO 1)<="000";
	stage1: C(0)<=Z;
	stage2: displayNumber PORT MAP(C,HEX);
END LogicFunction;