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

-- DATE "09/29/2018 00:35:35"

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

ENTITY 	proc IS
    PORT (
	DIN : IN std_logic_vector(8 DOWNTO 0);
	Resetn : IN std_logic;
	Clock : IN std_logic;
	Run : IN std_logic;
	Done : BUFFER std_logic;
	BusWires : BUFFER std_logic_vector(8 DOWNTO 0)
	);
END proc;

-- Design Ports Information
-- Done	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BusWires[0]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BusWires[1]	=>  Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BusWires[2]	=>  Location: PIN_P15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BusWires[3]	=>  Location: PIN_N15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BusWires[4]	=>  Location: PIN_M18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BusWires[5]	=>  Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BusWires[6]	=>  Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BusWires[7]	=>  Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BusWires[8]	=>  Location: PIN_L18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DIN[3]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DIN[4]	=>  Location: PIN_AB4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DIN[5]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DIN[0]	=>  Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DIN[1]	=>  Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DIN[2]	=>  Location: PIN_R9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Clock	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Resetn	=>  Location: PIN_N21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DIN[7]	=>  Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DIN[8]	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DIN[6]	=>  Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Run	=>  Location: PIN_N22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF proc IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_DIN : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_Resetn : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_Run : std_logic;
SIGNAL ww_Done : std_logic;
SIGNAL ww_BusWires : std_logic_vector(8 DOWNTO 0);
SIGNAL \Clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Selector30~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clock~combout\ : std_logic;
SIGNAL \Clock~clkctrl_outclk\ : std_logic;
SIGNAL \start|Q[7]~feeder_combout\ : std_logic;
SIGNAL \Selector31~0_combout\ : std_logic;
SIGNAL \Selector31~1_combout\ : std_logic;
SIGNAL \Run~combout\ : std_logic;
SIGNAL \Selector30~0_combout\ : std_logic;
SIGNAL \Selector30~0clkctrl_outclk\ : std_logic;
SIGNAL \Tstep_D.T0_534~combout\ : std_logic;
SIGNAL \Tstep_Q.T0~0_combout\ : std_logic;
SIGNAL \Resetn~combout\ : std_logic;
SIGNAL \Tstep_Q.T0~regout\ : std_logic;
SIGNAL \Selector29~0_combout\ : std_logic;
SIGNAL \Tstep_D.T1_522~combout\ : std_logic;
SIGNAL \Tstep_Q.T1~regout\ : std_logic;
SIGNAL \Selector28~0_combout\ : std_logic;
SIGNAL \Tstep_D.T2_510~combout\ : std_logic;
SIGNAL \Tstep_Q.T2~regout\ : std_logic;
SIGNAL \Tstep_D.T3_498~combout\ : std_logic;
SIGNAL \Tstep_Q.T3~regout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \Ain~0_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \AddSub~0_combout\ : std_logic;
SIGNAL \SUM[0]~21_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \SUM[1]~14_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \SUM[2]~15_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \SUM[3]~16_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \SUM[4]~17_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \SUM[5]~18_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \SUM[6]~19_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \SUM[7]~20_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \SUM[8]~22_combout\ : std_logic;
SIGNAL \reg_A|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \start|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \DIN~combout\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ALT_INV_Resetn~combout\ : std_logic;

BEGIN

ww_DIN <= DIN;
ww_Resetn <= Resetn;
ww_Clock <= Clock;
ww_Run <= Run;
Done <= ww_Done;
BusWires <= ww_BusWires;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Clock~combout\);

\Selector30~0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Selector30~0_combout\);
\ALT_INV_Resetn~combout\ <= NOT \Resetn~combout\;

-- Location: LCFF_X43_Y12_N21
\reg_A|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \SUM[5]~18_combout\,
	ena => \Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_A|Q\(5));

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Clock~I\ : cycloneii_io
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
	padio => ww_Clock,
	combout => \Clock~combout\);

-- Location: CLKCTRL_G3
\Clock~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clock~clkctrl_outclk\);

-- Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DIN[7]~I\ : cycloneii_io
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
	padio => ww_DIN(7),
	combout => \DIN~combout\(7));

