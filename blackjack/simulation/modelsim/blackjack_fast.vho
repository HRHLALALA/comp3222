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

-- DATE "10/23/2018 05:06:43"

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

ENTITY 	pin_ass IS
    PORT (
	clock_50 : IN std_logic;
	sw : IN std_logic_vector(9 DOWNTO 0);
	key : IN std_logic_vector(0 DOWNTO 0);
	ledg : OUT std_logic_vector(7 DOWNTO 5);
	ledr : OUT std_logic_vector(9 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0)
	);
END pin_ass;

-- Design Ports Information
-- sw[5]	=>  Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[6]	=>  Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[7]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[8]	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[9]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ledg[5]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[6]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[7]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[0]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[1]	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[2]	=>  Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[3]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[4]	=>  Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[5]	=>  Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[6]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[7]	=>  Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[8]	=>  Location: PIN_R18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[9]	=>  Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[0]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[1]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[2]	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[3]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[4]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[5]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[6]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[0]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[1]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[2]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[3]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[4]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[5]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[6]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clock_50	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[0]	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[4]	=>  Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF pin_ass IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock_50 : std_logic;
SIGNAL ww_sw : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_key : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_ledg : std_logic_vector(7 DOWNTO 5);
SIGNAL ww_ledr : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL \clock_50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \do|BJ_DP|Add1~0_combout\ : std_logic;
SIGNAL \do|BJ_DP|Equal0~0_combout\ : std_logic;
SIGNAL \do|BJ_FSM|ace[0]~6\ : std_logic;
SIGNAL \do|BJ_FSM|ace[1]~7_combout\ : std_logic;
SIGNAL \do|BJ_FSM|ace[1]~8\ : std_logic;
SIGNAL \do|BJ_FSM|ace[2]~9_combout\ : std_logic;
SIGNAL \do|BJ_FSM|ace[2]~10\ : std_logic;
SIGNAL \do|BJ_FSM|ace[3]~11_combout\ : std_logic;
SIGNAL \do|BJ_FSM|ace[3]~12\ : std_logic;
SIGNAL \do|BJ_FSM|ace[4]~13_combout\ : std_logic;
SIGNAL \do|BJ_FSM|ace[0]~15_combout\ : std_logic;
SIGNAL \do|BJ_FSM|ace[0]~5_combout\ : std_logic;
SIGNAL \do|BJ_FSM|Equal0~0_combout\ : std_logic;
SIGNAL \do|BJ_FSM|y~19_combout\ : std_logic;
SIGNAL \do|BJ_FSM|y~20_combout\ : std_logic;
SIGNAL \do|BJ_FSM|y.S5~regout\ : std_logic;
SIGNAL \do|BJ_FSM|Selector2~0_combout\ : std_logic;
SIGNAL \do|BJ_FSM|y.S3~regout\ : std_logic;
SIGNAL \do|BJ_DP|currentScore~2_combout\ : std_logic;
SIGNAL \do|BJ_DP|currentScore~5_combout\ : std_logic;
SIGNAL \do|BJ_DP|currentScore~6_combout\ : std_logic;
SIGNAL \do|BJ_DP|Equal1~0_combout\ : std_logic;
SIGNAL \do|BJ_DP|Equal1~1_combout\ : std_logic;
SIGNAL \do|BJ_DP|data[0]~5_combout\ : std_logic;
SIGNAL \do|BJ_DP|Add1~1\ : std_logic;
SIGNAL \do|BJ_DP|Add1~2_combout\ : std_logic;
SIGNAL \do|BJ_DP|data~3_combout\ : std_logic;
SIGNAL \do|BJ_DP|Add1~3\ : std_logic;
SIGNAL \do|BJ_DP|Add1~4_combout\ : std_logic;
SIGNAL \do|BJ_DP|data~1_combout\ : std_logic;
SIGNAL \do|BJ_DP|data~2_combout\ : std_logic;
SIGNAL \do|BJ_DP|LessThan1~0_combout\ : std_logic;
SIGNAL \do|BJ_DP|LessThan2~0_combout\ : std_logic;
SIGNAL \do|BJ_FSM|finished~0_combout\ : std_logic;
SIGNAL \do|BJ_DP|currentScore~3_combout\ : std_logic;
SIGNAL \do|BJ_DP|currentScore~4_combout\ : std_logic;
SIGNAL \do|BJ_DP|Equal2~0_combout\ : std_logic;
SIGNAL \do|BJ_FSM|Selector4~0_combout\ : std_logic;
SIGNAL \do|BJ_FSM|y.S6~regout\ : std_logic;
SIGNAL \do|BJ_FSM|Selector3~0_combout\ : std_logic;
SIGNAL \do|BJ_FSM|Selector3~1_combout\ : std_logic;
SIGNAL \do|BJ_FSM|y.S4~regout\ : std_logic;
SIGNAL \do|BJ_FSM|Selector6~1_combout\ : std_logic;
SIGNAL \do|BJ_FSM|y.S8~regout\ : std_logic;
SIGNAL \do|BJ_FSM|Selector0~0_combout\ : std_logic;
SIGNAL \do|BJ_FSM|y.S1~regout\ : std_logic;
SIGNAL \do|BJ_FSM|Selector1~0_combout\ : std_logic;
SIGNAL \do|BJ_FSM|y.S2~regout\ : std_logic;
SIGNAL \do|BJ_DP|currentScore~0_combout\ : std_logic;
SIGNAL \do|BJ_DP|currentScore~1_combout\ : std_logic;
SIGNAL \do|BJ_DP|Add0~1_combout\ : std_logic;
SIGNAL \do|BJ_DP|Add1~5\ : std_logic;
SIGNAL \do|BJ_DP|Add1~6_combout\ : std_logic;
SIGNAL \do|BJ_DP|data~4_combout\ : std_logic;
SIGNAL \do|BJ_DP|Add0~0_combout\ : std_logic;
SIGNAL \do|BJ_DP|Add1~7\ : std_logic;
SIGNAL \do|BJ_DP|Add1~8_combout\ : std_logic;
SIGNAL \do|BJ_DP|data~0_combout\ : std_logic;
SIGNAL \do|BJ_FSM|WideOr6~0_combout\ : std_logic;
SIGNAL \do|BJ_FSM|Selector6~0_combout\ : std_logic;
SIGNAL \clock_50~combout\ : std_logic;
SIGNAL \clock_50~clkctrl_outclk\ : std_logic;
SIGNAL \do|BJ_FSM|y.S7~0_combout\ : std_logic;
SIGNAL \do|BJ_FSM|y.S7~regout\ : std_logic;
SIGNAL \do|BJ_FSM|Selector7~0_combout\ : std_logic;
SIGNAL \do|BJ_DP|score[2]~feeder_combout\ : std_logic;
SIGNAL \do|BJ_FSM|WideOr8~0_combout\ : std_logic;
SIGNAL \do|BJ_FSM|WideOr7~0_combout\ : std_logic;
SIGNAL \do|BJ_FSM|WideOr6~1_combout\ : std_logic;
SIGNAL \do|BJ_7seg|Mux1~0_combout\ : std_logic;
SIGNAL \do|BJ_7seg|LessThan0~0_combout\ : std_logic;
SIGNAL \do|BJ_7seg|Mux1~1_combout\ : std_logic;
SIGNAL \do|BJ_7seg|digit0[3]~2_combout\ : std_logic;
SIGNAL \do|BJ_7seg|digit0[1]~0_combout\ : std_logic;
SIGNAL \do|BJ_7seg|digit0[2]~1_combout\ : std_logic;
SIGNAL \do|BJ_7seg|Mux13~0_combout\ : std_logic;
SIGNAL \do|BJ_7seg|Mux12~0_combout\ : std_logic;
SIGNAL \do|BJ_7seg|Mux11~0_combout\ : std_logic;
SIGNAL \do|BJ_7seg|Mux10~0_combout\ : std_logic;
SIGNAL \do|BJ_7seg|Mux9~0_combout\ : std_logic;
SIGNAL \do|BJ_7seg|Mux8~0_combout\ : std_logic;
SIGNAL \do|BJ_7seg|Mux7~0_combout\ : std_logic;
SIGNAL \sw~combout\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \key~combout\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \do|BJ_DP|data\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \do|BJ_DP|currentScore\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \do|BJ_DP|score\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \do|BJ_FSM|ace\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_key~combout\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \do|BJ_7seg|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \do|BJ_7seg|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \do|BJ_7seg|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \do|BJ_FSM|ALT_INV_WideOr6~1_combout\ : std_logic;
SIGNAL \do|BJ_FSM|ALT_INV_WideOr7~0_combout\ : std_logic;

