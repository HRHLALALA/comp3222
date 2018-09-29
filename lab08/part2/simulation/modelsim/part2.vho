-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"

-- DATE "09/30/2018 02:25:58"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	part2 IS
    PORT (
	KEY : IN std_logic_vector(2 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0)
	);
END part2;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[1]	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[2]	=>  Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[3]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[4]	=>  Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[5]	=>  Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[6]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[7]	=>  Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[8]	=>  Location: PIN_R18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[9]	=>  Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- KEY[1]	=>  Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF part2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_KEY : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL \mem|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \processor|reg_G|Q[1]~13_combout\ : std_logic;
SIGNAL \processor|reg_G|Q[2]~15_combout\ : std_logic;
SIGNAL \processor|reg_G|Q[3]~17_combout\ : std_logic;
SIGNAL \processor|reg_G|Q[4]~19_combout\ : std_logic;
SIGNAL \processor|Selector2~2_combout\ : std_logic;
SIGNAL \processor|Selector3~2_combout\ : std_logic;
SIGNAL \processor|Selector21~4_combout\ : std_logic;
SIGNAL \processor|Selector19~0_combout\ : std_logic;
SIGNAL \processor|Mux27~0_combout\ : std_logic;
SIGNAL \processor|Add0~8_combout\ : std_logic;
SIGNAL \processor|reg_6|Q[0]~feeder_combout\ : std_logic;
SIGNAL \processor|reg_A|Q[0]~feeder_combout\ : std_logic;
SIGNAL \processor|reg_0|Q[1]~feeder_combout\ : std_logic;
SIGNAL \processor|reg_A|Q[2]~feeder_combout\ : std_logic;
SIGNAL \processor|reg_1|Q[3]~feeder_combout\ : std_logic;
SIGNAL \processor|reg_1|Q[4]~feeder_combout\ : std_logic;
SIGNAL \processor|reg_5|Q[4]~feeder_combout\ : std_logic;
SIGNAL \processor|reg_2|Q[4]~feeder_combout\ : std_logic;
SIGNAL \processor|reg_A|Q[5]~feeder_combout\ : std_logic;
SIGNAL \processor|reg_0|Q[5]~feeder_combout\ : std_logic;
SIGNAL \processor|reg_3|Q[5]~feeder_combout\ : std_logic;
SIGNAL \processor|reg_3|Q[6]~feeder_combout\ : std_logic;
SIGNAL \processor|reg_3|Q[8]~feeder_combout\ : std_logic;
SIGNAL \processor|reg_1|Q[8]~feeder_combout\ : std_logic;
SIGNAL \count[0]~5_combout\ : std_logic;
SIGNAL \count[0]~6\ : std_logic;
SIGNAL \count[1]~7_combout\ : std_logic;
SIGNAL \count[1]~8\ : std_logic;
SIGNAL \count[2]~9_combout\ : std_logic;
SIGNAL \count[2]~10\ : std_logic;
SIGNAL \count[3]~11_combout\ : std_logic;
SIGNAL \count[3]~12\ : std_logic;
SIGNAL \count[4]~13_combout\ : std_logic;
SIGNAL \processor|Selector1~0_combout\ : std_logic;
SIGNAL \processor|Tstep_Q.T3~regout\ : std_logic;
SIGNAL \processor|Selector0~0_combout\ : std_logic;
SIGNAL \processor|Tstep_Q.T0~regout\ : std_logic;
SIGNAL \processor|DINout~0_combout\ : std_logic;
SIGNAL \processor|Selector14~1_combout\ : std_logic;
SIGNAL \processor|Tstep_D.T2~0_combout\ : std_logic;
SIGNAL \processor|Tstep_Q.T2~regout\ : std_logic;
SIGNAL \processor|Mux37~0_combout\ : std_logic;
SIGNAL \processor|Selector14~0_combout\ : std_logic;
SIGNAL \processor|Selector14~2_combout\ : std_logic;
SIGNAL \processor|Selector17~0_combout\ : std_logic;
SIGNAL \processor|Selector15~0_combout\ : std_logic;
SIGNAL \processor|Equal5~0_combout\ : std_logic;
SIGNAL \processor|Selector12~0_combout\ : std_logic;
SIGNAL \processor|Selector10~2_combout\ : std_logic;
SIGNAL \processor|Selector10~1_combout\ : std_logic;
SIGNAL \processor|Selector12~1_combout\ : std_logic;
SIGNAL \processor|Selector5~2_combout\ : std_logic;
SIGNAL \processor|Selector17~1_combout\ : std_logic;
SIGNAL \processor|Equal0~0_combout\ : std_logic;
SIGNAL \processor|Selector10~0_combout\ : std_logic;
SIGNAL \processor|Selector11~3_combout\ : std_logic;
SIGNAL \processor|Equal0~1_combout\ : std_logic;
SIGNAL \processor|Equal0~2_combout\ : std_logic;
SIGNAL \processor|Equal5~1_combout\ : std_logic;
SIGNAL \processor|Selector7~2_combout\ : std_logic;
SIGNAL \processor|Selector4~2_combout\ : std_logic;
SIGNAL \processor|Selector16~0_combout\ : std_logic;
SIGNAL \processor|Equal6~0_combout\ : std_logic;
SIGNAL \processor|Equal6~1_combout\ : std_logic;
SIGNAL \processor|Selector27~1_combout\ : std_logic;
SIGNAL \processor|Selector11~4_combout\ : std_logic;
SIGNAL \processor|Equal2~0_combout\ : std_logic;
SIGNAL \processor|Selector11~2_combout\ : std_logic;
SIGNAL \processor|Selector13~0_combout\ : std_logic;
SIGNAL \processor|Equal2~1_combout\ : std_logic;
SIGNAL \processor|Equal2~2_combout\ : std_logic;
SIGNAL \processor|Selector5~3_combout\ : std_logic;
SIGNAL \processor|Equal3~0_combout\ : std_logic;
SIGNAL \processor|Equal3~1_combout\ : std_logic;
SIGNAL \processor|Selector27~2_combout\ : std_logic;
SIGNAL \processor|reg_1|Q[0]~feeder_combout\ : std_logic;
SIGNAL \processor|Selector3~3_combout\ : std_logic;
SIGNAL \processor|Selector9~2_combout\ : std_logic;
SIGNAL \processor|Equal0~5_combout\ : std_logic;
SIGNAL \processor|Equal7~1_combout\ : std_logic;
SIGNAL \processor|Selector27~4_combout\ : std_logic;
SIGNAL \processor|Selector6~2_combout\ : std_logic;
SIGNAL \processor|Selector10~3_combout\ : std_logic;
SIGNAL \processor|Equal0~3_combout\ : std_logic;
SIGNAL \processor|Equal0~4_combout\ : std_logic;
SIGNAL \processor|Selector2~3_combout\ : std_logic;
SIGNAL \processor|Gout~0_combout\ : std_logic;
SIGNAL \processor|WideNor0~3_combout\ : std_logic;
SIGNAL \processor|Equal7~0_combout\ : std_logic;
SIGNAL \processor|Equal1~2_combout\ : std_logic;
SIGNAL \processor|Equal1~3_combout\ : std_logic;
SIGNAL \processor|WideNor0~0_combout\ : std_logic;
SIGNAL \processor|WideNor0~1_combout\ : std_logic;
SIGNAL \processor|WideNor0~2_combout\ : std_logic;
SIGNAL \processor|Selector27~0_combout\ : std_logic;
SIGNAL \processor|Add0~0_combout\ : std_logic;
SIGNAL \processor|Add0~1_combout\ : std_logic;
SIGNAL \processor|reg_G|Q[0]~10_cout\ : std_logic;
SIGNAL \processor|reg_G|Q[0]~11_combout\ : std_logic;
SIGNAL \processor|Gin~0_combout\ : std_logic;
SIGNAL \processor|Selector27~3_combout\ : std_logic;
SIGNAL \processor|Selector27~5_combout\ : std_logic;
SIGNAL \processor|Selector27~6_combout\ : std_logic;
SIGNAL \processor|Selector26~2_combout\ : std_logic;
SIGNAL \processor|Selector8~2_combout\ : std_logic;
SIGNAL \processor|Selector26~1_combout\ : std_logic;
SIGNAL \processor|Selector26~0_combout\ : std_logic;
SIGNAL \processor|Selector26~3_combout\ : std_logic;
SIGNAL \processor|Selector26~4_combout\ : std_logic;
SIGNAL \processor|Selector26~5_combout\ : std_logic;
SIGNAL \processor|Selector26~6_combout\ : std_logic;
SIGNAL \processor|Selector25~1_combout\ : std_logic;
SIGNAL \processor|Selector25~2_combout\ : std_logic;
SIGNAL \processor|Selector25~4_combout\ : std_logic;
SIGNAL \processor|Selector25~3_combout\ : std_logic;
SIGNAL \processor|Selector25~5_combout\ : std_logic;
SIGNAL \processor|Selector25~0_combout\ : std_logic;
SIGNAL \processor|Selector25~6_combout\ : std_logic;
SIGNAL \processor|Selector24~2_combout\ : std_logic;
SIGNAL \processor|Selector24~1_combout\ : std_logic;
SIGNAL \processor|Selector24~0_combout\ : std_logic;
SIGNAL \processor|Selector24~3_combout\ : std_logic;
SIGNAL \processor|reg_0|Q[3]~feeder_combout\ : std_logic;
SIGNAL \processor|Selector24~4_combout\ : std_logic;
SIGNAL \processor|Selector24~5_combout\ : std_logic;
SIGNAL \processor|Selector24~6_combout\ : std_logic;
SIGNAL \processor|Selector23~1_combout\ : std_logic;
SIGNAL \processor|Selector23~2_combout\ : std_logic;
SIGNAL \processor|Selector23~0_combout\ : std_logic;
SIGNAL \processor|Selector23~3_combout\ : std_logic;
SIGNAL \processor|Selector23~4_combout\ : std_logic;
SIGNAL \processor|Selector23~5_combout\ : std_logic;
SIGNAL \processor|Selector23~6_combout\ : std_logic;
SIGNAL \processor|Selector22~1_combout\ : std_logic;
SIGNAL \processor|reg_2|Q[5]~feeder_combout\ : std_logic;
SIGNAL \processor|Selector4~3_combout\ : std_logic;
SIGNAL \processor|Selector22~2_combout\ : std_logic;
SIGNAL \processor|Equal4~0_combout\ : std_logic;
SIGNAL \processor|Equal4~1_combout\ : std_logic;
SIGNAL \processor|Add0~6_combout\ : std_logic;
SIGNAL \processor|Add0~5_combout\ : std_logic;
SIGNAL \processor|Add0~4_combout\ : std_logic;
SIGNAL \processor|Add0~3_combout\ : std_logic;
SIGNAL \processor|Add0~2_combout\ : std_logic;
SIGNAL \processor|reg_G|Q[0]~12\ : std_logic;
SIGNAL \processor|reg_G|Q[1]~14\ : std_logic;
SIGNAL \processor|reg_G|Q[2]~16\ : std_logic;
SIGNAL \processor|reg_G|Q[3]~18\ : std_logic;
SIGNAL \processor|reg_G|Q[4]~20\ : std_logic;
SIGNAL \processor|reg_G|Q[5]~21_combout\ : std_logic;
SIGNAL \processor|Selector22~3_combout\ : std_logic;
SIGNAL \processor|reg_1|Q[5]~feeder_combout\ : std_logic;
SIGNAL \processor|Selector22~4_combout\ : std_logic;
SIGNAL \processor|Selector22~5_combout\ : std_logic;
SIGNAL \processor|Selector22~0_combout\ : std_logic;
SIGNAL \processor|Selector22~6_combout\ : std_logic;
SIGNAL \processor|Selector21~1_combout\ : std_logic;
SIGNAL \processor|Selector21~2_combout\ : std_logic;
SIGNAL \processor|Selector21~0_combout\ : std_logic;
SIGNAL \processor|Add0~7_combout\ : std_logic;
SIGNAL \processor|reg_G|Q[5]~22\ : std_logic;
SIGNAL \processor|reg_G|Q[6]~23_combout\ : std_logic;
SIGNAL \processor|Selector21~3_combout\ : std_logic;
SIGNAL \processor|Selector21~5_combout\ : std_logic;
SIGNAL \processor|Selector21~6_combout\ : std_logic;
SIGNAL \processor|reg_A|Q[7]~feeder_combout\ : std_logic;
SIGNAL \processor|Ain~0_combout\ : std_logic;
SIGNAL \processor|reg_G|Q[6]~24\ : std_logic;
SIGNAL \processor|reg_G|Q[7]~25_combout\ : std_logic;
SIGNAL \processor|Selector20~3_combout\ : std_logic;
SIGNAL \processor|reg_0|Q[7]~feeder_combout\ : std_logic;
SIGNAL \processor|Selector20~4_combout\ : std_logic;
SIGNAL \processor|Selector20~5_combout\ : std_logic;
SIGNAL \processor|Selector20~1_combout\ : std_logic;
SIGNAL \processor|Equal4~2_combout\ : std_logic;
SIGNAL \processor|Selector20~0_combout\ : std_logic;
SIGNAL \processor|Selector20~2_combout\ : std_logic;
SIGNAL \processor|WideNor0~4_combout\ : std_logic;
SIGNAL \processor|Selector20~6_combout\ : std_logic;
SIGNAL \processor|reg_2|Q[8]~feeder_combout\ : std_logic;
SIGNAL \processor|Selector19~1_combout\ : std_logic;
SIGNAL \processor|Selector19~2_combout\ : std_logic;
SIGNAL \processor|Selector19~4_combout\ : std_logic;
SIGNAL \processor|reg_A|Q[8]~feeder_combout\ : std_logic;
SIGNAL \processor|Add0~9_combout\ : std_logic;
SIGNAL \processor|reg_G|Q[7]~26\ : std_logic;
SIGNAL \processor|reg_G|Q[8]~27_combout\ : std_logic;
SIGNAL \processor|Selector19~3_combout\ : std_logic;
SIGNAL \processor|Selector19~5_combout\ : std_logic;
SIGNAL \processor|Selector19~6_combout\ : std_logic;
SIGNAL \processor|Tstep_Q.T1~0_combout\ : std_logic;
SIGNAL \processor|Tstep_Q.T1~regout\ : std_logic;
SIGNAL \processor|Selector18~0_combout\ : std_logic;
SIGNAL \KEY~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \processor|reg_A|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \processor|reg_3|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \processor|reg_5|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \processor|start|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \mem|altsyncram_component|auto_generated|q_a\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \processor|reg_2|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \processor|reg_4|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \processor|reg_7|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \processor|reg_1|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \processor|reg_6|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \processor|reg_0|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \processor|reg_G|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL count : std_logic_vector(4 DOWNTO 0);
SIGNAL \processor|ALT_INV_Tstep_Q.T0~regout\ : std_logic;
SIGNAL \processor|ALT_INV_Selector18~0_combout\ : std_logic;
SIGNAL \ALT_INV_KEY~combout\ : std_logic_vector(0 DOWNTO 0);

BEGIN

ww_KEY <= KEY;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\mem|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (count(4) & count(3) & count(2) & count(1) & count(0));