-- Location: LCCOMB_X44_Y12_N2
\start|Q[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \start|Q[7]~feeder_combout\ = \DIN~combout\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIN~combout\(7),
	combout => \start|Q[7]~feeder_combout\);

-- Location: LCFF_X44_Y12_N3
\start|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~combout\,
	datain => \start|Q[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \start|Q\(7));

-- Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DIN[8]~I\ : cycloneii_io
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
	padio => ww_DIN(8),
	combout => \DIN~combout\(8));

-- Location: LCFF_X44_Y12_N25
\start|Q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~combout\,
	sdata => \DIN~combout\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \start|Q\(8));

-- Location: LCCOMB_X44_Y12_N18
\Selector31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector31~0_combout\ = (!\start|Q\(8) & (\Tstep_Q.T1~regout\ & ((\Tstep_Q.T3~regout\) # (!\start|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Tstep_Q.T3~regout\,
	datab => \start|Q\(7),
	datac => \start|Q\(8),
	datad => \Tstep_Q.T1~regout\,
	combout => \Selector31~0_combout\);

-- Location: LCCOMB_X44_Y12_N16
\Selector31~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector31~1_combout\ = (\Tstep_Q.T3~regout\) # ((\Selector31~0_combout\) # ((!\Run~combout\ & !\Tstep_Q.T0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Run~combout\,
	datab => \Tstep_Q.T0~regout\,
	datac => \Tstep_Q.T3~regout\,
	datad => \Selector31~0_combout\,
	combout => \Selector31~1_combout\);

-- Location: PIN_N22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Run~I\ : cycloneii_io
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
	padio => ww_Run,
	combout => \Run~combout\);

-- Location: LCCOMB_X45_Y12_N30
\Selector30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector30~0_combout\ = ((!\Tstep_Q.T2~regout\ & ((\Selector16~0_combout\) # (!\Tstep_Q.T1~regout\)))) # (!\Run~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Tstep_Q.T2~regout\,
	datab => \Run~combout\,
	datac => \Selector16~0_combout\,
	datad => \Tstep_Q.T1~regout\,
	combout => \Selector30~0_combout\);

-- Location: CLKCTRL_G7
\Selector30~0clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Selector30~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Selector30~0clkctrl_outclk\);

-- Location: LCCOMB_X44_Y12_N14
\Tstep_D.T0_534\ : cycloneii_lcell_comb
-- Equation(s):
-- \Tstep_D.T0_534~combout\ = (GLOBAL(\Selector30~0clkctrl_outclk\) & ((\Selector31~1_combout\))) # (!GLOBAL(\Selector30~0clkctrl_outclk\) & (\Tstep_D.T0_534~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Tstep_D.T0_534~combout\,
	datac => \Selector31~1_combout\,
	datad => \Selector30~0clkctrl_outclk\,
	combout => \Tstep_D.T0_534~combout\);

-- Location: LCCOMB_X45_Y12_N14
\Tstep_Q.T0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Tstep_Q.T0~0_combout\ = !\Tstep_D.T0_534~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Tstep_D.T0_534~combout\,
	combout => \Tstep_Q.T0~0_combout\);

-- Location: PIN_N21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Resetn~I\ : cycloneii_io
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
	padio => ww_Resetn,
	combout => \Resetn~combout\);

-- Location: LCFF_X45_Y12_N15
\Tstep_Q.T0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \Tstep_Q.T0~0_combout\,
	ena => \ALT_INV_Resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Tstep_Q.T0~regout\);

-- Location: LCCOMB_X45_Y12_N24
\Selector29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector29~0_combout\ = (\Run~combout\ & !\Tstep_Q.T0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Run~combout\,
	datac => \Tstep_Q.T0~regout\,
	combout => \Selector29~0_combout\);

