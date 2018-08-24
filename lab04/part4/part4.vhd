LIBRARY ieee;
USE ieee.std_logic_1164.all;
LIBRARY N_master_slave;
LIBRARY latch;
ENTITY part4 IS
	PORT(D,Clock: 	IN STD_LOGIC;
			Qa,Qb,Qc: OUT STD_LOGIC);
END ENTITY;
			
ARCHITECTURE structure OF part4 IS
	COMPONENT latch
		PORT ( D, CLK : IN STD_LOGIC ;
				Q : OUT STD_LOGIC) ;
	END COMPONENT ;
	COMPONENT N_master_slave 
		PORT ( D, CLK : IN STD_LOGIC ;
				Q : OUT STD_LOGIC) ;	
	END COMPONENT;
	
BEGIN 
	STAGE0: latch PORT MAP(D,CLOck,Qa);
	STAGE1: N_master_slave PORT MAP(D,Clock,Qb);
	STAGE2: N_master_slave PORT MAP(D,NOT Clock,Qc);
END structure;