\mem|altsyncram_component|auto_generated|q_a\(0) <= \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\mem|altsyncram_component|auto_generated|q_a\(1) <= \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\mem|altsyncram_component|auto_generated|q_a\(2) <= \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\mem|altsyncram_component|auto_generated|q_a\(3) <= \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\mem|altsyncram_component|auto_generated|q_a\(4) <= \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\mem|altsyncram_component|auto_generated|q_a\(5) <= \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\mem|altsyncram_component|auto_generated|q_a\(6) <= \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\mem|altsyncram_component|auto_generated|q_a\(7) <= \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\mem|altsyncram_component|auto_generated|q_a\(8) <= \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\processor|ALT_INV_Tstep_Q.T0~regout\ <= NOT \processor|Tstep_Q.T0~regout\;
\processor|ALT_INV_Selector18~0_combout\ <= NOT \processor|Selector18~0_combout\;
\ALT_INV_KEY~combout\(0) <= NOT \KEY~combout\(0);

-- Location: LCFF_X47_Y6_N9
\processor|reg_G|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	datain => \processor|reg_G|Q[1]~13_combout\,
	ena => \processor|Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_G|Q\(1));

-- Location: LCFF_X47_Y6_N11
\processor|reg_G|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	datain => \processor|reg_G|Q[2]~15_combout\,
	ena => \processor|Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_G|Q\(2));

-- Location: LCFF_X47_Y6_N13
\processor|reg_G|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	datain => \processor|reg_G|Q[3]~17_combout\,
	ena => \processor|Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_G|Q\(3));

-- Location: LCFF_X47_Y6_N15
\processor|reg_G|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	datain => \processor|reg_G|Q[4]~19_combout\,
	ena => \processor|Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_G|Q\(4));

-- Location: LCCOMB_X47_Y6_N8
\processor|reg_G|Q[1]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|reg_G|Q[1]~13_combout\ = ((\processor|reg_A|Q\(1) $ (\processor|Add0~2_combout\ $ (!\processor|reg_G|Q[0]~12\)))) # (GND)
-- \processor|reg_G|Q[1]~14\ = CARRY((\processor|reg_A|Q\(1) & ((\processor|Add0~2_combout\) # (!\processor|reg_G|Q[0]~12\))) # (!\processor|reg_A|Q\(1) & (\processor|Add0~2_combout\ & !\processor|reg_G|Q[0]~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processor|reg_A|Q\(1),
	datab => \processor|Add0~2_combout\,
	datad => VCC,
	cin => \processor|reg_G|Q[0]~12\,
	combout => \processor|reg_G|Q[1]~13_combout\,
	cout => \processor|reg_G|Q[1]~14\);

-- Location: LCCOMB_X47_Y6_N10
\processor|reg_G|Q[2]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|reg_G|Q[2]~15_combout\ = (\processor|reg_A|Q\(2) & ((\processor|Add0~3_combout\ & (\processor|reg_G|Q[1]~14\ & VCC)) # (!\processor|Add0~3_combout\ & (!\processor|reg_G|Q[1]~14\)))) # (!\processor|reg_A|Q\(2) & ((\processor|Add0~3_combout\ & 
-- (!\processor|reg_G|Q[1]~14\)) # (!\processor|Add0~3_combout\ & ((\processor|reg_G|Q[1]~14\) # (GND)))))
-- \processor|reg_G|Q[2]~16\ = CARRY((\processor|reg_A|Q\(2) & (!\processor|Add0~3_combout\ & !\processor|reg_G|Q[1]~14\)) # (!\processor|reg_A|Q\(2) & ((!\processor|reg_G|Q[1]~14\) # (!\processor|Add0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processor|reg_A|Q\(2),
	datab => \processor|Add0~3_combout\,
	datad => VCC,
	cin => \processor|reg_G|Q[1]~14\,
	combout => \processor|reg_G|Q[2]~15_combout\,
	cout => \processor|reg_G|Q[2]~16\);

-- Location: LCCOMB_X47_Y6_N12
\processor|reg_G|Q[3]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|reg_G|Q[3]~17_combout\ = ((\processor|reg_A|Q\(3) $ (\processor|Add0~4_combout\ $ (!\processor|reg_G|Q[2]~16\)))) # (GND)
-- \processor|reg_G|Q[3]~18\ = CARRY((\processor|reg_A|Q\(3) & ((\processor|Add0~4_combout\) # (!\processor|reg_G|Q[2]~16\))) # (!\processor|reg_A|Q\(3) & (\processor|Add0~4_combout\ & !\processor|reg_G|Q[2]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processor|reg_A|Q\(3),
	datab => \processor|Add0~4_combout\,
	datad => VCC,
	cin => \processor|reg_G|Q[2]~16\,
	combout => \processor|reg_G|Q[3]~17_combout\,
	cout => \processor|reg_G|Q[3]~18\);

-- Location: LCCOMB_X47_Y6_N14
\processor|reg_G|Q[4]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|reg_G|Q[4]~19_combout\ = (\processor|reg_A|Q\(4) & ((\processor|Add0~5_combout\ & (\processor|reg_G|Q[3]~18\ & VCC)) # (!\processor|Add0~5_combout\ & (!\processor|reg_G|Q[3]~18\)))) # (!\processor|reg_A|Q\(4) & ((\processor|Add0~5_combout\ & 
-- (!\processor|reg_G|Q[3]~18\)) # (!\processor|Add0~5_combout\ & ((\processor|reg_G|Q[3]~18\) # (GND)))))
-- \processor|reg_G|Q[4]~20\ = CARRY((\processor|reg_A|Q\(4) & (!\processor|Add0~5_combout\ & !\processor|reg_G|Q[3]~18\)) # (!\processor|reg_A|Q\(4) & ((!\processor|reg_G|Q[3]~18\) # (!\processor|Add0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processor|reg_A|Q\(4),
	datab => \processor|Add0~5_combout\,
	datad => VCC,
	cin => \processor|reg_G|Q[3]~18\,
	combout => \processor|reg_G|Q[4]~19_combout\,
	cout => \processor|reg_G|Q[4]~20\);

-- Location: LCCOMB_X43_Y7_N20
\processor|Selector2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector2~2_combout\ = (!\processor|start|Q\(4) & !\processor|start|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \processor|start|Q\(4),
	datad => \processor|start|Q\(3),
	combout => \processor|Selector2~2_combout\);

-- Location: LCCOMB_X43_Y7_N22
\processor|Selector3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector3~2_combout\ = (!\processor|start|Q\(4) & \processor|start|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \processor|start|Q\(4),
	datad => \processor|start|Q\(3),
	combout => \processor|Selector3~2_combout\);

-- Location: LCFF_X47_Y9_N13
\processor|reg_6|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	datain => \processor|reg_6|Q[0]~feeder_combout\,
	ena => \processor|Selector8~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_6|Q\(0));

-- Location: LCFF_X46_Y8_N31
\processor|reg_2|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	datain => \processor|Selector27~6_combout\,
	ena => \processor|Selector4~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_2|Q\(0));

-- Location: LCFF_X47_Y7_N21
\processor|reg_5|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	sdata => \processor|Selector26~6_combout\,
	sload => VCC,
	ena => \processor|Selector7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_5|Q\(1));

-- Location: LCFF_X46_Y9_N29
\processor|reg_2|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	sdata => \processor|Selector26~6_combout\,
	sload => VCC,
	ena => \processor|Selector4~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_2|Q\(1));

-- Location: LCFF_X49_Y6_N21
\processor|reg_0|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	datain => \processor|reg_0|Q[1]~feeder_combout\,
	ena => \processor|Selector2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_0|Q\(1));

-- Location: LCFF_X46_Y7_N11
\processor|reg_6|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	sdata => \processor|Selector25~6_combout\,
	sload => VCC,
	ena => \processor|Selector8~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_6|Q\(2));

-- Location: LCFF_X46_Y9_N15
\processor|reg_2|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	sdata => \processor|Selector25~6_combout\,
	sload => VCC,
	ena => \processor|Selector4~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_2|Q\(2));

-- Location: LCFF_X44_Y6_N13
\processor|reg_0|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	sdata => \processor|Selector25~6_combout\,
	sload => VCC,
	ena => \processor|Selector2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_0|Q\(2));

-- Location: LCFF_X46_Y9_N1
\processor|reg_2|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	sdata => \processor|Selector24~6_combout\,
	sload => VCC,
	ena => \processor|Selector4~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_2|Q\(3));

-- Location: LCFF_X45_Y9_N7
\processor|reg_1|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	datain => \processor|reg_1|Q[3]~feeder_combout\,
	ena => \processor|Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_1|Q\(3));

-- Location: LCFF_X46_Y9_N27
\processor|reg_5|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	datain => \processor|reg_5|Q[4]~feeder_combout\,
	ena => \processor|Selector7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_5|Q\(4));

-- Location: LCFF_X46_Y9_N13
\processor|reg_2|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	datain => \processor|reg_2|Q[4]~feeder_combout\,
	ena => \processor|Selector4~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_2|Q\(4));

-- Location: LCFF_X45_Y9_N25
\processor|reg_1|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	datain => \processor|reg_1|Q[4]~feeder_combout\,
	ena => \processor|Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_1|Q\(4));

-- Location: LCFF_X49_Y7_N5
\processor|reg_3|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	datain => \processor|reg_3|Q[5]~feeder_combout\,
	ena => \processor|Selector5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_3|Q\(5));

-- Location: LCFF_X49_Y7_N27
\processor|reg_0|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	datain => \processor|reg_0|Q[5]~feeder_combout\,
	ena => \processor|Selector2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_0|Q\(5));

-- Location: LCFF_X48_Y6_N11
\processor|reg_4|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	datain => \processor|Selector22~6_combout\,
	ena => \processor|Selector6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_4|Q\(5));

-- Location: LCFF_X47_Y7_N19
\processor|reg_6|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	sdata => \processor|Selector21~6_combout\,
	sload => VCC,
	ena => \processor|Selector8~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_6|Q\(6));

-- Location: LCFF_X46_Y6_N17
\processor|reg_3|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	datain => \processor|reg_3|Q[6]~feeder_combout\,
	ena => \processor|Selector5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_3|Q\(6));

-- Location: LCFF_X45_Y9_N27
\processor|reg_0|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	sdata => \processor|Selector21~6_combout\,
	sload => VCC,
	ena => \processor|Selector2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_0|Q\(6));

-- Location: LCFF_X45_Y9_N21
\processor|reg_1|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	sdata => \processor|Selector21~6_combout\,
	sload => VCC,
	ena => \processor|Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_1|Q\(6));

-- Location: LCCOMB_X46_Y7_N8
\processor|Selector21~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector21~4_combout\ = (\processor|reg_0|Q\(6) & ((\processor|Equal0~4_combout\) # ((\processor|reg_1|Q\(6) & \processor|Equal1~3_combout\)))) # (!\processor|reg_0|Q\(6) & (((\processor|reg_1|Q\(6) & \processor|Equal1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|reg_0|Q\(6),
	datab => \processor|Equal0~4_combout\,
	datac => \processor|reg_1|Q\(6),
	datad => \processor|Equal1~3_combout\,
	combout => \processor|Selector21~4_combout\);

-- Location: LCFF_X49_Y9_N19
\processor|reg_2|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	sdata => \processor|Selector20~6_combout\,
	sload => VCC,
	ena => \processor|Selector4~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_2|Q\(7));

-- Location: LCFF_X49_Y9_N13
\processor|reg_1|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	sdata => \processor|Selector20~6_combout\,
	sload => VCC,
	ena => \processor|Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_1|Q\(7));

-- Location: LCFF_X48_Y6_N31
\processor|reg_4|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	datain => \processor|Selector20~6_combout\,
	ena => \processor|Selector6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_4|Q\(7));

-- Location: LCFF_X47_Y7_N17
\processor|reg_6|Q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	sdata => \processor|Selector19~6_combout\,
	sload => VCC,
	ena => \processor|Selector8~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_6|Q\(8));

-- Location: LCCOMB_X47_Y7_N16
\processor|Selector19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector19~0_combout\ = (\processor|Equal6~0_combout\ & (!\processor|Selector14~2_combout\ & (\processor|reg_6|Q\(8) & \processor|Equal4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|Equal6~0_combout\,
	datab => \processor|Selector14~2_combout\,
	datac => \processor|reg_6|Q\(8),
	datad => \processor|Equal4~2_combout\,
	combout => \processor|Selector19~0_combout\);

-- Location: LCFF_X49_Y7_N17
\processor|reg_3|Q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	datain => \processor|reg_3|Q[8]~feeder_combout\,
	ena => \processor|Selector5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_3|Q\(8));

-- Location: LCFF_X49_Y9_N5
\processor|reg_1|Q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	datain => \processor|reg_1|Q[8]~feeder_combout\,
	ena => \processor|Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_1|Q\(8));

-- Location: LCFF_X48_Y6_N29
\processor|reg_4|Q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	datain => \processor|Selector19~6_combout\,
	ena => \processor|Selector6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_4|Q\(8));

-- Location: LCFF_X47_Y9_N17
\processor|reg_A|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	datain => \processor|reg_A|Q[0]~feeder_combout\,
	ena => \processor|Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_A|Q\(0));

-- Location: LCCOMB_X44_Y6_N4
\processor|Mux27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Mux27~0_combout\ = (!\processor|start|Q\(8) & (\processor|start|Q\(7) & \processor|start|Q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processor|start|Q\(8),
	datac => \processor|start|Q\(7),
	datad => \processor|start|Q\(6),
	combout => \processor|Mux27~0_combout\);

-- Location: LCFF_X46_Y6_N29
\processor|reg_A|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	datain => \processor|Selector26~6_combout\,
	ena => \processor|Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_A|Q\(1));

-- Location: LCFF_X49_Y6_N23
\processor|reg_A|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	datain => \processor|reg_A|Q[2]~feeder_combout\,
	ena => \processor|Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_A|Q\(2));

-- Location: LCFF_X47_Y9_N27
\processor|reg_A|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	sdata => \processor|Selector24~6_combout\,
	sload => VCC,
	ena => \processor|Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_A|Q\(3));

-- Location: LCFF_X46_Y6_N5
\processor|reg_A|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	datain => \processor|Selector23~6_combout\,
	ena => \processor|Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_A|Q\(4));

-- Location: LCFF_X49_Y6_N13
\processor|reg_A|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	datain => \processor|reg_A|Q[5]~feeder_combout\,
	ena => \processor|Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_A|Q\(5));

-- Location: LCFF_X46_Y6_N3
\processor|reg_A|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	datain => \processor|Selector21~6_combout\,
	ena => \processor|Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_A|Q\(6));

