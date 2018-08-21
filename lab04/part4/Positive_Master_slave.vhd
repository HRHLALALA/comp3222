LIBRARY ieee;
USE ieee.std_logic_1164.all;
LIBRARY latch;


ENTITY N_master_slave IS
	PORT ( D, CLK : IN STD_LOGIC ;
				Q : OUT STD_LOGIC) ;
END N_master_slave ;

ARCHITECTURE structure OF N_master_slave IS
	COMPONENT latch
		PORT ( D, CLK : IN STD_LOGIC ;
				Q : OUT STD_LOGIC) ;
	END COMPONENT ;
	SIGNAL P3,P1,P2,P4: STD_LOGIC;
	
BEGIN
	stage0: N_master_slave PORT MAP(P4,CLK,P3)
	stage1: N_master_slave PORT MAP(P3,CLK,P1);
	stage3: N_master_slave PORT MAP()
END STRucture;
