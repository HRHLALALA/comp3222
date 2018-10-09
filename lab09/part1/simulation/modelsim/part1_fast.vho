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

-- DATE "10/10/2018 02:33:01"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	part1 IS
    PORT (
	sw : IN std_logic_vector(8 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	key : IN std_logic_vector(1 DOWNTO 0);
	ledr : BUFFER IEEE.NUMERIC_STD.unsigned(8 DOWNTO 0);
	ledg : OUT std_logic_vector(7 DOWNTO 0)
	);
END part1;

-- Design Ports Information
-- key[1]	=>  Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ledr[0]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[1]	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[2]	=>  Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[3]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[4]	=>  Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[5]	=>  Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[6]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[7]	=>  Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[8]	=>  Location: PIN_R18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[0]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[1]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[2]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[3]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[4]	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[5]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[6]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[7]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CLOCK_50	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[0]	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[8]	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[4]	=>  Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[5]	=>  Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[6]	=>  Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[7]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF part1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sw : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_key : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_ledr : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_ledg : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLOCK_50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \coun|Selector2~0_combout\ : std_logic;
SIGNAL \CLOCK_50~combout\ : std_logic;
SIGNAL \CLOCK_50~clkctrl_outclk\ : std_logic;
SIGNAL \coun|result[0]~9_combout\ : std_logic;
SIGNAL \coun|LA~1_combout\ : std_logic;
SIGNAL \coun|LA~regout\ : std_logic;
SIGNAL \coun|a~8_combout\ : std_logic;
SIGNAL \coun|a~7_combout\ : std_logic;
SIGNAL \coun|a~1_combout\ : std_logic;
SIGNAL \coun|a~6_combout\ : std_logic;
SIGNAL \coun|a~5_combout\ : std_logic;
SIGNAL \coun|a~4_combout\ : std_logic;
SIGNAL \coun|a~3_combout\ : std_logic;
SIGNAL \coun|a~2_combout\ : std_logic;
SIGNAL \coun|a~0_combout\ : std_logic;
SIGNAL \coun|Equal0~0_combout\ : std_logic;
SIGNAL \coun|Selector1~0_combout\ : std_logic;
SIGNAL \coun|Selector1~1_combout\ : std_logic;
SIGNAL \coun|curr.T2~regout\ : std_logic;
SIGNAL \coun|Selector0~0_combout\ : std_logic;
SIGNAL \coun|curr.T1~feeder_combout\ : std_logic;
SIGNAL \coun|curr.T1~regout\ : std_logic;
SIGNAL \coun|result[0]~11_combout\ : std_logic;
SIGNAL \coun|result[0]~10\ : std_logic;
SIGNAL \coun|result[1]~12_combout\ : std_logic;
SIGNAL \coun|result[1]~13\ : std_logic;
SIGNAL \coun|result[2]~14_combout\ : std_logic;
SIGNAL \coun|result[2]~15\ : std_logic;
SIGNAL \coun|result[3]~16_combout\ : std_logic;
SIGNAL \coun|result[3]~17\ : std_logic;
SIGNAL \coun|result[4]~18_combout\ : std_logic;
SIGNAL \coun|result[4]~19\ : std_logic;
SIGNAL \coun|result[5]~20_combout\ : std_logic;
SIGNAL \coun|result[5]~21\ : std_logic;
SIGNAL \coun|result[6]~22_combout\ : std_logic;
SIGNAL \coun|result[6]~23\ : std_logic;
SIGNAL \coun|result[7]~24_combout\ : std_logic;
SIGNAL \coun|result[7]~25\ : std_logic;
SIGNAL \coun|result[8]~26_combout\ : std_logic;
SIGNAL \coun|Equal0~1_combout\ : std_logic;
SIGNAL \coun|Selector2~1_combout\ : std_logic;
SIGNAL \coun|curr.T3~regout\ : std_logic;
SIGNAL \sw~combout\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \key~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \coun|a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \coun|result\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ALT_INV_key~combout\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \coun|ALT_INV_curr.T1~regout\ : std_logic;

BEGIN

ww_sw <= sw;
ww_CLOCK_50 <= CLOCK_50;
ww_key <= key;
ledr <= IEEE.NUMERIC_STD.UNSIGNED(ww_ledr);
ledg <= ww_ledg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK_50~combout\);
\ALT_INV_key~combout\(0) <= NOT \key~combout\(0);
\coun|ALT_INV_curr.T1~regout\ <= NOT \coun|curr.T1~regout\;

