LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
use IEEE.numeric_std.all;
ENTITY HEXrun IS
	PORT(CLOCK_50: IN STD_LOGIC;
			HEX0,HEX1,HEX2,HEX3: OUT STD_LOGIC_VECTOR(0 TO 6);
			LEDR: OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
			LEDG: OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END ENTITY;

ARCHITECTURE structure OF HEXrun IS
	component displayCHAR IS
		PORT( char: IN character;
			 hex:	OUT std_logic_vector(0 to 6));
			 
	END component;
	signal COUNT,blink: unsigned(25 downto 0);
	signal second: unsigned(4 downto 0);
	signal char1,char2,char3,char4: character;
	signal i: unsigned(4 downto 0);
BEGIN

PROCESS(CLOCK_50,second,COUNT)
BEGIN
	IF CLOCK_50'EVENT AND CLOCK_50='1' THEN
		IF second = 4 THEN
			char4 <= 'x';
			char3 <= '^';
			char2 <= '_';
			char1 <= '^';
			second <= second - 4;
		ELSIF second = 3 THEN 
			char4 <= 'x';
			char3 <= 'Y';
			char2 <= 'O';
			char1 <= 'V';
		ELSIF second = 2  THEN
			char4 <= 'L';
			char3 <= 'O';
			char2 <= 'V';
			char1 <= 'E';
		ELSIF second = 1 THEN
			char4 <= 'X';
			char3 <= 'X';
			char2 <= 'I';
			char1 <= 'X';
		END IF;
		
		FOR j in 0 to 9 loop
			IF j = i OR (9-j)=i Then
				LEDR(j)<='1';
			ELSE
				LEDR(j)<='0';
			END IF;
		END loop;
		
		FOR j in 0 to 7 loop
			IF j = i Then
				LEDG(j)<='1';
			ELSE
				LEDG(j)<='0';
			END IF;
		END loop;

		IF COUNT = 50000000  THEN
			second <= second +1;
			COUNT <= COUNT - 50000000;
		ELSE
			blink <= blink + 1;
			COUNT <= COUNT+1;
			IF blink = 5000000 THEN
				blink <= blink - 5000000;
				IF i = 9 Then
					i <= i-9;
				else
					i <= i+1;
				end if;
			END IF;
		END IF;
	END IF;
END PROCESS;
stage:	displayCHAR PORT MAP(char1,HEX0);
stage1:	displayCHAR PORT MAP(char2,HEX1);
stage2:	displayCHAR PORT MAP(char3,HEX2);
stage3:	displayCHAR PORT MAP(char4,HEX3);

END structure;
	
	
	
