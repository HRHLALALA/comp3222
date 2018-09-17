LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY part2 IS
	PORT(	sw:	in std_logic_vector(1 downto 0);
			key:	in std_logic_vector(1 downto 0);
			ledr: out std_logic_vector(3 downto 0);
			ledg:	out std_logic_vector(4 downto 0));

END part2;

ARCHITECTURE Behavior OF part2 IS

TYPE State_type IS (A, B, C, D, E, F, G, H, I);
--Attribute to declare a specific encoding for the states
attribute syn_encoding : string;
attribute syn_encoding of State_type : type is "0000 0001 0010 0011 0100 0101 0110 0111 1000";
SIGNAL y_Q, Y_D : State_type; -- y_Q is present state, y_D is next state
SIGNAL w,Clock,CLEAR:std_logic;
BEGIN
	w <=sw(0);
	Clock<=key(0);
	clear<=sw(1);
	PROCESS (w, y_Q) -- state table
	BEGIN
	case y_Q IS
		WHEN A =>
			IF W='0' THEN
				y_D <= B;
			ELSE
				Y_D <= F;
			END IF;
		WHEN B =>
			IF w = '0' THEN 
				Y_D <= C;
			ELSE 
				Y_D <= F;
			END IF;
		WHEN C =>
			IF w = '0' THEN 
				Y_D <= D;
			ELSE 
				Y_D <= F;
			END IF;
		WHEN D =>
			IF w = '0' THEN 
				Y_D <= E;
			ELSE 
				Y_D <= F;
			END IF;
		WHEN E =>
			IF w = '0' THEN 
				Y_D <= E;
			ELSE 
				Y_D <= F;
			END IF;
		WHEN F =>
			IF w = '1' THEN 
				Y_D <= G;
			ELSE 
				Y_D <= B;
			END IF;
		WHEN G =>
			IF w = '1' THEN 
				Y_D <= H;
			ELSE 
				Y_D <= B;
			END IF;
		WHEN H =>
			IF w = '1' THEN 
				Y_D <= I;
			ELSE 
				Y_D <= B;
			END IF;
		WHEN I =>
			IF w = '1' THEN 
				Y_D <= I;
			ELSE 
				Y_D <= B;
			END IF;
	END CASE;
	END PROCESS; -- state table
PROCESS (Clock) -- state flip-flops
BEGIN
	if Clock'event and Clock = '1' then
		if clear = '0' then
			Y_Q <= A;
		else
			Y_Q <= Y_D;
		end if;
	end if;
		
END PROCESS;

PROCESS(Y_Q)
BEGIN
	IF Y_Q =E OR Y_Q = I THEN 
		ledg(0)<='1';
	ELSE
		ledg(0)<='0';
	END IF;
END PROCESS;
 with y_Q select
        LEDR <=
            "0000" when A,
            "0001" when B,
            "0010" when C,
            "0011" when D,
            "0100" when E,
            "0101" when F,
            "0110" when G,
            "0111" when H,
            "1000" when I;
				
END Behavior;