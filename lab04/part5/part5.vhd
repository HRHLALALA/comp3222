LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY part5 IS
	PORT(SW:	IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		LEDR: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		HEX3,HEX2,HEX1,HEX0:	OUT STD_LOGIC_VECTOR(6 DOWNTO 0);

		KEY : IN STD_LOGIC_VECTOR(1 DOWNTO 0)); -- kEY0 RESET KEY1 CLOCK
END part5;

ARCHITECTURE structure OF part5 IS
	COMPONENT displayHEX
	PORT( X: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			HEX: OUT STD_LOGIC_VECTOR(6 DOWNTO 0));
	END COMPONENT;
	SIGNAL dis1,dis2: STD_LOGIC_VECTOR(6 DOWNTO 0);
	SIGNAL CLK,RESET,SETA: STD_LOGIC;
BEGIN
	CLK<= KEY(1);
	RESET<=KEY(0); 
	LEDR<=SW;
	PROCESS(CLK,RESET,SETA)
		BEGIN
			IF RESET = '0' then
				HEX3 <= "1111111";
				HEX2 <= "1111111";
				HEX1<="1111111";
				HEX0<="1111111";
				SETA<='1';
			ELSIF CLK'EVENT AND CLK='1' then
				IF SETA ='1' then
					HEX3<= dis1;
					HEX2 <= dis2;
					SETA <='0';
				ELSE 
					HEX1 <= dis1;
					HEX0 <= dis2;
					SETA <= '1';
				END IF;
			END if;
	END PROCESS;
		
		with SW(3 downto 0)  select
       dis1<=
            "1000000" when "0000",
            "1111001" when "0001",
            "0100100" when "0010",
            "0110000" when "0011",
            "0011001" when "0100",
            "0010010" when "0101",
            "0000010" when "0110",
            "1111000" when "0111",
            "0000000" when "1000",
            "0010000" when "1001",
            "0001000" when "1010",
            "0000011" when "1011",
            "1000110" when "1100",
            "0100001" when "1101",
            "0000110" when "1110",
            "0001110" when "1111";
				
		with SW(7 DOWNTO 4) select
       dis2<=
            "1000000" when "0000",
            "1111001" when "0001",
            "0100100" when "0010",
            "0110000" when "0011",
            "0011001" when "0100",
            "0010010" when "0101",
            "0000010" when "0110",
            "1111000" when "0111",
            "0000000" when "1000",
            "0010000" when "1001",
            "0001000" when "1010",
            "0000011" when "1011",
            "1000110" when "1100",
            "0100001" when "1101",
            "0000110" when "1110",
            "0001110" when "1111";
				
	
END structure;	
	
	
	
	