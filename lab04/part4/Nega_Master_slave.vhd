LIBRARY ieee;
USE ieee.std_logic_1164.all;
LIBRARY D_latch;


ENTITY N_master_slave IS
	PORT ( D, CLK : IN STD_LOGIC ;
				Q : OUT STD_LOGIC) ;
END N_master_slave ;

ARCHITECTURE structure OF N_master_slave IS
	COMPONENT D_latch
		PORT ( D, CLK : IN STD_LOGIC ;
				Q : OUT STD_LOGIC) ;
	END COMPONENT ;
	SIGNAL Qm: STD_LOGIC;
	
BEGIN
	stage0: D_latch PORT MAP(D,CLK,QM);
	stage1: D_latch PORT MAP(QM,NOT CLK,Q);
END STRucture;
