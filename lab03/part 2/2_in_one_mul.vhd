LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY mul_2_in_1 IS
	PORT (V: IN STD_LOGIC;
			S: IN STD_LOGIC;
			Z: IN STD_LOGIC;
			O: OUT STD_LOGIC);
END mul_2_in_1;

ARCHITECTURE behavior OF mul_2_in_1 IS
BEGIN
	O <= (V AND NOT Z) OR (S AND Z);
	
END behavior;