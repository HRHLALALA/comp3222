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

-- DATE "08/28/2018 21:16:50"

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
	EN : IN std_logic;
	CLK : IN std_logic;
	CLR : IN std_logic;
	Q : OUT std_logic_vector(15 DOWNTO 0)
	);
END part2;

-- Design Ports Information
-- Q[0]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[1]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[2]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[3]	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[4]	=>  Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[5]	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[6]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[7]	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[8]	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[9]	=>  Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[10]	=>  Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[11]	=>  Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[12]	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[13]	=>  Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[14]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[15]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- EN	=>  Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLK	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLR	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_EN : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_CLR : std_logic;
SIGNAL ww_Q : std_logic_vector(15 DOWNTO 0);
SIGNAL \CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLR~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \CLK~clkctrl_outclk\ : std_logic;
SIGNAL \EN~combout\ : std_logic;
SIGNAL \COUNT[0]~15_combout\ : std_logic;
SIGNAL \CLR~combout\ : std_logic;
SIGNAL \CLR~clkctrl_outclk\ : std_logic;
SIGNAL \COUNT[1]~16_combout\ : std_logic;
SIGNAL \COUNT[1]~17\ : std_logic;
SIGNAL \COUNT[2]~18_combout\ : std_logic;
SIGNAL \COUNT[2]~19\ : std_logic;
SIGNAL \COUNT[3]~20_combout\ : std_logic;
SIGNAL \COUNT[3]~21\ : std_logic;
SIGNAL \COUNT[4]~22_combout\ : std_logic;
SIGNAL \COUNT[4]~23\ : std_logic;
SIGNAL \COUNT[5]~24_combout\ : std_logic;
SIGNAL \COUNT[5]~25\ : std_logic;
SIGNAL \COUNT[6]~26_combout\ : std_logic;
SIGNAL \COUNT[6]~27\ : std_logic;
SIGNAL \COUNT[7]~28_combout\ : std_logic;
SIGNAL \COUNT[7]~29\ : std_logic;
SIGNAL \COUNT[8]~30_combout\ : std_logic;
SIGNAL \COUNT[8]~31\ : std_logic;
SIGNAL \COUNT[9]~32_combout\ : std_logic;
SIGNAL \COUNT[9]~33\ : std_logic;
SIGNAL \COUNT[10]~34_combout\ : std_logic;
SIGNAL \COUNT[10]~35\ : std_logic;
SIGNAL \COUNT[11]~36_combout\ : std_logic;
SIGNAL \COUNT[11]~37\ : std_logic;
SIGNAL \COUNT[12]~38_combout\ : std_logic;
SIGNAL \COUNT[12]~39\ : std_logic;
SIGNAL \COUNT[13]~40_combout\ : std_logic;
SIGNAL \COUNT[13]~41\ : std_logic;
SIGNAL \COUNT[14]~42_combout\ : std_logic;
SIGNAL \COUNT[14]~43\ : std_logic;
SIGNAL \COUNT[15]~44_combout\ : std_logic;
SIGNAL COUNT : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_CLR~clkctrl_outclk\ : std_logic;

BEGIN

ww_EN <= EN;
ww_CLK <= CLK;
ww_CLR <= CLR;
Q <= ww_Q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLK~combout\);

\CLR~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLR~combout\);
\ALT_INV_CLR~clkctrl_outclk\ <= NOT \CLR~clkctrl_outclk\;

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLK~I\ : cycloneii_io
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
	padio => ww_CLK,
	combout => \CLK~combout\);

-- Location: CLKCTRL_G3
\CLK~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~clkctrl_outclk\);

-- Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\EN~I\ : cycloneii_io
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
	padio => ww_EN,
	combout => \EN~combout\);

-- Location: LCCOMB_X1_Y23_N30
\COUNT[0]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \COUNT[0]~15_combout\ = COUNT(0) $ (\EN~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => COUNT(0),
	datad => \EN~combout\,
	combout => \COUNT[0]~15_combout\);

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLR~I\ : cycloneii_io
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
	padio => ww_CLR,
	combout => \CLR~combout\);

-- Location: CLKCTRL_G1
\CLR~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLR~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLR~clkctrl_outclk\);

-- Location: LCFF_X1_Y23_N31
\COUNT[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \COUNT[0]~15_combout\,
	aclr => \ALT_INV_CLR~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => COUNT(0));