BEGIN

ww_clock_50 <= clock_50;
ww_sw <= sw;
ww_key <= key;
ledg <= ww_ledg;
ledr <= ww_ledr;
HEX1 <= ww_HEX1;
HEX0 <= ww_HEX0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock_50~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock_50~combout\);
\ALT_INV_key~combout\(0) <= NOT \key~combout\(0);
\do|BJ_7seg|ALT_INV_Mux7~0_combout\ <= NOT \do|BJ_7seg|Mux7~0_combout\;
\do|BJ_7seg|ALT_INV_LessThan0~0_combout\ <= NOT \do|BJ_7seg|LessThan0~0_combout\;
\do|BJ_7seg|ALT_INV_Mux1~0_combout\ <= NOT \do|BJ_7seg|Mux1~0_combout\;
\do|BJ_FSM|ALT_INV_WideOr6~1_combout\ <= NOT \do|BJ_FSM|WideOr6~1_combout\;
\do|BJ_FSM|ALT_INV_WideOr7~0_combout\ <= NOT \do|BJ_FSM|WideOr7~0_combout\;

-- Location: LCCOMB_X48_Y5_N20
\do|BJ_DP|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \do|BJ_DP|Add1~0_combout\ = (\do|BJ_DP|data\(0) & (\do|BJ_DP|currentScore\(0) $ (VCC))) # (!\do|BJ_DP|data\(0) & (\do|BJ_DP|currentScore\(0) & VCC))
-- \do|BJ_DP|Add1~1\ = CARRY((\do|BJ_DP|data\(0) & \do|BJ_DP|currentScore\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \do|BJ_DP|data\(0),
	datab => \do|BJ_DP|currentScore\(0),
	datad => VCC,
	combout => \do|BJ_DP|Add1~0_combout\,
	cout => \do|BJ_DP|Add1~1\);

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw[1]~I\ : cycloneii_io
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
	padio => ww_sw(1),
	combout => \sw~combout\(1));

-- Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw[0]~I\ : cycloneii_io
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
	padio => ww_sw(0),
	combout => \sw~combout\(0));

-- Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw[3]~I\ : cycloneii_io
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
	padio => ww_sw(3),
	combout => \sw~combout\(3));

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw[2]~I\ : cycloneii_io
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
	padio => ww_sw(2),
	combout => \sw~combout\(2));