-- Location: LCCOMB_X48_Y6_N4
\processor|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Add0~8_combout\ = \processor|Selector20~6_combout\ $ (((\processor|Tstep_Q.T2~regout\ & (\processor|Mux37~0_combout\ & \processor|start|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|Tstep_Q.T2~regout\,
	datab => \processor|Mux37~0_combout\,
	datac => \processor|start|Q\(6),
	datad => \processor|Selector20~6_combout\,
	combout => \processor|Add0~8_combout\);

-- Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY(2),
	combout => \KEY~combout\(2));

-- Location: LCCOMB_X47_Y9_N12
\processor|reg_6|Q[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|reg_6|Q[0]~feeder_combout\ = \processor|Selector27~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \processor|Selector27~6_combout\,
	combout => \processor|reg_6|Q[0]~feeder_combout\);

-- Location: LCCOMB_X47_Y9_N16
\processor|reg_A|Q[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|reg_A|Q[0]~feeder_combout\ = \processor|Selector27~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \processor|Selector27~6_combout\,
	combout => \processor|reg_A|Q[0]~feeder_combout\);

-- Location: LCCOMB_X49_Y6_N20
\processor|reg_0|Q[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|reg_0|Q[1]~feeder_combout\ = \processor|Selector26~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \processor|Selector26~6_combout\,
	combout => \processor|reg_0|Q[1]~feeder_combout\);

-- Location: LCCOMB_X49_Y6_N22
\processor|reg_A|Q[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|reg_A|Q[2]~feeder_combout\ = \processor|Selector25~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \processor|Selector25~6_combout\,
	combout => \processor|reg_A|Q[2]~feeder_combout\);

-- Location: LCCOMB_X45_Y9_N6
\processor|reg_1|Q[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|reg_1|Q[3]~feeder_combout\ = \processor|Selector24~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \processor|Selector24~6_combout\,
	combout => \processor|reg_1|Q[3]~feeder_combout\);

-- Location: LCCOMB_X45_Y9_N24
\processor|reg_1|Q[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|reg_1|Q[4]~feeder_combout\ = \processor|Selector23~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \processor|Selector23~6_combout\,
	combout => \processor|reg_1|Q[4]~feeder_combout\);

-- Location: LCCOMB_X46_Y9_N26
\processor|reg_5|Q[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|reg_5|Q[4]~feeder_combout\ = \processor|Selector23~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \processor|Selector23~6_combout\,
	combout => \processor|reg_5|Q[4]~feeder_combout\);

-- Location: LCCOMB_X46_Y9_N12
\processor|reg_2|Q[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|reg_2|Q[4]~feeder_combout\ = \processor|Selector23~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \processor|Selector23~6_combout\,
	combout => \processor|reg_2|Q[4]~feeder_combout\);

-- Location: LCCOMB_X49_Y6_N12
\processor|reg_A|Q[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|reg_A|Q[5]~feeder_combout\ = \processor|Selector22~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \processor|Selector22~6_combout\,
	combout => \processor|reg_A|Q[5]~feeder_combout\);

-- Location: LCCOMB_X49_Y7_N26
\processor|reg_0|Q[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|reg_0|Q[5]~feeder_combout\ = \processor|Selector22~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \processor|Selector22~6_combout\,
	combout => \processor|reg_0|Q[5]~feeder_combout\);

-- Location: LCCOMB_X49_Y7_N4
\processor|reg_3|Q[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|reg_3|Q[5]~feeder_combout\ = \processor|Selector22~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \processor|Selector22~6_combout\,
	combout => \processor|reg_3|Q[5]~feeder_combout\);

-- Location: LCCOMB_X46_Y6_N16
\processor|reg_3|Q[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|reg_3|Q[6]~feeder_combout\ = \processor|Selector21~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \processor|Selector21~6_combout\,
	combout => \processor|reg_3|Q[6]~feeder_combout\);

-- Location: LCCOMB_X49_Y7_N16
\processor|reg_3|Q[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|reg_3|Q[8]~feeder_combout\ = \processor|Selector19~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \processor|Selector19~6_combout\,
	combout => \processor|reg_3|Q[8]~feeder_combout\);

-- Location: LCCOMB_X49_Y9_N4
\processor|reg_1|Q[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|reg_1|Q[8]~feeder_combout\ = \processor|Selector19~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \processor|Selector19~6_combout\,
	combout => \processor|reg_1|Q[8]~feeder_combout\);

-- Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY(1),
	combout => \KEY~combout\(1));

-- Location: LCCOMB_X49_Y10_N16
\count[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[0]~5_combout\ = count(0) $ (VCC)
-- \count[0]~6\ = CARRY(count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datad => VCC,
	combout => \count[0]~5_combout\,
	cout => \count[0]~6\);

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY(0),
	combout => \KEY~combout\(0));

-- Location: LCFF_X49_Y10_N17
\count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(1),
	datain => \count[0]~5_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(0));

-- Location: LCCOMB_X49_Y10_N18
\count[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[1]~7_combout\ = (count(1) & (!\count[0]~6\)) # (!count(1) & ((\count[0]~6\) # (GND)))
-- \count[1]~8\ = CARRY((!\count[0]~6\) # (!count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(1),
	datad => VCC,
	cin => \count[0]~6\,
	combout => \count[1]~7_combout\,
	cout => \count[1]~8\);

-- Location: LCFF_X49_Y10_N19
\count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(1),
	datain => \count[1]~7_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(1));

-- Location: LCCOMB_X49_Y10_N20
\count[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[2]~9_combout\ = (count(2) & (\count[1]~8\ $ (GND))) # (!count(2) & (!\count[1]~8\ & VCC))
-- \count[2]~10\ = CARRY((count(2) & !\count[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datad => VCC,
	cin => \count[1]~8\,
	combout => \count[2]~9_combout\,
	cout => \count[2]~10\);

-- Location: LCFF_X49_Y10_N21
\count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(1),
	datain => \count[2]~9_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(2));

-- Location: LCCOMB_X49_Y10_N22
\count[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[3]~11_combout\ = (count(3) & (!\count[2]~10\)) # (!count(3) & ((\count[2]~10\) # (GND)))
-- \count[3]~12\ = CARRY((!\count[2]~10\) # (!count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(3),
	datad => VCC,
	cin => \count[2]~10\,
	combout => \count[3]~11_combout\,
	cout => \count[3]~12\);

-- Location: LCFF_X49_Y10_N23
\count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(1),
	datain => \count[3]~11_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(3));

-- Location: LCCOMB_X49_Y10_N24
\count[4]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[4]~13_combout\ = count(4) $ (!\count[3]~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(4),
	cin => \count[3]~12\,
	combout => \count[4]~13_combout\);

-- Location: LCFF_X49_Y10_N25
\count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(1),
	datain => \count[4]~13_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(4));

-- Location: M4K_X41_Y6
\mem|altsyncram_component|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"1789C000000000000000000000000000000000000000002BB156EA50863D65097120A640",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "inst_mem.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memory:mem|altsyncram:altsyncram_component|altsyncram_o871:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 9,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 5,
	port_b_data_width => 9,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \KEY~combout\(1),
	portaaddr => \mem|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCFF_X44_Y7_N13
\processor|start|Q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	sdata => \mem|altsyncram_component|auto_generated|q_a\(8),
	sload => VCC,
	ena => \processor|ALT_INV_Tstep_Q.T0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|start|Q\(8));

-- Location: LCFF_X44_Y7_N27
\processor|start|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	sdata => \mem|altsyncram_component|auto_generated|q_a\(7),
	sload => VCC,
	ena => \processor|ALT_INV_Tstep_Q.T0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|start|Q\(7));

-- Location: LCCOMB_X43_Y7_N28
\processor|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector1~0_combout\ = (\processor|Tstep_Q.T2~regout\) # ((\processor|Tstep_Q.T3~regout\ & ((\processor|start|Q\(8)) # (!\processor|start|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|Tstep_Q.T2~regout\,
	datab => \processor|start|Q\(8),
	datac => \processor|Tstep_Q.T3~regout\,
	datad => \processor|start|Q\(7),
	combout => \processor|Selector1~0_combout\);

-- Location: LCFF_X43_Y7_N29
\processor|Tstep_Q.T3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	datain => \processor|Selector1~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|Tstep_Q.T3~regout\);

-- Location: LCCOMB_X43_Y7_N30
\processor|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector0~0_combout\ = (\processor|start|Q\(8)) # ((\processor|start|Q\(7) & ((!\processor|Tstep_Q.T3~regout\))) # (!\processor|start|Q\(7) & (!\processor|Tstep_Q.T1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|Tstep_Q.T1~regout\,
	datab => \processor|start|Q\(8),
	datac => \processor|start|Q\(7),
	datad => \processor|Tstep_Q.T3~regout\,
	combout => \processor|Selector0~0_combout\);

-- Location: LCFF_X43_Y7_N31
\processor|Tstep_Q.T0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	datain => \processor|Selector0~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|Tstep_Q.T0~regout\);

-- Location: LCFF_X44_Y7_N1
\processor|start|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	sdata => \mem|altsyncram_component|auto_generated|q_a\(1),
	sload => VCC,
	ena => \processor|ALT_INV_Tstep_Q.T0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|start|Q\(1));

-- Location: LCFF_X44_Y7_N19
\processor|start|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	sdata => \mem|altsyncram_component|auto_generated|q_a\(2),
	sload => VCC,
	ena => \processor|ALT_INV_Tstep_Q.T0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|start|Q\(2));

-- Location: LCFF_X44_Y7_N15
\processor|start|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	sdata => \mem|altsyncram_component|auto_generated|q_a\(6),
	sload => VCC,
	ena => \processor|ALT_INV_Tstep_Q.T0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|start|Q\(6));

