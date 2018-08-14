LIBRARY ieee;
USE ieee.std_logic_1164.all;
LIBRARY CircuitA;
LIBRARY Comparator;
LIBRARY mul_2_in_1;
LibRARY displayNumber;

ENTITY part2 IS
	PORT ( SW : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			LEDR: OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
			LEDG: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			HEX0 : OUT STD_LOGIC_VECTOR(0 TO 6);
			HEX1 : OUT STD_LOGIC_VECTOR(0 TO 6));
END part2;

ARCHITECTURE Structure OF part2 IS
	SIGNAL  m: STD_lOGIC_VECTOR(0 TO 3);
	SIGNAL  zout: STD_LOGIC;
	SIGNAL  cirout:STD_LOGIC_VECTOR(2 DOWNTO 0);
	COMPONENT CircuitA
		PORT (V: IN STD_LOGIC_VECTOR(0 TO 2);
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
	
BEGIN
	stage0: LEDR<=SW;
	stage1: Comparator PORT MAP(SW(3 DOWNTO 0),zout);
	stageextra1:  LEDG(0)<=zout;
	stage2: CircuitA PORT MAP(SW(2 DOWNTO 0),cirout);
	stageextra2:  LEDG(5 DOWNTO 3)<=cirout;
	stage3: mul_2_in_1 PORT MAP(SW(3),'0',zout,m(3));
	stageextra3:	LEDG(7)<=m(3);
	stage4: mul_2_in_1 PORT MAP(SW(2),cirout(2),zout,m(2));
	stage5: mul_2_in_1 PORT MAP(SW(1),cirout(1),zout,m(1));
	stage6: mul_2_in_1 PORT MAP (SW(0),cirout(0),zout,m(0));
	stage7: displayNumber PORT MAP(m(0 TO 3),HEX0);
	stage8: circuitB PORT MAP(zout,HEX1);

END Structure;
