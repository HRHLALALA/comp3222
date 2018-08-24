LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY D_latch IS
	PORT ( D, CLK : IN STD_LOGIC ;
				Q : OUT STD_LOGIC) ;
END D_latch ;

ARCHITECTURE Behavior OF D_latch IS
BEGIN
	PROCESS ( D, CLK )
	BEGIN
		IF CLK = '1' THEN
			Q <= D ;
		END IF ;
	END PROCESS ;
END Behavior ;