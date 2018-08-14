LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY part5 IS
	PORT ( SW : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
			HEX0 : OUT STD_LOGIC_VECTOR(0 TO 6);
			HEX1 : OUT STD_LOGIC_VECTOR(0 TO 6);
			HEX2 : OUT STD_LOGIC_VECTOR(0 TO 6));
END part5;

ARCHITECTURE Behavior OF part5 IS
	COMPONENT mux_2bit_3to1
	PORT ( S, U, V, W : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			HEX0 : OUT STD_LOGIC_VECTOR(0 TO 6);
			HEX1 : OUT STD_LOGIC_VECTOR(0 TO 6);
			HEX2 : OUT STD_LOGIC_VECTOR(0 TO 6));
	END COMPONENT;

	COMPONENT char_7seg
			PORT ( C : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		Display1 : OUT STD_LOGIC_VECTOR(0 TO 6));
	END COMPONENT;
BEGIN
	M0: mux_2bit_3to1 PORT MAP (SW(9 DOWNTO 8), SW(5 DOWNTO 4), SW(3 DOWNTO 2),
		SW(1 DOWNTO 0), HEX0,HEX1,HEX2);
END Behavior;

LIBRARY ieee;
USE ieee.std_logic_1164.all;
-- implements a 2-bit wide 3-to-1 multiplexer
ENTITY mux_2bit_3to1 IS
	PORT ( S, U, V, W : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		HEX0 : OUT STD_LOGIC_VECTOR(0 TO 6);
			HEX1 : OUT STD_LOGIC_VECTOR(0 TO 6);
			HEX2 : OUT STD_LOGIC_VECTOR(0 TO 6));
	END mux_2bit_3to1;

ARCHITECTURE Behavior OF mux_2bit_3to1 IS
	COMPONENT char_7seg
	PORT ( C : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		Display1 : OUT STD_LOGIC_VECTOR(0 TO 6));
	END COMPONENT;	
	SIGNAL TEMPU,TEMPV,TEMPW: STD_LOGIC_VECTOR(1 DOWNTO 0);
BEGIN
	stage3:TEMPU<=U WHEN S="00" ELSE
			 V WHEN S="01" ELSE
			 W;
	stage4:TEMPV<=V WHEN S="00" ELSE
			 W WHEN S="01" ELSE
			 U;
	stage5:TEMPW<=W WHEN S="00" ELSE
			 U WHEN S="01" ELSE
			 V;
	stage0: char_7seg PORT MAP(TEMPU,HEX2);
	stage1: char_7seg PORT MAP(TEMPV,HEX1);
	stage2: char_7seg PORT MAP(TEMPW,HEX0);
END Behavior;
LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY char_7seg IS
	PORT ( C : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		Display1 : OUT STD_LOGIC_VECTOR(0 TO 6));
END char_7seg;
	
ARCHITECTURE Behavior OF char_7seg IS
BEGIN
	Display1 <= "1000010" when (C="10") else--d
					"0110000" when (C="01") else--1
					"1001111" when (C="00") else--E
					"1111111";--E
					
--code not shown
END Behavior;