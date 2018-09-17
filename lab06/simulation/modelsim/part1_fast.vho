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

-- DATE "09/17/2018 23:47:58"

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

ENTITY 	part1 IS
    PORT (
	key : IN std_logic_vector(1 DOWNTO 0);
	sw : IN std_logic_vector(1 DOWNTO 0);
	LEDG : OUT std_logic_vector(7 DOWNTO 0);
	LEDR : OUT std_logic_vector(8 DOWNTO 0)
	);
END part1;

-- Design Ports Information
-- key[1]	=>  Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[1]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[2]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[3]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[4]	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[5]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[6]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[7]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[0]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[1]	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[2]	=>  Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[3]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[4]	=>  Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[5]	=>  Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[6]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[7]	=>  Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[8]	=>  Location: PIN_R18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sw[0]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[0]	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_key : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_sw : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(8 DOWNTO 0);
SIGNAL \A|Q~regout\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \C|Q~regout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \comb~3_combout\ : std_logic;
SIGNAL \D|Q~regout\ : std_logic;
SIGNAL \comb~4_combout\ : std_logic;
SIGNAL \E|Q~regout\ : std_logic;
SIGNAL \LEDR~1_combout\ : std_logic;
SIGNAL \comb~5_combout\ : std_logic;
SIGNAL \F|Q~regout\ : std_logic;
SIGNAL \comb~6_combout\ : std_logic;
SIGNAL \G|Q~regout\ : std_logic;
SIGNAL \comb~7_combout\ : std_logic;
SIGNAL \H|Q~regout\ : std_logic;
SIGNAL \comb~8_combout\ : std_logic;
SIGNAL \I|Q~regout\ : std_logic;
SIGNAL \LEDR~0_combout\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \B|Q~regout\ : std_logic;
SIGNAL \LEDR~2_combout\ : std_logic;
SIGNAL \LEDR~3_combout\ : std_logic;
SIGNAL \LEDR~4_combout\ : std_logic;
SIGNAL \LEDR~5_combout\ : std_logic;
SIGNAL \LEDR~6_combout\ : std_logic;
SIGNAL \LEDR~7_combout\ : std_logic;
SIGNAL \LEDR~8_combout\ : std_logic;
SIGNAL \LEDR~9_combout\ : std_logic;
SIGNAL \LEDR~10_combout\ : std_logic;
SIGNAL \sw~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \key~combout\ : std_logic_vector(1 DOWNTO 0);

BEGIN

ww_key <= key;
ww_sw <= sw;
LEDG <= ww_LEDG;
LEDR <= ww_LEDR;
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

-- Location: LCFF_X49_Y10_N9
\A|Q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key~combout\(0),
	sdata => \sw~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A|Q~regout\);

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

-- Location: LCCOMB_X49_Y7_N30
\comb~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = (\sw~combout\(0) & (!\sw~combout\(1) & \B|Q~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(0),
	datab => \sw~combout\(1),
	datad => \B|Q~regout\,
	combout => \comb~2_combout\);

-- Location: LCFF_X49_Y7_N31
\C|Q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key~combout\(0),
	datain => \comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C|Q~regout\);