-- Location: LCCOMB_X48_Y6_N12
\coun|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \coun|Selector2~0_combout\ = (\sw~combout\(8) & \coun|curr.T3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw~combout\(8),
	datad => \coun|curr.T3~regout\,
	combout => \coun|Selector2~0_combout\);

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
	padio => ww_sw(7),
	combout => \sw~combout\(7));

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLOCK_50~I\ : cycloneii_io
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
	padio => ww_CLOCK_50,
	combout => \CLOCK_50~combout\);

-- Location: CLKCTRL_G2
\CLOCK_50~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~clkctrl_outclk\);

-- Location: LCCOMB_X49_Y6_N14
\coun|result[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \coun|result[0]~9_combout\ = \coun|result\(0) $ (VCC)
-- \coun|result[0]~10\ = CARRY(\coun|result\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \coun|result\(0),
	datad => VCC,
	combout => \coun|result[0]~9_combout\,
	cout => \coun|result[0]~10\);

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
	padio => ww_sw(8),
	combout => \sw~combout\(8));

-- Location: LCCOMB_X48_Y6_N14
\coun|LA~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \coun|LA~1_combout\ = (!\sw~combout\(8) & !\coun|curr.T1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw~combout\(8),
	datad => \coun|curr.T1~regout\,
	combout => \coun|LA~1_combout\);

-- Location: LCFF_X48_Y6_N15
\coun|LA\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \coun|LA~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \coun|LA~regout\);

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
	padio => ww_sw(5),
	combout => \sw~combout\(5));

-- Location: LCCOMB_X48_Y6_N8
\coun|a~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \coun|a~8_combout\ = (\coun|LA~regout\ & (\sw~combout\(7))) # (!\coun|LA~regout\ & (((\coun|a\(7) & !\coun|curr.T2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(7),
	datab => \coun|LA~regout\,
	datac => \coun|a\(7),
	datad => \coun|curr.T2~regout\,
	combout => \coun|a~8_combout\);

-- Location: LCFF_X48_Y6_N9
\coun|a[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \coun|a~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \coun|a\(7));

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
	padio => ww_sw(6),
	combout => \sw~combout\(6));

-- Location: LCCOMB_X48_Y6_N6
\coun|a~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \coun|a~7_combout\ = (\coun|LA~regout\ & ((\sw~combout\(6)))) # (!\coun|LA~regout\ & (\coun|a\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \coun|a\(7),
	datac => \coun|LA~regout\,
	datad => \sw~combout\(6),
	combout => \coun|a~7_combout\);

-- Location: LCCOMB_X48_Y6_N20
\coun|a~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \coun|a~1_combout\ = (\coun|LA~regout\) # (\coun|curr.T2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \coun|LA~regout\,
	datad => \coun|curr.T2~regout\,
	combout => \coun|a~1_combout\);

-- Location: LCFF_X48_Y6_N7
\coun|a[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \coun|a~7_combout\,
	ena => \coun|a~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \coun|a\(6));

-- Location: LCCOMB_X48_Y6_N28
\coun|a~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \coun|a~6_combout\ = (\coun|LA~regout\ & (\sw~combout\(5))) # (!\coun|LA~regout\ & ((\coun|a\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \coun|LA~regout\,
	datac => \sw~combout\(5),
	datad => \coun|a\(6),
	combout => \coun|a~6_combout\);

-- Location: LCFF_X48_Y6_N29
\coun|a[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \coun|a~6_combout\,
	ena => \coun|a~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \coun|a\(5));

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

-- Location: LCCOMB_X48_Y6_N22
\coun|a~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \coun|a~5_combout\ = (\coun|LA~regout\ & ((\sw~combout\(4)))) # (!\coun|LA~regout\ & (\coun|a\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \coun|a\(5),
	datac => \coun|LA~regout\,
	datad => \sw~combout\(4),
	combout => \coun|a~5_combout\);

-- Location: LCFF_X48_Y6_N23
\coun|a[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \coun|a~5_combout\,
	ena => \coun|a~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \coun|a\(4));

-- Location: LCCOMB_X48_Y6_N10
\coun|a~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \coun|a~4_combout\ = (\coun|LA~regout\ & (\sw~combout\(3))) # (!\coun|LA~regout\ & ((\coun|a\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \coun|LA~regout\,
	datac => \sw~combout\(3),
	datad => \coun|a\(4),
	combout => \coun|a~4_combout\);

