LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY part2 IS
	PORT(SW	: IN STD_LOGIC_VECTOR(0 TO 1);
		 LEDR	:	OUT STD_LOGIC_VECTOR(0 TO 1);
		 LEDG	:	OUT STD_LOGIC_VECTOR(0 TO 1));
END part2;

ARCHITECTURE Structural OF part2 IS
	COMPONENT D_latch
		PORT(Clk,D: IN STD_LOGIC;
			Q		: OUT STD_LOGIC);
	END COMPONENT;
BEGIN
	stage: LEDR<=SW;
	stage0:D_latch PORT MAP(SW(1),SW(0),LEDG(0));
END Structural;



LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY D_latch IS
	PORT(Clk,D: IN STD_LOGIC;
			Q		: OUT STD_LOGIC);
END D_latch;
ARCHITECTURE Structural OF D_latch IS
	SIGNAL R,S,R_g,S_g,Qa,Qb: STD_LOGIC;
--	ATTRIBUTE keep: boolean;
--	ATTRIBUTE keep of R_g,S_g,Qa,Qb:	SIGNAL IS true;

BEGIN
	S<=D;
	R<=NOT D;
	S_g <= Clk NAND S;
	R_g <=  R NAND Clk;
	Qa	 <= S_g NAND Qb;
	Qb	 <= R_g NAND Qa;
	
	Q	<= Qa;
	
END structural;