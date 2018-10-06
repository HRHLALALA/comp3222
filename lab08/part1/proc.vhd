LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_signed.all;
use ieee.numeric_std.all;
ENTITY proc IS
PORT ( 	DIN : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
			Resetn, Clock, Run : IN STD_LOGIC;
			Done : BUFFER STD_LOGIC;
			BusWires : BUFFER STD_LOGIC_VECTOR(8 DOWNTO 0));
END proc;

ARCHITECTURE Behavior OF proc IS
	COMPONENT dec3to8
		PORT ( W : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
				En : IN STD_LOGIC;
				Y 	: OUT STD_LOGIC_VECTOR(0 TO 7));
	END COMPONENT;
	
	COMPONENT regn IS
	GENERIC (n : INTEGER := 9);
		PORT ( 		R : IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
			Rin, Clock : IN STD_LOGIC;
						Q : BUFFER STD_LOGIC_VECTOR(n-1 DOWNTO 0));
	END COMPONENT;
	
	TYPE State_type IS (T0, T1, T2, T3);
	SIGNAL Tstep_Q, Tstep_D: State_type;
	SIGNAL IR: STD_LOGIC_VECTOR(1 TO 9);
	SIGNAL I: STD_LOGIC_VECTOR(1 TO 3);
	SIGNAL Rin,Rout,Xreg,Yreg:STD_LOGIC_VECTOR(0 to 7);
	SIGNAL R0,R1,R2,R3,R4,R5,R6,R7,A:STD_LOGIC_VECTOR(8 DOWNTO 0);
	SIGNAL G,SUM:STD_LOGIC_VECTOR(8 DOWNTO 0);
	SIGNAL HIGH,DINout,Ain,Gout,Gin,AddSub,IRin: STD_LOGIC;
	SIGNAL sel: std_LOGIC_VECTOR(1 to 10);
BEGIN
	High <= '1';
	start: regn PORT MAP(DIN,IRin,CLOCK,IR);
	I <= IR(1 TO 3);
	decX: dec3to8 PORT MAP (IR(4 TO 6), High, Xreg);
	decY: dec3to8 PORT MAP (IR(7 TO 9), High, Yreg);
	statetable: PROCESS (Tstep_Q, Run, Done)
	BEGIN
		CASE Tstep_Q IS
			WHEN T0 => 
				IF(Run = '0') THEN Tstep_D <= T0;
				ELSE Tstep_D <= T1;
				END IF; -- data is loaded into IR in this time step
			WHEN T1 =>
				IF(Done ='1') THEN Tstep_D <= T0;
				ELSE Tstep_D <= T2;
				END IF;
			WHEN T2 =>
				Tstep_D <= T3;
			WHEN T3 => 
				IF (Done = '1') THEN Tstep_D <= T0;
				ELSE Tstep_D <= T3;
				END IF;
		END CASE;
	END PROCESS;
	
	controlsignals: PROCESS (Tstep_Q, I, Xreg, Yreg)
	BEGIN
		Done <= '0';
		DINout <='0';
		IRin <= '0';
		Ain <= '0';
		Gin <= '0';
		Gout <='0';
		AddSub <= '0';
		Rin <= (Others=>'0');
		Rout <= (Others => '0');
		CASE Tstep_Q IS
			WHEN T0 => -- store DIN in IR as long as Tstep_Q = 0
				IRin <= '1';
			WHEN T1 => -- define signals in time step T1
				CASE I IS
					WHEN "000" => ---mv
						Rin <= Xreg;
						Rout <= Yreg;
						Done <= '1';
					WHEN "001" => ---mvi
						Rin <= Xreg;
						DINout <='1';
						Done <= '1';
					WHEN "010" => ---add
						Ain <='1';
						Rout <= Xreg;
					WHEN "011" => ---subs
						Ain <= '1';
						Rout <= Xreg;
					WHEN OTHERS => 
				END CASE;
			WHEN T2 => -- define signals in time step T2
				CASE I IS
					WHEN "010" => ---add
						Rout <= Yreg;
						AddSub <= '0';
						Gin <= '1';
					WHEN "011" => ---subs
						Rout <= Yreg;
						AddSub <= '1';
						Gin <= '1';
					WHEN OTHERS => 
				END CASE;
			WHEN T3 => -- define signals in time step T3
				CASE I IS
					WHEN "010" => ---add
						Rin <= Xreg;
						Done <= '1';
						Gout <= '1';
					WHEN "011" => ---subs
						Rin <= Xreg;
						Done <= '1';
						Gout <= '1';
					WHEN OTHERS => 
				END CASE;
		END CASE;
	END PROCESS;
	
	fsmflipflops: PROCESS (Clock, Resetn, Tstep_D)
	BEGIN
		IF Resetn ='1' Then
			IF Clock'event and Clock = '1' THEN
				Tstep_Q <= Tstep_D;
			END IF;
		ELSE
			Tstep_Q <= T0;
		END IF;
	END PROCESS;
	
	reg_0: regn PORT MAP (BusWires, Rin(0), Clock, R0);
	reg_1: regn PORT MAP (BusWires, Rin(1), Clock, R1);
	reg_2: regn PORT MAP (BusWires, Rin(2), Clock, R2);
	reg_3: regn PORT MAP (BusWires, Rin(3), Clock, R3);
	reg_4: regn PORT MAP (BusWires, Rin(4), Clock, R4);
	reg_5: regn PORT MAP (BusWires, Rin(5), Clock, R5);
	reg_6: regn PORT MAP (BusWires, Rin(6), Clock, R6);
	reg_7: regn PORT MAP (BusWires, Rin(7), Clock, R7);
	reg_A: regn PORT MAP (BusWires, Ain, Clock, A);
	add_sub: 
		with AddSub select
		 sum <= A + BusWires WHEN '0',
					A - BusWires WHEN others;
	reg_G: regn PORT MAP (sum,Gin,Clock,G);
	sel <= Rout & Gout & DINout;
	with sel select
		BusWires <= R0 when "1000000000",
						R1 when "0100000000",
						R2 when "0010000000",
						R3 when "0001000000",
						R4 when "0000100000",
						R5 when "0000010000",
						R6 when "0000001000",
						R7 when "0000000100",
						G	when "0000000010",
						DIN when OTHERS;
	
	---instantiate other registers and the adder/subtracter unit
	---define the bus
END Behavior;