-- Location: LCCOMB_X49_Y7_N4
\comb~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = (\sw~combout\(0) & (!\sw~combout\(1) & !\C|Q~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(0),
	datab => \sw~combout\(1),
	datad => \C|Q~regout\,
	combout => \comb~0_combout\);

-- Location: LCCOMB_X49_Y7_N8
\comb~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~3_combout\ = (\sw~combout\(0) & (!\sw~combout\(1) & \C|Q~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(0),
	datab => \sw~combout\(1),
	datad => \C|Q~regout\,
	combout => \comb~3_combout\);

-- Location: LCFF_X49_Y7_N9
\D|Q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key~combout\(0),
	datain => \comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \D|Q~regout\);

-- Location: LCCOMB_X49_Y7_N10
\comb~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~4_combout\ = (\sw~combout\(0) & (!\sw~combout\(1) & ((\E|Q~regout\) # (\D|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(0),
	datab => \sw~combout\(1),
	datac => \E|Q~regout\,
	datad => \D|Q~regout\,
	combout => \comb~4_combout\);

-- Location: LCFF_X49_Y7_N11
\E|Q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key~combout\(0),
	datain => \comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \E|Q~regout\);

-- Location: LCCOMB_X49_Y7_N6
\LEDR~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LEDR~1_combout\ = (!\B|Q~regout\ & (!\C|Q~regout\ & (!\D|Q~regout\ & !\E|Q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B|Q~regout\,
	datab => \C|Q~regout\,
	datac => \D|Q~regout\,
	datad => \E|Q~regout\,
	combout => \LEDR~1_combout\);

-- Location: LCCOMB_X49_Y7_N16
\comb~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~5_combout\ = (\sw~combout\(0) & (\sw~combout\(1) & ((\A|Q~regout\) # (!\LEDR~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(0),
	datab => \sw~combout\(1),
	datac => \A|Q~regout\,
	datad => \LEDR~1_combout\,
	combout => \comb~5_combout\);

-- Location: LCFF_X49_Y7_N17
\F|Q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key~combout\(0),
	datain => \comb~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \F|Q~regout\);

-- Location: LCCOMB_X49_Y7_N22
\comb~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~6_combout\ = (\sw~combout\(0) & (\sw~combout\(1) & \F|Q~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(0),
	datab => \sw~combout\(1),
	datac => \F|Q~regout\,
	combout => \comb~6_combout\);

-- Location: LCFF_X49_Y7_N23
\G|Q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key~combout\(0),
	datain => \comb~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G|Q~regout\);

-- Location: LCCOMB_X49_Y7_N28
\comb~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~7_combout\ = (\sw~combout\(0) & (\sw~combout\(1) & \G|Q~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(0),
	datab => \sw~combout\(1),
	datad => \G|Q~regout\,
	combout => \comb~7_combout\);

-- Location: LCFF_X49_Y7_N29
\H|Q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key~combout\(0),
	datain => \comb~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \H|Q~regout\);

-- Location: LCCOMB_X49_Y7_N2
\comb~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~8_combout\ = (\sw~combout\(0) & (\sw~combout\(1) & ((\I|Q~regout\) # (\H|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(0),
	datab => \sw~combout\(1),
	datac => \I|Q~regout\,
	datad => \H|Q~regout\,
	combout => \comb~8_combout\);

-- Location: LCFF_X49_Y7_N3
\I|Q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key~combout\(0),
	datain => \comb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \I|Q~regout\);

-- Location: LCCOMB_X49_Y7_N12
\LEDR~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LEDR~0_combout\ = (!\F|Q~regout\ & (!\G|Q~regout\ & (!\I|Q~regout\ & !\H|Q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F|Q~regout\,
	datab => \G|Q~regout\,
	datac => \I|Q~regout\,
	datad => \H|Q~regout\,
	combout => \LEDR~0_combout\);

-- Location: LCCOMB_X49_Y7_N24
\comb~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = (\comb~0_combout\ & ((\A|Q~regout\) # (!\LEDR~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|Q~regout\,
	datac => \comb~0_combout\,
	datad => \LEDR~0_combout\,
	combout => \comb~1_combout\);

-- Location: LCFF_X49_Y7_N25
\B|Q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key~combout\(0),
	datain => \comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \B|Q~regout\);

-- Location: LCCOMB_X49_Y7_N0
\LEDR~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LEDR~2_combout\ = (\LEDR~0_combout\ & (\LEDR~1_combout\ & \A|Q~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LEDR~0_combout\,
	datac => \LEDR~1_combout\,
	datad => \A|Q~regout\,
	combout => \LEDR~2_combout\);

-- Location: LCCOMB_X49_Y7_N18
\LEDR~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LEDR~3_combout\ = (!\C|Q~regout\ & (!\E|Q~regout\ & (!\D|Q~regout\ & \B|Q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|Q~regout\,
	datab => \E|Q~regout\,
	datac => \D|Q~regout\,
	datad => \B|Q~regout\,
	combout => \LEDR~3_combout\);

-- Location: LCCOMB_X49_Y7_N20
\LEDR~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LEDR~4_combout\ = (\LEDR~0_combout\ & \LEDR~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LEDR~0_combout\,
	datad => \LEDR~3_combout\,
	combout => \LEDR~4_combout\);

-- Location: LCCOMB_X49_Y7_N26
\LEDR~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LEDR~5_combout\ = (\C|Q~regout\ & (!\D|Q~regout\ & (!\E|Q~regout\ & \LEDR~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C|Q~regout\,
	datab => \D|Q~regout\,
	datac => \E|Q~regout\,
	datad => \LEDR~0_combout\,
	combout => \LEDR~5_combout\);

-- Location: LCCOMB_X49_Y3_N16
\LEDR~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \LEDR~6_combout\ = (!\E|Q~regout\ & (\D|Q~regout\ & \LEDR~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \E|Q~regout\,
	datac => \D|Q~regout\,
	datad => \LEDR~0_combout\,
	combout => \LEDR~6_combout\);

-- Location: LCCOMB_X49_Y3_N6
\LEDR~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LEDR~7_combout\ = (\E|Q~regout\ & \LEDR~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \E|Q~regout\,
	datad => \LEDR~0_combout\,
	combout => \LEDR~7_combout\);

-- Location: LCCOMB_X49_Y6_N4
\LEDR~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \LEDR~8_combout\ = (!\G|Q~regout\ & (\F|Q~regout\ & (!\H|Q~regout\ & !\I|Q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G|Q~regout\,
	datab => \F|Q~regout\,
	datac => \H|Q~regout\,
	datad => \I|Q~regout\,
	combout => \LEDR~8_combout\);

-- Location: LCCOMB_X49_Y6_N6
\LEDR~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LEDR~9_combout\ = (\G|Q~regout\ & (!\H|Q~regout\ & !\I|Q~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G|Q~regout\,
	datab => \H|Q~regout\,
	datad => \I|Q~regout\,
	combout => \LEDR~9_combout\);

-- Location: LCCOMB_X49_Y6_N8
\LEDR~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \LEDR~10_combout\ = (\H|Q~regout\ & !\I|Q~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \H|Q~regout\,
	datad => \I|Q~regout\,
	combout => \LEDR~10_combout\);

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

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[0]~I\ : cycloneii_io
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
	datain => \A|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(0));

-- Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[1]~I\ : cycloneii_io
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
	datain => \B|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(1));

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[2]~I\ : cycloneii_io
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
	datain => \C|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(2));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[3]~I\ : cycloneii_io
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
	datain => \D|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(3));

-- Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[4]~I\ : cycloneii_io
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
	datain => \E|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(4));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[5]~I\ : cycloneii_io
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
	datain => \F|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(5));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[6]~I\ : cycloneii_io
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
	datain => \G|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(6));

-- Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[7]~I\ : cycloneii_io
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
	datain => \H|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(7));

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
	datain => \LEDR~2_combout\,
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
	datain => \LEDR~4_combout\,
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
	datain => \LEDR~5_combout\,
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
	datain => \LEDR~6_combout\,
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
	datain => \LEDR~7_combout\,
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
	datain => \LEDR~8_combout\,
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
	datain => \LEDR~9_combout\,
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
	datain => \LEDR~10_combout\,
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
	datain => \I|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(8));
END structure;