-- Location: LCCOMB_X1_Y23_N0
\COUNT[1]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \COUNT[1]~16_combout\ = (COUNT(0) & (COUNT(1) $ (VCC))) # (!COUNT(0) & (COUNT(1) & VCC))
-- \COUNT[1]~17\ = CARRY((COUNT(0) & COUNT(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNT(0),
	datab => COUNT(1),
	datad => VCC,
	combout => \COUNT[1]~16_combout\,
	cout => \COUNT[1]~17\);

-- Location: LCFF_X1_Y23_N1
\COUNT[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \COUNT[1]~16_combout\,
	aclr => \ALT_INV_CLR~clkctrl_outclk\,
	ena => \EN~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => COUNT(1));

-- Location: LCCOMB_X1_Y23_N2
\COUNT[2]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \COUNT[2]~18_combout\ = (COUNT(2) & (!\COUNT[1]~17\)) # (!COUNT(2) & ((\COUNT[1]~17\) # (GND)))
-- \COUNT[2]~19\ = CARRY((!\COUNT[1]~17\) # (!COUNT(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNT(2),
	datad => VCC,
	cin => \COUNT[1]~17\,
	combout => \COUNT[2]~18_combout\,
	cout => \COUNT[2]~19\);

-- Location: LCFF_X1_Y23_N3
\COUNT[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \COUNT[2]~18_combout\,
	aclr => \ALT_INV_CLR~clkctrl_outclk\,
	ena => \EN~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => COUNT(2));

-- Location: LCCOMB_X1_Y23_N4
\COUNT[3]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \COUNT[3]~20_combout\ = (COUNT(3) & (\COUNT[2]~19\ $ (GND))) # (!COUNT(3) & (!\COUNT[2]~19\ & VCC))
-- \COUNT[3]~21\ = CARRY((COUNT(3) & !\COUNT[2]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNT(3),
	datad => VCC,
	cin => \COUNT[2]~19\,
	combout => \COUNT[3]~20_combout\,
	cout => \COUNT[3]~21\);

-- Location: LCFF_X1_Y23_N5
\COUNT[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \COUNT[3]~20_combout\,
	aclr => \ALT_INV_CLR~clkctrl_outclk\,
	ena => \EN~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => COUNT(3));

-- Location: LCCOMB_X1_Y23_N6
\COUNT[4]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \COUNT[4]~22_combout\ = (COUNT(4) & (!\COUNT[3]~21\)) # (!COUNT(4) & ((\COUNT[3]~21\) # (GND)))
-- \COUNT[4]~23\ = CARRY((!\COUNT[3]~21\) # (!COUNT(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNT(4),
	datad => VCC,
	cin => \COUNT[3]~21\,
	combout => \COUNT[4]~22_combout\,
	cout => \COUNT[4]~23\);

-- Location: LCFF_X1_Y23_N7
\COUNT[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \COUNT[4]~22_combout\,
	aclr => \ALT_INV_CLR~clkctrl_outclk\,
	ena => \EN~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => COUNT(4));

-- Location: LCCOMB_X1_Y23_N8
\COUNT[5]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \COUNT[5]~24_combout\ = (COUNT(5) & (\COUNT[4]~23\ $ (GND))) # (!COUNT(5) & (!\COUNT[4]~23\ & VCC))
-- \COUNT[5]~25\ = CARRY((COUNT(5) & !\COUNT[4]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNT(5),
	datad => VCC,
	cin => \COUNT[4]~23\,
	combout => \COUNT[5]~24_combout\,
	cout => \COUNT[5]~25\);

-- Location: LCFF_X1_Y23_N9
\COUNT[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \COUNT[5]~24_combout\,
	aclr => \ALT_INV_CLR~clkctrl_outclk\,
	ena => \EN~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => COUNT(5));

-- Location: LCCOMB_X1_Y23_N10
\COUNT[6]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \COUNT[6]~26_combout\ = (COUNT(6) & (!\COUNT[5]~25\)) # (!COUNT(6) & ((\COUNT[5]~25\) # (GND)))
-- \COUNT[6]~27\ = CARRY((!\COUNT[5]~25\) # (!COUNT(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNT(6),
	datad => VCC,
	cin => \COUNT[5]~25\,
	combout => \COUNT[6]~26_combout\,
	cout => \COUNT[6]~27\);

-- Location: LCFF_X1_Y23_N11
\COUNT[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \COUNT[6]~26_combout\,
	aclr => \ALT_INV_CLR~clkctrl_outclk\,
	ena => \EN~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => COUNT(6));

-- Location: LCCOMB_X1_Y23_N12
\COUNT[7]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \COUNT[7]~28_combout\ = (COUNT(7) & (\COUNT[6]~27\ $ (GND))) # (!COUNT(7) & (!\COUNT[6]~27\ & VCC))
-- \COUNT[7]~29\ = CARRY((COUNT(7) & !\COUNT[6]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => COUNT(7),
	datad => VCC,
	cin => \COUNT[6]~27\,
	combout => \COUNT[7]~28_combout\,
	cout => \COUNT[7]~29\);

-- Location: LCFF_X1_Y23_N13
\COUNT[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \COUNT[7]~28_combout\,
	aclr => \ALT_INV_CLR~clkctrl_outclk\,
	ena => \EN~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => COUNT(7));

-- Location: LCCOMB_X1_Y23_N14
\COUNT[8]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \COUNT[8]~30_combout\ = (COUNT(8) & (!\COUNT[7]~29\)) # (!COUNT(8) & ((\COUNT[7]~29\) # (GND)))
-- \COUNT[8]~31\ = CARRY((!\COUNT[7]~29\) # (!COUNT(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNT(8),
	datad => VCC,
	cin => \COUNT[7]~29\,
	combout => \COUNT[8]~30_combout\,
	cout => \COUNT[8]~31\);

-- Location: LCFF_X1_Y23_N15
\COUNT[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \COUNT[8]~30_combout\,
	aclr => \ALT_INV_CLR~clkctrl_outclk\,
	ena => \EN~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => COUNT(8));

-- Location: LCCOMB_X1_Y23_N16
\COUNT[9]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \COUNT[9]~32_combout\ = (COUNT(9) & (\COUNT[8]~31\ $ (GND))) # (!COUNT(9) & (!\COUNT[8]~31\ & VCC))
-- \COUNT[9]~33\ = CARRY((COUNT(9) & !\COUNT[8]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => COUNT(9),
	datad => VCC,
	cin => \COUNT[8]~31\,
	combout => \COUNT[9]~32_combout\,
	cout => \COUNT[9]~33\);

-- Location: LCFF_X1_Y23_N17
\COUNT[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \COUNT[9]~32_combout\,
	aclr => \ALT_INV_CLR~clkctrl_outclk\,
	ena => \EN~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => COUNT(9));

-- Location: LCCOMB_X1_Y23_N18
\COUNT[10]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \COUNT[10]~34_combout\ = (COUNT(10) & (!\COUNT[9]~33\)) # (!COUNT(10) & ((\COUNT[9]~33\) # (GND)))
-- \COUNT[10]~35\ = CARRY((!\COUNT[9]~33\) # (!COUNT(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNT(10),
	datad => VCC,
	cin => \COUNT[9]~33\,
	combout => \COUNT[10]~34_combout\,
	cout => \COUNT[10]~35\);

-- Location: LCFF_X1_Y23_N19
\COUNT[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \COUNT[10]~34_combout\,
	aclr => \ALT_INV_CLR~clkctrl_outclk\,
	ena => \EN~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => COUNT(10));

-- Location: LCCOMB_X1_Y23_N20
\COUNT[11]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \COUNT[11]~36_combout\ = (COUNT(11) & (\COUNT[10]~35\ $ (GND))) # (!COUNT(11) & (!\COUNT[10]~35\ & VCC))
-- \COUNT[11]~37\ = CARRY((COUNT(11) & !\COUNT[10]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => COUNT(11),
	datad => VCC,
	cin => \COUNT[10]~35\,
	combout => \COUNT[11]~36_combout\,
	cout => \COUNT[11]~37\);

-- Location: LCFF_X1_Y23_N21
\COUNT[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \COUNT[11]~36_combout\,
	aclr => \ALT_INV_CLR~clkctrl_outclk\,
	ena => \EN~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => COUNT(11));

-- Location: LCCOMB_X1_Y23_N22
\COUNT[12]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \COUNT[12]~38_combout\ = (COUNT(12) & (!\COUNT[11]~37\)) # (!COUNT(12) & ((\COUNT[11]~37\) # (GND)))
-- \COUNT[12]~39\ = CARRY((!\COUNT[11]~37\) # (!COUNT(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNT(12),
	datad => VCC,
	cin => \COUNT[11]~37\,
	combout => \COUNT[12]~38_combout\,
	cout => \COUNT[12]~39\);

-- Location: LCFF_X1_Y23_N23
\COUNT[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \COUNT[12]~38_combout\,
	aclr => \ALT_INV_CLR~clkctrl_outclk\,
	ena => \EN~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => COUNT(12));

-- Location: LCCOMB_X1_Y23_N24
\COUNT[13]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \COUNT[13]~40_combout\ = (COUNT(13) & (\COUNT[12]~39\ $ (GND))) # (!COUNT(13) & (!\COUNT[12]~39\ & VCC))
-- \COUNT[13]~41\ = CARRY((COUNT(13) & !\COUNT[12]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => COUNT(13),
	datad => VCC,
	cin => \COUNT[12]~39\,
	combout => \COUNT[13]~40_combout\,
	cout => \COUNT[13]~41\);

-- Location: LCFF_X1_Y23_N25
\COUNT[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \COUNT[13]~40_combout\,
	aclr => \ALT_INV_CLR~clkctrl_outclk\,
	ena => \EN~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => COUNT(13));

-- Location: LCCOMB_X1_Y23_N26
\COUNT[14]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \COUNT[14]~42_combout\ = (COUNT(14) & (!\COUNT[13]~41\)) # (!COUNT(14) & ((\COUNT[13]~41\) # (GND)))
-- \COUNT[14]~43\ = CARRY((!\COUNT[13]~41\) # (!COUNT(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNT(14),
	datad => VCC,
	cin => \COUNT[13]~41\,
	combout => \COUNT[14]~42_combout\,
	cout => \COUNT[14]~43\);

-- Location: LCFF_X1_Y23_N27
\COUNT[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \COUNT[14]~42_combout\,
	aclr => \ALT_INV_CLR~clkctrl_outclk\,
	ena => \EN~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => COUNT(14));

-- Location: LCCOMB_X1_Y23_N28
\COUNT[15]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \COUNT[15]~44_combout\ = \COUNT[14]~43\ $ (!COUNT(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => COUNT(15),
	cin => \COUNT[14]~43\,
	combout => \COUNT[15]~44_combout\);

-- Location: LCFF_X1_Y23_N29
\COUNT[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \COUNT[15]~44_combout\,
	aclr => \ALT_INV_CLR~clkctrl_outclk\,
	ena => \EN~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => COUNT(15));

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q[0]~I\ : cycloneii_io
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
	datain => COUNT(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(0));

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q[1]~I\ : cycloneii_io
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
	datain => COUNT(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(1));

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q[2]~I\ : cycloneii_io
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
	datain => COUNT(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(2));

-- Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q[3]~I\ : cycloneii_io
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
	datain => COUNT(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(3));

-- Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q[4]~I\ : cycloneii_io
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
	datain => COUNT(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(4));

-- Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q[5]~I\ : cycloneii_io
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
	datain => COUNT(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(5));

-- Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q[6]~I\ : cycloneii_io
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
	datain => COUNT(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(6));

-- Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q[7]~I\ : cycloneii_io
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
	datain => COUNT(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(7));

-- Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q[8]~I\ : cycloneii_io
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
	datain => COUNT(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(8));

-- Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q[9]~I\ : cycloneii_io
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
	datain => COUNT(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(9));

-- Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q[10]~I\ : cycloneii_io
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
	datain => COUNT(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(10));

-- Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q[11]~I\ : cycloneii_io
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
	datain => COUNT(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(11));

-- Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q[12]~I\ : cycloneii_io
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
	datain => COUNT(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(12));

-- Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q[13]~I\ : cycloneii_io
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
	datain => COUNT(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(13));

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q[14]~I\ : cycloneii_io
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
	datain => COUNT(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(14));

-- Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q[15]~I\ : cycloneii_io
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
	datain => COUNT(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(15));
END structure;