-- Location: LCFF_X48_Y6_N11
\coun|a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \coun|a~4_combout\,
	ena => \coun|a~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \coun|a\(3));

-- Location: LCCOMB_X48_Y6_N4
\coun|a~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \coun|a~3_combout\ = (\coun|LA~regout\ & (\sw~combout\(2))) # (!\coun|LA~regout\ & ((\coun|a\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \coun|LA~regout\,
	datac => \sw~combout\(2),
	datad => \coun|a\(3),
	combout => \coun|a~3_combout\);

-- Location: LCFF_X48_Y6_N5
\coun|a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \coun|a~3_combout\,
	ena => \coun|a~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \coun|a\(2));

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

-- Location: LCCOMB_X48_Y6_N26
\coun|a~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \coun|a~2_combout\ = (\coun|LA~regout\ & ((\sw~combout\(1)))) # (!\coun|LA~regout\ & (\coun|a\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \coun|a\(2),
	datac => \coun|LA~regout\,
	datad => \sw~combout\(1),
	combout => \coun|a~2_combout\);

-- Location: LCFF_X48_Y6_N27
\coun|a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \coun|a~2_combout\,
	ena => \coun|a~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \coun|a\(1));

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

-- Location: LCCOMB_X48_Y6_N2
\coun|a~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \coun|a~0_combout\ = (\coun|LA~regout\ & (\sw~combout\(0))) # (!\coun|LA~regout\ & ((\coun|a\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \coun|LA~regout\,
	datac => \sw~combout\(0),
	datad => \coun|a\(1),
	combout => \coun|a~0_combout\);

-- Location: LCFF_X48_Y6_N3
\coun|a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \coun|a~0_combout\,
	ena => \coun|a~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \coun|a\(0));

-- Location: LCCOMB_X48_Y6_N16
\coun|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \coun|Equal0~0_combout\ = (!\coun|a\(3) & (!\coun|a\(1) & (!\coun|a\(2) & !\coun|a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \coun|a\(3),
	datab => \coun|a\(1),
	datac => \coun|a\(2),
	datad => \coun|a\(0),
	combout => \coun|Equal0~0_combout\);

-- Location: LCCOMB_X48_Y6_N18
\coun|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \coun|Selector1~0_combout\ = (\sw~combout\(8) & !\coun|curr.T1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw~combout\(8),
	datad => \coun|curr.T1~regout\,
	combout => \coun|Selector1~0_combout\);

-- Location: LCCOMB_X49_Y6_N2
\coun|Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \coun|Selector1~1_combout\ = (\coun|Selector1~0_combout\) # ((\coun|curr.T2~regout\ & ((!\coun|Equal0~0_combout\) # (!\coun|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \coun|Equal0~1_combout\,
	datab => \coun|Equal0~0_combout\,
	datac => \coun|curr.T2~regout\,
	datad => \coun|Selector1~0_combout\,
	combout => \coun|Selector1~1_combout\);

-- Location: LCFF_X49_Y6_N3
\coun|curr.T2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \coun|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \coun|curr.T2~regout\);

-- Location: LCCOMB_X48_Y6_N24
\coun|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \coun|Selector0~0_combout\ = (\sw~combout\(8)) # (\coun|curr.T2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(8),
	datad => \coun|curr.T2~regout\,
	combout => \coun|Selector0~0_combout\);

-- Location: LCCOMB_X49_Y6_N4
\coun|curr.T1~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \coun|curr.T1~feeder_combout\ = \coun|Selector0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \coun|Selector0~0_combout\,
	combout => \coun|curr.T1~feeder_combout\);

-- Location: LCFF_X49_Y6_N5
\coun|curr.T1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \coun|curr.T1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \coun|curr.T1~regout\);

