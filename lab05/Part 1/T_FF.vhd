LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY T_FF IS
	PORT(T,CLK,CLR : IN STD_LOGIC;
		  Q : OUT STD_LOGIC);
		 
END T_FF;

ARCHITECTURE Behavior OF T_FF IS
	SIGNAL TMP: STD_LOGIC; 
BEGIN
	PROCESS (CLK)
	BEGIN
		IF CLR ='0' THEN 
			TMP <= '0';
		ELSIF CLK'EVENT AND CLK = '1' THEN
			IF T = '1' THEN 
				TMP <= NOT TMP;
			END IF;
		END IF;
	END PROCESS;
	Q <= TMP;

END Behavior;	