LIBRARY ieee;
USE ieee.std_logic_1164.all;
LIBRARY CircuitA;
LIBRARY Comparator;
LIBRARY mul_2_in_1;
LibRARY displayNumber;
LIBRARY adder4;
ENTITY part2 IS
	PORT ( SW : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
				C: IN STD_LOGIC;
			HEX0 : OUT STD_LOGIC_VECTOR(0 TO 6);
			HEX1 : OUT STD_LOGIC_VECTOR(0 TO 6));
END part2;

ARCHITECTURE Structure OF part2 IS
	COMPONENT CircuitA
		PORT (V: IN STD_LOGIC_VECTOR(0 TO 2);
				C: IN STD_LOGIC;
				A: OUT STD_LOGIC_VECTOR(2 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT Comparator
		PORT (X:	IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			Z: OUT STD_LOGIC);
	END COMPONENT;
	
	COMPONENT mul_2_in_1
		PORT (V: IN STD_LOGIC;
				S: IN STD_LOGIC;
				Z: IN STD_LOGIC;
				O: OUT STD_LOGIC);
	END COMPONENT;
	
	COMPONENT displayNumber
		PORT(s	:IN	STD_LOGIC_VECTOR(0 TO 3);
			  HEX	:OUT	STD_LOGIC_VECTOR(0 TO 6));
	END COMPONENT;
	COMPONENT circuitB
		PORT(Z	:IN STD_LOGIC;
			HEX	:OUT STD_LOGIC_VECTOR(0 TO 6));
	END COMPONENT;
	COMPONENT adder4 IS
		PORT(Cin	:IN STD_LOGIC;
			X	:IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			Y	:IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			S	:OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
			Cout: OUT STD_LOGIC);
	END COMPONENT;
	SIGNAL  m: STD_lOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL	cadd,display: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL  zout,carry,n: STD_LOGIC;
	SIGNAL  cirout:STD_LOGIC_VECTOR(2 DOWNTO 0);
BEGIN
	stage1: Comparator PORT MAP(SW(3 DOWNTO 0),zout);
	stage2: CircuitA PORT MAP(SW(2 DOWNTO 0),C,cirout);
	stage3: mul_2_in_1 PORT MAP(SW(3),'0',zout,m(3));
	stage4: mul_2_in_1 PORT MAP(SW(2),cirout(2),zout,m(2));
	stage5: mul_2_in_1 PORT MAP(SW(1),cirout(1),zout,m(1));
	stage6: mul_2_in_1 PORT MAP(zout,'1',C,n);
	stage7: mul_2_in_1 PORT MAP (SW(0),cirout(0),zout,m(0));
	stage8: cadd<=('0','1'AND C,'1' AND C,'0');
	stage9: adder4	PORT MAP ('0',m,cadd,display,carry);
	stage10: displayNumber PORT MAP(display,HEX0);
	stage11: circuitB PORT MAP(n,HEX1);

END Structure;
