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

-- DATE "09/18/2018 01:30:45"

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
	sw : IN std_logic_vector(1 DOWNTO 0);
	key : IN std_logic_vector(1 DOWNTO 0);
	ledr : OUT std_logic_vector(3 DOWNTO 0);
	ledg : OUT std_logic_vector(4 DOWNTO 0)
	);
END part2;

-- Design Ports Information
-- key[1]	=>  Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ledr[0]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[1]	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[2]	=>  Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr[3]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[0]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[1]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[2]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[3]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledg[4]	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sw[1]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[0]	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_sw : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_key : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_ledr : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ledg : std_logic_vector(4 DOWNTO 0);
SIGNAL \y_Q~29_combout\ : std_logic;
SIGNAL \y_Q~28_combout\ : std_logic;
SIGNAL \y_Q~37_combout\ : std_logic;
SIGNAL \y_Q~4_regout\ : std_logic;
SIGNAL \y_Q~35_combout\ : std_logic;
SIGNAL \y_Q~32_combout\ : std_logic;
SIGNAL \y_Q~3_regout\ : std_logic;
SIGNAL \y_Q~33_combout\ : std_logic;
SIGNAL \y_Q~34_combout\ : std_logic;
SIGNAL \y_Q~5_regout\ : std_logic;
SIGNAL \y_Q~22_combout\ : std_logic;
SIGNAL \y_Q~21_combout\ : std_logic;
SIGNAL \y_Q~36_combout\ : std_logic;
SIGNAL \y_Q~2_regout\ : std_logic;
SIGNAL \process_2~0_combout\ : std_logic;
SIGNAL \sw~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \key~combout\ : std_logic_vector(1 DOWNTO 0);

BEGIN

ww_sw <= sw;
ww_key <= key;
ledr <= ww_ledr;
ledg <= ww_ledg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

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

-- Location: LCCOMB_X49_Y10_N24
\y_Q~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \y_Q~29_combout\ = (\sw~combout\(0) & ((\y_Q~4_regout\ & ((!\y_Q~2_regout\))) # (!\y_Q~4_regout\ & (!\y_Q~5_regout\)))) # (!\sw~combout\(0) & (((\y_Q~2_regout\ & !\y_Q~4_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(0),
	datab => \y_Q~5_regout\,
	datac => \y_Q~2_regout\,
	datad => \y_Q~4_regout\,
	combout => \y_Q~29_combout\);

-- Location: LCCOMB_X49_Y10_N10
\y_Q~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \y_Q~28_combout\ = (\sw~combout\(0) & (((\y_Q~4_regout\ & \y_Q~2_regout\)) # (!\y_Q~5_regout\))) # (!\sw~combout\(0) & (((\y_Q~4_regout\ & !\y_Q~2_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(0),
	datab => \y_Q~5_regout\,
	datac => \y_Q~4_regout\,
	datad => \y_Q~2_regout\,
	combout => \y_Q~28_combout\);

-- Location: LCCOMB_X49_Y10_N12
\y_Q~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \y_Q~37_combout\ = (\sw~combout\(1) & ((\y_Q~3_regout\ & (\y_Q~29_combout\)) # (!\y_Q~3_regout\ & ((\y_Q~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(1),
	datab => \y_Q~3_regout\,
	datac => \y_Q~29_combout\,
	datad => \y_Q~28_combout\,
	combout => \y_Q~37_combout\);

-- Location: LCFF_X49_Y10_N13
\y_Q~4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key~combout\(0),
	datain => \y_Q~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_Q~4_regout\);

-- Location: LCCOMB_X49_Y10_N28
\y_Q~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \y_Q~35_combout\ = (\sw~combout\(1) & (\sw~combout\(0) $ (!\y_Q~4_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw~combout\(0),
	datac => \sw~combout\(1),
	datad => \y_Q~4_regout\,
	combout => \y_Q~35_combout\);

-- Location: LCCOMB_X49_Y10_N14
\y_Q~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \y_Q~32_combout\ = (\y_Q~35_combout\ & (\y_Q~2_regout\ $ (\y_Q~3_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y_Q~2_regout\,
	datac => \y_Q~3_regout\,
	datad => \y_Q~35_combout\,
	combout => \y_Q~32_combout\);

-- Location: LCFF_X49_Y10_N15
\y_Q~3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key~combout\(0),
	datain => \y_Q~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_Q~3_regout\);

-- Location: LCCOMB_X49_Y10_N18
\y_Q~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \y_Q~33_combout\ = (!\y_Q~5_regout\ & (((!\y_Q~2_regout\) # (!\y_Q~3_regout\)) # (!\y_Q~4_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_Q~4_regout\,
	datab => \y_Q~5_regout\,
	datac => \y_Q~3_regout\,
	datad => \y_Q~2_regout\,
	combout => \y_Q~33_combout\);

-- Location: LCCOMB_X49_Y10_N22
\y_Q~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \y_Q~34_combout\ = (\sw~combout\(0) & (\sw~combout\(1) & !\y_Q~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw~combout\(0),
	datac => \sw~combout\(1),
	datad => \y_Q~33_combout\,
	combout => \y_Q~34_combout\);

-- Location: LCFF_X49_Y10_N23
\y_Q~5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key~combout\(0),
	datain => \y_Q~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_Q~5_regout\);

-- Location: LCCOMB_X49_Y10_N20
\y_Q~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \y_Q~22_combout\ = (\y_Q~2_regout\ & (!\sw~combout\(0) & ((\y_Q~4_regout\)))) # (!\y_Q~2_regout\ & ((\y_Q~4_regout\ & ((\y_Q~3_regout\))) # (!\y_Q~4_regout\ & (!\sw~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(0),
	datab => \y_Q~2_regout\,
	datac => \y_Q~3_regout\,
	datad => \y_Q~4_regout\,
	combout => \y_Q~22_combout\);

-- Location: LCCOMB_X49_Y10_N26
\y_Q~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \y_Q~21_combout\ = (\y_Q~2_regout\ & (\sw~combout\(0) $ (((\y_Q~4_regout\))))) # (!\y_Q~2_regout\ & ((\sw~combout\(0)) # ((\y_Q~3_regout\) # (!\y_Q~4_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(0),
	datab => \y_Q~3_regout\,
	datac => \y_Q~4_regout\,
	datad => \y_Q~2_regout\,
	combout => \y_Q~21_combout\);

-- Location: LCCOMB_X49_Y10_N0
\y_Q~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \y_Q~36_combout\ = (\sw~combout\(1) & ((\y_Q~5_regout\ & (\y_Q~22_combout\)) # (!\y_Q~5_regout\ & ((\y_Q~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(1),
	datab => \y_Q~5_regout\,
	datac => \y_Q~22_combout\,
	datad => \y_Q~21_combout\,
	combout => \y_Q~36_combout\);

-- Location: LCFF_X49_Y10_N1
\y_Q~2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key~combout\(0),
	datain => \y_Q~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_Q~2_regout\);

-- Location: LCCOMB_X49_Y10_N16
\process_2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_2~0_combout\ = (\y_Q~5_regout\) # ((!\y_Q~3_regout\ & (!\y_Q~2_regout\ & \y_Q~4_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_Q~5_regout\,
	datab => \y_Q~3_regout\,
	datac => \y_Q~2_regout\,
	datad => \y_Q~4_regout\,
	combout => \process_2~0_combout\);

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
	datain => \y_Q~2_regout\,
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
	datain => \y_Q~3_regout\,
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
	datain => \y_Q~4_regout\,
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
	datain => \y_Q~5_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr(3));

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
	datain => \process_2~0_combout\,
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
END structure;