-- Location: LCCOMB_X44_Y12_N26
\Tstep_D.T1_522\ : cycloneii_lcell_comb
-- Equation(s):
-- \Tstep_D.T1_522~combout\ = (GLOBAL(\Selector30~0clkctrl_outclk\) & (\Selector29~0_combout\)) # (!GLOBAL(\Selector30~0clkctrl_outclk\) & ((\Tstep_D.T1_522~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector29~0_combout\,
	datac => \Tstep_D.T1_522~combout\,
	datad => \Selector30~0clkctrl_outclk\,
	combout => \Tstep_D.T1_522~combout\);

-- Location: LCFF_X44_Y12_N27
\Tstep_Q.T1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~combout\,
	datain => \Tstep_D.T1_522~combout\,
	ena => \ALT_INV_Resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Tstep_Q.T1~regout\);

-- Location: LCCOMB_X44_Y12_N4
\Selector28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector28~0_combout\ = (\Tstep_Q.T1~regout\ & ((\start|Q\(7)) # (\start|Q\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \start|Q\(7),
	datac => \start|Q\(8),
	datad => \Tstep_Q.T1~regout\,
	combout => \Selector28~0_combout\);

-- Location: LCCOMB_X44_Y12_N30
\Tstep_D.T2_510\ : cycloneii_lcell_comb
-- Equation(s):
-- \Tstep_D.T2_510~combout\ = (GLOBAL(\Selector30~0clkctrl_outclk\) & ((\Selector28~0_combout\))) # (!GLOBAL(\Selector30~0clkctrl_outclk\) & (\Tstep_D.T2_510~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Tstep_D.T2_510~combout\,
	datac => \Selector28~0_combout\,
	datad => \Selector30~0clkctrl_outclk\,
	combout => \Tstep_D.T2_510~combout\);

-- Location: LCFF_X44_Y12_N31
\Tstep_Q.T2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~combout\,
	datain => \Tstep_D.T2_510~combout\,
	ena => \ALT_INV_Resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Tstep_Q.T2~regout\);

-- Location: LCCOMB_X44_Y12_N8
\Tstep_D.T3_498\ : cycloneii_lcell_comb
-- Equation(s):
-- \Tstep_D.T3_498~combout\ = (GLOBAL(\Selector30~0clkctrl_outclk\) & ((\Tstep_Q.T2~regout\))) # (!GLOBAL(\Selector30~0clkctrl_outclk\) & (\Tstep_D.T3_498~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Tstep_D.T3_498~combout\,
	datac => \Tstep_Q.T2~regout\,
	datad => \Selector30~0clkctrl_outclk\,
	combout => \Tstep_D.T3_498~combout\);

-- Location: LCFF_X44_Y12_N9
\Tstep_Q.T3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~combout\,
	datain => \Tstep_D.T3_498~combout\,
	ena => \ALT_INV_Resetn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Tstep_Q.T3~regout\);

