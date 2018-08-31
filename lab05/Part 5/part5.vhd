library IEEE;
use IEEE.numeric_std.all;
use IEEE.std_logic_1164.all;
use IEEE.STD_logic_UNSIGNED.ALL;

entity part5 is
    port (
        CLOCK_50,CLR: in std_logic;
        HEX0: out std_logic_vector(6 downto 0)
    );
end part5;

architecture arch of part5 is
	COMPONENT displayHEX IS
		PORT( X: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			HEX: OUT STD_LOGIC_VECTOR(6 DOWNTO 0));
	END COMPONENT;
	signal counter: STD_LOGIC_VECTOR(27 DOWNTO 0);
	signal seconds: STD_logic_VECTOR(3 downto 0);
begin
	 PROCESS (CLOCK_50,CLR,counter,seconds)
	 BEGIN
		IF CLR = '0' THEN
			counter <= (OTHERS => '0');
			seconds <= "0000";
		ELSIF rising_edge(CLOCK_50) THEN
			IF counter < "10110111000110110000000000" THEN
				counter <= counter+1;
			ELSE
				counter <= (OTHERS=>'0');
				IF seconds < "1001" THEN 
					seconds <= seconds +1;
				ELSE
					seconds <= "0000";
				END IF;
			END IF;
		END IF;
	END PROCESS;
	DISPLAY: displayHEX PORT MAP(seconds,HEX0);
end arch;