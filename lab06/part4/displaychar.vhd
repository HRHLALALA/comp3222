LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_signed.all;

ENTITY displayCHAR IS
	PORT( char: IN character;
			ledr: out std_logic);
			 
END displayCHAR;

ARCHITECTURE Behavior OF displayCHAR is
BEGIN
	process(char)
	begin
	case char is
		when '1' => ledr<='1';
		when '0' => ledr<='0';
		when others => ledr<='-';
	end case;
	end process;
END Behavior;