-- Location: LCCOMB_X44_Y12_N20
\Selector16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (!\start|Q\(8) & ((\start|Q\(7) & (\Tstep_Q.T3~regout\)) # (!\start|Q\(7) & ((\Tstep_Q.T1~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start|Q\(7),
	datab => \Tstep_Q.T3~regout\,
	datac => \start|Q\(8),
	datad => \Tstep_Q.T1~regout\,
	combout => \Selector16~0_combout\);

-- Location: LCCOMB_X44_Y12_N22
\Ain~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Ain~0_combout\ = (\Tstep_Q.T1~regout\ & (\start|Q\(7) & !\start|Q\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Tstep_Q.T1~regout\,
	datab => \start|Q\(7),
	datac => \start|Q\(8),
	combout => \Ain~0_combout\);

-- Location: LCFF_X42_Y12_N31
\reg_A|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \SUM[0]~21_combout\,
	sload => VCC,
	ena => \Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_A|Q\(0));

-- Location: LCCOMB_X42_Y12_N0
\Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\SUM[0]~21_combout\ & (\reg_A|Q\(0) $ (VCC))) # (!\SUM[0]~21_combout\ & ((\reg_A|Q\(0)) # (GND)))
-- \Add1~1\ = CARRY((\reg_A|Q\(0)) # (!\SUM[0]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SUM[0]~21_combout\,
	datab => \reg_A|Q\(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X43_Y12_N0
\Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\reg_A|Q\(0) & (\SUM[0]~21_combout\ $ (VCC))) # (!\reg_A|Q\(0) & (\SUM[0]~21_combout\ & VCC))
-- \Add0~1\ = CARRY((\reg_A|Q\(0) & \SUM[0]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_A|Q\(0),
	datab => \SUM[0]~21_combout\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DIN[6]~I\ : cycloneii_io
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
	padio => ww_DIN(6),
	combout => \DIN~combout\(6));

-- Location: LCFF_X43_Y12_N23
\start|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \DIN~combout\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \start|Q\(6));

-- Location: LCCOMB_X43_Y12_N22
\AddSub~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \AddSub~0_combout\ = (\start|Q\(7) & (!\start|Q\(8) & (\start|Q\(6) & \Tstep_Q.T2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start|Q\(7),
	datab => \start|Q\(8),
	datac => \start|Q\(6),
	datad => \Tstep_Q.T2~regout\,
	combout => \AddSub~0_combout\);

-- Location: LCCOMB_X43_Y12_N30
\SUM[0]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \SUM[0]~21_combout\ = (\AddSub~0_combout\ & (\Add1~0_combout\)) # (!\AddSub~0_combout\ & ((\Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => \Add0~0_combout\,
	datad => \AddSub~0_combout\,
	combout => \SUM[0]~21_combout\);

-- Location: LCCOMB_X43_Y12_N2
\Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\reg_A|Q\(1) & ((\SUM[1]~14_combout\ & (\Add0~1\ & VCC)) # (!\SUM[1]~14_combout\ & (!\Add0~1\)))) # (!\reg_A|Q\(1) & ((\SUM[1]~14_combout\ & (!\Add0~1\)) # (!\SUM[1]~14_combout\ & ((\Add0~1\) # (GND)))))
-- \Add0~3\ = CARRY((\reg_A|Q\(1) & (!\SUM[1]~14_combout\ & !\Add0~1\)) # (!\reg_A|Q\(1) & ((!\Add0~1\) # (!\SUM[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_A|Q\(1),
	datab => \SUM[1]~14_combout\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCFF_X43_Y12_N25
\reg_A|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \SUM[1]~14_combout\,
	ena => \Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_A|Q\(1));

-- Location: LCCOMB_X42_Y12_N2
\Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\SUM[1]~14_combout\ & ((\reg_A|Q\(1) & (!\Add1~1\)) # (!\reg_A|Q\(1) & ((\Add1~1\) # (GND))))) # (!\SUM[1]~14_combout\ & ((\reg_A|Q\(1) & (\Add1~1\ & VCC)) # (!\reg_A|Q\(1) & (!\Add1~1\))))
-- \Add1~3\ = CARRY((\SUM[1]~14_combout\ & ((!\Add1~1\) # (!\reg_A|Q\(1)))) # (!\SUM[1]~14_combout\ & (!\reg_A|Q\(1) & !\Add1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SUM[1]~14_combout\,
	datab => \reg_A|Q\(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X43_Y12_N24
\SUM[1]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \SUM[1]~14_combout\ = (\AddSub~0_combout\ & ((\Add1~2_combout\))) # (!\AddSub~0_combout\ & (\Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~2_combout\,
	datac => \Add1~2_combout\,
	datad => \AddSub~0_combout\,
	combout => \SUM[1]~14_combout\);

-- Location: LCCOMB_X42_Y12_N4
\Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((\reg_A|Q\(2) $ (\SUM[2]~15_combout\ $ (\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((\reg_A|Q\(2) & ((!\Add1~3\) # (!\SUM[2]~15_combout\))) # (!\reg_A|Q\(2) & (!\SUM[2]~15_combout\ & !\Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_A|Q\(2),
	datab => \SUM[2]~15_combout\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCFF_X43_Y12_N27
\reg_A|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \SUM[2]~15_combout\,
	ena => \Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_A|Q\(2));

-- Location: LCCOMB_X43_Y12_N4
\Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\SUM[2]~15_combout\ $ (\reg_A|Q\(2) $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\SUM[2]~15_combout\ & ((\reg_A|Q\(2)) # (!\Add0~3\))) # (!\SUM[2]~15_combout\ & (\reg_A|Q\(2) & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SUM[2]~15_combout\,
	datab => \reg_A|Q\(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X43_Y12_N26
\SUM[2]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \SUM[2]~15_combout\ = (\AddSub~0_combout\ & (\Add1~4_combout\)) # (!\AddSub~0_combout\ & ((\Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~4_combout\,
	datac => \Add0~4_combout\,
	datad => \AddSub~0_combout\,
	combout => \SUM[2]~15_combout\);

-- Location: LCFF_X43_Y12_N29
\reg_A|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \SUM[3]~16_combout\,
	ena => \Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_A|Q\(3));

-- Location: LCCOMB_X43_Y12_N6
\Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\SUM[3]~16_combout\ & ((\reg_A|Q\(3) & (\Add0~5\ & VCC)) # (!\reg_A|Q\(3) & (!\Add0~5\)))) # (!\SUM[3]~16_combout\ & ((\reg_A|Q\(3) & (!\Add0~5\)) # (!\reg_A|Q\(3) & ((\Add0~5\) # (GND)))))
-- \Add0~7\ = CARRY((\SUM[3]~16_combout\ & (!\reg_A|Q\(3) & !\Add0~5\)) # (!\SUM[3]~16_combout\ & ((!\Add0~5\) # (!\reg_A|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SUM[3]~16_combout\,
	datab => \reg_A|Q\(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X42_Y12_N6
\Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\SUM[3]~16_combout\ & ((\reg_A|Q\(3) & (!\Add1~5\)) # (!\reg_A|Q\(3) & ((\Add1~5\) # (GND))))) # (!\SUM[3]~16_combout\ & ((\reg_A|Q\(3) & (\Add1~5\ & VCC)) # (!\reg_A|Q\(3) & (!\Add1~5\))))
-- \Add1~7\ = CARRY((\SUM[3]~16_combout\ & ((!\Add1~5\) # (!\reg_A|Q\(3)))) # (!\SUM[3]~16_combout\ & (!\reg_A|Q\(3) & !\Add1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SUM[3]~16_combout\,
	datab => \reg_A|Q\(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X43_Y12_N28
\SUM[3]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \SUM[3]~16_combout\ = (\AddSub~0_combout\ & ((\Add1~6_combout\))) # (!\AddSub~0_combout\ & (\Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datac => \Add1~6_combout\,
	datad => \AddSub~0_combout\,
	combout => \SUM[3]~16_combout\);

-- Location: LCCOMB_X42_Y12_N8
\Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((\reg_A|Q\(4) $ (\SUM[4]~17_combout\ $ (\Add1~7\)))) # (GND)
-- \Add1~9\ = CARRY((\reg_A|Q\(4) & ((!\Add1~7\) # (!\SUM[4]~17_combout\))) # (!\reg_A|Q\(4) & (!\SUM[4]~17_combout\ & !\Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_A|Q\(4),
	datab => \SUM[4]~17_combout\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCFF_X43_Y12_N31
\reg_A|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \SUM[4]~17_combout\,
	sload => VCC,
	ena => \Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_A|Q\(4));

-- Location: LCCOMB_X43_Y12_N8
\Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((\SUM[4]~17_combout\ $ (\reg_A|Q\(4) $ (!\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((\SUM[4]~17_combout\ & ((\reg_A|Q\(4)) # (!\Add0~7\))) # (!\SUM[4]~17_combout\ & (\reg_A|Q\(4) & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SUM[4]~17_combout\,
	datab => \reg_A|Q\(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X43_Y12_N18
\SUM[4]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \SUM[4]~17_combout\ = (\AddSub~0_combout\ & (\Add1~8_combout\)) # (!\AddSub~0_combout\ & ((\Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~8_combout\,
	datac => \Add0~8_combout\,
	datad => \AddSub~0_combout\,
	combout => \SUM[4]~17_combout\);

-- Location: LCCOMB_X42_Y12_N10
\Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\reg_A|Q\(5) & ((\SUM[5]~18_combout\ & (!\Add1~9\)) # (!\SUM[5]~18_combout\ & (\Add1~9\ & VCC)))) # (!\reg_A|Q\(5) & ((\SUM[5]~18_combout\ & ((\Add1~9\) # (GND))) # (!\SUM[5]~18_combout\ & (!\Add1~9\))))
-- \Add1~11\ = CARRY((\reg_A|Q\(5) & (\SUM[5]~18_combout\ & !\Add1~9\)) # (!\reg_A|Q\(5) & ((\SUM[5]~18_combout\) # (!\Add1~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_A|Q\(5),
	datab => \SUM[5]~18_combout\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X43_Y12_N10
\Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\reg_A|Q\(5) & ((\SUM[5]~18_combout\ & (\Add0~9\ & VCC)) # (!\SUM[5]~18_combout\ & (!\Add0~9\)))) # (!\reg_A|Q\(5) & ((\SUM[5]~18_combout\ & (!\Add0~9\)) # (!\SUM[5]~18_combout\ & ((\Add0~9\) # (GND)))))
-- \Add0~11\ = CARRY((\reg_A|Q\(5) & (!\SUM[5]~18_combout\ & !\Add0~9\)) # (!\reg_A|Q\(5) & ((!\Add0~9\) # (!\SUM[5]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_A|Q\(5),
	datab => \SUM[5]~18_combout\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X43_Y12_N20
\SUM[5]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \SUM[5]~18_combout\ = (\AddSub~0_combout\ & (\Add1~10_combout\)) # (!\AddSub~0_combout\ & ((\Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~10_combout\,
	datab => \AddSub~0_combout\,
	datad => \Add0~10_combout\,
	combout => \SUM[5]~18_combout\);

-- Location: LCFF_X42_Y12_N27
\reg_A|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \SUM[6]~19_combout\,
	ena => \Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_A|Q\(6));

-- Location: LCCOMB_X43_Y12_N12
\Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((\SUM[6]~19_combout\ $ (\reg_A|Q\(6) $ (!\Add0~11\)))) # (GND)
-- \Add0~13\ = CARRY((\SUM[6]~19_combout\ & ((\reg_A|Q\(6)) # (!\Add0~11\))) # (!\SUM[6]~19_combout\ & (\reg_A|Q\(6) & !\Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SUM[6]~19_combout\,
	datab => \reg_A|Q\(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X42_Y12_N12
\Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = ((\reg_A|Q\(6) $ (\SUM[6]~19_combout\ $ (\Add1~11\)))) # (GND)
-- \Add1~13\ = CARRY((\reg_A|Q\(6) & ((!\Add1~11\) # (!\SUM[6]~19_combout\))) # (!\reg_A|Q\(6) & (!\SUM[6]~19_combout\ & !\Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_A|Q\(6),
	datab => \SUM[6]~19_combout\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X42_Y12_N26
\SUM[6]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \SUM[6]~19_combout\ = (\AddSub~0_combout\ & ((\Add1~12_combout\))) # (!\AddSub~0_combout\ & (\Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddSub~0_combout\,
	datac => \Add0~12_combout\,
	datad => \Add1~12_combout\,
	combout => \SUM[6]~19_combout\);

-- Location: LCFF_X42_Y12_N29
\reg_A|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \SUM[7]~20_combout\,
	ena => \Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_A|Q\(7));

-- Location: LCCOMB_X42_Y12_N14
\Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (\SUM[7]~20_combout\ & ((\reg_A|Q\(7) & (!\Add1~13\)) # (!\reg_A|Q\(7) & ((\Add1~13\) # (GND))))) # (!\SUM[7]~20_combout\ & ((\reg_A|Q\(7) & (\Add1~13\ & VCC)) # (!\reg_A|Q\(7) & (!\Add1~13\))))
-- \Add1~15\ = CARRY((\SUM[7]~20_combout\ & ((!\Add1~13\) # (!\reg_A|Q\(7)))) # (!\SUM[7]~20_combout\ & (!\reg_A|Q\(7) & !\Add1~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SUM[7]~20_combout\,
	datab => \reg_A|Q\(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X43_Y12_N14
\Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\SUM[7]~20_combout\ & ((\reg_A|Q\(7) & (\Add0~13\ & VCC)) # (!\reg_A|Q\(7) & (!\Add0~13\)))) # (!\SUM[7]~20_combout\ & ((\reg_A|Q\(7) & (!\Add0~13\)) # (!\reg_A|Q\(7) & ((\Add0~13\) # (GND)))))
-- \Add0~15\ = CARRY((\SUM[7]~20_combout\ & (!\reg_A|Q\(7) & !\Add0~13\)) # (!\SUM[7]~20_combout\ & ((!\Add0~13\) # (!\reg_A|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SUM[7]~20_combout\,
	datab => \reg_A|Q\(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X42_Y12_N28
\SUM[7]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \SUM[7]~20_combout\ = (\AddSub~0_combout\ & (\Add1~14_combout\)) # (!\AddSub~0_combout\ & ((\Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~14_combout\,
	datac => \Add0~14_combout\,
	datad => \AddSub~0_combout\,
	combout => \SUM[7]~20_combout\);

-- Location: LCFF_X42_Y12_N25
\reg_A|Q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \SUM[8]~22_combout\,
	ena => \Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_A|Q\(8));

-- Location: LCCOMB_X42_Y12_N16
\Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = \SUM[8]~22_combout\ $ (\Add1~15\ $ (\reg_A|Q\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SUM[8]~22_combout\,
	datad => \reg_A|Q\(8),
	cin => \Add1~15\,
	combout => \Add1~16_combout\);

-- Location: LCCOMB_X43_Y12_N16
\Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = \reg_A|Q\(8) $ (\Add0~15\ $ (!\SUM[8]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \reg_A|Q\(8),
	datad => \SUM[8]~22_combout\,
	cin => \Add0~15\,
	combout => \Add0~16_combout\);

-- Location: LCCOMB_X42_Y12_N24
\SUM[8]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \SUM[8]~22_combout\ = (\AddSub~0_combout\ & (\Add1~16_combout\)) # (!\AddSub~0_combout\ & ((\Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~16_combout\,
	datac => \Add0~16_combout\,
	datad => \AddSub~0_combout\,
	combout => \SUM[8]~22_combout\);

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Done~I\ : cycloneii_io
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
	datain => \Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Done);

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BusWires[0]~I\ : cycloneii_io
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
	datain => \SUM[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BusWires(0));

-- Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BusWires[1]~I\ : cycloneii_io
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
	datain => \SUM[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BusWires(1));

-- Location: PIN_P15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BusWires[2]~I\ : cycloneii_io
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
	datain => \SUM[2]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BusWires(2));

-- Location: PIN_N15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BusWires[3]~I\ : cycloneii_io
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
	datain => \SUM[3]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BusWires(3));

-- Location: PIN_M18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BusWires[4]~I\ : cycloneii_io
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
	datain => \SUM[4]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BusWires(4));

-- Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BusWires[5]~I\ : cycloneii_io
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
	datain => \SUM[5]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BusWires(5));

-- Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BusWires[6]~I\ : cycloneii_io
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
	datain => \SUM[6]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BusWires(6));

-- Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BusWires[7]~I\ : cycloneii_io
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
	datain => \SUM[7]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BusWires(7));

-- Location: PIN_L18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BusWires[8]~I\ : cycloneii_io
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
	datain => \SUM[8]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BusWires(8));

-- Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DIN[3]~I\ : cycloneii_io
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
	padio => ww_DIN(3));

-- Location: PIN_AB4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DIN[4]~I\ : cycloneii_io
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
	padio => ww_DIN(4));

-- Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DIN[5]~I\ : cycloneii_io
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
	padio => ww_DIN(5));

-- Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DIN[0]~I\ : cycloneii_io
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
	padio => ww_DIN(0));

-- Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DIN[1]~I\ : cycloneii_io
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
	padio => ww_DIN(1));

-- Location: PIN_R9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DIN[2]~I\ : cycloneii_io
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
	padio => ww_DIN(2));
END structure;


