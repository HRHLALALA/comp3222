LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY part1 is
	PORT(	SW:IN STD_logic_VECTOR(9 DOWNTO 0);
			KEY: IN STD_logic_VECTOR(1 DOWNTO 0);
			LEDR: OUT STD_logic_VECTOR(9 DOWNTO 0));
END part1;

ARCHITECTURE beh of part1 is
	COMPONENT proc IS
	PORT ( 	DIN : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
				Resetn, Clock, Run : IN STD_LOGIC;
				Done : BUFFER STD_LOGIC;
				BusWires : BUFFER STD_LOGIC_VECTOR(8 DOWNTO 0));
	END COMPONENT;
BEGIN
	run: proc port map(SW(8 DOWNTO 0),KEY(0),KEY(1),SW(9),LEDR(9),LEDR(8 DOWNTO 0));
end beh;	