-- Location: LCCOMB_X49_Y6_N0
\coun|result[0]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \coun|result[0]~11_combout\ = \coun|curr.T1~regout\ $ (((!\coun|a\(0)) # (!\coun|curr.T2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \coun|curr.T2~regout\,
	datac => \coun|curr.T1~regout\,
	datad => \coun|a\(0),
	combout => \coun|result[0]~11_combout\);

-- Location: LCFF_X49_Y6_N15
\coun|result[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \coun|result[0]~9_combout\,
	aclr => \ALT_INV_key~combout\(0),
	sclr => \coun|ALT_INV_curr.T1~regout\,
	ena => \coun|result[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \coun|result\(0));

-- Location: LCCOMB_X49_Y6_N16
\coun|result[1]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \coun|result[1]~12_combout\ = (\coun|result\(1) & (!\coun|result[0]~10\)) # (!\coun|result\(1) & ((\coun|result[0]~10\) # (GND)))
-- \coun|result[1]~13\ = CARRY((!\coun|result[0]~10\) # (!\coun|result\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \coun|result\(1),
	datad => VCC,
	cin => \coun|result[0]~10\,
	combout => \coun|result[1]~12_combout\,
	cout => \coun|result[1]~13\);

-- Location: LCFF_X49_Y6_N17
\coun|result[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \coun|result[1]~12_combout\,
	aclr => \ALT_INV_key~combout\(0),
	sclr => \coun|ALT_INV_curr.T1~regout\,
	ena => \coun|result[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \coun|result\(1));

-- Location: LCCOMB_X49_Y6_N18
\coun|result[2]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \coun|result[2]~14_combout\ = (\coun|result\(2) & (\coun|result[1]~13\ $ (GND))) # (!\coun|result\(2) & (!\coun|result[1]~13\ & VCC))
-- \coun|result[2]~15\ = CARRY((\coun|result\(2) & !\coun|result[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \coun|result\(2),
	datad => VCC,
	cin => \coun|result[1]~13\,
	combout => \coun|result[2]~14_combout\,
	cout => \coun|result[2]~15\);

-- Location: LCFF_X49_Y6_N19
\coun|result[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \coun|result[2]~14_combout\,
	aclr => \ALT_INV_key~combout\(0),
	sclr => \coun|ALT_INV_curr.T1~regout\,
	ena => \coun|result[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \coun|result\(2));

-- Location: LCCOMB_X49_Y6_N20
\coun|result[3]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \coun|result[3]~16_combout\ = (\coun|result\(3) & (!\coun|result[2]~15\)) # (!\coun|result\(3) & ((\coun|result[2]~15\) # (GND)))
-- \coun|result[3]~17\ = CARRY((!\coun|result[2]~15\) # (!\coun|result\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \coun|result\(3),
	datad => VCC,
	cin => \coun|result[2]~15\,
	combout => \coun|result[3]~16_combout\,
	cout => \coun|result[3]~17\);

-- Location: LCFF_X49_Y6_N21
\coun|result[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \coun|result[3]~16_combout\,
	aclr => \ALT_INV_key~combout\(0),
	sclr => \coun|ALT_INV_curr.T1~regout\,
	ena => \coun|result[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \coun|result\(3));

-- Location: LCCOMB_X49_Y6_N22
\coun|result[4]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \coun|result[4]~18_combout\ = (\coun|result\(4) & (\coun|result[3]~17\ $ (GND))) # (!\coun|result\(4) & (!\coun|result[3]~17\ & VCC))
-- \coun|result[4]~19\ = CARRY((\coun|result\(4) & !\coun|result[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \coun|result\(4),
	datad => VCC,
	cin => \coun|result[3]~17\,
	combout => \coun|result[4]~18_combout\,
	cout => \coun|result[4]~19\);

-- Location: LCFF_X49_Y6_N23
\coun|result[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \coun|result[4]~18_combout\,
	aclr => \ALT_INV_key~combout\(0),
	sclr => \coun|ALT_INV_curr.T1~regout\,
	ena => \coun|result[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \coun|result\(4));

-- Location: LCCOMB_X49_Y6_N24
\coun|result[5]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \coun|result[5]~20_combout\ = (\coun|result\(5) & (!\coun|result[4]~19\)) # (!\coun|result\(5) & ((\coun|result[4]~19\) # (GND)))
-- \coun|result[5]~21\ = CARRY((!\coun|result[4]~19\) # (!\coun|result\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \coun|result\(5),
	datad => VCC,
	cin => \coun|result[4]~19\,
	combout => \coun|result[5]~20_combout\,
	cout => \coun|result[5]~21\);

-- Location: LCFF_X49_Y6_N25
\coun|result[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \coun|result[5]~20_combout\,
	aclr => \ALT_INV_key~combout\(0),
	sclr => \coun|ALT_INV_curr.T1~regout\,
	ena => \coun|result[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \coun|result\(5));

-- Location: LCCOMB_X49_Y6_N26
\coun|result[6]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \coun|result[6]~22_combout\ = (\coun|result\(6) & (\coun|result[5]~21\ $ (GND))) # (!\coun|result\(6) & (!\coun|result[5]~21\ & VCC))
-- \coun|result[6]~23\ = CARRY((\coun|result\(6) & !\coun|result[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \coun|result\(6),
	datad => VCC,
	cin => \coun|result[5]~21\,
	combout => \coun|result[6]~22_combout\,
	cout => \coun|result[6]~23\);

-- Location: LCFF_X49_Y6_N27
\coun|result[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \coun|result[6]~22_combout\,
	aclr => \ALT_INV_key~combout\(0),
	sclr => \coun|ALT_INV_curr.T1~regout\,
	ena => \coun|result[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \coun|result\(6));

-- Location: LCCOMB_X49_Y6_N28
\coun|result[7]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \coun|result[7]~24_combout\ = (\coun|result\(7) & (!\coun|result[6]~23\)) # (!\coun|result\(7) & ((\coun|result[6]~23\) # (GND)))
-- \coun|result[7]~25\ = CARRY((!\coun|result[6]~23\) # (!\coun|result\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \coun|result\(7),
	datad => VCC,
	cin => \coun|result[6]~23\,
	combout => \coun|result[7]~24_combout\,
	cout => \coun|result[7]~25\);

-- Location: LCFF_X49_Y6_N29
\coun|result[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \coun|result[7]~24_combout\,
	aclr => \ALT_INV_key~combout\(0),
	sclr => \coun|ALT_INV_curr.T1~regout\,
	ena => \coun|result[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \coun|result\(7));

-- Location: LCCOMB_X49_Y6_N30
\coun|result[8]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \coun|result[8]~26_combout\ = \coun|result[7]~25\ $ (!\coun|result\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \coun|result\(8),
	cin => \coun|result[7]~25\,
	combout => \coun|result[8]~26_combout\);

-- Location: LCFF_X49_Y6_N31
\coun|result[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \coun|result[8]~26_combout\,
	aclr => \ALT_INV_key~combout\(0),
	sclr => \coun|ALT_INV_curr.T1~regout\,
	ena => \coun|result[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \coun|result\(8));

-- Location: LCCOMB_X48_Y6_N30
\coun|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \coun|Equal0~1_combout\ = (!\coun|a\(6) & (!\coun|a\(5) & (!\coun|a\(7) & !\coun|a\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \coun|a\(6),
	datab => \coun|a\(5),
	datac => \coun|a\(7),
	datad => \coun|a\(4),
	combout => \coun|Equal0~1_combout\);

-- Location: LCCOMB_X48_Y6_N0
\coun|Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \coun|Selector2~1_combout\ = (\coun|Selector2~0_combout\) # ((\coun|Equal0~1_combout\ & (\coun|Equal0~0_combout\ & \coun|curr.T2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \coun|Selector2~0_combout\,
	datab => \coun|Equal0~1_combout\,
	datac => \coun|Equal0~0_combout\,
	datad => \coun|curr.T2~regout\,
	combout => \coun|Selector2~1_combout\);

-- Location: LCFF_X48_Y6_N1
\coun|curr.T3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \coun|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \coun|curr.T3~regout\);

-- Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key[1]~I\ : cycloneii_io
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
	padio => ww_key(1));

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
	datain => \coun|result\(0),
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
	datain => \coun|result\(1),
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
	datain => \coun|result\(2),
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
	datain => \coun|result\(3),
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
	datain => \coun|result\(4),
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
	datain => \coun|result\(5),
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
	datain => \coun|result\(6),
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
	datain => \coun|result\(7),
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
	datain => \coun|result\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(8));

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg[0]~I\ : cycloneii_io
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
	datain => \coun|curr.T3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledg(0));

-- Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg[1]~I\ : cycloneii_io
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
	padio => ww_ledg(1));

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg[2]~I\ : cycloneii_io
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
	padio => ww_ledg(2));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg[3]~I\ : cycloneii_io
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
	padio => ww_ledg(3));

-- Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledg[4]~I\ : cycloneii_io
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
	padio => ww_ledg(4));

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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledg(7));
END structure;