-- Location: LCCOMB_X44_Y7_N0
\processor|DINout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|DINout~0_combout\ = (\processor|Tstep_Q.T1~regout\ & (!\processor|start|Q\(7) & !\processor|start|Q\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|Tstep_Q.T1~regout\,
	datab => \processor|start|Q\(7),
	datad => \processor|start|Q\(8),
	combout => \processor|DINout~0_combout\);

-- Location: LCCOMB_X44_Y7_N14
\processor|Selector14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector14~1_combout\ = (!\processor|start|Q\(0) & (\processor|start|Q\(2) & (!\processor|start|Q\(6) & \processor|DINout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|start|Q\(0),
	datab => \processor|start|Q\(2),
	datac => \processor|start|Q\(6),
	datad => \processor|DINout~0_combout\,
	combout => \processor|Selector14~1_combout\);

-- Location: LCFF_X44_Y7_N25
\processor|start|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	sdata => \mem|altsyncram_component|auto_generated|q_a\(5),
	sload => VCC,
	ena => \processor|ALT_INV_Tstep_Q.T0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|start|Q\(5));

-- Location: LCCOMB_X43_Y7_N4
\processor|Tstep_D.T2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Tstep_D.T2~0_combout\ = (\processor|Tstep_Q.T1~regout\ & ((\processor|start|Q\(8)) # ((!\processor|Tstep_Q.T3~regout\ & \processor|start|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|Tstep_Q.T1~regout\,
	datab => \processor|Tstep_Q.T3~regout\,
	datac => \processor|start|Q\(8),
	datad => \processor|start|Q\(7),
	combout => \processor|Tstep_D.T2~0_combout\);

-- Location: LCFF_X44_Y7_N3
\processor|Tstep_Q.T2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	sdata => \processor|Tstep_D.T2~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|Tstep_Q.T2~regout\);

-- Location: LCCOMB_X44_Y7_N10
\processor|Mux37~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Mux37~0_combout\ = (\processor|start|Q\(7) & !\processor|start|Q\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processor|start|Q\(7),
	datad => \processor|start|Q\(8),
	combout => \processor|Mux37~0_combout\);

-- Location: LCCOMB_X44_Y7_N30
\processor|Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector14~0_combout\ = (\processor|start|Q\(5) & (\processor|Mux37~0_combout\ & ((\processor|Tstep_Q.T1~regout\) # (\processor|Tstep_Q.T2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|Tstep_Q.T1~regout\,
	datab => \processor|start|Q\(5),
	datac => \processor|Tstep_Q.T2~regout\,
	datad => \processor|Mux37~0_combout\,
	combout => \processor|Selector14~0_combout\);

-- Location: LCCOMB_X44_Y7_N8
\processor|Selector14~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector14~2_combout\ = (\processor|Selector2~2_combout\ & ((\processor|Selector14~0_combout\) # ((!\processor|start|Q\(1) & \processor|Selector14~1_combout\)))) # (!\processor|Selector2~2_combout\ & (!\processor|start|Q\(1) & 
-- (\processor|Selector14~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|Selector2~2_combout\,
	datab => \processor|start|Q\(1),
	datac => \processor|Selector14~1_combout\,
	datad => \processor|Selector14~0_combout\,
	combout => \processor|Selector14~2_combout\);

-- Location: LCFF_X44_Y7_N29
\processor|start|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	sdata => \mem|altsyncram_component|auto_generated|q_a\(0),
	sload => VCC,
	ena => \processor|ALT_INV_Tstep_Q.T0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|start|Q\(0));

-- Location: LCCOMB_X45_Y7_N12
\processor|Selector17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector17~0_combout\ = (!\processor|start|Q\(6) & (\processor|start|Q\(0) & (\processor|start|Q\(2) & \processor|DINout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|start|Q\(6),
	datab => \processor|start|Q\(0),
	datac => \processor|start|Q\(2),
	datad => \processor|DINout~0_combout\,
	combout => \processor|Selector17~0_combout\);

-- Location: LCCOMB_X45_Y7_N2
\processor|Selector15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector15~0_combout\ = (\processor|Selector3~2_combout\ & ((\processor|Selector14~0_combout\) # ((!\processor|start|Q\(1) & \processor|Selector17~0_combout\)))) # (!\processor|Selector3~2_combout\ & (!\processor|start|Q\(1) & 
-- ((\processor|Selector17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|Selector3~2_combout\,
	datab => \processor|start|Q\(1),
	datac => \processor|Selector14~0_combout\,
	datad => \processor|Selector17~0_combout\,
	combout => \processor|Selector15~0_combout\);

-- Location: LCCOMB_X47_Y7_N20
\processor|Equal5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Equal5~0_combout\ = (!\processor|Selector16~0_combout\ & \processor|Selector15~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|Selector16~0_combout\,
	datad => \processor|Selector15~0_combout\,
	combout => \processor|Equal5~0_combout\);

-- Location: LCCOMB_X44_Y7_N18
\processor|Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector12~0_combout\ = (\processor|start|Q\(1) & !\processor|start|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|start|Q\(1),
	datac => \processor|start|Q\(2),
	combout => \processor|Selector12~0_combout\);

-- Location: LCCOMB_X44_Y7_N2
\processor|Selector10~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector10~2_combout\ = (!\processor|start|Q\(0) & (!\processor|start|Q\(6) & \processor|DINout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|start|Q\(0),
	datab => \processor|start|Q\(6),
	datad => \processor|DINout~0_combout\,
	combout => \processor|Selector10~2_combout\);

-- Location: LCCOMB_X44_Y7_N24
\processor|Selector10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector10~1_combout\ = (!\processor|start|Q\(5) & (\processor|Mux37~0_combout\ & ((\processor|Tstep_Q.T1~regout\) # (\processor|Tstep_Q.T2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|Tstep_Q.T1~regout\,
	datab => \processor|Tstep_Q.T2~regout\,
	datac => \processor|start|Q\(5),
	datad => \processor|Mux37~0_combout\,
	combout => \processor|Selector10~1_combout\);

-- Location: LCCOMB_X45_Y7_N30
\processor|Selector12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector12~1_combout\ = (\processor|Selector4~2_combout\ & ((\processor|Selector10~1_combout\) # ((\processor|Selector12~0_combout\ & \processor|Selector10~2_combout\)))) # (!\processor|Selector4~2_combout\ & (\processor|Selector12~0_combout\ & 
-- (\processor|Selector10~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|Selector4~2_combout\,
	datab => \processor|Selector12~0_combout\,
	datac => \processor|Selector10~2_combout\,
	datad => \processor|Selector10~1_combout\,
	combout => \processor|Selector12~1_combout\);

-- Location: LCFF_X43_Y7_N15
\processor|start|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	sdata => \mem|altsyncram_component|auto_generated|q_a\(4),
	sload => VCC,
	ena => \processor|ALT_INV_Tstep_Q.T0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|start|Q\(4));

-- Location: LCCOMB_X44_Y7_N26
\processor|Selector5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector5~2_combout\ = (\processor|start|Q\(3) & \processor|start|Q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|start|Q\(3),
	datad => \processor|start|Q\(4),
	combout => \processor|Selector5~2_combout\);

-- Location: LCCOMB_X45_Y7_N4
\processor|Selector17~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector17~1_combout\ = (\processor|Selector17~0_combout\ & ((\processor|start|Q\(1)) # ((\processor|Selector14~0_combout\ & \processor|Selector5~2_combout\)))) # (!\processor|Selector17~0_combout\ & (((\processor|Selector14~0_combout\ & 
-- \processor|Selector5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|Selector17~0_combout\,
	datab => \processor|start|Q\(1),
	datac => \processor|Selector14~0_combout\,
	datad => \processor|Selector5~2_combout\,
	combout => \processor|Selector17~1_combout\);

-- Location: LCCOMB_X45_Y7_N14
\processor|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Equal0~0_combout\ = (\processor|DINout~0_combout\ & (!\processor|start|Q\(6) & ((!\processor|Mux37~0_combout\) # (!\processor|Tstep_Q.T3~regout\)))) # (!\processor|DINout~0_combout\ & (((!\processor|Mux37~0_combout\) # 
-- (!\processor|Tstep_Q.T3~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|DINout~0_combout\,
	datab => \processor|start|Q\(6),
	datac => \processor|Tstep_Q.T3~regout\,
	datad => \processor|Mux37~0_combout\,
	combout => \processor|Equal0~0_combout\);

-- Location: LCCOMB_X44_Y7_N28
\processor|Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector10~0_combout\ = (!\processor|start|Q\(1) & !\processor|start|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|start|Q\(1),
	datad => \processor|start|Q\(2),
	combout => \processor|Selector10~0_combout\);

-- Location: LCCOMB_X44_Y7_N6
\processor|Selector11~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector11~3_combout\ = (!\processor|start|Q\(6) & (\processor|DINout~0_combout\ & (\processor|start|Q\(0) & \processor|Selector10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|start|Q\(6),
	datab => \processor|DINout~0_combout\,
	datac => \processor|start|Q\(0),
	datad => \processor|Selector10~0_combout\,
	combout => \processor|Selector11~3_combout\);

-- Location: LCCOMB_X45_Y7_N18
\processor|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Equal0~1_combout\ = (\processor|Equal0~0_combout\ & (!\processor|Selector11~3_combout\ & ((!\processor|Selector10~1_combout\) # (!\processor|Selector3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|Selector3~2_combout\,
	datab => \processor|Equal0~0_combout\,
	datac => \processor|Selector11~3_combout\,
	datad => \processor|Selector10~1_combout\,
	combout => \processor|Equal0~1_combout\);

-- Location: LCCOMB_X45_Y7_N16
\processor|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Equal0~2_combout\ = (!\processor|Selector13~0_combout\ & (!\processor|Selector12~1_combout\ & (!\processor|Selector17~1_combout\ & \processor|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|Selector13~0_combout\,
	datab => \processor|Selector12~1_combout\,
	datac => \processor|Selector17~1_combout\,
	datad => \processor|Equal0~1_combout\,
	combout => \processor|Equal0~2_combout\);

-- Location: LCCOMB_X47_Y7_N14
\processor|Equal5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Equal5~1_combout\ = (!\processor|Selector10~3_combout\ & (!\processor|Selector14~2_combout\ & (\processor|Equal5~0_combout\ & \processor|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|Selector10~3_combout\,
	datab => \processor|Selector14~2_combout\,
	datac => \processor|Equal5~0_combout\,
	datad => \processor|Equal0~2_combout\,
	combout => \processor|Equal5~1_combout\);

-- Location: LCFF_X43_Y7_N1
\processor|start|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	sdata => \mem|altsyncram_component|auto_generated|q_a\(3),
	sload => VCC,
	ena => \processor|ALT_INV_Tstep_Q.T0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|start|Q\(3));

-- Location: LCCOMB_X43_Y7_N10
\processor|Selector7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector7~2_combout\ = (!\processor|Selector18~0_combout\ & (\processor|start|Q\(3) & (\processor|start|Q\(5) & !\processor|start|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|Selector18~0_combout\,
	datab => \processor|start|Q\(3),
	datac => \processor|start|Q\(5),
	datad => \processor|start|Q\(4),
	combout => \processor|Selector7~2_combout\);

-- Location: LCFF_X47_Y7_N27
\processor|reg_5|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	sdata => \processor|Selector27~6_combout\,
	sload => VCC,
	ena => \processor|Selector7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_5|Q\(0));

-- Location: LCCOMB_X44_Y7_N12
\processor|Selector4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector4~2_combout\ = (\processor|start|Q\(4) & !\processor|start|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|start|Q\(4),
	datad => \processor|start|Q\(3),
	combout => \processor|Selector4~2_combout\);

-- Location: LCCOMB_X44_Y7_N22
\processor|Selector16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector16~0_combout\ = (\processor|start|Q\(1) & ((\processor|Selector14~1_combout\) # ((\processor|Selector4~2_combout\ & \processor|Selector14~0_combout\)))) # (!\processor|start|Q\(1) & (((\processor|Selector4~2_combout\ & 
-- \processor|Selector14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|start|Q\(1),
	datab => \processor|Selector14~1_combout\,
	datac => \processor|Selector4~2_combout\,
	datad => \processor|Selector14~0_combout\,
	combout => \processor|Selector16~0_combout\);

-- Location: LCCOMB_X45_Y7_N26
\processor|Equal6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Equal6~0_combout\ = (!\processor|Selector15~0_combout\ & \processor|Selector16~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processor|Selector15~0_combout\,
	datad => \processor|Selector16~0_combout\,
	combout => \processor|Equal6~0_combout\);

-- Location: LCCOMB_X47_Y7_N12
\processor|Equal6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Equal6~1_combout\ = (!\processor|Selector10~3_combout\ & (!\processor|Selector14~2_combout\ & (\processor|Equal6~0_combout\ & \processor|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|Selector10~3_combout\,
	datab => \processor|Selector14~2_combout\,
	datac => \processor|Equal6~0_combout\,
	datad => \processor|Equal0~2_combout\,
	combout => \processor|Equal6~1_combout\);

-- Location: LCCOMB_X47_Y7_N26
\processor|Selector27~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector27~1_combout\ = (\processor|reg_6|Q\(0) & ((\processor|Equal6~1_combout\) # ((\processor|Equal5~1_combout\ & \processor|reg_5|Q\(0))))) # (!\processor|reg_6|Q\(0) & (\processor|Equal5~1_combout\ & (\processor|reg_5|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|reg_6|Q\(0),
	datab => \processor|Equal5~1_combout\,
	datac => \processor|reg_5|Q\(0),
	datad => \processor|Equal6~1_combout\,
	combout => \processor|Selector27~1_combout\);

-- Location: LCCOMB_X45_Y7_N22
\processor|Selector11~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector11~4_combout\ = (\processor|Selector11~3_combout\) # ((!\processor|start|Q\(4) & (\processor|start|Q\(3) & \processor|Selector10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|start|Q\(4),
	datab => \processor|start|Q\(3),
	datac => \processor|Selector11~3_combout\,
	datad => \processor|Selector10~1_combout\,
	combout => \processor|Selector11~4_combout\);

-- Location: LCCOMB_X46_Y7_N24
\processor|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Equal2~0_combout\ = (!\processor|Selector17~1_combout\ & \processor|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \processor|Selector17~1_combout\,
	datad => \processor|Equal0~0_combout\,
	combout => \processor|Equal2~0_combout\);

-- Location: LCCOMB_X44_Y7_N20
\processor|Selector11~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector11~2_combout\ = (!\processor|start|Q\(6) & (\processor|start|Q\(0) & \processor|DINout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|start|Q\(6),
	datac => \processor|start|Q\(0),
	datad => \processor|DINout~0_combout\,
	combout => \processor|Selector11~2_combout\);

-- Location: LCCOMB_X45_Y7_N8
\processor|Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector13~0_combout\ = (\processor|Selector12~0_combout\ & ((\processor|Selector11~2_combout\) # ((\processor|Selector5~2_combout\ & \processor|Selector10~1_combout\)))) # (!\processor|Selector12~0_combout\ & (\processor|Selector5~2_combout\ & 
-- ((\processor|Selector10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|Selector12~0_combout\,
	datab => \processor|Selector5~2_combout\,
	datac => \processor|Selector11~2_combout\,
	datad => \processor|Selector10~1_combout\,
	combout => \processor|Selector13~0_combout\);

-- Location: LCCOMB_X46_Y7_N6
\processor|Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Equal2~1_combout\ = (\processor|Selector12~1_combout\ & !\processor|Selector13~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \processor|Selector12~1_combout\,
	datad => \processor|Selector13~0_combout\,
	combout => \processor|Equal2~1_combout\);

-- Location: LCCOMB_X46_Y7_N0
\processor|Equal2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Equal2~2_combout\ = (\processor|Equal7~0_combout\ & (!\processor|Selector11~4_combout\ & (\processor|Equal2~0_combout\ & \processor|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|Equal7~0_combout\,
	datab => \processor|Selector11~4_combout\,
	datac => \processor|Equal2~0_combout\,
	datad => \processor|Equal2~1_combout\,
	combout => \processor|Equal2~2_combout\);

-- Location: LCCOMB_X43_Y7_N16
\processor|Selector5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector5~3_combout\ = (!\processor|Selector18~0_combout\ & (\processor|start|Q\(3) & (!\processor|start|Q\(5) & \processor|start|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|Selector18~0_combout\,
	datab => \processor|start|Q\(3),
	datac => \processor|start|Q\(5),
	datad => \processor|start|Q\(4),
	combout => \processor|Selector5~3_combout\);

-- Location: LCFF_X46_Y8_N25
\processor|reg_3|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	sdata => \processor|Selector27~6_combout\,
	sload => VCC,
	ena => \processor|Selector5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_3|Q\(0));

-- Location: LCCOMB_X46_Y7_N12
\processor|Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Equal3~0_combout\ = (!\processor|Selector12~1_combout\ & \processor|Selector13~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \processor|Selector12~1_combout\,
	datad => \processor|Selector13~0_combout\,
	combout => \processor|Equal3~0_combout\);

-- Location: LCCOMB_X46_Y7_N30
\processor|Equal3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Equal3~1_combout\ = (\processor|Equal7~0_combout\ & (!\processor|Selector11~4_combout\ & (\processor|Equal2~0_combout\ & \processor|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|Equal7~0_combout\,
	datab => \processor|Selector11~4_combout\,
	datac => \processor|Equal2~0_combout\,
	datad => \processor|Equal3~0_combout\,
	combout => \processor|Equal3~1_combout\);

-- Location: LCCOMB_X46_Y8_N24
\processor|Selector27~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector27~2_combout\ = (\processor|reg_2|Q\(0) & ((\processor|Equal2~2_combout\) # ((\processor|reg_3|Q\(0) & \processor|Equal3~1_combout\)))) # (!\processor|reg_2|Q\(0) & (((\processor|reg_3|Q\(0) & \processor|Equal3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|reg_2|Q\(0),
	datab => \processor|Equal2~2_combout\,
	datac => \processor|reg_3|Q\(0),
	datad => \processor|Equal3~1_combout\,
	combout => \processor|Selector27~2_combout\);

-- Location: LCCOMB_X49_Y9_N20
\processor|reg_1|Q[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|reg_1|Q[0]~feeder_combout\ = \processor|Selector27~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \processor|Selector27~6_combout\,
	combout => \processor|reg_1|Q[0]~feeder_combout\);

-- Location: LCCOMB_X43_Y7_N8
\processor|Selector3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector3~3_combout\ = (!\processor|Selector18~0_combout\ & (\processor|start|Q\(3) & (!\processor|start|Q\(5) & !\processor|start|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|Selector18~0_combout\,
	datab => \processor|start|Q\(3),
	datac => \processor|start|Q\(5),
	datad => \processor|start|Q\(4),
	combout => \processor|Selector3~3_combout\);

-- Location: LCFF_X49_Y9_N21
\processor|reg_1|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	datain => \processor|reg_1|Q[0]~feeder_combout\,
	ena => \processor|Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_1|Q\(0));

-- Location: LCCOMB_X43_Y7_N18
\processor|Selector9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector9~2_combout\ = (!\processor|Selector18~0_combout\ & (\processor|start|Q\(3) & (\processor|start|Q\(5) & \processor|start|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|Selector18~0_combout\,
	datab => \processor|start|Q\(3),
	datac => \processor|start|Q\(5),
	datad => \processor|start|Q\(4),
	combout => \processor|Selector9~2_combout\);

-- Location: LCFF_X45_Y6_N1
\processor|reg_7|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	sdata => \processor|Selector27~6_combout\,
	sload => VCC,
	ena => \processor|Selector9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_7|Q\(0));

-- Location: LCCOMB_X45_Y7_N10
\processor|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Equal0~5_combout\ = (!\processor|Selector12~1_combout\ & (!\processor|Selector13~0_combout\ & \processor|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processor|Selector12~1_combout\,
	datac => \processor|Selector13~0_combout\,
	datad => \processor|Equal0~1_combout\,
	combout => \processor|Equal0~5_combout\);

-- Location: LCCOMB_X45_Y7_N0
\processor|Equal7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Equal7~1_combout\ = (\processor|Equal7~0_combout\ & (\processor|Selector17~1_combout\ & \processor|Equal0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|Equal7~0_combout\,
	datac => \processor|Selector17~1_combout\,
	datad => \processor|Equal0~5_combout\,
	combout => \processor|Equal7~1_combout\);

-- Location: LCCOMB_X45_Y6_N0
\processor|Selector27~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector27~4_combout\ = (\processor|Equal1~3_combout\ & ((\processor|reg_1|Q\(0)) # ((\processor|reg_7|Q\(0) & \processor|Equal7~1_combout\)))) # (!\processor|Equal1~3_combout\ & (((\processor|reg_7|Q\(0) & \processor|Equal7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|Equal1~3_combout\,
	datab => \processor|reg_1|Q\(0),
	datac => \processor|reg_7|Q\(0),
	datad => \processor|Equal7~1_combout\,
	combout => \processor|Selector27~4_combout\);

-- Location: LCCOMB_X43_Y7_N12
\processor|Selector6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector6~2_combout\ = (!\processor|Selector18~0_combout\ & (!\processor|start|Q\(3) & (\processor|start|Q\(5) & !\processor|start|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|Selector18~0_combout\,
	datab => \processor|start|Q\(3),
	datac => \processor|start|Q\(5),
	datad => \processor|start|Q\(4),
	combout => \processor|Selector6~2_combout\);

-- Location: LCFF_X45_Y6_N31
\processor|reg_4|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	sdata => \processor|Selector27~6_combout\,
	sload => VCC,
	ena => \processor|Selector6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_4|Q\(0));

-- Location: LCCOMB_X44_Y7_N4
\processor|Selector10~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector10~3_combout\ = (\processor|Selector2~2_combout\ & ((\processor|Selector10~1_combout\) # ((\processor|Selector10~0_combout\ & \processor|Selector10~2_combout\)))) # (!\processor|Selector2~2_combout\ & (\processor|Selector10~0_combout\ & 
-- ((\processor|Selector10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|Selector2~2_combout\,
	datab => \processor|Selector10~0_combout\,
	datac => \processor|Selector10~1_combout\,
	datad => \processor|Selector10~2_combout\,
	combout => \processor|Selector10~3_combout\);

-- Location: LCCOMB_X45_Y7_N6
\processor|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Equal0~3_combout\ = (!\processor|Selector14~2_combout\ & (!\processor|Selector15~0_combout\ & !\processor|Selector16~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|Selector14~2_combout\,
	datab => \processor|Selector15~0_combout\,
	datad => \processor|Selector16~0_combout\,
	combout => \processor|Equal0~3_combout\);

-- Location: LCCOMB_X45_Y7_N28
\processor|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Equal0~4_combout\ = (\processor|Selector10~3_combout\ & (\processor|Equal0~2_combout\ & \processor|Equal0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processor|Selector10~3_combout\,
	datac => \processor|Equal0~2_combout\,
	datad => \processor|Equal0~3_combout\,
	combout => \processor|Equal0~4_combout\);

-- Location: LCCOMB_X43_Y7_N6
\processor|Selector2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector2~3_combout\ = (!\processor|Selector18~0_combout\ & (!\processor|start|Q\(3) & (!\processor|start|Q\(5) & !\processor|start|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|Selector18~0_combout\,
	datab => \processor|start|Q\(3),
	datac => \processor|start|Q\(5),
	datad => \processor|start|Q\(4),
	combout => \processor|Selector2~3_combout\);

-- Location: LCFF_X44_Y6_N29
\processor|reg_0|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	sdata => \processor|Selector27~6_combout\,
	sload => VCC,
	ena => \processor|Selector2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_0|Q\(0));

-- Location: LCCOMB_X43_Y7_N26
\processor|Gout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Gout~0_combout\ = (\processor|start|Q\(7) & (\processor|Tstep_Q.T3~regout\ & !\processor|start|Q\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|start|Q\(7),
	datab => \processor|Tstep_Q.T3~regout\,
	datac => \processor|start|Q\(8),
	combout => \processor|Gout~0_combout\);

-- Location: LCCOMB_X46_Y7_N18
\processor|WideNor0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|WideNor0~3_combout\ = (\processor|Equal7~1_combout\) # ((\processor|Gout~0_combout\) # (\processor|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|Equal7~1_combout\,
	datab => \processor|Gout~0_combout\,
	datad => \processor|Equal0~4_combout\,
	combout => \processor|WideNor0~3_combout\);

-- Location: LCCOMB_X45_Y7_N20
\processor|Equal7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Equal7~0_combout\ = (!\processor|Selector14~2_combout\ & (!\processor|Selector16~0_combout\ & (!\processor|Selector10~3_combout\ & !\processor|Selector15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|Selector14~2_combout\,
	datab => \processor|Selector16~0_combout\,
	datac => \processor|Selector10~3_combout\,
	datad => \processor|Selector15~0_combout\,
	combout => \processor|Equal7~0_combout\);

-- Location: LCCOMB_X46_Y7_N10
\processor|Equal1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Equal1~2_combout\ = (!\processor|Selector12~1_combout\ & (\processor|Selector11~4_combout\ & !\processor|Selector13~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|Selector12~1_combout\,
	datab => \processor|Selector11~4_combout\,
	datad => \processor|Selector13~0_combout\,
	combout => \processor|Equal1~2_combout\);

-- Location: LCCOMB_X46_Y7_N2
\processor|Equal1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Equal1~3_combout\ = (\processor|Equal0~0_combout\ & (!\processor|Selector17~1_combout\ & (\processor|Equal7~0_combout\ & \processor|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|Equal0~0_combout\,
	datab => \processor|Selector17~1_combout\,
	datac => \processor|Equal7~0_combout\,
	datad => \processor|Equal1~2_combout\,
	combout => \processor|Equal1~3_combout\);

-- Location: LCCOMB_X46_Y7_N20
\processor|WideNor0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|WideNor0~0_combout\ = (\processor|Equal3~1_combout\) # ((\processor|Equal1~3_combout\) # (\processor|Equal2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processor|Equal3~1_combout\,
	datac => \processor|Equal1~3_combout\,
	datad => \processor|Equal2~2_combout\,
	combout => \processor|WideNor0~0_combout\);

-- Location: LCCOMB_X45_Y6_N16
\processor|WideNor0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|WideNor0~1_combout\ = (\processor|Selector14~2_combout\ & (!\processor|Selector16~0_combout\ & !\processor|Selector15~0_combout\)) # (!\processor|Selector14~2_combout\ & (\processor|Selector16~0_combout\ $ (\processor|Selector15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|Selector14~2_combout\,
	datac => \processor|Selector16~0_combout\,
	datad => \processor|Selector15~0_combout\,
	combout => \processor|WideNor0~1_combout\);

-- Location: LCCOMB_X46_Y6_N0
\processor|WideNor0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|WideNor0~2_combout\ = (!\processor|Selector10~3_combout\ & (\processor|Equal0~2_combout\ & \processor|WideNor0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processor|Selector10~3_combout\,
	datac => \processor|Equal0~2_combout\,
	datad => \processor|WideNor0~1_combout\,
	combout => \processor|WideNor0~2_combout\);

-- Location: LCCOMB_X46_Y6_N26
\processor|Selector27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector27~0_combout\ = (\mem|altsyncram_component|auto_generated|q_a\(0) & (!\processor|WideNor0~3_combout\ & (!\processor|WideNor0~0_combout\ & !\processor|WideNor0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|altsyncram_component|auto_generated|q_a\(0),
	datab => \processor|WideNor0~3_combout\,
	datac => \processor|WideNor0~0_combout\,
	datad => \processor|WideNor0~2_combout\,
	combout => \processor|Selector27~0_combout\);

-- Location: LCCOMB_X46_Y6_N12
\processor|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Add0~0_combout\ = (\processor|Selector27~2_combout\) # ((\processor|Selector27~1_combout\) # ((\processor|Selector27~5_combout\) # (\processor|Selector27~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|Selector27~2_combout\,
	datab => \processor|Selector27~1_combout\,
	datac => \processor|Selector27~5_combout\,
	datad => \processor|Selector27~0_combout\,
	combout => \processor|Add0~0_combout\);

-- Location: LCCOMB_X47_Y6_N30
\processor|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Add0~1_combout\ = \processor|Add0~0_combout\ $ (((\processor|Mux37~0_combout\ & (\processor|Tstep_Q.T2~regout\ & \processor|start|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|Mux37~0_combout\,
	datab => \processor|Tstep_Q.T2~regout\,
	datac => \processor|start|Q\(6),
	datad => \processor|Add0~0_combout\,
	combout => \processor|Add0~1_combout\);

-- Location: LCCOMB_X47_Y6_N4
\processor|reg_G|Q[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|reg_G|Q[0]~10_cout\ = CARRY((\processor|Mux27~0_combout\ & \processor|Tstep_Q.T2~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|Mux27~0_combout\,
	datab => \processor|Tstep_Q.T2~regout\,
	datad => VCC,
	cout => \processor|reg_G|Q[0]~10_cout\);

-- Location: LCCOMB_X47_Y6_N6
\processor|reg_G|Q[0]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|reg_G|Q[0]~11_combout\ = (\processor|reg_A|Q\(0) & ((\processor|Add0~1_combout\ & (\processor|reg_G|Q[0]~10_cout\ & VCC)) # (!\processor|Add0~1_combout\ & (!\processor|reg_G|Q[0]~10_cout\)))) # (!\processor|reg_A|Q\(0) & 
-- ((\processor|Add0~1_combout\ & (!\processor|reg_G|Q[0]~10_cout\)) # (!\processor|Add0~1_combout\ & ((\processor|reg_G|Q[0]~10_cout\) # (GND)))))
-- \processor|reg_G|Q[0]~12\ = CARRY((\processor|reg_A|Q\(0) & (!\processor|Add0~1_combout\ & !\processor|reg_G|Q[0]~10_cout\)) # (!\processor|reg_A|Q\(0) & ((!\processor|reg_G|Q[0]~10_cout\) # (!\processor|Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processor|reg_A|Q\(0),
	datab => \processor|Add0~1_combout\,
	datad => VCC,
	cin => \processor|reg_G|Q[0]~10_cout\,
	combout => \processor|reg_G|Q[0]~11_combout\,
	cout => \processor|reg_G|Q[0]~12\);

-- Location: LCCOMB_X46_Y6_N6
\processor|Gin~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Gin~0_combout\ = (\processor|Tstep_Q.T2~regout\ & (!\processor|start|Q\(8) & \processor|start|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processor|Tstep_Q.T2~regout\,
	datac => \processor|start|Q\(8),
	datad => \processor|start|Q\(7),
	combout => \processor|Gin~0_combout\);

-- Location: LCFF_X47_Y6_N7
\processor|reg_G|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	datain => \processor|reg_G|Q[0]~11_combout\,
	ena => \processor|Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_G|Q\(0));

-- Location: LCCOMB_X44_Y6_N28
\processor|Selector27~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector27~3_combout\ = (\processor|Gout~0_combout\ & ((\processor|reg_G|Q\(0)) # ((\processor|Equal0~4_combout\ & \processor|reg_0|Q\(0))))) # (!\processor|Gout~0_combout\ & (\processor|Equal0~4_combout\ & (\processor|reg_0|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|Gout~0_combout\,
	datab => \processor|Equal0~4_combout\,
	datac => \processor|reg_0|Q\(0),
	datad => \processor|reg_G|Q\(0),
	combout => \processor|Selector27~3_combout\);

-- Location: LCCOMB_X45_Y6_N30
\processor|Selector27~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector27~5_combout\ = (\processor|Selector27~4_combout\) # ((\processor|Selector27~3_combout\) # ((\processor|Equal4~1_combout\ & \processor|reg_4|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|Equal4~1_combout\,
	datab => \processor|Selector27~4_combout\,
	datac => \processor|reg_4|Q\(0),
	datad => \processor|Selector27~3_combout\,
	combout => \processor|Selector27~5_combout\);

-- Location: LCCOMB_X46_Y8_N30
\processor|Selector27~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector27~6_combout\ = (\processor|Selector27~1_combout\) # ((\processor|Selector27~2_combout\) # ((\processor|Selector27~5_combout\) # (\processor|Selector27~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|Selector27~1_combout\,
	datab => \processor|Selector27~2_combout\,
	datac => \processor|Selector27~5_combout\,
	datad => \processor|Selector27~0_combout\,
	combout => \processor|Selector27~6_combout\);

-- Location: LCFF_X46_Y6_N11
\processor|reg_3|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	sdata => \processor|Selector26~6_combout\,
	sload => VCC,
	ena => \processor|Selector5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_3|Q\(1));

-- Location: LCCOMB_X46_Y6_N10
\processor|Selector26~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector26~2_combout\ = (\processor|reg_2|Q\(1) & ((\processor|Equal2~2_combout\) # ((\processor|reg_3|Q\(1) & \processor|Equal3~1_combout\)))) # (!\processor|reg_2|Q\(1) & (((\processor|reg_3|Q\(1) & \processor|Equal3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|reg_2|Q\(1),
	datab => \processor|Equal2~2_combout\,
	datac => \processor|reg_3|Q\(1),
	datad => \processor|Equal3~1_combout\,
	combout => \processor|Selector26~2_combout\);

-- Location: LCCOMB_X43_Y7_N0
\processor|Selector8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector8~2_combout\ = (!\processor|Selector18~0_combout\ & (\processor|start|Q\(5) & (!\processor|start|Q\(3) & \processor|start|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|Selector18~0_combout\,
	datab => \processor|start|Q\(5),
	datac => \processor|start|Q\(3),
	datad => \processor|start|Q\(4),
	combout => \processor|Selector8~2_combout\);

-- Location: LCFF_X47_Y7_N25
\processor|reg_6|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	sdata => \processor|Selector26~6_combout\,
	sload => VCC,
	ena => \processor|Selector8~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_6|Q\(1));

-- Location: LCCOMB_X47_Y7_N24
\processor|Selector26~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector26~1_combout\ = (\processor|reg_5|Q\(1) & ((\processor|Equal5~1_combout\) # ((\processor|reg_6|Q\(1) & \processor|Equal6~1_combout\)))) # (!\processor|reg_5|Q\(1) & (((\processor|reg_6|Q\(1) & \processor|Equal6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|reg_5|Q\(1),
	datab => \processor|Equal5~1_combout\,
	datac => \processor|reg_6|Q\(1),
	datad => \processor|Equal6~1_combout\,
	combout => \processor|Selector26~1_combout\);

-- Location: LCCOMB_X46_Y6_N20
\processor|Selector26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector26~0_combout\ = (\mem|altsyncram_component|auto_generated|q_a\(1) & (!\processor|WideNor0~3_combout\ & (!\processor|WideNor0~0_combout\ & !\processor|WideNor0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|altsyncram_component|auto_generated|q_a\(1),
	datab => \processor|WideNor0~3_combout\,
	datac => \processor|WideNor0~0_combout\,
	datad => \processor|WideNor0~2_combout\,
	combout => \processor|Selector26~0_combout\);

-- Location: LCFF_X45_Y6_N3
\processor|reg_7|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	sdata => \processor|Selector26~6_combout\,
	sload => VCC,
	ena => \processor|Selector9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_7|Q\(1));

-- Location: LCCOMB_X45_Y6_N2
\processor|Selector26~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector26~3_combout\ = (\processor|reg_G|Q\(1) & ((\processor|Gout~0_combout\) # ((\processor|reg_7|Q\(1) & \processor|Equal7~1_combout\)))) # (!\processor|reg_G|Q\(1) & (((\processor|reg_7|Q\(1) & \processor|Equal7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|reg_G|Q\(1),
	datab => \processor|Gout~0_combout\,
	datac => \processor|reg_7|Q\(1),
	datad => \processor|Equal7~1_combout\,
	combout => \processor|Selector26~3_combout\);

-- Location: LCFF_X45_Y6_N9
\processor|reg_4|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	sdata => \processor|Selector26~6_combout\,
	sload => VCC,
	ena => \processor|Selector6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_4|Q\(1));

-- Location: LCFF_X44_Y6_N15
\processor|reg_1|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	sdata => \processor|Selector26~6_combout\,
	sload => VCC,
	ena => \processor|Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_1|Q\(1));

-- Location: LCCOMB_X44_Y6_N14
\processor|Selector26~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector26~4_combout\ = (\processor|reg_0|Q\(1) & ((\processor|Equal0~4_combout\) # ((\processor|reg_1|Q\(1) & \processor|Equal1~3_combout\)))) # (!\processor|reg_0|Q\(1) & (((\processor|reg_1|Q\(1) & \processor|Equal1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|reg_0|Q\(1),
	datab => \processor|Equal0~4_combout\,
	datac => \processor|reg_1|Q\(1),
	datad => \processor|Equal1~3_combout\,
	combout => \processor|Selector26~4_combout\);

-- Location: LCCOMB_X45_Y6_N8
\processor|Selector26~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector26~5_combout\ = (\processor|Selector26~3_combout\) # ((\processor|Selector26~4_combout\) # ((\processor|Equal4~1_combout\ & \processor|reg_4|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|Equal4~1_combout\,
	datab => \processor|Selector26~3_combout\,
	datac => \processor|reg_4|Q\(1),
	datad => \processor|Selector26~4_combout\,
	combout => \processor|Selector26~5_combout\);

-- Location: LCCOMB_X46_Y6_N28
\processor|Selector26~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector26~6_combout\ = (\processor|Selector26~2_combout\) # ((\processor|Selector26~1_combout\) # ((\processor|Selector26~0_combout\) # (\processor|Selector26~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|Selector26~2_combout\,
	datab => \processor|Selector26~1_combout\,
	datac => \processor|Selector26~0_combout\,
	datad => \processor|Selector26~5_combout\,
	combout => \processor|Selector26~6_combout\);

-- Location: LCFF_X47_Y7_N11
\processor|reg_5|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	sdata => \processor|Selector25~6_combout\,
	sload => VCC,
	ena => \processor|Selector7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_5|Q\(2));

-- Location: LCCOMB_X47_Y7_N10
\processor|Selector25~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector25~1_combout\ = (\processor|reg_6|Q\(2) & ((\processor|Equal6~1_combout\) # ((\processor|Equal5~1_combout\ & \processor|reg_5|Q\(2))))) # (!\processor|reg_6|Q\(2) & (\processor|Equal5~1_combout\ & (\processor|reg_5|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|reg_6|Q\(2),
	datab => \processor|Equal5~1_combout\,
	datac => \processor|reg_5|Q\(2),
	datad => \processor|Equal6~1_combout\,
	combout => \processor|Selector25~1_combout\);

-- Location: LCFF_X46_Y7_N19
\processor|reg_3|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	sdata => \processor|Selector25~6_combout\,
	sload => VCC,
	ena => \processor|Selector5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_3|Q\(2));

-- Location: LCCOMB_X46_Y7_N16
\processor|Selector25~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector25~2_combout\ = (\processor|reg_2|Q\(2) & ((\processor|Equal2~2_combout\) # ((\processor|Equal3~1_combout\ & \processor|reg_3|Q\(2))))) # (!\processor|reg_2|Q\(2) & (\processor|Equal3~1_combout\ & (\processor|reg_3|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|reg_2|Q\(2),
	datab => \processor|Equal3~1_combout\,
	datac => \processor|reg_3|Q\(2),
	datad => \processor|Equal2~2_combout\,
	combout => \processor|Selector25~2_combout\);

-- Location: LCFF_X45_Y6_N13
\processor|reg_4|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	datain => \processor|Selector25~6_combout\,
	ena => \processor|Selector6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_4|Q\(2));

-- Location: LCFF_X44_Y6_N31
\processor|reg_1|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	sdata => \processor|Selector25~6_combout\,
	sload => VCC,
	ena => \processor|Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_1|Q\(2));

-- Location: LCCOMB_X44_Y6_N30
\processor|Selector25~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector25~4_combout\ = (\processor|reg_0|Q\(2) & ((\processor|Equal0~4_combout\) # ((\processor|reg_1|Q\(2) & \processor|Equal1~3_combout\)))) # (!\processor|reg_0|Q\(2) & (((\processor|reg_1|Q\(2) & \processor|Equal1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|reg_0|Q\(2),
	datab => \processor|Equal0~4_combout\,
	datac => \processor|reg_1|Q\(2),
	datad => \processor|Equal1~3_combout\,
	combout => \processor|Selector25~4_combout\);

-- Location: LCFF_X45_Y6_N27
\processor|reg_7|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	sdata => \processor|Selector25~6_combout\,
	sload => VCC,
	ena => \processor|Selector9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_7|Q\(2));

-- Location: LCCOMB_X45_Y6_N26
\processor|Selector25~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector25~3_combout\ = (\processor|reg_G|Q\(2) & ((\processor|Gout~0_combout\) # ((\processor|reg_7|Q\(2) & \processor|Equal7~1_combout\)))) # (!\processor|reg_G|Q\(2) & (((\processor|reg_7|Q\(2) & \processor|Equal7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|reg_G|Q\(2),
	datab => \processor|Gout~0_combout\,
	datac => \processor|reg_7|Q\(2),
	datad => \processor|Equal7~1_combout\,
	combout => \processor|Selector25~3_combout\);

-- Location: LCCOMB_X45_Y6_N14
\processor|Selector25~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector25~5_combout\ = (\processor|Selector25~4_combout\) # ((\processor|Selector25~3_combout\) # ((\processor|Equal4~1_combout\ & \processor|reg_4|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|Equal4~1_combout\,
	datab => \processor|reg_4|Q\(2),
	datac => \processor|Selector25~4_combout\,
	datad => \processor|Selector25~3_combout\,
	combout => \processor|Selector25~5_combout\);

-- Location: LCCOMB_X46_Y6_N22
\processor|Selector25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector25~0_combout\ = (!\processor|WideNor0~0_combout\ & (!\processor|WideNor0~2_combout\ & (!\processor|WideNor0~3_combout\ & \mem|altsyncram_component|auto_generated|q_a\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|WideNor0~0_combout\,
	datab => \processor|WideNor0~2_combout\,
	datac => \processor|WideNor0~3_combout\,
	datad => \mem|altsyncram_component|auto_generated|q_a\(2),
	combout => \processor|Selector25~0_combout\);

-- Location: LCCOMB_X45_Y6_N12
\processor|Selector25~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector25~6_combout\ = (\processor|Selector25~1_combout\) # ((\processor|Selector25~2_combout\) # ((\processor|Selector25~5_combout\) # (\processor|Selector25~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|Selector25~1_combout\,
	datab => \processor|Selector25~2_combout\,
	datac => \processor|Selector25~5_combout\,
	datad => \processor|Selector25~0_combout\,
	combout => \processor|Selector25~6_combout\);

-- Location: LCFF_X46_Y7_N23
\processor|reg_3|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	sdata => \processor|Selector24~6_combout\,
	sload => VCC,
	ena => \processor|Selector5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_3|Q\(3));

-- Location: LCCOMB_X46_Y7_N22
\processor|Selector24~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector24~2_combout\ = (\processor|reg_2|Q\(3) & ((\processor|Equal2~2_combout\) # ((\processor|Equal3~1_combout\ & \processor|reg_3|Q\(3))))) # (!\processor|reg_2|Q\(3) & (\processor|Equal3~1_combout\ & (\processor|reg_3|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|reg_2|Q\(3),
	datab => \processor|Equal3~1_combout\,
	datac => \processor|reg_3|Q\(3),
	datad => \processor|Equal2~2_combout\,
	combout => \processor|Selector24~2_combout\);

-- Location: LCFF_X46_Y7_N5
\processor|reg_6|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	datain => \processor|Selector24~6_combout\,
	ena => \processor|Selector8~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_6|Q\(3));

-- Location: LCFF_X47_Y7_N1
\processor|reg_5|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	sdata => \processor|Selector24~6_combout\,
	sload => VCC,
	ena => \processor|Selector7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_5|Q\(3));

-- Location: LCCOMB_X47_Y7_N0
\processor|Selector24~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector24~1_combout\ = (\processor|Equal5~1_combout\ & ((\processor|reg_5|Q\(3)) # ((\processor|reg_6|Q\(3) & \processor|Equal6~1_combout\)))) # (!\processor|Equal5~1_combout\ & (\processor|reg_6|Q\(3) & ((\processor|Equal6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|Equal5~1_combout\,
	datab => \processor|reg_6|Q\(3),
	datac => \processor|reg_5|Q\(3),
	datad => \processor|Equal6~1_combout\,
	combout => \processor|Selector24~1_combout\);

-- Location: LCCOMB_X46_Y7_N14
\processor|Selector24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector24~0_combout\ = (!\processor|WideNor0~2_combout\ & (!\processor|WideNor0~3_combout\ & (!\processor|WideNor0~0_combout\ & \mem|altsyncram_component|auto_generated|q_a\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|WideNor0~2_combout\,
	datab => \processor|WideNor0~3_combout\,
	datac => \processor|WideNor0~0_combout\,
	datad => \mem|altsyncram_component|auto_generated|q_a\(3),
	combout => \processor|Selector24~0_combout\);

-- Location: LCFF_X45_Y6_N5
\processor|reg_7|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	sdata => \processor|Selector24~6_combout\,
	sload => VCC,
	ena => \processor|Selector9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_7|Q\(3));

-- Location: LCCOMB_X45_Y6_N4
\processor|Selector24~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector24~3_combout\ = (\processor|reg_G|Q\(3) & ((\processor|Gout~0_combout\) # ((\processor|reg_7|Q\(3) & \processor|Equal7~1_combout\)))) # (!\processor|reg_G|Q\(3) & (((\processor|reg_7|Q\(3) & \processor|Equal7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|reg_G|Q\(3),
	datab => \processor|Gout~0_combout\,
	datac => \processor|reg_7|Q\(3),
	datad => \processor|Equal7~1_combout\,
	combout => \processor|Selector24~3_combout\);

-- Location: LCFF_X45_Y6_N11
\processor|reg_4|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	sdata => \processor|Selector24~6_combout\,
	sload => VCC,
	ena => \processor|Selector6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_4|Q\(3));

-- Location: LCCOMB_X45_Y9_N28
\processor|reg_0|Q[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|reg_0|Q[3]~feeder_combout\ = \processor|Selector24~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \processor|Selector24~6_combout\,
	combout => \processor|reg_0|Q[3]~feeder_combout\);

-- Location: LCFF_X45_Y9_N29
\processor|reg_0|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	datain => \processor|reg_0|Q[3]~feeder_combout\,
	ena => \processor|Selector2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_0|Q\(3));

-- Location: LCCOMB_X44_Y6_N8
\processor|Selector24~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector24~4_combout\ = (\processor|reg_1|Q\(3) & ((\processor|Equal1~3_combout\) # ((\processor|reg_0|Q\(3) & \processor|Equal0~4_combout\)))) # (!\processor|reg_1|Q\(3) & (\processor|reg_0|Q\(3) & (\processor|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|reg_1|Q\(3),
	datab => \processor|reg_0|Q\(3),
	datac => \processor|Equal0~4_combout\,
	datad => \processor|Equal1~3_combout\,
	combout => \processor|Selector24~4_combout\);

-- Location: LCCOMB_X45_Y6_N10
\processor|Selector24~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector24~5_combout\ = (\processor|Selector24~3_combout\) # ((\processor|Selector24~4_combout\) # ((\processor|Equal4~1_combout\ & \processor|reg_4|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|Equal4~1_combout\,
	datab => \processor|Selector24~3_combout\,
	datac => \processor|reg_4|Q\(3),
	datad => \processor|Selector24~4_combout\,
	combout => \processor|Selector24~5_combout\);

-- Location: LCCOMB_X46_Y7_N4
\processor|Selector24~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector24~6_combout\ = (\processor|Selector24~2_combout\) # ((\processor|Selector24~1_combout\) # ((\processor|Selector24~0_combout\) # (\processor|Selector24~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|Selector24~2_combout\,
	datab => \processor|Selector24~1_combout\,
	datac => \processor|Selector24~0_combout\,
	datad => \processor|Selector24~5_combout\,
	combout => \processor|Selector24~6_combout\);

-- Location: LCFF_X47_Y7_N23
\processor|reg_6|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	sdata => \processor|Selector23~6_combout\,
	sload => VCC,
	ena => \processor|Selector8~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_6|Q\(4));

-- Location: LCCOMB_X47_Y7_N22
\processor|Selector23~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector23~1_combout\ = (\processor|reg_5|Q\(4) & ((\processor|Equal5~1_combout\) # ((\processor|reg_6|Q\(4) & \processor|Equal6~1_combout\)))) # (!\processor|reg_5|Q\(4) & (((\processor|reg_6|Q\(4) & \processor|Equal6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|reg_5|Q\(4),
	datab => \processor|Equal5~1_combout\,
	datac => \processor|reg_6|Q\(4),
	datad => \processor|Equal6~1_combout\,
	combout => \processor|Selector23~1_combout\);

-- Location: LCFF_X46_Y6_N31
\processor|reg_3|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	sdata => \processor|Selector23~6_combout\,
	sload => VCC,
	ena => \processor|Selector5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_3|Q\(4));

-- Location: LCCOMB_X46_Y6_N30
\processor|Selector23~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector23~2_combout\ = (\processor|reg_2|Q\(4) & ((\processor|Equal2~2_combout\) # ((\processor|reg_3|Q\(4) & \processor|Equal3~1_combout\)))) # (!\processor|reg_2|Q\(4) & (((\processor|reg_3|Q\(4) & \processor|Equal3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|reg_2|Q\(4),
	datab => \processor|Equal2~2_combout\,
	datac => \processor|reg_3|Q\(4),
	datad => \processor|Equal3~1_combout\,
	combout => \processor|Selector23~2_combout\);

-- Location: LCCOMB_X46_Y6_N8
\processor|Selector23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector23~0_combout\ = (\mem|altsyncram_component|auto_generated|q_a\(4) & (!\processor|WideNor0~3_combout\ & (!\processor|WideNor0~0_combout\ & !\processor|WideNor0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|altsyncram_component|auto_generated|q_a\(4),
	datab => \processor|WideNor0~3_combout\,
	datac => \processor|WideNor0~0_combout\,
	datad => \processor|WideNor0~2_combout\,
	combout => \processor|Selector23~0_combout\);

-- Location: LCFF_X45_Y6_N29
\processor|reg_7|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	sdata => \processor|Selector23~6_combout\,
	sload => VCC,
	ena => \processor|Selector9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_7|Q\(4));

-- Location: LCCOMB_X45_Y6_N28
\processor|Selector23~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector23~3_combout\ = (\processor|reg_G|Q\(4) & ((\processor|Gout~0_combout\) # ((\processor|reg_7|Q\(4) & \processor|Equal7~1_combout\)))) # (!\processor|reg_G|Q\(4) & (((\processor|reg_7|Q\(4) & \processor|Equal7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|reg_G|Q\(4),
	datab => \processor|Gout~0_combout\,
	datac => \processor|reg_7|Q\(4),
	datad => \processor|Equal7~1_combout\,
	combout => \processor|Selector23~3_combout\);

-- Location: LCFF_X45_Y6_N23
\processor|reg_4|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	sdata => \processor|Selector23~6_combout\,
	sload => VCC,
	ena => \processor|Selector6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_4|Q\(4));

-- Location: LCFF_X44_Y6_N3
\processor|reg_0|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	sdata => \processor|Selector23~6_combout\,
	sload => VCC,
	ena => \processor|Selector2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_0|Q\(4));

-- Location: LCCOMB_X44_Y6_N2
\processor|Selector23~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector23~4_combout\ = (\processor|reg_1|Q\(4) & ((\processor|Equal1~3_combout\) # ((\processor|Equal0~4_combout\ & \processor|reg_0|Q\(4))))) # (!\processor|reg_1|Q\(4) & (\processor|Equal0~4_combout\ & (\processor|reg_0|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|reg_1|Q\(4),
	datab => \processor|Equal0~4_combout\,
	datac => \processor|reg_0|Q\(4),
	datad => \processor|Equal1~3_combout\,
	combout => \processor|Selector23~4_combout\);

-- Location: LCCOMB_X45_Y6_N22
\processor|Selector23~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector23~5_combout\ = (\processor|Selector23~3_combout\) # ((\processor|Selector23~4_combout\) # ((\processor|Equal4~1_combout\ & \processor|reg_4|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|Equal4~1_combout\,
	datab => \processor|Selector23~3_combout\,
	datac => \processor|reg_4|Q\(4),
	datad => \processor|Selector23~4_combout\,
	combout => \processor|Selector23~5_combout\);

-- Location: LCCOMB_X46_Y6_N4
\processor|Selector23~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector23~6_combout\ = (\processor|Selector23~1_combout\) # ((\processor|Selector23~2_combout\) # ((\processor|Selector23~0_combout\) # (\processor|Selector23~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|Selector23~1_combout\,
	datab => \processor|Selector23~2_combout\,
	datac => \processor|Selector23~0_combout\,
	datad => \processor|Selector23~5_combout\,
	combout => \processor|Selector23~6_combout\);

-- Location: LCFF_X47_Y9_N7
\processor|reg_6|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	sdata => \processor|Selector22~6_combout\,
	sload => VCC,
	ena => \processor|Selector8~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_6|Q\(5));

-- Location: LCFF_X47_Y7_N9
\processor|reg_5|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	sdata => \processor|Selector22~6_combout\,
	sload => VCC,
	ena => \processor|Selector7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_5|Q\(5));

-- Location: LCCOMB_X47_Y7_N8
\processor|Selector22~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector22~1_combout\ = (\processor|Equal5~1_combout\ & ((\processor|reg_5|Q\(5)) # ((\processor|reg_6|Q\(5) & \processor|Equal6~1_combout\)))) # (!\processor|Equal5~1_combout\ & (\processor|reg_6|Q\(5) & ((\processor|Equal6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|Equal5~1_combout\,
	datab => \processor|reg_6|Q\(5),
	datac => \processor|reg_5|Q\(5),
	datad => \processor|Equal6~1_combout\,
	combout => \processor|Selector22~1_combout\);

-- Location: LCCOMB_X49_Y9_N10
\processor|reg_2|Q[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|reg_2|Q[5]~feeder_combout\ = \processor|Selector22~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \processor|Selector22~6_combout\,
	combout => \processor|reg_2|Q[5]~feeder_combout\);

-- Location: LCCOMB_X43_Y7_N2
\processor|Selector4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector4~3_combout\ = (!\processor|Selector18~0_combout\ & (!\processor|start|Q\(3) & (!\processor|start|Q\(5) & \processor|start|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|Selector18~0_combout\,
	datab => \processor|start|Q\(3),
	datac => \processor|start|Q\(5),
	datad => \processor|start|Q\(4),
	combout => \processor|Selector4~3_combout\);

-- Location: LCFF_X49_Y9_N11
\processor|reg_2|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	datain => \processor|reg_2|Q[5]~feeder_combout\,
	ena => \processor|Selector4~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_2|Q\(5));

-- Location: LCCOMB_X48_Y7_N16
\processor|Selector22~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector22~2_combout\ = (\processor|reg_3|Q\(5) & ((\processor|Equal3~1_combout\) # ((\processor|reg_2|Q\(5) & \processor|Equal2~2_combout\)))) # (!\processor|reg_3|Q\(5) & (\processor|reg_2|Q\(5) & (\processor|Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|reg_3|Q\(5),
	datab => \processor|reg_2|Q\(5),
	datac => \processor|Equal2~2_combout\,
	datad => \processor|Equal3~1_combout\,
	combout => \processor|Selector22~2_combout\);

-- Location: LCCOMB_X45_Y6_N6
\processor|Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Equal4~0_combout\ = (!\processor|Selector16~0_combout\ & !\processor|Selector10~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \processor|Selector16~0_combout\,
	datad => \processor|Selector10~3_combout\,
	combout => \processor|Equal4~0_combout\);

-- Location: LCCOMB_X45_Y6_N24
\processor|Equal4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Equal4~1_combout\ = (\processor|Selector14~2_combout\ & (!\processor|Selector15~0_combout\ & (\processor|Equal0~2_combout\ & \processor|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|Selector14~2_combout\,
	datab => \processor|Selector15~0_combout\,
	datac => \processor|Equal0~2_combout\,
	datad => \processor|Equal4~0_combout\,
	combout => \processor|Equal4~1_combout\);

-- Location: LCCOMB_X48_Y6_N14
\processor|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Add0~6_combout\ = \processor|Selector22~6_combout\ $ (((\processor|Tstep_Q.T2~regout\ & (\processor|Mux37~0_combout\ & \processor|start|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|Tstep_Q.T2~regout\,
	datab => \processor|Mux37~0_combout\,
	datac => \processor|start|Q\(6),
	datad => \processor|Selector22~6_combout\,
	combout => \processor|Add0~6_combout\);

-- Location: LCCOMB_X47_Y6_N0
\processor|Add0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Add0~5_combout\ = \processor|Selector23~6_combout\ $ (((\processor|start|Q\(6) & (\processor|Tstep_Q.T2~regout\ & \processor|Mux37~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|start|Q\(6),
	datab => \processor|Tstep_Q.T2~regout\,
	datac => \processor|Selector23~6_combout\,
	datad => \processor|Mux37~0_combout\,
	combout => \processor|Add0~5_combout\);

-- Location: LCCOMB_X47_Y6_N26
\processor|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Add0~4_combout\ = \processor|Selector24~6_combout\ $ (((\processor|Mux37~0_combout\ & (\processor|Tstep_Q.T2~regout\ & \processor|start|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|Mux37~0_combout\,
	datab => \processor|Tstep_Q.T2~regout\,
	datac => \processor|start|Q\(6),
	datad => \processor|Selector24~6_combout\,
	combout => \processor|Add0~4_combout\);

-- Location: LCCOMB_X48_Y6_N12
\processor|Add0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Add0~3_combout\ = \processor|Selector25~6_combout\ $ (((\processor|Tstep_Q.T2~regout\ & (\processor|Mux37~0_combout\ & \processor|start|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|Tstep_Q.T2~regout\,
	datab => \processor|Mux37~0_combout\,
	datac => \processor|start|Q\(6),
	datad => \processor|Selector25~6_combout\,
	combout => \processor|Add0~3_combout\);

-- Location: LCCOMB_X47_Y6_N28
\processor|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Add0~2_combout\ = \processor|Selector26~6_combout\ $ (((\processor|Mux37~0_combout\ & (\processor|Tstep_Q.T2~regout\ & \processor|start|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|Mux37~0_combout\,
	datab => \processor|Tstep_Q.T2~regout\,
	datac => \processor|start|Q\(6),
	datad => \processor|Selector26~6_combout\,
	combout => \processor|Add0~2_combout\);

-- Location: LCCOMB_X47_Y6_N16
\processor|reg_G|Q[5]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|reg_G|Q[5]~21_combout\ = ((\processor|reg_A|Q\(5) $ (\processor|Add0~6_combout\ $ (!\processor|reg_G|Q[4]~20\)))) # (GND)
-- \processor|reg_G|Q[5]~22\ = CARRY((\processor|reg_A|Q\(5) & ((\processor|Add0~6_combout\) # (!\processor|reg_G|Q[4]~20\))) # (!\processor|reg_A|Q\(5) & (\processor|Add0~6_combout\ & !\processor|reg_G|Q[4]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processor|reg_A|Q\(5),
	datab => \processor|Add0~6_combout\,
	datad => VCC,
	cin => \processor|reg_G|Q[4]~20\,
	combout => \processor|reg_G|Q[5]~21_combout\,
	cout => \processor|reg_G|Q[5]~22\);

-- Location: LCFF_X47_Y6_N17
\processor|reg_G|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	datain => \processor|reg_G|Q[5]~21_combout\,
	ena => \processor|Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_G|Q\(5));

-- Location: LCFF_X48_Y6_N9
\processor|reg_7|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	sdata => \processor|Selector22~6_combout\,
	sload => VCC,
	ena => \processor|Selector9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_7|Q\(5));

-- Location: LCCOMB_X48_Y6_N8
\processor|Selector22~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector22~3_combout\ = (\processor|Gout~0_combout\ & ((\processor|reg_G|Q\(5)) # ((\processor|reg_7|Q\(5) & \processor|Equal7~1_combout\)))) # (!\processor|Gout~0_combout\ & (((\processor|reg_7|Q\(5) & \processor|Equal7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|Gout~0_combout\,
	datab => \processor|reg_G|Q\(5),
	datac => \processor|reg_7|Q\(5),
	datad => \processor|Equal7~1_combout\,
	combout => \processor|Selector22~3_combout\);

-- Location: LCCOMB_X49_Y9_N24
\processor|reg_1|Q[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|reg_1|Q[5]~feeder_combout\ = \processor|Selector22~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \processor|Selector22~6_combout\,
	combout => \processor|reg_1|Q[5]~feeder_combout\);

-- Location: LCFF_X49_Y9_N25
\processor|reg_1|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	datain => \processor|reg_1|Q[5]~feeder_combout\,
	ena => \processor|Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_1|Q\(5));

-- Location: LCCOMB_X48_Y7_N6
\processor|Selector22~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector22~4_combout\ = (\processor|reg_0|Q\(5) & ((\processor|Equal0~4_combout\) # ((\processor|reg_1|Q\(5) & \processor|Equal1~3_combout\)))) # (!\processor|reg_0|Q\(5) & (\processor|reg_1|Q\(5) & ((\processor|Equal1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|reg_0|Q\(5),
	datab => \processor|reg_1|Q\(5),
	datac => \processor|Equal0~4_combout\,
	datad => \processor|Equal1~3_combout\,
	combout => \processor|Selector22~4_combout\);

-- Location: LCCOMB_X48_Y6_N20
\processor|Selector22~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector22~5_combout\ = (\processor|Selector22~3_combout\) # ((\processor|Selector22~4_combout\) # ((\processor|reg_4|Q\(5) & \processor|Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|reg_4|Q\(5),
	datab => \processor|Equal4~1_combout\,
	datac => \processor|Selector22~3_combout\,
	datad => \processor|Selector22~4_combout\,
	combout => \processor|Selector22~5_combout\);

-- Location: LCCOMB_X45_Y7_N24
\processor|Selector22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector22~0_combout\ = (!\processor|WideNor0~2_combout\ & (!\processor|WideNor0~3_combout\ & (\mem|altsyncram_component|auto_generated|q_a\(5) & !\processor|WideNor0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|WideNor0~2_combout\,
	datab => \processor|WideNor0~3_combout\,
	datac => \mem|altsyncram_component|auto_generated|q_a\(5),
	datad => \processor|WideNor0~0_combout\,
	combout => \processor|Selector22~0_combout\);

-- Location: LCCOMB_X48_Y6_N10
\processor|Selector22~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector22~6_combout\ = (\processor|Selector22~1_combout\) # ((\processor|Selector22~2_combout\) # ((\processor|Selector22~5_combout\) # (\processor|Selector22~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|Selector22~1_combout\,
	datab => \processor|Selector22~2_combout\,
	datac => \processor|Selector22~5_combout\,
	datad => \processor|Selector22~0_combout\,
	combout => \processor|Selector22~6_combout\);

-- Location: LCFF_X47_Y7_N5
\processor|reg_5|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	sdata => \processor|Selector21~6_combout\,
	sload => VCC,
	ena => \processor|Selector7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_5|Q\(6));

-- Location: LCCOMB_X47_Y7_N4
\processor|Selector21~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector21~1_combout\ = (\processor|reg_6|Q\(6) & ((\processor|Equal6~1_combout\) # ((\processor|Equal5~1_combout\ & \processor|reg_5|Q\(6))))) # (!\processor|reg_6|Q\(6) & (\processor|Equal5~1_combout\ & (\processor|reg_5|Q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|reg_6|Q\(6),
	datab => \processor|Equal5~1_combout\,
	datac => \processor|reg_5|Q\(6),
	datad => \processor|Equal6~1_combout\,
	combout => \processor|Selector21~1_combout\);

-- Location: LCFF_X47_Y8_N29
\processor|reg_2|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	sdata => \processor|Selector21~6_combout\,
	sload => VCC,
	ena => \processor|Selector4~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_2|Q\(6));

-- Location: LCCOMB_X47_Y8_N28
\processor|Selector21~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector21~2_combout\ = (\processor|reg_3|Q\(6) & ((\processor|Equal3~1_combout\) # ((\processor|Equal2~2_combout\ & \processor|reg_2|Q\(6))))) # (!\processor|reg_3|Q\(6) & (\processor|Equal2~2_combout\ & (\processor|reg_2|Q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|reg_3|Q\(6),
	datab => \processor|Equal2~2_combout\,
	datac => \processor|reg_2|Q\(6),
	datad => \processor|Equal3~1_combout\,
	combout => \processor|Selector21~2_combout\);

-- Location: LCCOMB_X46_Y6_N14
\processor|Selector21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector21~0_combout\ = (\mem|altsyncram_component|auto_generated|q_a\(6) & (!\processor|WideNor0~3_combout\ & (!\processor|WideNor0~0_combout\ & !\processor|WideNor0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|altsyncram_component|auto_generated|q_a\(6),
	datab => \processor|WideNor0~3_combout\,
	datac => \processor|WideNor0~0_combout\,
	datad => \processor|WideNor0~2_combout\,
	combout => \processor|Selector21~0_combout\);

-- Location: LCFF_X47_Y6_N25
\processor|reg_4|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	sdata => \processor|Selector21~6_combout\,
	sload => VCC,
	ena => \processor|Selector6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_4|Q\(6));

-- Location: LCCOMB_X47_Y6_N2
\processor|Add0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Add0~7_combout\ = \processor|Selector21~6_combout\ $ (((\processor|start|Q\(6) & (\processor|Tstep_Q.T2~regout\ & \processor|Mux37~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|start|Q\(6),
	datab => \processor|Tstep_Q.T2~regout\,
	datac => \processor|Mux37~0_combout\,
	datad => \processor|Selector21~6_combout\,
	combout => \processor|Add0~7_combout\);

-- Location: LCCOMB_X47_Y6_N18
\processor|reg_G|Q[6]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|reg_G|Q[6]~23_combout\ = (\processor|reg_A|Q\(6) & ((\processor|Add0~7_combout\ & (\processor|reg_G|Q[5]~22\ & VCC)) # (!\processor|Add0~7_combout\ & (!\processor|reg_G|Q[5]~22\)))) # (!\processor|reg_A|Q\(6) & ((\processor|Add0~7_combout\ & 
-- (!\processor|reg_G|Q[5]~22\)) # (!\processor|Add0~7_combout\ & ((\processor|reg_G|Q[5]~22\) # (GND)))))
-- \processor|reg_G|Q[6]~24\ = CARRY((\processor|reg_A|Q\(6) & (!\processor|Add0~7_combout\ & !\processor|reg_G|Q[5]~22\)) # (!\processor|reg_A|Q\(6) & ((!\processor|reg_G|Q[5]~22\) # (!\processor|Add0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processor|reg_A|Q\(6),
	datab => \processor|Add0~7_combout\,
	datad => VCC,
	cin => \processor|reg_G|Q[5]~22\,
	combout => \processor|reg_G|Q[6]~23_combout\,
	cout => \processor|reg_G|Q[6]~24\);

-- Location: LCFF_X47_Y6_N19
\processor|reg_G|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	datain => \processor|reg_G|Q[6]~23_combout\,
	ena => \processor|Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_G|Q\(6));

-- Location: LCFF_X48_Y6_N3
\processor|reg_7|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	sdata => \processor|Selector21~6_combout\,
	sload => VCC,
	ena => \processor|Selector9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_7|Q\(6));

-- Location: LCCOMB_X48_Y6_N2
\processor|Selector21~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector21~3_combout\ = (\processor|Gout~0_combout\ & ((\processor|reg_G|Q\(6)) # ((\processor|reg_7|Q\(6) & \processor|Equal7~1_combout\)))) # (!\processor|Gout~0_combout\ & (((\processor|reg_7|Q\(6) & \processor|Equal7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|Gout~0_combout\,
	datab => \processor|reg_G|Q\(6),
	datac => \processor|reg_7|Q\(6),
	datad => \processor|Equal7~1_combout\,
	combout => \processor|Selector21~3_combout\);

-- Location: LCCOMB_X47_Y6_N24
\processor|Selector21~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector21~5_combout\ = (\processor|Selector21~4_combout\) # ((\processor|Selector21~3_combout\) # ((\processor|Equal4~1_combout\ & \processor|reg_4|Q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|Selector21~4_combout\,
	datab => \processor|Equal4~1_combout\,
	datac => \processor|reg_4|Q\(6),
	datad => \processor|Selector21~3_combout\,
	combout => \processor|Selector21~5_combout\);

-- Location: LCCOMB_X46_Y6_N2
\processor|Selector21~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector21~6_combout\ = (\processor|Selector21~1_combout\) # ((\processor|Selector21~2_combout\) # ((\processor|Selector21~0_combout\) # (\processor|Selector21~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|Selector21~1_combout\,
	datab => \processor|Selector21~2_combout\,
	datac => \processor|Selector21~0_combout\,
	datad => \processor|Selector21~5_combout\,
	combout => \processor|Selector21~6_combout\);

-- Location: LCCOMB_X47_Y9_N28
\processor|reg_A|Q[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|reg_A|Q[7]~feeder_combout\ = \processor|Selector20~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \processor|Selector20~6_combout\,
	combout => \processor|reg_A|Q[7]~feeder_combout\);

-- Location: LCCOMB_X43_Y7_N14
\processor|Ain~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Ain~0_combout\ = (\processor|Tstep_Q.T1~regout\ & (!\processor|start|Q\(8) & \processor|start|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|Tstep_Q.T1~regout\,
	datab => \processor|start|Q\(8),
	datad => \processor|start|Q\(7),
	combout => \processor|Ain~0_combout\);

-- Location: LCFF_X47_Y9_N29
\processor|reg_A|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	datain => \processor|reg_A|Q[7]~feeder_combout\,
	ena => \processor|Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_A|Q\(7));

-- Location: LCCOMB_X47_Y6_N20
\processor|reg_G|Q[7]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|reg_G|Q[7]~25_combout\ = ((\processor|Add0~8_combout\ $ (\processor|reg_A|Q\(7) $ (!\processor|reg_G|Q[6]~24\)))) # (GND)
-- \processor|reg_G|Q[7]~26\ = CARRY((\processor|Add0~8_combout\ & ((\processor|reg_A|Q\(7)) # (!\processor|reg_G|Q[6]~24\))) # (!\processor|Add0~8_combout\ & (\processor|reg_A|Q\(7) & !\processor|reg_G|Q[6]~24\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processor|Add0~8_combout\,
	datab => \processor|reg_A|Q\(7),
	datad => VCC,
	cin => \processor|reg_G|Q[6]~24\,
	combout => \processor|reg_G|Q[7]~25_combout\,
	cout => \processor|reg_G|Q[7]~26\);

-- Location: LCFF_X47_Y6_N21
\processor|reg_G|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	datain => \processor|reg_G|Q[7]~25_combout\,
	ena => \processor|Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_G|Q\(7));

-- Location: LCFF_X48_Y6_N17
\processor|reg_7|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	sdata => \processor|Selector20~6_combout\,
	sload => VCC,
	ena => \processor|Selector9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_7|Q\(7));

-- Location: LCCOMB_X48_Y6_N16
\processor|Selector20~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector20~3_combout\ = (\processor|Gout~0_combout\ & ((\processor|reg_G|Q\(7)) # ((\processor|reg_7|Q\(7) & \processor|Equal7~1_combout\)))) # (!\processor|Gout~0_combout\ & (((\processor|reg_7|Q\(7) & \processor|Equal7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|Gout~0_combout\,
	datab => \processor|reg_G|Q\(7),
	datac => \processor|reg_7|Q\(7),
	datad => \processor|Equal7~1_combout\,
	combout => \processor|Selector20~3_combout\);

-- Location: LCCOMB_X49_Y7_N0
\processor|reg_0|Q[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|reg_0|Q[7]~feeder_combout\ = \processor|Selector20~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \processor|Selector20~6_combout\,
	combout => \processor|reg_0|Q[7]~feeder_combout\);

-- Location: LCFF_X49_Y7_N1
\processor|reg_0|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	datain => \processor|reg_0|Q[7]~feeder_combout\,
	ena => \processor|Selector2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_0|Q\(7));

-- Location: LCCOMB_X49_Y7_N18
\processor|Selector20~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector20~4_combout\ = (\processor|reg_1|Q\(7) & ((\processor|Equal1~3_combout\) # ((\processor|reg_0|Q\(7) & \processor|Equal0~4_combout\)))) # (!\processor|reg_1|Q\(7) & (\processor|reg_0|Q\(7) & ((\processor|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|reg_1|Q\(7),
	datab => \processor|reg_0|Q\(7),
	datac => \processor|Equal1~3_combout\,
	datad => \processor|Equal0~4_combout\,
	combout => \processor|Selector20~4_combout\);

-- Location: LCCOMB_X48_Y6_N24
\processor|Selector20~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector20~5_combout\ = (\processor|Selector20~3_combout\) # ((\processor|Selector20~4_combout\) # ((\processor|reg_4|Q\(7) & \processor|Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|reg_4|Q\(7),
	datab => \processor|Equal4~1_combout\,
	datac => \processor|Selector20~3_combout\,
	datad => \processor|Selector20~4_combout\,
	combout => \processor|Selector20~5_combout\);

-- Location: LCFF_X46_Y7_N27
\processor|reg_3|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	sdata => \processor|Selector20~6_combout\,
	sload => VCC,
	ena => \processor|Selector5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_3|Q\(7));

-- Location: LCCOMB_X46_Y7_N26
\processor|Selector20~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector20~1_combout\ = (\processor|reg_2|Q\(7) & ((\processor|Equal2~2_combout\) # ((\processor|Equal3~1_combout\ & \processor|reg_3|Q\(7))))) # (!\processor|reg_2|Q\(7) & (\processor|Equal3~1_combout\ & (\processor|reg_3|Q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|reg_2|Q\(7),
	datab => \processor|Equal3~1_combout\,
	datac => \processor|reg_3|Q\(7),
	datad => \processor|Equal2~2_combout\,
	combout => \processor|Selector20~1_combout\);

-- Location: LCFF_X47_Y7_N31
\processor|reg_6|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	sdata => \processor|Selector20~6_combout\,
	sload => VCC,
	ena => \processor|Selector8~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_6|Q\(7));

-- Location: LCFF_X47_Y7_N29
\processor|reg_5|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	sdata => \processor|Selector20~6_combout\,
	sload => VCC,
	ena => \processor|Selector7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_5|Q\(7));

-- Location: LCCOMB_X47_Y7_N6
\processor|Equal4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Equal4~2_combout\ = (!\processor|Selector10~3_combout\ & \processor|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \processor|Selector10~3_combout\,
	datad => \processor|Equal0~2_combout\,
	combout => \processor|Equal4~2_combout\);

-- Location: LCCOMB_X47_Y7_N28
\processor|Selector20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector20~0_combout\ = (\processor|Equal5~0_combout\ & (!\processor|Selector14~2_combout\ & (\processor|reg_5|Q\(7) & \processor|Equal4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|Equal5~0_combout\,
	datab => \processor|Selector14~2_combout\,
	datac => \processor|reg_5|Q\(7),
	datad => \processor|Equal4~2_combout\,
	combout => \processor|Selector20~0_combout\);

-- Location: LCCOMB_X47_Y7_N30
\processor|Selector20~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector20~2_combout\ = (\processor|Selector20~1_combout\) # ((\processor|Selector20~0_combout\) # ((\processor|Equal6~1_combout\ & \processor|reg_6|Q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|Equal6~1_combout\,
	datab => \processor|Selector20~1_combout\,
	datac => \processor|reg_6|Q\(7),
	datad => \processor|Selector20~0_combout\,
	combout => \processor|Selector20~2_combout\);

-- Location: LCCOMB_X47_Y7_N18
\processor|WideNor0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|WideNor0~4_combout\ = (\processor|WideNor0~0_combout\) # ((\processor|WideNor0~3_combout\) # (\processor|WideNor0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|WideNor0~0_combout\,
	datab => \processor|WideNor0~3_combout\,
	datad => \processor|WideNor0~2_combout\,
	combout => \processor|WideNor0~4_combout\);

-- Location: LCCOMB_X48_Y6_N30
\processor|Selector20~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector20~6_combout\ = (\processor|Selector20~5_combout\) # ((\processor|Selector20~2_combout\) # ((\mem|altsyncram_component|auto_generated|q_a\(7) & !\processor|WideNor0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|Selector20~5_combout\,
	datab => \mem|altsyncram_component|auto_generated|q_a\(7),
	datac => \processor|Selector20~2_combout\,
	datad => \processor|WideNor0~4_combout\,
	combout => \processor|Selector20~6_combout\);

-- Location: LCCOMB_X49_Y9_N22
\processor|reg_2|Q[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|reg_2|Q[8]~feeder_combout\ = \processor|Selector19~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \processor|Selector19~6_combout\,
	combout => \processor|reg_2|Q[8]~feeder_combout\);

-- Location: LCFF_X49_Y9_N23
\processor|reg_2|Q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	datain => \processor|reg_2|Q[8]~feeder_combout\,
	ena => \processor|Selector4~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_2|Q\(8));

-- Location: LCCOMB_X46_Y7_N28
\processor|Selector19~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector19~1_combout\ = (\processor|reg_3|Q\(8) & ((\processor|Equal3~1_combout\) # ((\processor|reg_2|Q\(8) & \processor|Equal2~2_combout\)))) # (!\processor|reg_3|Q\(8) & (((\processor|reg_2|Q\(8) & \processor|Equal2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|reg_3|Q\(8),
	datab => \processor|Equal3~1_combout\,
	datac => \processor|reg_2|Q\(8),
	datad => \processor|Equal2~2_combout\,
	combout => \processor|Selector19~1_combout\);

-- Location: LCFF_X47_Y7_N3
\processor|reg_5|Q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	sdata => \processor|Selector19~6_combout\,
	sload => VCC,
	ena => \processor|Selector7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_5|Q\(8));

-- Location: LCCOMB_X47_Y7_N2
\processor|Selector19~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector19~2_combout\ = (\processor|Selector19~0_combout\) # ((\processor|Selector19~1_combout\) # ((\processor|reg_5|Q\(8) & \processor|Equal5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|Selector19~0_combout\,
	datab => \processor|Selector19~1_combout\,
	datac => \processor|reg_5|Q\(8),
	datad => \processor|Equal5~1_combout\,
	combout => \processor|Selector19~2_combout\);

-- Location: LCFF_X49_Y7_N3
\processor|reg_0|Q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	sdata => \processor|Selector19~6_combout\,
	sload => VCC,
	ena => \processor|Selector2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_0|Q\(8));

-- Location: LCCOMB_X49_Y7_N2
\processor|Selector19~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector19~4_combout\ = (\processor|reg_1|Q\(8) & ((\processor|Equal1~3_combout\) # ((\processor|reg_0|Q\(8) & \processor|Equal0~4_combout\)))) # (!\processor|reg_1|Q\(8) & (((\processor|reg_0|Q\(8) & \processor|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|reg_1|Q\(8),
	datab => \processor|Equal1~3_combout\,
	datac => \processor|reg_0|Q\(8),
	datad => \processor|Equal0~4_combout\,
	combout => \processor|Selector19~4_combout\);

-- Location: LCCOMB_X49_Y6_N30
\processor|reg_A|Q[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|reg_A|Q[8]~feeder_combout\ = \processor|Selector19~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \processor|Selector19~6_combout\,
	combout => \processor|reg_A|Q[8]~feeder_combout\);

-- Location: LCFF_X49_Y6_N31
\processor|reg_A|Q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	datain => \processor|reg_A|Q[8]~feeder_combout\,
	ena => \processor|Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_A|Q\(8));

-- Location: LCCOMB_X48_Y6_N22
\processor|Add0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Add0~9_combout\ = \processor|Selector19~6_combout\ $ (((\processor|Tstep_Q.T2~regout\ & (\processor|Mux37~0_combout\ & \processor|start|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|Tstep_Q.T2~regout\,
	datab => \processor|Mux37~0_combout\,
	datac => \processor|start|Q\(6),
	datad => \processor|Selector19~6_combout\,
	combout => \processor|Add0~9_combout\);

-- Location: LCCOMB_X47_Y6_N22
\processor|reg_G|Q[8]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|reg_G|Q[8]~27_combout\ = \processor|reg_A|Q\(8) $ (\processor|reg_G|Q[7]~26\ $ (\processor|Add0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \processor|reg_A|Q\(8),
	datad => \processor|Add0~9_combout\,
	cin => \processor|reg_G|Q[7]~26\,
	combout => \processor|reg_G|Q[8]~27_combout\);

-- Location: LCFF_X47_Y6_N23
\processor|reg_G|Q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	datain => \processor|reg_G|Q[8]~27_combout\,
	ena => \processor|Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_G|Q\(8));

-- Location: LCFF_X48_Y6_N27
\processor|reg_7|Q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	sdata => \processor|Selector19~6_combout\,
	sload => VCC,
	ena => \processor|Selector9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|reg_7|Q\(8));

-- Location: LCCOMB_X48_Y6_N26
\processor|Selector19~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector19~3_combout\ = (\processor|Gout~0_combout\ & ((\processor|reg_G|Q\(8)) # ((\processor|reg_7|Q\(8) & \processor|Equal7~1_combout\)))) # (!\processor|Gout~0_combout\ & (((\processor|reg_7|Q\(8) & \processor|Equal7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|Gout~0_combout\,
	datab => \processor|reg_G|Q\(8),
	datac => \processor|reg_7|Q\(8),
	datad => \processor|Equal7~1_combout\,
	combout => \processor|Selector19~3_combout\);

-- Location: LCCOMB_X48_Y6_N18
\processor|Selector19~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector19~5_combout\ = (\processor|Selector19~4_combout\) # ((\processor|Selector19~3_combout\) # ((\processor|reg_4|Q\(8) & \processor|Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|reg_4|Q\(8),
	datab => \processor|Equal4~1_combout\,
	datac => \processor|Selector19~4_combout\,
	datad => \processor|Selector19~3_combout\,
	combout => \processor|Selector19~5_combout\);

-- Location: LCCOMB_X48_Y6_N28
\processor|Selector19~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector19~6_combout\ = (\processor|Selector19~2_combout\) # ((\processor|Selector19~5_combout\) # ((!\processor|WideNor0~4_combout\ & \mem|altsyncram_component|auto_generated|q_a\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|WideNor0~4_combout\,
	datab => \mem|altsyncram_component|auto_generated|q_a\(8),
	datac => \processor|Selector19~2_combout\,
	datad => \processor|Selector19~5_combout\,
	combout => \processor|Selector19~6_combout\);

-- Location: LCCOMB_X44_Y7_N16
\processor|Tstep_Q.T1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Tstep_Q.T1~0_combout\ = !\processor|Tstep_Q.T0~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \processor|Tstep_Q.T0~regout\,
	combout => \processor|Tstep_Q.T1~0_combout\);

-- Location: LCFF_X44_Y7_N17
\processor|Tstep_Q.T1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(2),
	datain => \processor|Tstep_Q.T1~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processor|Tstep_Q.T1~regout\);

-- Location: LCCOMB_X43_Y7_N24
\processor|Selector18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processor|Selector18~0_combout\ = (\processor|start|Q\(8)) # ((\processor|start|Q\(7) & ((!\processor|Tstep_Q.T3~regout\))) # (!\processor|start|Q\(7) & (!\processor|Tstep_Q.T1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processor|Tstep_Q.T1~regout\,
	datab => \processor|start|Q\(8),
	datac => \processor|start|Q\(7),
	datad => \processor|Tstep_Q.T3~regout\,
	combout => \processor|Selector18~0_combout\);

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \processor|Selector27~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(0));

-- Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \processor|Selector26~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(1));

-- Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \processor|Selector25~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(2));

-- Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \processor|Selector24~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(3));

-- Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \processor|Selector23~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(4));

-- Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \processor|Selector22~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(5));

-- Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \processor|Selector21~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(6));

-- Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \processor|Selector20~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(7));

-- Location: PIN_R18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \processor|Selector19~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(8));

-- Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \processor|ALT_INV_Selector18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(9));
END structure;