-- Location: LCCOMB_X49_Y5_N16
\do|BJ_DP|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \do|BJ_DP|Equal0~0_combout\ = (!\sw~combout\(1) & (\sw~combout\(0) & (!\sw~combout\(3) & !\sw~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(1),
	datab => \sw~combout\(0),
	datac => \sw~combout\(3),
	datad => \sw~combout\(2),
	combout => \do|BJ_DP|Equal0~0_combout\);

-- Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw[4]~I\ : cycloneii_io
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
	padio => ww_sw(4),
	combout => \sw~combout\(4));

-- Location: LCCOMB_X46_Y5_N6
\do|BJ_FSM|ace[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \do|BJ_FSM|ace[0]~5_combout\ = \do|BJ_FSM|ace\(0) $ (VCC)
-- \do|BJ_FSM|ace[0]~6\ = CARRY(\do|BJ_FSM|ace\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \do|BJ_FSM|ace\(0),
	datad => VCC,
	combout => \do|BJ_FSM|ace[0]~5_combout\,
	cout => \do|BJ_FSM|ace[0]~6\);

-- Location: LCCOMB_X46_Y5_N8
\do|BJ_FSM|ace[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \do|BJ_FSM|ace[1]~7_combout\ = (\do|BJ_FSM|y.S6~regout\ & ((\do|BJ_FSM|ace\(1) & (!\do|BJ_FSM|ace[0]~6\)) # (!\do|BJ_FSM|ace\(1) & ((\do|BJ_FSM|ace[0]~6\) # (GND))))) # (!\do|BJ_FSM|y.S6~regout\ & ((\do|BJ_FSM|ace\(1) & (\do|BJ_FSM|ace[0]~6\ & VCC)) # 
-- (!\do|BJ_FSM|ace\(1) & (!\do|BJ_FSM|ace[0]~6\))))
-- \do|BJ_FSM|ace[1]~8\ = CARRY((\do|BJ_FSM|y.S6~regout\ & ((!\do|BJ_FSM|ace[0]~6\) # (!\do|BJ_FSM|ace\(1)))) # (!\do|BJ_FSM|y.S6~regout\ & (!\do|BJ_FSM|ace\(1) & !\do|BJ_FSM|ace[0]~6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \do|BJ_FSM|y.S6~regout\,
	datab => \do|BJ_FSM|ace\(1),
	datad => VCC,
	cin => \do|BJ_FSM|ace[0]~6\,
	combout => \do|BJ_FSM|ace[1]~7_combout\,
	cout => \do|BJ_FSM|ace[1]~8\);

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[0]~I\ : cycloneii_io
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
	padio => ww_key(0),
	combout => \key~combout\(0));

-- Location: LCCOMB_X46_Y5_N10
\do|BJ_FSM|ace[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \do|BJ_FSM|ace[2]~9_combout\ = ((\do|BJ_FSM|y.S6~regout\ $ (\do|BJ_FSM|ace\(2) $ (\do|BJ_FSM|ace[1]~8\)))) # (GND)
-- \do|BJ_FSM|ace[2]~10\ = CARRY((\do|BJ_FSM|y.S6~regout\ & (\do|BJ_FSM|ace\(2) & !\do|BJ_FSM|ace[1]~8\)) # (!\do|BJ_FSM|y.S6~regout\ & ((\do|BJ_FSM|ace\(2)) # (!\do|BJ_FSM|ace[1]~8\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \do|BJ_FSM|y.S6~regout\,
	datab => \do|BJ_FSM|ace\(2),
	datad => VCC,
	cin => \do|BJ_FSM|ace[1]~8\,
	combout => \do|BJ_FSM|ace[2]~9_combout\,
	cout => \do|BJ_FSM|ace[2]~10\);

-- Location: LCFF_X46_Y5_N11
\do|BJ_FSM|ace[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \do|BJ_FSM|ace[2]~9_combout\,
	aclr => \ALT_INV_key~combout\(0),
	ena => \do|BJ_FSM|ace[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \do|BJ_FSM|ace\(2));

-- Location: LCCOMB_X46_Y5_N12
\do|BJ_FSM|ace[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \do|BJ_FSM|ace[3]~11_combout\ = (\do|BJ_FSM|y.S6~regout\ & ((\do|BJ_FSM|ace\(3) & (!\do|BJ_FSM|ace[2]~10\)) # (!\do|BJ_FSM|ace\(3) & ((\do|BJ_FSM|ace[2]~10\) # (GND))))) # (!\do|BJ_FSM|y.S6~regout\ & ((\do|BJ_FSM|ace\(3) & (\do|BJ_FSM|ace[2]~10\ & VCC)) # 
-- (!\do|BJ_FSM|ace\(3) & (!\do|BJ_FSM|ace[2]~10\))))
-- \do|BJ_FSM|ace[3]~12\ = CARRY((\do|BJ_FSM|y.S6~regout\ & ((!\do|BJ_FSM|ace[2]~10\) # (!\do|BJ_FSM|ace\(3)))) # (!\do|BJ_FSM|y.S6~regout\ & (!\do|BJ_FSM|ace\(3) & !\do|BJ_FSM|ace[2]~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \do|BJ_FSM|y.S6~regout\,
	datab => \do|BJ_FSM|ace\(3),
	datad => VCC,
	cin => \do|BJ_FSM|ace[2]~10\,
	combout => \do|BJ_FSM|ace[3]~11_combout\,
	cout => \do|BJ_FSM|ace[3]~12\);

-- Location: LCFF_X46_Y5_N13
\do|BJ_FSM|ace[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \do|BJ_FSM|ace[3]~11_combout\,
	aclr => \ALT_INV_key~combout\(0),
	ena => \do|BJ_FSM|ace[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \do|BJ_FSM|ace\(3));

-- Location: LCCOMB_X46_Y5_N14
\do|BJ_FSM|ace[4]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \do|BJ_FSM|ace[4]~13_combout\ = \do|BJ_FSM|y.S6~regout\ $ (\do|BJ_FSM|ace\(4) $ (\do|BJ_FSM|ace[3]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \do|BJ_FSM|y.S6~regout\,
	datab => \do|BJ_FSM|ace\(4),
	cin => \do|BJ_FSM|ace[3]~12\,
	combout => \do|BJ_FSM|ace[4]~13_combout\);

-- Location: LCFF_X46_Y5_N15
\do|BJ_FSM|ace[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \do|BJ_FSM|ace[4]~13_combout\,
	aclr => \ALT_INV_key~combout\(0),
	ena => \do|BJ_FSM|ace[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \do|BJ_FSM|ace\(4));

-- Location: LCCOMB_X46_Y5_N2
\do|BJ_FSM|ace[0]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \do|BJ_FSM|ace[0]~15_combout\ = (\do|BJ_FSM|y.S6~regout\) # ((\do|BJ_FSM|y.S5~regout\ & ((\do|BJ_FSM|ace\(4)) # (\do|BJ_FSM|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \do|BJ_FSM|y.S6~regout\,
	datab => \do|BJ_FSM|y.S5~regout\,
	datac => \do|BJ_FSM|ace\(4),
	datad => \do|BJ_FSM|Equal0~0_combout\,
	combout => \do|BJ_FSM|ace[0]~15_combout\);

-- Location: LCFF_X46_Y5_N9
\do|BJ_FSM|ace[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \do|BJ_FSM|ace[1]~7_combout\,
	aclr => \ALT_INV_key~combout\(0),
	ena => \do|BJ_FSM|ace[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \do|BJ_FSM|ace\(1));

-- Location: LCFF_X46_Y5_N7
\do|BJ_FSM|ace[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \do|BJ_FSM|ace[0]~5_combout\,
	aclr => \ALT_INV_key~combout\(0),
	ena => \do|BJ_FSM|ace[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \do|BJ_FSM|ace\(0));

-- Location: LCCOMB_X46_Y5_N28
\do|BJ_FSM|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \do|BJ_FSM|Equal0~0_combout\ = (\do|BJ_FSM|ace\(3)) # ((\do|BJ_FSM|ace\(1)) # ((\do|BJ_FSM|ace\(2)) # (\do|BJ_FSM|ace\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \do|BJ_FSM|ace\(3),
	datab => \do|BJ_FSM|ace\(1),
	datac => \do|BJ_FSM|ace\(2),
	datad => \do|BJ_FSM|ace\(0),
	combout => \do|BJ_FSM|Equal0~0_combout\);

-- Location: LCCOMB_X47_Y5_N6
\do|BJ_FSM|y~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \do|BJ_FSM|y~19_combout\ = (\do|BJ_DP|LessThan2~0_combout\ & (\do|BJ_FSM|y.S4~regout\ & (\do|BJ_DP|data\(4) & \do|BJ_DP|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \do|BJ_DP|LessThan2~0_combout\,
	datab => \do|BJ_FSM|y.S4~regout\,
	datac => \do|BJ_DP|data\(4),
	datad => \do|BJ_DP|LessThan1~0_combout\,
	combout => \do|BJ_FSM|y~19_combout\);

-- Location: LCCOMB_X47_Y5_N30
\do|BJ_FSM|y~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \do|BJ_FSM|y~20_combout\ = (\do|BJ_FSM|y~19_combout\ & ((\do|BJ_FSM|ace\(4)) # (\do|BJ_FSM|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \do|BJ_FSM|ace\(4),
	datab => \do|BJ_FSM|Equal0~0_combout\,
	datad => \do|BJ_FSM|y~19_combout\,
	combout => \do|BJ_FSM|y~20_combout\);

-- Location: LCFF_X47_Y5_N31
\do|BJ_FSM|y.S5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \do|BJ_FSM|y~20_combout\,
	aclr => \ALT_INV_key~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \do|BJ_FSM|y.S5~regout\);

-- Location: LCCOMB_X49_Y5_N26
\do|BJ_FSM|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \do|BJ_FSM|Selector2~0_combout\ = (\do|BJ_FSM|y.S5~regout\) # ((\do|BJ_FSM|y.S2~regout\ & !\sw~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \do|BJ_FSM|y.S2~regout\,
	datac => \sw~combout\(4),
	datad => \do|BJ_FSM|y.S5~regout\,
	combout => \do|BJ_FSM|Selector2~0_combout\);

-- Location: LCFF_X49_Y5_N27
\do|BJ_FSM|y.S3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \do|BJ_FSM|Selector2~0_combout\,
	aclr => \ALT_INV_key~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \do|BJ_FSM|y.S3~regout\);

-- Location: LCFF_X48_Y5_N5
\do|BJ_DP|currentScore[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \do|BJ_FSM|y.S5~regout\,
	aclr => \ALT_INV_key~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \do|BJ_DP|currentScore\(4));

-- Location: LCCOMB_X49_Y5_N14
\do|BJ_DP|currentScore~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \do|BJ_DP|currentScore~2_combout\ = (\sw~combout\(3) & \do|BJ_FSM|y.S2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw~combout\(3),
	datad => \do|BJ_FSM|y.S2~regout\,
	combout => \do|BJ_DP|currentScore~2_combout\);

-- Location: LCFF_X48_Y5_N7
\do|BJ_DP|currentScore[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \do|BJ_DP|currentScore~2_combout\,
	aclr => \ALT_INV_key~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \do|BJ_DP|currentScore\(3));

-- Location: LCCOMB_X49_Y5_N2
\do|BJ_DP|currentScore~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \do|BJ_DP|currentScore~5_combout\ = (\sw~combout\(2) & (!\sw~combout\(3) & \do|BJ_FSM|y.S2~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(2),
	datac => \sw~combout\(3),
	datad => \do|BJ_FSM|y.S2~regout\,
	combout => \do|BJ_DP|currentScore~5_combout\);

-- Location: LCCOMB_X49_Y5_N30
\do|BJ_DP|currentScore~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \do|BJ_DP|currentScore~6_combout\ = (\do|BJ_DP|currentScore~5_combout\) # ((\do|BJ_FSM|y.S5~regout\ & ((\do|BJ_DP|Equal0~0_combout\) # (!\do|BJ_DP|currentScore~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \do|BJ_FSM|y.S5~regout\,
	datab => \do|BJ_DP|currentScore~0_combout\,
	datac => \do|BJ_DP|Equal0~0_combout\,
	datad => \do|BJ_DP|currentScore~5_combout\,
	combout => \do|BJ_DP|currentScore~6_combout\);

-- Location: LCFF_X49_Y5_N31
\do|BJ_DP|currentScore[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \do|BJ_DP|currentScore~6_combout\,
	aclr => \ALT_INV_key~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \do|BJ_DP|currentScore\(2));

-- Location: LCCOMB_X48_Y5_N6
\do|BJ_DP|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \do|BJ_DP|Equal1~0_combout\ = (\do|BJ_DP|currentScore\(1) & (\do|BJ_DP|currentScore\(4) & (!\do|BJ_DP|currentScore\(3) & \do|BJ_DP|currentScore\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \do|BJ_DP|currentScore\(1),
	datab => \do|BJ_DP|currentScore\(4),
	datac => \do|BJ_DP|currentScore\(3),
	datad => \do|BJ_DP|currentScore\(2),
	combout => \do|BJ_DP|Equal1~0_combout\);

-- Location: LCCOMB_X49_Y5_N24
\do|BJ_DP|Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \do|BJ_DP|Equal1~1_combout\ = (!\do|BJ_DP|currentScore\(0) & \do|BJ_DP|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \do|BJ_DP|currentScore\(0),
	datac => \do|BJ_DP|Equal1~0_combout\,
	combout => \do|BJ_DP|Equal1~1_combout\);

-- Location: LCCOMB_X48_Y5_N0
\do|BJ_DP|data[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \do|BJ_DP|data[0]~5_combout\ = (\do|BJ_FSM|y.S3~regout\ & ((\do|BJ_DP|Equal1~1_combout\ & ((\do|BJ_DP|data\(0)))) # (!\do|BJ_DP|Equal1~1_combout\ & (\do|BJ_DP|Add1~0_combout\)))) # (!\do|BJ_FSM|y.S3~regout\ & (((\do|BJ_DP|data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \do|BJ_DP|Add1~0_combout\,
	datab => \do|BJ_FSM|y.S3~regout\,
	datac => \do|BJ_DP|data\(0),
	datad => \do|BJ_DP|Equal1~1_combout\,
	combout => \do|BJ_DP|data[0]~5_combout\);

-- Location: LCFF_X48_Y5_N1
\do|BJ_DP|data[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \do|BJ_DP|data[0]~5_combout\,
	aclr => \ALT_INV_key~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \do|BJ_DP|data\(0));

-- Location: LCCOMB_X48_Y5_N22
\do|BJ_DP|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \do|BJ_DP|Add1~2_combout\ = (\do|BJ_DP|currentScore\(1) & ((\do|BJ_DP|data\(1) & (\do|BJ_DP|Add1~1\ & VCC)) # (!\do|BJ_DP|data\(1) & (!\do|BJ_DP|Add1~1\)))) # (!\do|BJ_DP|currentScore\(1) & ((\do|BJ_DP|data\(1) & (!\do|BJ_DP|Add1~1\)) # 
-- (!\do|BJ_DP|data\(1) & ((\do|BJ_DP|Add1~1\) # (GND)))))
-- \do|BJ_DP|Add1~3\ = CARRY((\do|BJ_DP|currentScore\(1) & (!\do|BJ_DP|data\(1) & !\do|BJ_DP|Add1~1\)) # (!\do|BJ_DP|currentScore\(1) & ((!\do|BJ_DP|Add1~1\) # (!\do|BJ_DP|data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \do|BJ_DP|currentScore\(1),
	datab => \do|BJ_DP|data\(1),
	datad => VCC,
	cin => \do|BJ_DP|Add1~1\,
	combout => \do|BJ_DP|Add1~2_combout\,
	cout => \do|BJ_DP|Add1~3\);

-- Location: LCCOMB_X48_Y5_N8
\do|BJ_DP|data~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \do|BJ_DP|data~3_combout\ = (\do|BJ_DP|Equal1~0_combout\ & ((\do|BJ_DP|currentScore\(0) & ((\do|BJ_DP|Add1~2_combout\))) # (!\do|BJ_DP|currentScore\(0) & (!\do|BJ_DP|data\(1))))) # (!\do|BJ_DP|Equal1~0_combout\ & (((\do|BJ_DP|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \do|BJ_DP|Equal1~0_combout\,
	datab => \do|BJ_DP|currentScore\(0),
	datac => \do|BJ_DP|data\(1),
	datad => \do|BJ_DP|Add1~2_combout\,
	combout => \do|BJ_DP|data~3_combout\);

-- Location: LCFF_X48_Y5_N9
\do|BJ_DP|data[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \do|BJ_DP|data~3_combout\,
	aclr => \ALT_INV_key~combout\(0),
	ena => \do|BJ_FSM|y.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \do|BJ_DP|data\(1));

-- Location: LCCOMB_X48_Y5_N24
\do|BJ_DP|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \do|BJ_DP|Add1~4_combout\ = ((\do|BJ_DP|data\(2) $ (\do|BJ_DP|currentScore\(2) $ (!\do|BJ_DP|Add1~3\)))) # (GND)
-- \do|BJ_DP|Add1~5\ = CARRY((\do|BJ_DP|data\(2) & ((\do|BJ_DP|currentScore\(2)) # (!\do|BJ_DP|Add1~3\))) # (!\do|BJ_DP|data\(2) & (\do|BJ_DP|currentScore\(2) & !\do|BJ_DP|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \do|BJ_DP|data\(2),
	datab => \do|BJ_DP|currentScore\(2),
	datad => VCC,
	cin => \do|BJ_DP|Add1~3\,
	combout => \do|BJ_DP|Add1~4_combout\,
	cout => \do|BJ_DP|Add1~5\);

-- Location: LCCOMB_X47_Y5_N14
\do|BJ_DP|data~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \do|BJ_DP|data~1_combout\ = \do|BJ_DP|data\(1) $ (!\do|BJ_DP|data\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \do|BJ_DP|data\(1),
	datad => \do|BJ_DP|data\(2),
	combout => \do|BJ_DP|data~1_combout\);

-- Location: LCCOMB_X48_Y5_N2
\do|BJ_DP|data~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \do|BJ_DP|data~2_combout\ = (\do|BJ_DP|Equal1~0_combout\ & ((\do|BJ_DP|currentScore\(0) & (\do|BJ_DP|Add1~4_combout\)) # (!\do|BJ_DP|currentScore\(0) & ((\do|BJ_DP|data~1_combout\))))) # (!\do|BJ_DP|Equal1~0_combout\ & (((\do|BJ_DP|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \do|BJ_DP|Equal1~0_combout\,
	datab => \do|BJ_DP|currentScore\(0),
	datac => \do|BJ_DP|Add1~4_combout\,
	datad => \do|BJ_DP|data~1_combout\,
	combout => \do|BJ_DP|data~2_combout\);

-- Location: LCFF_X48_Y5_N3
\do|BJ_DP|data[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \do|BJ_DP|data~2_combout\,
	aclr => \ALT_INV_key~combout\(0),
	ena => \do|BJ_FSM|y.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \do|BJ_DP|data\(2));

-- Location: LCCOMB_X48_Y5_N14
\do|BJ_DP|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \do|BJ_DP|LessThan1~0_combout\ = (\do|BJ_DP|data\(3)) # ((\do|BJ_DP|data\(0)) # ((\do|BJ_DP|data\(1)) # (\do|BJ_DP|data\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \do|BJ_DP|data\(3),
	datab => \do|BJ_DP|data\(0),
	datac => \do|BJ_DP|data\(1),
	datad => \do|BJ_DP|data\(2),
	combout => \do|BJ_DP|LessThan1~0_combout\);

-- Location: LCCOMB_X48_Y5_N4
\do|BJ_DP|LessThan2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \do|BJ_DP|LessThan2~0_combout\ = (\do|BJ_DP|data\(3)) # ((\do|BJ_DP|data\(1) & \do|BJ_DP|data\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \do|BJ_DP|data\(3),
	datab => \do|BJ_DP|data\(1),
	datad => \do|BJ_DP|data\(2),
	combout => \do|BJ_DP|LessThan2~0_combout\);

-- Location: LCCOMB_X47_Y5_N0
\do|BJ_FSM|finished~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \do|BJ_FSM|finished~0_combout\ = (\do|BJ_FSM|y.S4~regout\ & (\do|BJ_DP|LessThan1~0_combout\ & (\do|BJ_DP|data\(4) & !\do|BJ_DP|LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \do|BJ_FSM|y.S4~regout\,
	datab => \do|BJ_DP|LessThan1~0_combout\,
	datac => \do|BJ_DP|data\(4),
	datad => \do|BJ_DP|LessThan2~0_combout\,
	combout => \do|BJ_FSM|finished~0_combout\);

-- Location: LCCOMB_X49_Y5_N4
\do|BJ_DP|currentScore~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \do|BJ_DP|currentScore~3_combout\ = (\do|BJ_FSM|y.S2~regout\ & ((\sw~combout\(1)) # ((\sw~combout\(3) & \sw~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(1),
	datab => \do|BJ_FSM|y.S2~regout\,
	datac => \sw~combout\(3),
	datad => \sw~combout\(2),
	combout => \do|BJ_DP|currentScore~3_combout\);

-- Location: LCCOMB_X48_Y5_N12
\do|BJ_DP|currentScore~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \do|BJ_DP|currentScore~4_combout\ = (\do|BJ_FSM|y.S5~regout\) # (\do|BJ_DP|currentScore~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \do|BJ_FSM|y.S5~regout\,
	datad => \do|BJ_DP|currentScore~3_combout\,
	combout => \do|BJ_DP|currentScore~4_combout\);

-- Location: LCFF_X48_Y5_N13
\do|BJ_DP|currentScore[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \do|BJ_DP|currentScore~4_combout\,
	aclr => \ALT_INV_key~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \do|BJ_DP|currentScore\(1));

-- Location: LCCOMB_X48_Y5_N10
\do|BJ_DP|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \do|BJ_DP|Equal2~0_combout\ = (\do|BJ_DP|currentScore\(3) & (!\do|BJ_DP|currentScore\(2) & (!\do|BJ_DP|currentScore\(4) & \do|BJ_DP|currentScore\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \do|BJ_DP|currentScore\(3),
	datab => \do|BJ_DP|currentScore\(2),
	datac => \do|BJ_DP|currentScore\(4),
	datad => \do|BJ_DP|currentScore\(1),
	combout => \do|BJ_DP|Equal2~0_combout\);

-- Location: LCCOMB_X47_Y5_N26
\do|BJ_FSM|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \do|BJ_FSM|Selector4~0_combout\ = (\do|BJ_DP|Equal2~0_combout\ & (\do|BJ_DP|currentScore\(0) & \do|BJ_FSM|y.S3~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \do|BJ_DP|Equal2~0_combout\,
	datac => \do|BJ_DP|currentScore\(0),
	datad => \do|BJ_FSM|y.S3~regout\,
	combout => \do|BJ_FSM|Selector4~0_combout\);

-- Location: LCFF_X47_Y5_N27
\do|BJ_FSM|y.S6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \do|BJ_FSM|Selector4~0_combout\,
	aclr => \ALT_INV_key~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \do|BJ_FSM|y.S6~regout\);

-- Location: LCCOMB_X47_Y5_N12
\do|BJ_FSM|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \do|BJ_FSM|Selector3~0_combout\ = (\do|BJ_FSM|y.S6~regout\) # ((\do|BJ_FSM|y.S3~regout\ & ((!\do|BJ_DP|Equal2~0_combout\) # (!\do|BJ_DP|currentScore\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \do|BJ_DP|currentScore\(0),
	datab => \do|BJ_FSM|y.S3~regout\,
	datac => \do|BJ_DP|Equal2~0_combout\,
	datad => \do|BJ_FSM|y.S6~regout\,
	combout => \do|BJ_FSM|Selector3~0_combout\);

-- Location: LCCOMB_X47_Y5_N8
\do|BJ_FSM|Selector3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \do|BJ_FSM|Selector3~1_combout\ = (\do|BJ_FSM|finished~0_combout\) # (\do|BJ_FSM|Selector3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \do|BJ_FSM|finished~0_combout\,
	datad => \do|BJ_FSM|Selector3~0_combout\,
	combout => \do|BJ_FSM|Selector3~1_combout\);

-- Location: LCFF_X47_Y5_N9
\do|BJ_FSM|y.S4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \do|BJ_FSM|Selector3~1_combout\,
	aclr => \ALT_INV_key~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \do|BJ_FSM|y.S4~regout\);

-- Location: LCCOMB_X47_Y5_N20
\do|BJ_FSM|Selector6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \do|BJ_FSM|Selector6~1_combout\ = (\do|BJ_FSM|y.S4~regout\ & ((!\do|BJ_DP|LessThan1~0_combout\) # (!\do|BJ_DP|data\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \do|BJ_FSM|y.S4~regout\,
	datac => \do|BJ_DP|data\(4),
	datad => \do|BJ_DP|LessThan1~0_combout\,
	combout => \do|BJ_FSM|Selector6~1_combout\);

-- Location: LCFF_X47_Y5_N21
\do|BJ_FSM|y.S8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \do|BJ_FSM|Selector6~1_combout\,
	aclr => \ALT_INV_key~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \do|BJ_FSM|y.S8~regout\);

-- Location: LCCOMB_X49_Y5_N12
\do|BJ_FSM|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \do|BJ_FSM|Selector0~0_combout\ = (!\do|BJ_FSM|y.S8~regout\ & ((\sw~combout\(4)) # (\do|BJ_FSM|y.S1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(4),
	datac => \do|BJ_FSM|y.S1~regout\,
	datad => \do|BJ_FSM|y.S8~regout\,
	combout => \do|BJ_FSM|Selector0~0_combout\);

-- Location: LCFF_X49_Y5_N13
\do|BJ_FSM|y.S1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \do|BJ_FSM|Selector0~0_combout\,
	aclr => \ALT_INV_key~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \do|BJ_FSM|y.S1~regout\);

-- Location: LCCOMB_X49_Y5_N28
\do|BJ_FSM|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \do|BJ_FSM|Selector1~0_combout\ = (\sw~combout\(4) & ((\do|BJ_FSM|y.S2~regout\) # (!\do|BJ_FSM|y.S1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(4),
	datac => \do|BJ_FSM|y.S2~regout\,
	datad => \do|BJ_FSM|y.S1~regout\,
	combout => \do|BJ_FSM|Selector1~0_combout\);

-- Location: LCFF_X49_Y5_N29
\do|BJ_FSM|y.S2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \do|BJ_FSM|Selector1~0_combout\,
	aclr => \ALT_INV_key~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \do|BJ_FSM|y.S2~regout\);

-- Location: LCCOMB_X49_Y5_N22
\do|BJ_DP|currentScore~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \do|BJ_DP|currentScore~0_combout\ = (\do|BJ_FSM|y.S2~regout\ & ((!\sw~combout\(3)) # (!\sw~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(2),
	datac => \sw~combout\(3),
	datad => \do|BJ_FSM|y.S2~regout\,
	combout => \do|BJ_DP|currentScore~0_combout\);

-- Location: LCCOMB_X49_Y5_N20
\do|BJ_DP|currentScore~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \do|BJ_DP|currentScore~1_combout\ = (\sw~combout\(0) & (!\do|BJ_DP|Equal0~0_combout\ & \do|BJ_DP|currentScore~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw~combout\(0),
	datac => \do|BJ_DP|Equal0~0_combout\,
	datad => \do|BJ_DP|currentScore~0_combout\,
	combout => \do|BJ_DP|currentScore~1_combout\);

-- Location: LCFF_X49_Y5_N21
\do|BJ_DP|currentScore[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \do|BJ_DP|currentScore~1_combout\,
	aclr => \ALT_INV_key~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \do|BJ_DP|currentScore\(0));

-- Location: LCCOMB_X47_Y5_N4
\do|BJ_DP|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \do|BJ_DP|Add0~1_combout\ = \do|BJ_DP|data\(3) $ (((\do|BJ_DP|data\(1)) # (\do|BJ_DP|data\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \do|BJ_DP|data\(3),
	datac => \do|BJ_DP|data\(1),
	datad => \do|BJ_DP|data\(2),
	combout => \do|BJ_DP|Add0~1_combout\);

-- Location: LCCOMB_X48_Y5_N26
\do|BJ_DP|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \do|BJ_DP|Add1~6_combout\ = (\do|BJ_DP|currentScore\(3) & ((\do|BJ_DP|data\(3) & (\do|BJ_DP|Add1~5\ & VCC)) # (!\do|BJ_DP|data\(3) & (!\do|BJ_DP|Add1~5\)))) # (!\do|BJ_DP|currentScore\(3) & ((\do|BJ_DP|data\(3) & (!\do|BJ_DP|Add1~5\)) # 
-- (!\do|BJ_DP|data\(3) & ((\do|BJ_DP|Add1~5\) # (GND)))))
-- \do|BJ_DP|Add1~7\ = CARRY((\do|BJ_DP|currentScore\(3) & (!\do|BJ_DP|data\(3) & !\do|BJ_DP|Add1~5\)) # (!\do|BJ_DP|currentScore\(3) & ((!\do|BJ_DP|Add1~5\) # (!\do|BJ_DP|data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \do|BJ_DP|currentScore\(3),
	datab => \do|BJ_DP|data\(3),
	datad => VCC,
	cin => \do|BJ_DP|Add1~5\,
	combout => \do|BJ_DP|Add1~6_combout\,
	cout => \do|BJ_DP|Add1~7\);

-- Location: LCCOMB_X48_Y5_N30
\do|BJ_DP|data~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \do|BJ_DP|data~4_combout\ = (\do|BJ_DP|Equal1~0_combout\ & ((\do|BJ_DP|currentScore\(0) & ((\do|BJ_DP|Add1~6_combout\))) # (!\do|BJ_DP|currentScore\(0) & (\do|BJ_DP|Add0~1_combout\)))) # (!\do|BJ_DP|Equal1~0_combout\ & (((\do|BJ_DP|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \do|BJ_DP|Equal1~0_combout\,
	datab => \do|BJ_DP|currentScore\(0),
	datac => \do|BJ_DP|Add0~1_combout\,
	datad => \do|BJ_DP|Add1~6_combout\,
	combout => \do|BJ_DP|data~4_combout\);

-- Location: LCFF_X48_Y5_N31
\do|BJ_DP|data[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \do|BJ_DP|data~4_combout\,
	aclr => \ALT_INV_key~combout\(0),
	ena => \do|BJ_FSM|y.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \do|BJ_DP|data\(3));

-- Location: LCCOMB_X48_Y5_N18
\do|BJ_DP|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \do|BJ_DP|Add0~0_combout\ = \do|BJ_DP|data\(4) $ (((\do|BJ_DP|data\(3) & ((\do|BJ_DP|data\(1)) # (\do|BJ_DP|data\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \do|BJ_DP|data\(1),
	datab => \do|BJ_DP|data\(2),
	datac => \do|BJ_DP|data\(3),
	datad => \do|BJ_DP|data\(4),
	combout => \do|BJ_DP|Add0~0_combout\);

-- Location: LCCOMB_X48_Y5_N28
\do|BJ_DP|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \do|BJ_DP|Add1~8_combout\ = \do|BJ_DP|currentScore\(4) $ (\do|BJ_DP|Add1~7\ $ (!\do|BJ_DP|data\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \do|BJ_DP|currentScore\(4),
	datad => \do|BJ_DP|data\(4),
	cin => \do|BJ_DP|Add1~7\,
	combout => \do|BJ_DP|Add1~8_combout\);

-- Location: LCCOMB_X48_Y5_N16
\do|BJ_DP|data~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \do|BJ_DP|data~0_combout\ = (\do|BJ_DP|Equal1~0_combout\ & ((\do|BJ_DP|currentScore\(0) & ((\do|BJ_DP|Add1~8_combout\))) # (!\do|BJ_DP|currentScore\(0) & (!\do|BJ_DP|Add0~0_combout\)))) # (!\do|BJ_DP|Equal1~0_combout\ & (((\do|BJ_DP|Add1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \do|BJ_DP|Equal1~0_combout\,
	datab => \do|BJ_DP|currentScore\(0),
	datac => \do|BJ_DP|Add0~0_combout\,
	datad => \do|BJ_DP|Add1~8_combout\,
	combout => \do|BJ_DP|data~0_combout\);

-- Location: LCFF_X48_Y5_N17
\do|BJ_DP|data[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \do|BJ_DP|data~0_combout\,
	aclr => \ALT_INV_key~combout\(0),
	ena => \do|BJ_FSM|y.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \do|BJ_DP|data\(4));

-- Location: LCCOMB_X49_Y5_N0
\do|BJ_FSM|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \do|BJ_FSM|WideOr6~0_combout\ = (\do|BJ_FSM|y.S1~regout\ & !\do|BJ_FSM|y.S3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \do|BJ_FSM|y.S1~regout\,
	datad => \do|BJ_FSM|y.S3~regout\,
	combout => \do|BJ_FSM|WideOr6~0_combout\);

-- Location: LCCOMB_X49_Y5_N6
\do|BJ_FSM|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \do|BJ_FSM|Selector6~0_combout\ = ((\do|BJ_FSM|y.S4~regout\ & ((!\do|BJ_DP|LessThan1~0_combout\) # (!\do|BJ_DP|data\(4))))) # (!\do|BJ_FSM|WideOr6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \do|BJ_DP|data\(4),
	datab => \do|BJ_FSM|y.S4~regout\,
	datac => \do|BJ_DP|LessThan1~0_combout\,
	datad => \do|BJ_FSM|WideOr6~0_combout\,
	combout => \do|BJ_FSM|Selector6~0_combout\);

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clock_50~I\ : cycloneii_io
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
	padio => ww_clock_50,
	combout => \clock_50~combout\);

-- Location: CLKCTRL_G2
\clock_50~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock_50~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock_50~clkctrl_outclk\);

-- Location: LCCOMB_X47_Y5_N18
\do|BJ_FSM|y.S7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \do|BJ_FSM|y.S7~0_combout\ = (\do|BJ_FSM|y.S7~regout\) # ((!\do|BJ_FSM|ace\(4) & (!\do|BJ_FSM|Equal0~0_combout\ & \do|BJ_FSM|y~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \do|BJ_FSM|ace\(4),
	datab => \do|BJ_FSM|Equal0~0_combout\,
	datac => \do|BJ_FSM|y.S7~regout\,
	datad => \do|BJ_FSM|y~19_combout\,
	combout => \do|BJ_FSM|y.S7~0_combout\);

-- Location: LCFF_X47_Y5_N19
\do|BJ_FSM|y.S7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \do|BJ_FSM|y.S7~0_combout\,
	aclr => \ALT_INV_key~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \do|BJ_FSM|y.S7~regout\);

-- Location: LCCOMB_X47_Y5_N10
\do|BJ_FSM|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \do|BJ_FSM|Selector7~0_combout\ = (\do|BJ_FSM|y.S8~regout\) # ((\do|BJ_FSM|y.S7~regout\) # (\do|BJ_FSM|finished~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \do|BJ_FSM|y.S8~regout\,
	datab => \do|BJ_FSM|y.S7~regout\,
	datad => \do|BJ_FSM|finished~0_combout\,
	combout => \do|BJ_FSM|Selector7~0_combout\);

-- Location: LCFF_X47_Y5_N11
\do|BJ_DP|score[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \do|BJ_DP|data\(0),
	aclr => \ALT_INV_key~combout\(0),
	sload => VCC,
	ena => \do|BJ_FSM|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \do|BJ_DP|score\(0));

-- Location: LCFF_X47_Y5_N29
\do|BJ_DP|score[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \do|BJ_DP|data\(1),
	aclr => \ALT_INV_key~combout\(0),
	sload => VCC,
	ena => \do|BJ_FSM|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \do|BJ_DP|score\(1));

-- Location: LCCOMB_X47_Y5_N22
\do|BJ_DP|score[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \do|BJ_DP|score[2]~feeder_combout\ = \do|BJ_DP|data\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \do|BJ_DP|data\(2),
	combout => \do|BJ_DP|score[2]~feeder_combout\);

-- Location: LCFF_X47_Y5_N23
\do|BJ_DP|score[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	datain => \do|BJ_DP|score[2]~feeder_combout\,
	aclr => \ALT_INV_key~combout\(0),
	ena => \do|BJ_FSM|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \do|BJ_DP|score\(2));

-- Location: LCFF_X47_Y5_N25
\do|BJ_DP|score[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \do|BJ_DP|data\(3),
	aclr => \ALT_INV_key~combout\(0),
	sload => VCC,
	ena => \do|BJ_FSM|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \do|BJ_DP|score\(3));

-- Location: LCFF_X47_Y5_N1
\do|BJ_DP|score[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_50~clkctrl_outclk\,
	sdata => \do|BJ_DP|data\(4),
	aclr => \ALT_INV_key~combout\(0),
	sload => VCC,
	ena => \do|BJ_FSM|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \do|BJ_DP|score\(4));

-- Location: LCCOMB_X49_Y5_N8
\do|BJ_FSM|WideOr8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \do|BJ_FSM|WideOr8~0_combout\ = ((\do|BJ_FSM|y.S5~regout\) # ((\do|BJ_FSM|y.S7~regout\) # (\do|BJ_FSM|y.S3~regout\))) # (!\do|BJ_FSM|y.S1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \do|BJ_FSM|y.S1~regout\,
	datab => \do|BJ_FSM|y.S5~regout\,
	datac => \do|BJ_FSM|y.S7~regout\,
	datad => \do|BJ_FSM|y.S3~regout\,
	combout => \do|BJ_FSM|WideOr8~0_combout\);

-- Location: LCCOMB_X49_Y5_N10
\do|BJ_FSM|WideOr7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \do|BJ_FSM|WideOr7~0_combout\ = ((\do|BJ_FSM|y.S5~regout\) # ((\do|BJ_FSM|y.S4~regout\) # (\do|BJ_FSM|y.S8~regout\))) # (!\do|BJ_FSM|y.S1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \do|BJ_FSM|y.S1~regout\,
	datab => \do|BJ_FSM|y.S5~regout\,
	datac => \do|BJ_FSM|y.S4~regout\,
	datad => \do|BJ_FSM|y.S8~regout\,
	combout => \do|BJ_FSM|WideOr7~0_combout\);

-- Location: LCCOMB_X49_Y5_N18
\do|BJ_FSM|WideOr6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \do|BJ_FSM|WideOr6~1_combout\ = ((\do|BJ_FSM|y.S2~regout\) # ((\do|BJ_FSM|y.S8~regout\) # (\do|BJ_FSM|y.S3~regout\))) # (!\do|BJ_FSM|y.S1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \do|BJ_FSM|y.S1~regout\,
	datab => \do|BJ_FSM|y.S2~regout\,
	datac => \do|BJ_FSM|y.S8~regout\,
	datad => \do|BJ_FSM|y.S3~regout\,
	combout => \do|BJ_FSM|WideOr6~1_combout\);

-- Location: LCCOMB_X8_Y20_N12
\do|BJ_7seg|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \do|BJ_7seg|Mux1~0_combout\ = (\do|BJ_DP|score\(3) & ((\do|BJ_DP|score\(4)) # ((!\do|BJ_DP|score\(1) & !\do|BJ_DP|score\(2))))) # (!\do|BJ_DP|score\(3) & (((\do|BJ_DP|score\(2)) # (!\do|BJ_DP|score\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \do|BJ_DP|score\(1),
	datab => \do|BJ_DP|score\(2),
	datac => \do|BJ_DP|score\(3),
	datad => \do|BJ_DP|score\(4),
	combout => \do|BJ_7seg|Mux1~0_combout\);

-- Location: LCCOMB_X8_Y20_N22
\do|BJ_7seg|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \do|BJ_7seg|LessThan0~0_combout\ = ((!\do|BJ_DP|score\(2) & !\do|BJ_DP|score\(3))) # (!\do|BJ_DP|score\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \do|BJ_DP|score\(2),
	datac => \do|BJ_DP|score\(3),
	datad => \do|BJ_DP|score\(4),
	combout => \do|BJ_7seg|LessThan0~0_combout\);

-- Location: LCCOMB_X8_Y20_N0
\do|BJ_7seg|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \do|BJ_7seg|Mux1~1_combout\ = (\do|BJ_DP|score\(4)) # ((\do|BJ_DP|score\(3) & ((\do|BJ_DP|score\(1)) # (\do|BJ_DP|score\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \do|BJ_DP|score\(1),
	datab => \do|BJ_DP|score\(2),
	datac => \do|BJ_DP|score\(3),
	datad => \do|BJ_DP|score\(4),
	combout => \do|BJ_7seg|Mux1~1_combout\);

-- Location: LCCOMB_X8_Y20_N10
\do|BJ_7seg|digit0[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \do|BJ_7seg|digit0[3]~2_combout\ = (\do|BJ_DP|score\(1) & (\do|BJ_DP|score\(4) & (\do|BJ_DP|score\(2) $ (!\do|BJ_DP|score\(3))))) # (!\do|BJ_DP|score\(1) & (\do|BJ_DP|score\(3) & (\do|BJ_DP|score\(2) $ (!\do|BJ_DP|score\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \do|BJ_DP|score\(1),
	datab => \do|BJ_DP|score\(2),
	datac => \do|BJ_DP|score\(3),
	datad => \do|BJ_DP|score\(4),
	combout => \do|BJ_7seg|digit0[3]~2_combout\);

-- Location: LCCOMB_X8_Y20_N26
\do|BJ_7seg|digit0[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \do|BJ_7seg|digit0[1]~0_combout\ = (\do|BJ_DP|score\(3) & ((\do|BJ_DP|score\(1) & ((\do|BJ_DP|score\(4)))) # (!\do|BJ_DP|score\(1) & (\do|BJ_DP|score\(2) & !\do|BJ_DP|score\(4))))) # (!\do|BJ_DP|score\(3) & (\do|BJ_DP|score\(1) $ (((!\do|BJ_DP|score\(2) & 
-- \do|BJ_DP|score\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \do|BJ_DP|score\(1),
	datab => \do|BJ_DP|score\(2),
	datac => \do|BJ_DP|score\(3),
	datad => \do|BJ_DP|score\(4),
	combout => \do|BJ_7seg|digit0[1]~0_combout\);

-- Location: LCCOMB_X8_Y20_N4
\do|BJ_7seg|digit0[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \do|BJ_7seg|digit0[2]~1_combout\ = (\do|BJ_DP|score\(2) & (!\do|BJ_DP|score\(4) & ((\do|BJ_DP|score\(1)) # (!\do|BJ_DP|score\(3))))) # (!\do|BJ_DP|score\(2) & (\do|BJ_DP|score\(4) & ((\do|BJ_DP|score\(3)) # (!\do|BJ_DP|score\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \do|BJ_DP|score\(1),
	datab => \do|BJ_DP|score\(2),
	datac => \do|BJ_DP|score\(3),
	datad => \do|BJ_DP|score\(4),
	combout => \do|BJ_7seg|digit0[2]~1_combout\);

-- Location: LCCOMB_X1_Y20_N28
\do|BJ_7seg|Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \do|BJ_7seg|Mux13~0_combout\ = (!\do|BJ_7seg|digit0[3]~2_combout\ & (!\do|BJ_7seg|digit0[1]~0_combout\ & (\do|BJ_7seg|digit0[2]~1_combout\ $ (\do|BJ_DP|score\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \do|BJ_7seg|digit0[3]~2_combout\,
	datab => \do|BJ_7seg|digit0[1]~0_combout\,
	datac => \do|BJ_7seg|digit0[2]~1_combout\,
	datad => \do|BJ_DP|score\(0),
	combout => \do|BJ_7seg|Mux13~0_combout\);

-- Location: LCCOMB_X1_Y20_N26
\do|BJ_7seg|Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \do|BJ_7seg|Mux12~0_combout\ = (\do|BJ_7seg|digit0[2]~1_combout\ & (\do|BJ_7seg|digit0[1]~0_combout\ $ (\do|BJ_DP|score\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \do|BJ_7seg|digit0[1]~0_combout\,
	datac => \do|BJ_7seg|digit0[2]~1_combout\,
	datad => \do|BJ_DP|score\(0),
	combout => \do|BJ_7seg|Mux12~0_combout\);

-- Location: LCCOMB_X1_Y20_N16
\do|BJ_7seg|Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \do|BJ_7seg|Mux11~0_combout\ = (\do|BJ_7seg|digit0[1]~0_combout\ & (!\do|BJ_7seg|digit0[2]~1_combout\ & !\do|BJ_DP|score\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \do|BJ_7seg|digit0[1]~0_combout\,
	datac => \do|BJ_7seg|digit0[2]~1_combout\,
	datad => \do|BJ_DP|score\(0),
	combout => \do|BJ_7seg|Mux11~0_combout\);

-- Location: LCCOMB_X1_Y20_N10
\do|BJ_7seg|Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \do|BJ_7seg|Mux10~0_combout\ = (!\do|BJ_7seg|digit0[3]~2_combout\ & ((\do|BJ_7seg|digit0[1]~0_combout\ & (\do|BJ_7seg|digit0[2]~1_combout\ & \do|BJ_DP|score\(0))) # (!\do|BJ_7seg|digit0[1]~0_combout\ & (\do|BJ_7seg|digit0[2]~1_combout\ $ 
-- (\do|BJ_DP|score\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \do|BJ_7seg|digit0[3]~2_combout\,
	datab => \do|BJ_7seg|digit0[1]~0_combout\,
	datac => \do|BJ_7seg|digit0[2]~1_combout\,
	datad => \do|BJ_DP|score\(0),
	combout => \do|BJ_7seg|Mux10~0_combout\);

-- Location: LCCOMB_X1_Y20_N0
\do|BJ_7seg|Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \do|BJ_7seg|Mux9~0_combout\ = (\do|BJ_DP|score\(0)) # ((!\do|BJ_7seg|digit0[1]~0_combout\ & \do|BJ_7seg|digit0[2]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \do|BJ_7seg|digit0[1]~0_combout\,
	datac => \do|BJ_7seg|digit0[2]~1_combout\,
	datad => \do|BJ_DP|score\(0),
	combout => \do|BJ_7seg|Mux9~0_combout\);

-- Location: LCCOMB_X1_Y20_N22
\do|BJ_7seg|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \do|BJ_7seg|Mux8~0_combout\ = (!\do|BJ_7seg|digit0[3]~2_combout\ & ((\do|BJ_7seg|digit0[1]~0_combout\ & ((\do|BJ_DP|score\(0)) # (!\do|BJ_7seg|digit0[2]~1_combout\))) # (!\do|BJ_7seg|digit0[1]~0_combout\ & (!\do|BJ_7seg|digit0[2]~1_combout\ & 
-- \do|BJ_DP|score\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \do|BJ_7seg|digit0[3]~2_combout\,
	datab => \do|BJ_7seg|digit0[1]~0_combout\,
	datac => \do|BJ_7seg|digit0[2]~1_combout\,
	datad => \do|BJ_DP|score\(0),
	combout => \do|BJ_7seg|Mux8~0_combout\);

-- Location: LCCOMB_X1_Y20_N12
\do|BJ_7seg|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \do|BJ_7seg|Mux7~0_combout\ = (\do|BJ_7seg|digit0[3]~2_combout\) # ((\do|BJ_7seg|digit0[1]~0_combout\ & ((!\do|BJ_DP|score\(0)) # (!\do|BJ_7seg|digit0[2]~1_combout\))) # (!\do|BJ_7seg|digit0[1]~0_combout\ & (\do|BJ_7seg|digit0[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \do|BJ_7seg|digit0[3]~2_combout\,
	datab => \do|BJ_7seg|digit0[1]~0_combout\,
	datac => \do|BJ_7seg|digit0[2]~1_combout\,
	datad => \do|BJ_DP|score\(0),
	combout => \do|BJ_7seg|Mux7~0_combout\);

-- Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw[5]~I\ : cycloneii_io
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
	padio => ww_sw(5));

-- Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw[6]~I\ : cycloneii_io
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
	padio => ww_sw(6));

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw[7]~I\ : cycloneii_io
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
	padio => ww_sw(7));

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw[8]~I\ : cycloneii_io
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
	padio => ww_sw(8));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw[9]~I\ : cycloneii_io
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
	padio => ww_sw(9));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg[5]~I\ : cycloneii_io
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
	datain => \do|BJ_FSM|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledg(5));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg[6]~I\ : cycloneii_io
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
	datain => \do|BJ_FSM|y.S7~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledg(6));

-- Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg[7]~I\ : cycloneii_io
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
	datain => \do|BJ_FSM|finished~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledg(7));

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr[0]~I\ : cycloneii_io
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
	datain => \do|BJ_DP|score\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(0));

-- Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr[1]~I\ : cycloneii_io
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
	datain => \do|BJ_DP|score\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(1));

-- Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr[2]~I\ : cycloneii_io
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
	datain => \do|BJ_DP|score\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(2));

-- Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr[3]~I\ : cycloneii_io
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
	datain => \do|BJ_DP|score\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(3));

-- Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr[4]~I\ : cycloneii_io
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
	datain => \do|BJ_DP|score\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(4));

-- Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr[5]~I\ : cycloneii_io
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
	datain => \do|BJ_FSM|WideOr8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(5));

-- Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr[6]~I\ : cycloneii_io
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
	datain => \do|BJ_FSM|ALT_INV_WideOr7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(6));

-- Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr[7]~I\ : cycloneii_io
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
	datain => \do|BJ_FSM|ALT_INV_WideOr6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(7));

-- Location: PIN_R18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr[8]~I\ : cycloneii_io
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
	datain => \do|BJ_FSM|y.S8~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(8));

-- Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr[9]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(9));

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[0]~I\ : cycloneii_io
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
	datain => \do|BJ_7seg|ALT_INV_Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(0));

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[1]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(1));

-- Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[2]~I\ : cycloneii_io
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
	datain => \do|BJ_7seg|ALT_INV_LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(2));

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[3]~I\ : cycloneii_io
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
	datain => \do|BJ_7seg|ALT_INV_Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(3));

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[4]~I\ : cycloneii_io
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
	datain => \do|BJ_7seg|ALT_INV_Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(4));

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[5]~I\ : cycloneii_io
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
	datain => \do|BJ_7seg|Mux1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(5));

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[6]~I\ : cycloneii_io
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
	datain => \do|BJ_7seg|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(6));

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[0]~I\ : cycloneii_io
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
	datain => \do|BJ_7seg|Mux13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(0));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[1]~I\ : cycloneii_io
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
	datain => \do|BJ_7seg|Mux12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(1));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[2]~I\ : cycloneii_io
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
	datain => \do|BJ_7seg|Mux11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(2));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[3]~I\ : cycloneii_io
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
	datain => \do|BJ_7seg|Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(3));

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[4]~I\ : cycloneii_io
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
	datain => \do|BJ_7seg|Mux9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(4));

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[5]~I\ : cycloneii_io
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
	datain => \do|BJ_7seg|Mux8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(5));

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[6]~I\ : cycloneii_io
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
	datain => \do|BJ_7seg|ALT_INV_Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(6));
END structure;


