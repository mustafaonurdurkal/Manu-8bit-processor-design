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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "09/07/2021 03:32:43"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ControlUnit IS
    PORT (
	CLEAROUT : OUT std_logic;
	D13 : OUT std_logic;
	D1 : OUT std_logic;
	D2 : OUT std_logic;
	D3 : OUT std_logic;
	D4 : OUT std_logic;
	D5 : OUT std_logic;
	D6 : OUT std_logic;
	D8 : OUT std_logic;
	D10 : OUT std_logic;
	D12 : OUT std_logic;
	Clock : IN std_logic;
	D0 : OUT std_logic;
	D11 : OUT std_logic;
	D15 : OUT std_logic;
	D14 : OUT std_logic;
	D9 : OUT std_logic;
	IRLOAD : OUT std_logic;
	SelDm : OUT std_logic;
	SelAlu : OUT std_logic;
	Selpc : OUT std_logic;
	Selr2 : OUT std_logic;
	Selr1 : OUT std_logic;
	Selr0 : OUT std_logic;
	Selr3 : OUT std_logic;
	PCCONTENT : OUT std_logic_vector(4 DOWNTO 0);
	USERINP : IN std_logic_vector(3 DOWNTO 0);
	HaltOut : OUT std_logic;
	TIME1 : OUT std_logic;
	TIME0 : OUT std_logic;
	TIME2 : OUT std_logic;
	TIME3 : OUT std_logic;
	TIME4 : OUT std_logic;
	TIME5 : OUT std_logic;
	TIME6 : OUT std_logic;
	TIME7 : OUT std_logic;
	D7 : OUT std_logic;
	ROMREADEN : OUT std_logic;
	R0acik : OUT std_logic;
	R1acik : OUT std_logic;
	R2acik : OUT std_logic;
	R3acik : OUT std_logic;
	OutAcik : OUT std_logic;
	Inpacik : OUT std_logic;
	PCacik : OUT std_logic;
	ARacik : OUT std_logic;
	WRTacik : OUT std_logic;
	SelINP : OUT std_logic;
	Sel_Ir : OUT std_logic;
	ALUOUPUT : OUT std_logic_vector(3 DOWNTO 0);
	BUS_SEL : OUT std_logic_vector(3 DOWNTO 0);
	BUSCONTENT : OUT std_logic_vector(3 DOWNTO 0);
	IRCONTENT : OUT std_logic_vector(10 DOWNTO 0);
	OutputData : OUT std_logic_vector(3 DOWNTO 0);
	R0CONTENT : OUT std_logic_vector(3 DOWNTO 0);
	R1CONTENT : OUT std_logic_vector(3 DOWNTO 0);
	R2CONTENT : OUT std_logic_vector(3 DOWNTO 0);
	R3CONTENT : OUT std_logic_vector(3 DOWNTO 0);
	RAMDAT : OUT std_logic_vector(3 DOWNTO 0);
	ROMDAT : OUT std_logic_vector(10 DOWNTO 0);
	SCcounter : OUT std_logic_vector(2 DOWNTO 0)
	);
END ControlUnit;

-- Design Ports Information
-- CLEAROUT	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D13	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D5	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D6	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D8	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D10	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D12	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D11	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D15	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D14	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D9	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IRLOAD	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelDm	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelAlu	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Selpc	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Selr2	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Selr1	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Selr0	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Selr3	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCCONTENT[4]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCCONTENT[3]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCCONTENT[2]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCCONTENT[1]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCCONTENT[0]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HaltOut	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TIME1	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TIME0	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TIME2	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TIME3	=>  Location: PIN_R19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TIME4	=>  Location: PIN_U19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TIME5	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TIME6	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TIME7	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D7	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROMREADEN	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0acik	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1acik	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2acik	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3acik	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OutAcik	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Inpacik	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCacik	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ARacik	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRTacik	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelINP	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sel_Ir	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOUPUT[3]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOUPUT[2]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOUPUT[1]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOUPUT[0]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUS_SEL[3]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUS_SEL[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUS_SEL[1]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUS_SEL[0]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUSCONTENT[3]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUSCONTENT[2]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUSCONTENT[1]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUSCONTENT[0]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IRCONTENT[10]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IRCONTENT[9]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IRCONTENT[8]	=>  Location: PIN_T16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IRCONTENT[7]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IRCONTENT[6]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IRCONTENT[5]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IRCONTENT[4]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IRCONTENT[3]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IRCONTENT[2]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IRCONTENT[1]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IRCONTENT[0]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OutputData[3]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OutputData[2]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OutputData[1]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OutputData[0]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0CONTENT[3]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0CONTENT[2]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0CONTENT[1]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0CONTENT[0]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1CONTENT[3]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1CONTENT[2]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1CONTENT[1]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1CONTENT[0]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2CONTENT[3]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2CONTENT[2]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2CONTENT[1]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2CONTENT[0]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3CONTENT[3]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3CONTENT[2]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3CONTENT[1]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3CONTENT[0]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMDAT[3]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMDAT[2]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMDAT[1]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMDAT[0]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROMDAT[10]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROMDAT[9]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROMDAT[8]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROMDAT[7]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROMDAT[6]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROMDAT[5]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROMDAT[4]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROMDAT[3]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROMDAT[2]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROMDAT[1]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROMDAT[0]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SCcounter[2]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SCcounter[1]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SCcounter[0]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- USERINP[3]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- USERINP[2]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- USERINP[1]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- USERINP[0]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ControlUnit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLEAROUT : std_logic;
SIGNAL ww_D13 : std_logic;
SIGNAL ww_D1 : std_logic;
SIGNAL ww_D2 : std_logic;
SIGNAL ww_D3 : std_logic;
SIGNAL ww_D4 : std_logic;
SIGNAL ww_D5 : std_logic;
SIGNAL ww_D6 : std_logic;
SIGNAL ww_D8 : std_logic;
SIGNAL ww_D10 : std_logic;
SIGNAL ww_D12 : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_D0 : std_logic;
SIGNAL ww_D11 : std_logic;
SIGNAL ww_D15 : std_logic;
SIGNAL ww_D14 : std_logic;
SIGNAL ww_D9 : std_logic;
SIGNAL ww_IRLOAD : std_logic;
SIGNAL ww_SelDm : std_logic;
SIGNAL ww_SelAlu : std_logic;
SIGNAL ww_Selpc : std_logic;
SIGNAL ww_Selr2 : std_logic;
SIGNAL ww_Selr1 : std_logic;
SIGNAL ww_Selr0 : std_logic;
SIGNAL ww_Selr3 : std_logic;
SIGNAL ww_PCCONTENT : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_USERINP : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HaltOut : std_logic;
SIGNAL ww_TIME1 : std_logic;
SIGNAL ww_TIME0 : std_logic;
SIGNAL ww_TIME2 : std_logic;
SIGNAL ww_TIME3 : std_logic;
SIGNAL ww_TIME4 : std_logic;
SIGNAL ww_TIME5 : std_logic;
SIGNAL ww_TIME6 : std_logic;
SIGNAL ww_TIME7 : std_logic;
SIGNAL ww_D7 : std_logic;
SIGNAL ww_ROMREADEN : std_logic;
SIGNAL ww_R0acik : std_logic;
SIGNAL ww_R1acik : std_logic;
SIGNAL ww_R2acik : std_logic;
SIGNAL ww_R3acik : std_logic;
SIGNAL ww_OutAcik : std_logic;
SIGNAL ww_Inpacik : std_logic;
SIGNAL ww_PCacik : std_logic;
SIGNAL ww_ARacik : std_logic;
SIGNAL ww_WRTacik : std_logic;
SIGNAL ww_SelINP : std_logic;
SIGNAL ww_Sel_Ir : std_logic;
SIGNAL ww_ALUOUPUT : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_BUS_SEL : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_BUSCONTENT : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_IRCONTENT : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_OutputData : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_R0CONTENT : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_R1CONTENT : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_R2CONTENT : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_R3CONTENT : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_RAMDAT : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ROMDAT : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_SCcounter : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst16|inst11|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst16|inst11|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst16|inst11|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst16|inst10|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst16|inst10|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst123|LPM_ADD_SUB_component|auto_generated|result[0]~0_combout\ : std_logic;
SIGNAL \inst123|LPM_ADD_SUB_component|auto_generated|result[1]~2_combout\ : std_logic;
SIGNAL \inst123|LPM_ADD_SUB_component|auto_generated|result[2]~4_combout\ : std_logic;
SIGNAL \inst120|LPM_ADD_SUB_component|auto_generated|result[1]~2_combout\ : std_logic;
SIGNAL \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result3w~4_combout\ : std_logic;
SIGNAL \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result2w~1_combout\ : std_logic;
SIGNAL \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result1w~2_combout\ : std_logic;
SIGNAL \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result0w~2_combout\ : std_logic;
SIGNAL \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result3w~1_combout\ : std_logic;
SIGNAL \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result2w~0_combout\ : std_logic;
SIGNAL \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result1w~1_combout\ : std_logic;
SIGNAL \inst16|inst12|LPM_MUX_component|auto_generated|w_mux_outputs33w[1]~0_combout\ : std_logic;
SIGNAL \inst119|LPM_MUX_component|auto_generated|result_node[3]~0_combout\ : std_logic;
SIGNAL \inst119|LPM_MUX_component|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \USERINP[2]~input_o\ : std_logic;
SIGNAL \CLEAROUT~output_o\ : std_logic;
SIGNAL \D13~output_o\ : std_logic;
SIGNAL \D1~output_o\ : std_logic;
SIGNAL \D2~output_o\ : std_logic;
SIGNAL \D3~output_o\ : std_logic;
SIGNAL \D4~output_o\ : std_logic;
SIGNAL \D5~output_o\ : std_logic;
SIGNAL \D6~output_o\ : std_logic;
SIGNAL \D8~output_o\ : std_logic;
SIGNAL \D10~output_o\ : std_logic;
SIGNAL \D12~output_o\ : std_logic;
SIGNAL \D0~output_o\ : std_logic;
SIGNAL \D11~output_o\ : std_logic;
SIGNAL \D15~output_o\ : std_logic;
SIGNAL \D14~output_o\ : std_logic;
SIGNAL \D9~output_o\ : std_logic;
SIGNAL \IRLOAD~output_o\ : std_logic;
SIGNAL \SelDm~output_o\ : std_logic;
SIGNAL \SelAlu~output_o\ : std_logic;
SIGNAL \Selpc~output_o\ : std_logic;
SIGNAL \Selr2~output_o\ : std_logic;
SIGNAL \Selr1~output_o\ : std_logic;
SIGNAL \Selr0~output_o\ : std_logic;
SIGNAL \Selr3~output_o\ : std_logic;
SIGNAL \PCCONTENT[4]~output_o\ : std_logic;
SIGNAL \PCCONTENT[3]~output_o\ : std_logic;
SIGNAL \PCCONTENT[2]~output_o\ : std_logic;
SIGNAL \PCCONTENT[1]~output_o\ : std_logic;
SIGNAL \PCCONTENT[0]~output_o\ : std_logic;
SIGNAL \HaltOut~output_o\ : std_logic;
SIGNAL \TIME1~output_o\ : std_logic;
SIGNAL \TIME0~output_o\ : std_logic;
SIGNAL \TIME2~output_o\ : std_logic;
SIGNAL \TIME3~output_o\ : std_logic;
SIGNAL \TIME4~output_o\ : std_logic;
SIGNAL \TIME5~output_o\ : std_logic;
SIGNAL \TIME6~output_o\ : std_logic;
SIGNAL \TIME7~output_o\ : std_logic;
SIGNAL \D7~output_o\ : std_logic;
SIGNAL \ROMREADEN~output_o\ : std_logic;
SIGNAL \R0acik~output_o\ : std_logic;
SIGNAL \R1acik~output_o\ : std_logic;
SIGNAL \R2acik~output_o\ : std_logic;
SIGNAL \R3acik~output_o\ : std_logic;
SIGNAL \OutAcik~output_o\ : std_logic;
SIGNAL \Inpacik~output_o\ : std_logic;
SIGNAL \PCacik~output_o\ : std_logic;
SIGNAL \ARacik~output_o\ : std_logic;
SIGNAL \WRTacik~output_o\ : std_logic;
SIGNAL \SelINP~output_o\ : std_logic;
SIGNAL \Sel_Ir~output_o\ : std_logic;
SIGNAL \ALUOUPUT[3]~output_o\ : std_logic;
SIGNAL \ALUOUPUT[2]~output_o\ : std_logic;
SIGNAL \ALUOUPUT[1]~output_o\ : std_logic;
SIGNAL \ALUOUPUT[0]~output_o\ : std_logic;
SIGNAL \BUS_SEL[3]~output_o\ : std_logic;
SIGNAL \BUS_SEL[2]~output_o\ : std_logic;
SIGNAL \BUS_SEL[1]~output_o\ : std_logic;
SIGNAL \BUS_SEL[0]~output_o\ : std_logic;
SIGNAL \BUSCONTENT[3]~output_o\ : std_logic;
SIGNAL \BUSCONTENT[2]~output_o\ : std_logic;
SIGNAL \BUSCONTENT[1]~output_o\ : std_logic;
SIGNAL \BUSCONTENT[0]~output_o\ : std_logic;
SIGNAL \IRCONTENT[10]~output_o\ : std_logic;
SIGNAL \IRCONTENT[9]~output_o\ : std_logic;
SIGNAL \IRCONTENT[8]~output_o\ : std_logic;
SIGNAL \IRCONTENT[7]~output_o\ : std_logic;
SIGNAL \IRCONTENT[6]~output_o\ : std_logic;
SIGNAL \IRCONTENT[5]~output_o\ : std_logic;
SIGNAL \IRCONTENT[4]~output_o\ : std_logic;
SIGNAL \IRCONTENT[3]~output_o\ : std_logic;
SIGNAL \IRCONTENT[2]~output_o\ : std_logic;
SIGNAL \IRCONTENT[1]~output_o\ : std_logic;
SIGNAL \IRCONTENT[0]~output_o\ : std_logic;
SIGNAL \OutputData[3]~output_o\ : std_logic;
SIGNAL \OutputData[2]~output_o\ : std_logic;
SIGNAL \OutputData[1]~output_o\ : std_logic;
SIGNAL \OutputData[0]~output_o\ : std_logic;
SIGNAL \R0CONTENT[3]~output_o\ : std_logic;
SIGNAL \R0CONTENT[2]~output_o\ : std_logic;
SIGNAL \R0CONTENT[1]~output_o\ : std_logic;
SIGNAL \R0CONTENT[0]~output_o\ : std_logic;
SIGNAL \R1CONTENT[3]~output_o\ : std_logic;
SIGNAL \R1CONTENT[2]~output_o\ : std_logic;
SIGNAL \R1CONTENT[1]~output_o\ : std_logic;
SIGNAL \R1CONTENT[0]~output_o\ : std_logic;
SIGNAL \R2CONTENT[3]~output_o\ : std_logic;
SIGNAL \R2CONTENT[2]~output_o\ : std_logic;
SIGNAL \R2CONTENT[1]~output_o\ : std_logic;
SIGNAL \R2CONTENT[0]~output_o\ : std_logic;
SIGNAL \R3CONTENT[3]~output_o\ : std_logic;
SIGNAL \R3CONTENT[2]~output_o\ : std_logic;
SIGNAL \R3CONTENT[1]~output_o\ : std_logic;
SIGNAL \R3CONTENT[0]~output_o\ : std_logic;
SIGNAL \RAMDAT[3]~output_o\ : std_logic;
SIGNAL \RAMDAT[2]~output_o\ : std_logic;
SIGNAL \RAMDAT[1]~output_o\ : std_logic;
SIGNAL \RAMDAT[0]~output_o\ : std_logic;
SIGNAL \ROMDAT[10]~output_o\ : std_logic;
SIGNAL \ROMDAT[9]~output_o\ : std_logic;
SIGNAL \ROMDAT[8]~output_o\ : std_logic;
SIGNAL \ROMDAT[7]~output_o\ : std_logic;
SIGNAL \ROMDAT[6]~output_o\ : std_logic;
SIGNAL \ROMDAT[5]~output_o\ : std_logic;
SIGNAL \ROMDAT[4]~output_o\ : std_logic;
SIGNAL \ROMDAT[3]~output_o\ : std_logic;
SIGNAL \ROMDAT[2]~output_o\ : std_logic;
SIGNAL \ROMDAT[1]~output_o\ : std_logic;
SIGNAL \ROMDAT[0]~output_o\ : std_logic;
SIGNAL \SCcounter[2]~output_o\ : std_logic;
SIGNAL \SCcounter[1]~output_o\ : std_logic;
SIGNAL \SCcounter[0]~output_o\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \Clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst16|inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \inst16|inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst16|inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \inst16|inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst16|inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \inst16|inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \inst16|inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \inst2|LPM_DECODE_component|auto_generated|w_anode41w[3]~0_combout\ : std_logic;
SIGNAL \inst16|inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \inst16|inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \inst2|LPM_DECODE_component|auto_generated|w_anode30w[3]~0_combout\ : std_logic;
SIGNAL \inst118|LPM_MUX_component|auto_generated|result_node[4]~2_combout\ : std_logic;
SIGNAL \inst120|LPM_ADD_SUB_component|auto_generated|result[0]~1\ : std_logic;
SIGNAL \inst120|LPM_ADD_SUB_component|auto_generated|result[1]~3\ : std_logic;
SIGNAL \inst120|LPM_ADD_SUB_component|auto_generated|result[2]~5\ : std_logic;
SIGNAL \inst120|LPM_ADD_SUB_component|auto_generated|result[3]~7\ : std_logic;
SIGNAL \inst120|LPM_ADD_SUB_component|auto_generated|result[4]~8_combout\ : std_logic;
SIGNAL \inst123|LPM_ADD_SUB_component|auto_generated|result[0]~1\ : std_logic;
SIGNAL \inst123|LPM_ADD_SUB_component|auto_generated|result[1]~3\ : std_logic;
SIGNAL \inst123|LPM_ADD_SUB_component|auto_generated|result[2]~5\ : std_logic;
SIGNAL \inst123|LPM_ADD_SUB_component|auto_generated|result[3]~7\ : std_logic;
SIGNAL \inst123|LPM_ADD_SUB_component|auto_generated|result[4]~8_combout\ : std_logic;
SIGNAL \inst118|LPM_MUX_component|auto_generated|result_node[4]~1_combout\ : std_logic;
SIGNAL \inst118|LPM_MUX_component|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \inst118|LPM_MUX_component|auto_generated|result_node[4]~3_combout\ : std_logic;
SIGNAL \inst42~0_combout\ : std_logic;
SIGNAL \inst16|inst4|LPM_COUNTER_component|auto_generated|_~0_combout\ : std_logic;
SIGNAL \inst7|LPM_DECODE_component|auto_generated|w_anode162w[3]~0_combout\ : std_logic;
SIGNAL \inst7|LPM_DECODE_component|auto_generated|w_anode132w[3]~0_combout\ : std_logic;
SIGNAL \inst55~combout\ : std_logic;
SIGNAL \inst112~combout\ : std_logic;
SIGNAL \inst7|LPM_DECODE_component|auto_generated|w_anode152w[3]~0_combout\ : std_logic;
SIGNAL \inst7|LPM_DECODE_component|auto_generated|w_anode51w[3]~0_combout\ : std_logic;
SIGNAL \inst7|LPM_DECODE_component|auto_generated|w_anode91w[3]~0_combout\ : std_logic;
SIGNAL \inst7|LPM_DECODE_component|auto_generated|w_anode122w[3]~0_combout\ : std_logic;
SIGNAL \inst22|68~combout\ : std_logic;
SIGNAL \USERINP[3]~input_o\ : std_logic;
SIGNAL \inst7|LPM_DECODE_component|auto_generated|w_anode112w[3]~0_combout\ : std_logic;
SIGNAL \inst26|inst63~combout\ : std_logic;
SIGNAL \inst2|LPM_DECODE_component|auto_generated|w_anode52w[3]~0_combout\ : std_logic;
SIGNAL \inst26|inst3~0_combout\ : std_logic;
SIGNAL \inst26|inst7~combout\ : std_logic;
SIGNAL \inst26|inst5~0_combout\ : std_logic;
SIGNAL \inst26|inst9~combout\ : std_logic;
SIGNAL \inst26|inst4~0_combout\ : std_logic;
SIGNAL \inst26|inst8~combout\ : std_logic;
SIGNAL \inst26|inst6~0_combout\ : std_logic;
SIGNAL \inst26|inst10~combout\ : std_logic;
SIGNAL \inst22|7~0_combout\ : std_logic;
SIGNAL \inst22|7~1_combout\ : std_logic;
SIGNAL \inst22|7~2_combout\ : std_logic;
SIGNAL \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result3w~0_combout\ : std_logic;
SIGNAL \inst22|8~0_combout\ : std_logic;
SIGNAL \inst22|9~0_combout\ : std_logic;
SIGNAL \inst22|8~1_combout\ : std_logic;
SIGNAL \inst22|8~2_combout\ : std_logic;
SIGNAL \inst61|inst10~0_combout\ : std_logic;
SIGNAL \inst133~1_combout\ : std_logic;
SIGNAL \inst61|inst20~combout\ : std_logic;
SIGNAL \inst61|inst23~0_combout\ : std_logic;
SIGNAL \inst61|inst24~0_combout\ : std_logic;
SIGNAL \inst16|inst12|LPM_MUX_component|auto_generated|w_mux_outputs333w[1]~0_combout\ : std_logic;
SIGNAL \inst61|inst25~0_combout\ : std_logic;
SIGNAL \inst9|LPM_MUX_component|auto_generated|result_node[3]~0_combout\ : std_logic;
SIGNAL \inst9|LPM_MUX_component|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result3w~1_combout\ : std_logic;
SIGNAL \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result3w~0_combout\ : std_logic;
SIGNAL \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result3w~2_combout\ : std_logic;
SIGNAL \inst16|inst12|LPM_MUX_component|auto_generated|w_mux_outputs233w[1]~0_combout\ : std_logic;
SIGNAL \inst61|inst26~0_combout\ : std_logic;
SIGNAL \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result2w~1_combout\ : std_logic;
SIGNAL \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result2w~2_combout\ : std_logic;
SIGNAL \inst16|inst12|LPM_MUX_component|auto_generated|_~0_combout\ : std_logic;
SIGNAL \inst7|LPM_DECODE_component|auto_generated|w_anode61w[3]~0_combout\ : std_logic;
SIGNAL \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result2w~2_combout\ : std_logic;
SIGNAL \inst7|LPM_DECODE_component|auto_generated|w_anode41w[3]~1_combout\ : std_logic;
SIGNAL \inst8|LPM_MUX_component|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \inst8|LPM_MUX_component|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result2w~3_combout\ : std_logic;
SIGNAL \inst7|LPM_DECODE_component|auto_generated|w_anode71w[3]~0_combout\ : std_logic;
SIGNAL \inst7|LPM_DECODE_component|auto_generated|w_anode21w[3]~0_combout\ : std_logic;
SIGNAL \USERINP[1]~input_o\ : std_logic;
SIGNAL \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result1w~0_combout\ : std_logic;
SIGNAL \inst16|inst12|LPM_MUX_component|auto_generated|w_mux_outputs133w[1]~0_combout\ : std_logic;
SIGNAL \inst16|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~feeder_combout\ : std_logic;
SIGNAL \inst9|LPM_MUX_component|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst9|LPM_MUX_component|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result1w~1_combout\ : std_logic;
SIGNAL \USERINP[0]~input_o\ : std_logic;
SIGNAL \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\ : std_logic;
SIGNAL \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\ : std_logic;
SIGNAL \inst16|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~feeder_combout\ : std_logic;
SIGNAL \inst9|LPM_MUX_component|auto_generated|result_node[0]~6_combout\ : std_logic;
SIGNAL \inst9|LPM_MUX_component|auto_generated|result_node[0]~7_combout\ : std_logic;
SIGNAL \inst1|inst3|LPM_ADD_SUB_component|auto_generated|result_int[0]~0_combout\ : std_logic;
SIGNAL \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\ : std_logic;
SIGNAL \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\ : std_logic;
SIGNAL \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result0w~3_combout\ : std_logic;
SIGNAL \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result0w~2_combout\ : std_logic;
SIGNAL \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result0w~3_combout\ : std_logic;
SIGNAL \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result0w~4_combout\ : std_logic;
SIGNAL \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result0w~5_combout\ : std_logic;
SIGNAL \inst8|LPM_MUX_component|auto_generated|result_node[0]~6_combout\ : std_logic;
SIGNAL \inst8|LPM_MUX_component|auto_generated|result_node[0]~7_combout\ : std_logic;
SIGNAL \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result1w~0_combout\ : std_logic;
SIGNAL \inst1|inst3|LPM_ADD_SUB_component|auto_generated|result_int[0]~1\ : std_logic;
SIGNAL \inst1|inst3|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\ : std_logic;
SIGNAL \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result1w~3_combout\ : std_logic;
SIGNAL \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result1w~4_combout\ : std_logic;
SIGNAL \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result1w~2_combout\ : std_logic;
SIGNAL \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result1w~3_combout\ : std_logic;
SIGNAL \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result1w~4_combout\ : std_logic;
SIGNAL \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result1w~5_combout\ : std_logic;
SIGNAL \inst8|LPM_MUX_component|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst8|LPM_MUX_component|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \inst1|inst3|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\ : std_logic;
SIGNAL \inst1|inst3|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\ : std_logic;
SIGNAL \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result2w~0_combout\ : std_logic;
SIGNAL \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result2w~4_combout\ : std_logic;
SIGNAL \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result2w~3_combout\ : std_logic;
SIGNAL \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result2w~4_combout\ : std_logic;
SIGNAL \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result2w~5_combout\ : std_logic;
SIGNAL \inst9|LPM_MUX_component|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \inst9|LPM_MUX_component|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst1|inst3|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\ : std_logic;
SIGNAL \inst1|inst3|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\ : std_logic;
SIGNAL \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result3w~3_combout\ : std_logic;
SIGNAL \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result3w~5_combout\ : std_logic;
SIGNAL \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result3w~2_combout\ : std_logic;
SIGNAL \inst81~combout\ : std_logic;
SIGNAL \inst7|LPM_DECODE_component|auto_generated|w_anode102w[3]~0_combout\ : std_logic;
SIGNAL \inst32~0_combout\ : std_logic;
SIGNAL \inst16|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~feeder_combout\ : std_logic;
SIGNAL \inst16|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]~feeder_combout\ : std_logic;
SIGNAL \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result3w~3_combout\ : std_logic;
SIGNAL \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result3w~4_combout\ : std_logic;
SIGNAL \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result3w~5_combout\ : std_logic;
SIGNAL \inst8|LPM_MUX_component|auto_generated|result_node[3]~0_combout\ : std_logic;
SIGNAL \inst8|LPM_MUX_component|auto_generated|result_node[3]~1_combout\ : std_logic;
SIGNAL \inst109~0_combout\ : std_logic;
SIGNAL \inst1|inst3|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\ : std_logic;
SIGNAL \inst1|inst3|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\ : std_logic;
SIGNAL \inst109~1_combout\ : std_logic;
SIGNAL \inst65|7~0_combout\ : std_logic;
SIGNAL \inst65|7~1_combout\ : std_logic;
SIGNAL \inst123|LPM_ADD_SUB_component|auto_generated|result[3]~6_combout\ : std_logic;
SIGNAL \inst120|LPM_ADD_SUB_component|auto_generated|result[3]~6_combout\ : std_logic;
SIGNAL \inst118|LPM_MUX_component|auto_generated|result_node[3]~4_combout\ : std_logic;
SIGNAL \inst118|LPM_MUX_component|auto_generated|result_node[3]~5_combout\ : std_logic;
SIGNAL \inst7|LPM_DECODE_component|auto_generated|w_anode142w[3]~0_combout\ : std_logic;
SIGNAL \inst65|8~0_combout\ : std_logic;
SIGNAL \inst120|LPM_ADD_SUB_component|auto_generated|result[2]~4_combout\ : std_logic;
SIGNAL \inst16|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]~feeder_combout\ : std_logic;
SIGNAL \inst119|LPM_MUX_component|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \inst119|LPM_MUX_component|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst118|LPM_MUX_component|auto_generated|result_node[2]~6_combout\ : std_logic;
SIGNAL \inst118|LPM_MUX_component|auto_generated|result_node[2]~7_combout\ : std_logic;
SIGNAL \inst119|LPM_MUX_component|auto_generated|result_node[1]~4_combout\ : std_logic;
SIGNAL \inst119|LPM_MUX_component|auto_generated|result_node[1]~5_combout\ : std_logic;
SIGNAL \inst118|LPM_MUX_component|auto_generated|result_node[1]~8_combout\ : std_logic;
SIGNAL \inst118|LPM_MUX_component|auto_generated|result_node[1]~9_combout\ : std_logic;
SIGNAL \inst120|LPM_ADD_SUB_component|auto_generated|result[0]~0_combout\ : std_logic;
SIGNAL \inst119|LPM_MUX_component|auto_generated|result_node[0]~6_combout\ : std_logic;
SIGNAL \inst119|LPM_MUX_component|auto_generated|result_node[0]~7_combout\ : std_logic;
SIGNAL \inst118|LPM_MUX_component|auto_generated|result_node[0]~10_combout\ : std_logic;
SIGNAL \inst118|LPM_MUX_component|auto_generated|result_node[0]~11_combout\ : std_logic;
SIGNAL \inst76~0_combout\ : std_logic;
SIGNAL \inst84~combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|_~0_combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \inst133~0_combout\ : std_logic;
SIGNAL \inst133~2_combout\ : std_logic;
SIGNAL \inst10~combout\ : std_logic;
SIGNAL \inst14~0_combout\ : std_logic;
SIGNAL \inst14~combout\ : std_logic;
SIGNAL \inst7|LPM_DECODE_component|auto_generated|w_anode31w[3]~0_combout\ : std_logic;
SIGNAL \inst7|LPM_DECODE_component|auto_generated|w_anode41w[3]~0_combout\ : std_logic;
SIGNAL \inst2|LPM_DECODE_component|auto_generated|w_anode74w[3]~0_combout\ : std_logic;
SIGNAL \inst137~combout\ : std_logic;
SIGNAL \inst58~2_combout\ : std_logic;
SIGNAL \inst2|LPM_DECODE_component|auto_generated|w_anode19w[3]~0_combout\ : std_logic;
SIGNAL \inst2|LPM_DECODE_component|auto_generated|w_anode63w[3]~0_combout\ : std_logic;
SIGNAL \inst2|LPM_DECODE_component|auto_generated|w_anode85w[3]~0_combout\ : std_logic;
SIGNAL \inst7|LPM_DECODE_component|auto_generated|w_anode81w[3]~0_combout\ : std_logic;
SIGNAL \inst26|inst61~combout\ : std_logic;
SIGNAL \inst50~combout\ : std_logic;
SIGNAL \inst52~combout\ : std_logic;
SIGNAL \inst16|inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~feeder_combout\ : std_logic;
SIGNAL \inst16|inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~feeder_combout\ : std_logic;
SIGNAL \inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst16|inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst16|inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst16|inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst16|inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst16|inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst16|inst11|altsyncram_component|auto_generated|q_a\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst16|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst16|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst16|inst10|altsyncram_component|auto_generated|q_a\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst2|LPM_DECODE_component|auto_generated|w_anode1w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(2 DOWNTO 0);

BEGIN

CLEAROUT <= ww_CLEAROUT;
D13 <= ww_D13;
D1 <= ww_D1;
D2 <= ww_D2;
D3 <= ww_D3;
D4 <= ww_D4;
D5 <= ww_D5;
D6 <= ww_D6;
D8 <= ww_D8;
D10 <= ww_D10;
D12 <= ww_D12;
ww_Clock <= Clock;
D0 <= ww_D0;
D11 <= ww_D11;
D15 <= ww_D15;
D14 <= ww_D14;
D9 <= ww_D9;
IRLOAD <= ww_IRLOAD;
SelDm <= ww_SelDm;
SelAlu <= ww_SelAlu;
Selpc <= ww_Selpc;
Selr2 <= ww_Selr2;
Selr1 <= ww_Selr1;
Selr0 <= ww_Selr0;
Selr3 <= ww_Selr3;
PCCONTENT <= ww_PCCONTENT;
ww_USERINP <= USERINP;
HaltOut <= ww_HaltOut;
TIME1 <= ww_TIME1;
TIME0 <= ww_TIME0;
TIME2 <= ww_TIME2;
TIME3 <= ww_TIME3;
TIME4 <= ww_TIME4;
TIME5 <= ww_TIME5;
TIME6 <= ww_TIME6;
TIME7 <= ww_TIME7;
D7 <= ww_D7;
ROMREADEN <= ww_ROMREADEN;
R0acik <= ww_R0acik;
R1acik <= ww_R1acik;
R2acik <= ww_R2acik;
R3acik <= ww_R3acik;
OutAcik <= ww_OutAcik;
Inpacik <= ww_Inpacik;
PCacik <= ww_PCacik;
ARacik <= ww_ARacik;
WRTacik <= ww_WRTacik;
SelINP <= ww_SelINP;
Sel_Ir <= ww_Sel_Ir;
ALUOUPUT <= ww_ALUOUPUT;
BUS_SEL <= ww_BUS_SEL;
BUSCONTENT <= ww_BUSCONTENT;
IRCONTENT <= ww_IRCONTENT;
OutputData <= ww_OutputData;
R0CONTENT <= ww_R0CONTENT;
R1CONTENT <= ww_R1CONTENT;
R2CONTENT <= ww_R2CONTENT;
R3CONTENT <= ww_R3CONTENT;
RAMDAT <= ww_RAMDAT;
ROMDAT <= ww_ROMDAT;
SCcounter <= ww_SCcounter;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst16|inst11|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result3w~5_combout\ & 
\inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result2w~5_combout\ & \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result1w~5_combout\ & \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result0w~5_combout\);

\inst16|inst11|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst16|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & \inst16|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & 
\inst16|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & \inst16|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & \inst16|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

\inst16|inst11|altsyncram_component|auto_generated|q_a\(0) <= \inst16|inst11|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst16|inst11|altsyncram_component|auto_generated|q_a\(1) <= \inst16|inst11|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst16|inst11|altsyncram_component|auto_generated|q_a\(2) <= \inst16|inst11|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst16|inst11|altsyncram_component|auto_generated|q_a\(3) <= \inst16|inst11|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);

\inst16|inst10|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & \inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & 
\inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & \inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & \inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

\inst16|inst10|altsyncram_component|auto_generated|q_a\(0) <= \inst16|inst10|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst16|inst10|altsyncram_component|auto_generated|q_a\(1) <= \inst16|inst10|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst16|inst10|altsyncram_component|auto_generated|q_a\(2) <= \inst16|inst10|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst16|inst10|altsyncram_component|auto_generated|q_a\(3) <= \inst16|inst10|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst16|inst10|altsyncram_component|auto_generated|q_a\(4) <= \inst16|inst10|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst16|inst10|altsyncram_component|auto_generated|q_a\(5) <= \inst16|inst10|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst16|inst10|altsyncram_component|auto_generated|q_a\(6) <= \inst16|inst10|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst16|inst10|altsyncram_component|auto_generated|q_a\(7) <= \inst16|inst10|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\inst16|inst10|altsyncram_component|auto_generated|q_a\(8) <= \inst16|inst10|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\inst16|inst10|altsyncram_component|auto_generated|q_a\(9) <= \inst16|inst10|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\inst16|inst10|altsyncram_component|auto_generated|q_a\(10) <= \inst16|inst10|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);

\Clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clock~input_o\);

-- Location: FF_X28_Y7_N15
\inst16|inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \USERINP[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X21_Y8_N8
\inst123|LPM_ADD_SUB_component|auto_generated|result[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst123|LPM_ADD_SUB_component|auto_generated|result[0]~0_combout\ = (\inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) $ (VCC))) # 
-- (!\inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ((\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)) # (GND)))
-- \inst123|LPM_ADD_SUB_component|auto_generated|result[0]~1\ = CARRY((\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)) # (!\inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datab => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \inst123|LPM_ADD_SUB_component|auto_generated|result[0]~0_combout\,
	cout => \inst123|LPM_ADD_SUB_component|auto_generated|result[0]~1\);

-- Location: LCCOMB_X21_Y8_N10
\inst123|LPM_ADD_SUB_component|auto_generated|result[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst123|LPM_ADD_SUB_component|auto_generated|result[1]~2_combout\ = (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & 
-- (!\inst123|LPM_ADD_SUB_component|auto_generated|result[0]~1\)) # (!\inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (\inst123|LPM_ADD_SUB_component|auto_generated|result[0]~1\ & VCC)))) # 
-- (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\inst123|LPM_ADD_SUB_component|auto_generated|result[0]~1\) # (GND))) # 
-- (!\inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (!\inst123|LPM_ADD_SUB_component|auto_generated|result[0]~1\))))
-- \inst123|LPM_ADD_SUB_component|auto_generated|result[1]~3\ = CARRY((\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (\inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & 
-- !\inst123|LPM_ADD_SUB_component|auto_generated|result[0]~1\)) # (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)) # 
-- (!\inst123|LPM_ADD_SUB_component|auto_generated|result[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datab => \inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \inst123|LPM_ADD_SUB_component|auto_generated|result[0]~1\,
	combout => \inst123|LPM_ADD_SUB_component|auto_generated|result[1]~2_combout\,
	cout => \inst123|LPM_ADD_SUB_component|auto_generated|result[1]~3\);

-- Location: LCCOMB_X21_Y8_N12
\inst123|LPM_ADD_SUB_component|auto_generated|result[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst123|LPM_ADD_SUB_component|auto_generated|result[2]~4_combout\ = ((\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) $ (\inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) $ 
-- (\inst123|LPM_ADD_SUB_component|auto_generated|result[1]~3\)))) # (GND)
-- \inst123|LPM_ADD_SUB_component|auto_generated|result[2]~5\ = CARRY((\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & ((!\inst123|LPM_ADD_SUB_component|auto_generated|result[1]~3\) # 
-- (!\inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2)))) # (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (!\inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & 
-- !\inst123|LPM_ADD_SUB_component|auto_generated|result[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datab => \inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \inst123|LPM_ADD_SUB_component|auto_generated|result[1]~3\,
	combout => \inst123|LPM_ADD_SUB_component|auto_generated|result[2]~4_combout\,
	cout => \inst123|LPM_ADD_SUB_component|auto_generated|result[2]~5\);

-- Location: LCCOMB_X21_Y8_N24
\inst120|LPM_ADD_SUB_component|auto_generated|result[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst120|LPM_ADD_SUB_component|auto_generated|result[1]~2_combout\ = (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & 
-- (\inst120|LPM_ADD_SUB_component|auto_generated|result[0]~1\ & VCC)) # (!\inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (!\inst120|LPM_ADD_SUB_component|auto_generated|result[0]~1\)))) # 
-- (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (!\inst120|LPM_ADD_SUB_component|auto_generated|result[0]~1\)) # 
-- (!\inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\inst120|LPM_ADD_SUB_component|auto_generated|result[0]~1\) # (GND)))))
-- \inst120|LPM_ADD_SUB_component|auto_generated|result[1]~3\ = CARRY((\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (!\inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & 
-- !\inst120|LPM_ADD_SUB_component|auto_generated|result[0]~1\)) # (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((!\inst120|LPM_ADD_SUB_component|auto_generated|result[0]~1\) # 
-- (!\inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datab => \inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \inst120|LPM_ADD_SUB_component|auto_generated|result[0]~1\,
	combout => \inst120|LPM_ADD_SUB_component|auto_generated|result[1]~2_combout\,
	cout => \inst120|LPM_ADD_SUB_component|auto_generated|result[1]~3\);

-- Location: LCCOMB_X29_Y7_N2
\inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result3w~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result3w~4_combout\ = (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8) & (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & 
-- !\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8),
	datac => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datad => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9),
	combout => \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result3w~4_combout\);

-- Location: LCCOMB_X24_Y8_N26
\inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result2w~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result2w~1_combout\ = (\inst7|LPM_DECODE_component|auto_generated|w_anode51w[3]~0_combout\ & (\inst8|LPM_MUX_component|auto_generated|result_node[2]~3_combout\ $ 
-- (\inst9|LPM_MUX_component|auto_generated|result_node[2]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LPM_DECODE_component|auto_generated|w_anode51w[3]~0_combout\,
	datac => \inst8|LPM_MUX_component|auto_generated|result_node[2]~3_combout\,
	datad => \inst9|LPM_MUX_component|auto_generated|result_node[2]~3_combout\,
	combout => \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result2w~1_combout\);

-- Location: LCCOMB_X28_Y8_N30
\inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result1w~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result1w~2_combout\ = (\inst8|LPM_MUX_component|auto_generated|result_node[1]~5_combout\ & ((\inst9|LPM_MUX_component|auto_generated|result_node[1]~5_combout\) # 
-- (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6)))) # (!\inst8|LPM_MUX_component|auto_generated|result_node[1]~5_combout\ & (\inst9|LPM_MUX_component|auto_generated|result_node[1]~5_combout\ & 
-- \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|LPM_MUX_component|auto_generated|result_node[1]~5_combout\,
	datac => \inst9|LPM_MUX_component|auto_generated|result_node[1]~5_combout\,
	datad => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	combout => \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result1w~2_combout\);

-- Location: LCCOMB_X32_Y8_N8
\inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result0w~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result0w~2_combout\ = (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9) & (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & 
-- (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) $ (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datab => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9),
	datac => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8),
	datad => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	combout => \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result0w~2_combout\);

-- Location: LCCOMB_X28_Y8_N6
\inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result3w~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result3w~1_combout\ = ((\inst22|7~2_combout\ & ((\inst16|inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)))) # (!\inst22|7~2_combout\ & 
-- (\inst16|inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)))) # (!\inst22|8~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datab => \inst22|8~2_combout\,
	datac => \inst16|inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datad => \inst22|7~2_combout\,
	combout => \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result3w~1_combout\);

-- Location: LCCOMB_X28_Y7_N14
\inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result2w~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result2w~0_combout\ = ((\inst22|7~2_combout\ & (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2))) # (!\inst22|7~2_combout\ & 
-- ((\inst16|inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2))))) # (!\inst22|68~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datab => \inst22|68~combout\,
	datac => \inst16|inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => \inst22|7~2_combout\,
	combout => \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result2w~0_combout\);

-- Location: LCCOMB_X26_Y8_N30
\inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result1w~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result1w~1_combout\ = ((\inst22|7~2_combout\ & ((\inst16|inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))) # (!\inst22|7~2_combout\ & 
-- (\inst16|inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))) # (!\inst22|8~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datab => \inst22|8~2_combout\,
	datac => \inst22|7~2_combout\,
	datad => \inst16|inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	combout => \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result1w~1_combout\);

-- Location: LCCOMB_X26_Y8_N10
\inst16|inst12|LPM_MUX_component|auto_generated|w_mux_outputs33w[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|inst12|LPM_MUX_component|auto_generated|w_mux_outputs33w[1]~0_combout\ = (\inst22|8~2_combout\) # ((\inst22|7~2_combout\ & ((\inst16|inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)))) # (!\inst22|7~2_combout\ & 
-- (\inst16|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datab => \inst22|8~2_combout\,
	datac => \inst16|inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst22|7~2_combout\,
	combout => \inst16|inst12|LPM_MUX_component|auto_generated|w_mux_outputs33w[1]~0_combout\);

-- Location: LCCOMB_X30_Y7_N0
\inst119|LPM_MUX_component|auto_generated|result_node[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst119|LPM_MUX_component|auto_generated|result_node[3]~0_combout\ = (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & (((\inst16|inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)) # 
-- (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5))))) # (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & (\inst16|inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & 
-- ((!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datab => \inst16|inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datac => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	datad => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	combout => \inst119|LPM_MUX_component|auto_generated|result_node[3]~0_combout\);

-- Location: LCCOMB_X30_Y7_N10
\inst119|LPM_MUX_component|auto_generated|result_node[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst119|LPM_MUX_component|auto_generated|result_node[3]~1_combout\ = (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & ((\inst119|LPM_MUX_component|auto_generated|result_node[3]~0_combout\ & 
-- ((\inst16|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)))) # (!\inst119|LPM_MUX_component|auto_generated|result_node[3]~0_combout\ & (\inst16|inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3))))) # 
-- (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & (((\inst119|LPM_MUX_component|auto_generated|result_node[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datab => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	datac => \inst16|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datad => \inst119|LPM_MUX_component|auto_generated|result_node[3]~0_combout\,
	combout => \inst119|LPM_MUX_component|auto_generated|result_node[3]~1_combout\);

-- Location: IOIBUF_X35_Y0_N15
\USERINP[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_USERINP(2),
	o => \USERINP[2]~input_o\);

-- Location: IOOBUF_X41_Y12_N23
\CLEAROUT~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14~combout\,
	devoe => ww_devoe,
	o => \CLEAROUT~output_o\);

-- Location: IOOBUF_X32_Y0_N30
\D13~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|LPM_DECODE_component|auto_generated|w_anode142w[3]~0_combout\,
	devoe => ww_devoe,
	o => \D13~output_o\);

-- Location: IOOBUF_X41_Y10_N9
\D1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|LPM_DECODE_component|auto_generated|w_anode21w[3]~0_combout\,
	devoe => ww_devoe,
	o => \D1~output_o\);

-- Location: IOOBUF_X41_Y7_N16
\D2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|LPM_DECODE_component|auto_generated|w_anode31w[3]~0_combout\,
	devoe => ww_devoe,
	o => \D2~output_o\);

-- Location: IOOBUF_X41_Y3_N23
\D3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|LPM_DECODE_component|auto_generated|w_anode41w[3]~0_combout\,
	devoe => ww_devoe,
	o => \D3~output_o\);

-- Location: IOOBUF_X41_Y7_N2
\D4~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|LPM_DECODE_component|auto_generated|w_anode51w[3]~0_combout\,
	devoe => ww_devoe,
	o => \D4~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\D5~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|LPM_DECODE_component|auto_generated|w_anode61w[3]~0_combout\,
	devoe => ww_devoe,
	o => \D5~output_o\);

-- Location: IOOBUF_X26_Y0_N23
\D6~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|LPM_DECODE_component|auto_generated|w_anode71w[3]~0_combout\,
	devoe => ww_devoe,
	o => \D6~output_o\);

-- Location: IOOBUF_X0_Y8_N9
\D8~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|LPM_DECODE_component|auto_generated|w_anode91w[3]~0_combout\,
	devoe => ww_devoe,
	o => \D8~output_o\);

-- Location: IOOBUF_X41_Y12_N9
\D10~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|LPM_DECODE_component|auto_generated|w_anode112w[3]~0_combout\,
	devoe => ww_devoe,
	o => \D10~output_o\);

-- Location: IOOBUF_X41_Y8_N2
\D12~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|LPM_DECODE_component|auto_generated|w_anode132w[3]~0_combout\,
	devoe => ww_devoe,
	o => \D12~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\D0~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst76~0_combout\,
	devoe => ww_devoe,
	o => \D0~output_o\);

-- Location: IOOBUF_X41_Y4_N2
\D11~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|LPM_DECODE_component|auto_generated|w_anode122w[3]~0_combout\,
	devoe => ww_devoe,
	o => \D11~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\D15~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|LPM_DECODE_component|auto_generated|w_anode162w[3]~0_combout\,
	devoe => ww_devoe,
	o => \D15~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\D14~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|LPM_DECODE_component|auto_generated|w_anode152w[3]~0_combout\,
	devoe => ww_devoe,
	o => \D14~output_o\);

-- Location: IOOBUF_X41_Y13_N23
\D9~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|LPM_DECODE_component|auto_generated|w_anode102w[3]~0_combout\,
	devoe => ww_devoe,
	o => \D9~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\IRLOAD~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|LPM_DECODE_component|auto_generated|w_anode30w[3]~0_combout\,
	devoe => ww_devoe,
	o => \IRLOAD~output_o\);

-- Location: IOOBUF_X0_Y8_N2
\SelDm~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst137~combout\,
	devoe => ww_devoe,
	o => \SelDm~output_o\);

-- Location: IOOBUF_X35_Y0_N23
\SelAlu~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst58~2_combout\,
	devoe => ww_devoe,
	o => \SelAlu~output_o\);

-- Location: IOOBUF_X35_Y0_N30
\Selpc~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst55~combout\,
	devoe => ww_devoe,
	o => \Selpc~output_o\);

-- Location: IOOBUF_X41_Y10_N16
\Selr2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst26|inst9~combout\,
	devoe => ww_devoe,
	o => \Selr2~output_o\);

-- Location: IOOBUF_X37_Y0_N16
\Selr1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst26|inst8~combout\,
	devoe => ww_devoe,
	o => \Selr1~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\Selr0~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst26|inst7~combout\,
	devoe => ww_devoe,
	o => \Selr0~output_o\);

-- Location: IOOBUF_X28_Y0_N30
\Selr3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst26|inst10~combout\,
	devoe => ww_devoe,
	o => \Selr3~output_o\);

-- Location: IOOBUF_X41_Y13_N9
\PCCONTENT[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	devoe => ww_devoe,
	o => \PCCONTENT[4]~output_o\);

-- Location: IOOBUF_X41_Y10_N23
\PCCONTENT[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	devoe => ww_devoe,
	o => \PCCONTENT[3]~output_o\);

-- Location: IOOBUF_X14_Y0_N16
\PCCONTENT[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	devoe => ww_devoe,
	o => \PCCONTENT[2]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\PCCONTENT[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	devoe => ww_devoe,
	o => \PCCONTENT[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\PCCONTENT[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	devoe => ww_devoe,
	o => \PCCONTENT[0]~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\HaltOut~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst84~combout\,
	devoe => ww_devoe,
	o => \HaltOut~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\TIME1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|LPM_DECODE_component|auto_generated|w_anode19w[3]~0_combout\,
	devoe => ww_devoe,
	o => \TIME1~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\TIME0~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|LPM_DECODE_component|auto_generated|w_anode1w\(3),
	devoe => ww_devoe,
	o => \TIME0~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\TIME2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|LPM_DECODE_component|auto_generated|w_anode30w[3]~0_combout\,
	devoe => ww_devoe,
	o => \TIME2~output_o\);

-- Location: IOOBUF_X41_Y9_N16
\TIME3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|LPM_DECODE_component|auto_generated|w_anode41w[3]~0_combout\,
	devoe => ww_devoe,
	o => \TIME3~output_o\);

-- Location: IOOBUF_X41_Y5_N23
\TIME4~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|LPM_DECODE_component|auto_generated|w_anode52w[3]~0_combout\,
	devoe => ww_devoe,
	o => \TIME4~output_o\);

-- Location: IOOBUF_X41_Y6_N16
\TIME5~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|LPM_DECODE_component|auto_generated|w_anode63w[3]~0_combout\,
	devoe => ww_devoe,
	o => \TIME5~output_o\);

-- Location: IOOBUF_X41_Y5_N2
\TIME6~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|LPM_DECODE_component|auto_generated|w_anode74w[3]~0_combout\,
	devoe => ww_devoe,
	o => \TIME6~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\TIME7~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|LPM_DECODE_component|auto_generated|w_anode85w[3]~0_combout\,
	devoe => ww_devoe,
	o => \TIME7~output_o\);

-- Location: IOOBUF_X41_Y3_N9
\D7~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|LPM_DECODE_component|auto_generated|w_anode81w[3]~0_combout\,
	devoe => ww_devoe,
	o => \D7~output_o\);

-- Location: IOOBUF_X28_Y29_N2
\ROMREADEN~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|LPM_DECODE_component|auto_generated|w_anode1w\(3),
	devoe => ww_devoe,
	o => \ROMREADEN~output_o\);

-- Location: IOOBUF_X0_Y7_N23
\R0acik~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst61|inst23~0_combout\,
	devoe => ww_devoe,
	o => \R0acik~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\R1acik~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst61|inst24~0_combout\,
	devoe => ww_devoe,
	o => \R1acik~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\R2acik~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst61|inst25~0_combout\,
	devoe => ww_devoe,
	o => \R2acik~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\R3acik~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst61|inst26~0_combout\,
	devoe => ww_devoe,
	o => \R3acik~output_o\);

-- Location: IOOBUF_X14_Y0_N23
\OutAcik~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst26|inst61~combout\,
	devoe => ww_devoe,
	o => \OutAcik~output_o\);

-- Location: IOOBUF_X41_Y24_N2
\Inpacik~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Inpacik~output_o\);

-- Location: IOOBUF_X19_Y0_N16
\PCacik~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst42~0_combout\,
	devoe => ww_devoe,
	o => \PCacik~output_o\);

-- Location: IOOBUF_X41_Y3_N16
\ARacik~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst32~0_combout\,
	devoe => ww_devoe,
	o => \ARacik~output_o\);

-- Location: IOOBUF_X41_Y13_N16
\WRTacik~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst50~combout\,
	devoe => ww_devoe,
	o => \WRTacik~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\SelINP~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst52~combout\,
	devoe => ww_devoe,
	o => \SelINP~output_o\);

-- Location: IOOBUF_X41_Y4_N9
\Sel_Ir~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10~combout\,
	devoe => ww_devoe,
	o => \Sel_Ir~output_o\);

-- Location: IOOBUF_X9_Y0_N30
\ALUOUPUT[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result3w~5_combout\,
	devoe => ww_devoe,
	o => \ALUOUPUT[3]~output_o\);

-- Location: IOOBUF_X16_Y0_N30
\ALUOUPUT[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result2w~4_combout\,
	devoe => ww_devoe,
	o => \ALUOUPUT[2]~output_o\);

-- Location: IOOBUF_X41_Y12_N16
\ALUOUPUT[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result1w~4_combout\,
	devoe => ww_devoe,
	o => \ALUOUPUT[1]~output_o\);

-- Location: IOOBUF_X26_Y0_N16
\ALUOUPUT[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result0w~3_combout\,
	devoe => ww_devoe,
	o => \ALUOUPUT[0]~output_o\);

-- Location: IOOBUF_X19_Y0_N30
\BUS_SEL[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst22|68~combout\,
	devoe => ww_devoe,
	o => \BUS_SEL[3]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\BUS_SEL[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst22|9~0_combout\,
	devoe => ww_devoe,
	o => \BUS_SEL[2]~output_o\);

-- Location: IOOBUF_X41_Y10_N2
\BUS_SEL[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst22|8~2_combout\,
	devoe => ww_devoe,
	o => \BUS_SEL[1]~output_o\);

-- Location: IOOBUF_X19_Y0_N23
\BUS_SEL[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst22|7~2_combout\,
	devoe => ww_devoe,
	o => \BUS_SEL[0]~output_o\);

-- Location: IOOBUF_X28_Y0_N9
\BUSCONTENT[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result3w~5_combout\,
	devoe => ww_devoe,
	o => \BUSCONTENT[3]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\BUSCONTENT[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result2w~5_combout\,
	devoe => ww_devoe,
	o => \BUSCONTENT[2]~output_o\);

-- Location: IOOBUF_X23_Y0_N30
\BUSCONTENT[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result1w~5_combout\,
	devoe => ww_devoe,
	o => \BUSCONTENT[1]~output_o\);

-- Location: IOOBUF_X26_Y0_N30
\BUSCONTENT[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result0w~5_combout\,
	devoe => ww_devoe,
	o => \BUSCONTENT[0]~output_o\);

-- Location: IOOBUF_X41_Y13_N2
\IRCONTENT[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10),
	devoe => ww_devoe,
	o => \IRCONTENT[10]~output_o\);

-- Location: IOOBUF_X41_Y6_N23
\IRCONTENT[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9),
	devoe => ww_devoe,
	o => \IRCONTENT[9]~output_o\);

-- Location: IOOBUF_X37_Y0_N9
\IRCONTENT[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8),
	devoe => ww_devoe,
	o => \IRCONTENT[8]~output_o\);

-- Location: IOOBUF_X41_Y7_N23
\IRCONTENT[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	devoe => ww_devoe,
	o => \IRCONTENT[7]~output_o\);

-- Location: IOOBUF_X41_Y7_N9
\IRCONTENT[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	devoe => ww_devoe,
	o => \IRCONTENT[6]~output_o\);

-- Location: IOOBUF_X41_Y6_N2
\IRCONTENT[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	devoe => ww_devoe,
	o => \IRCONTENT[5]~output_o\);

-- Location: IOOBUF_X28_Y0_N16
\IRCONTENT[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	devoe => ww_devoe,
	o => \IRCONTENT[4]~output_o\);

-- Location: IOOBUF_X30_Y0_N30
\IRCONTENT[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	devoe => ww_devoe,
	o => \IRCONTENT[3]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\IRCONTENT[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	devoe => ww_devoe,
	o => \IRCONTENT[2]~output_o\);

-- Location: IOOBUF_X19_Y0_N2
\IRCONTENT[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	devoe => ww_devoe,
	o => \IRCONTENT[1]~output_o\);

-- Location: IOOBUF_X21_Y0_N30
\IRCONTENT[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	devoe => ww_devoe,
	o => \IRCONTENT[0]~output_o\);

-- Location: IOOBUF_X41_Y3_N2
\OutputData[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	devoe => ww_devoe,
	o => \OutputData[3]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\OutputData[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	devoe => ww_devoe,
	o => \OutputData[2]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\OutputData[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	devoe => ww_devoe,
	o => \OutputData[1]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\OutputData[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	devoe => ww_devoe,
	o => \OutputData[0]~output_o\);

-- Location: IOOBUF_X37_Y0_N23
\R0CONTENT[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	devoe => ww_devoe,
	o => \R0CONTENT[3]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\R0CONTENT[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	devoe => ww_devoe,
	o => \R0CONTENT[2]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\R0CONTENT[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	devoe => ww_devoe,
	o => \R0CONTENT[1]~output_o\);

-- Location: IOOBUF_X23_Y0_N23
\R0CONTENT[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	devoe => ww_devoe,
	o => \R0CONTENT[0]~output_o\);

-- Location: IOOBUF_X41_Y9_N23
\R1CONTENT[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	devoe => ww_devoe,
	o => \R1CONTENT[3]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\R1CONTENT[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	devoe => ww_devoe,
	o => \R1CONTENT[2]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\R1CONTENT[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	devoe => ww_devoe,
	o => \R1CONTENT[1]~output_o\);

-- Location: IOOBUF_X23_Y0_N2
\R1CONTENT[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	devoe => ww_devoe,
	o => \R1CONTENT[0]~output_o\);

-- Location: IOOBUF_X35_Y0_N2
\R2CONTENT[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	devoe => ww_devoe,
	o => \R2CONTENT[3]~output_o\);

-- Location: IOOBUF_X41_Y8_N23
\R2CONTENT[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	devoe => ww_devoe,
	o => \R2CONTENT[2]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\R2CONTENT[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	devoe => ww_devoe,
	o => \R2CONTENT[1]~output_o\);

-- Location: IOOBUF_X41_Y8_N9
\R2CONTENT[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	devoe => ww_devoe,
	o => \R2CONTENT[0]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\R3CONTENT[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	devoe => ww_devoe,
	o => \R3CONTENT[3]~output_o\);

-- Location: IOOBUF_X41_Y8_N16
\R3CONTENT[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	devoe => ww_devoe,
	o => \R3CONTENT[2]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\R3CONTENT[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	devoe => ww_devoe,
	o => \R3CONTENT[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\R3CONTENT[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	devoe => ww_devoe,
	o => \R3CONTENT[0]~output_o\);

-- Location: IOOBUF_X35_Y0_N9
\RAMDAT[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|inst11|altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => \RAMDAT[3]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\RAMDAT[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|inst11|altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => \RAMDAT[2]~output_o\);

-- Location: IOOBUF_X41_Y12_N2
\RAMDAT[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|inst11|altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => \RAMDAT[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N30
\RAMDAT[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|inst11|altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => \RAMDAT[0]~output_o\);

-- Location: IOOBUF_X30_Y0_N16
\ROMDAT[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|inst10|altsyncram_component|auto_generated|q_a\(10),
	devoe => ww_devoe,
	o => \ROMDAT[10]~output_o\);

-- Location: IOOBUF_X0_Y6_N9
\ROMDAT[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|inst10|altsyncram_component|auto_generated|q_a\(9),
	devoe => ww_devoe,
	o => \ROMDAT[9]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\ROMDAT[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|inst10|altsyncram_component|auto_generated|q_a\(8),
	devoe => ww_devoe,
	o => \ROMDAT[8]~output_o\);

-- Location: IOOBUF_X0_Y7_N16
\ROMDAT[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|inst10|altsyncram_component|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => \ROMDAT[7]~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\ROMDAT[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|inst10|altsyncram_component|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => \ROMDAT[6]~output_o\);

-- Location: IOOBUF_X11_Y0_N30
\ROMDAT[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|inst10|altsyncram_component|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => \ROMDAT[5]~output_o\);

-- Location: IOOBUF_X32_Y0_N2
\ROMDAT[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|inst10|altsyncram_component|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => \ROMDAT[4]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\ROMDAT[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|inst10|altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => \ROMDAT[3]~output_o\);

-- Location: IOOBUF_X41_Y2_N9
\ROMDAT[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|inst10|altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => \ROMDAT[2]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\ROMDAT[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|inst10|altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => \ROMDAT[1]~output_o\);

-- Location: IOOBUF_X19_Y0_N9
\ROMDAT[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|inst10|altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => \ROMDAT[0]~output_o\);

-- Location: IOOBUF_X41_Y5_N9
\SCcounter[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	devoe => ww_devoe,
	o => \SCcounter[2]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\SCcounter[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	devoe => ww_devoe,
	o => \SCcounter[1]~output_o\);

-- Location: IOOBUF_X41_Y5_N16
\SCcounter[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	devoe => ww_devoe,
	o => \SCcounter[0]~output_o\);

-- Location: LCCOMB_X31_Y8_N8
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) $ (VCC)
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X31_Y8_N22
\~GND\ : cycloneiii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: IOIBUF_X0_Y14_N1
\Clock~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock,
	o => \Clock~input_o\);

-- Location: CLKCTRL_G4
\Clock~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clock~inputclkctrl_outclk\);

-- Location: LCCOMB_X22_Y8_N20
\inst16|inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) $ (VCC)
-- \inst16|inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \inst16|inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \inst16|inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X22_Y8_N22
\inst16|inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = (\inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (!\inst16|inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\)) # 
-- (!\inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\inst16|inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \inst16|inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\inst16|inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (!\inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \inst16|inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \inst16|inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	cout => \inst16|inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCCOMB_X22_Y8_N24
\inst16|inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ = (\inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\inst16|inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (!\inst16|inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \inst16|inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((\inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & !\inst16|inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \inst16|inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \inst16|inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	cout => \inst16|inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: LCCOMB_X22_Y8_N26
\inst16|inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ = (\inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & (!\inst16|inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\)) # 
-- (!\inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & ((\inst16|inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \inst16|inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\inst16|inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (!\inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datad => VCC,
	cin => \inst16|inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \inst16|inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	cout => \inst16|inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\);

-- Location: LCCOMB_X31_Y8_N24
\inst2|LPM_DECODE_component|auto_generated|w_anode41w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|LPM_DECODE_component|auto_generated|w_anode41w[3]~0_combout\ = (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & 
-- !\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datac => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	combout => \inst2|LPM_DECODE_component|auto_generated|w_anode41w[3]~0_combout\);

-- Location: LCCOMB_X22_Y8_N28
\inst16|inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ = \inst16|inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ $ (!\inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	cin => \inst16|inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\,
	combout => \inst16|inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\);

-- Location: M9K_X25_Y7_N0
\inst16|inst10|altsyncram_component|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002C8009880061008480600",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "Romhexxx.hex",
	init_file_layout => "port_a",
	logical_ram_name => "Block1:inst16|ROMInstructionMemory:inst10|altsyncram:altsyncram_component|altsyncram_r2a1:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 11,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 5,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => \inst2|LPM_DECODE_component|auto_generated|w_anode1w\(3),
	clk0 => \Clock~inputclkctrl_outclk\,
	portaaddr => \inst16|inst10|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst16|inst10|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X31_Y8_N10
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\)) # 
-- (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	cout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: FF_X31_Y8_N11
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	asdata => \~GND~combout\,
	sload => \inst14~combout\,
	ena => \inst|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X29_Y6_N12
\inst2|LPM_DECODE_component|auto_generated|w_anode30w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|LPM_DECODE_component|auto_generated|w_anode30w[3]~0_combout\ = (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & 
-- \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	combout => \inst2|LPM_DECODE_component|auto_generated|w_anode30w[3]~0_combout\);

-- Location: FF_X30_Y8_N9
\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst16|inst10|altsyncram_component|auto_generated|q_a\(10),
	sload => VCC,
	ena => \inst2|LPM_DECODE_component|auto_generated|w_anode30w[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10));

-- Location: LCCOMB_X27_Y7_N8
\inst118|LPM_MUX_component|auto_generated|result_node[4]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst118|LPM_MUX_component|auto_generated|result_node[4]~2_combout\ = (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & ((\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10)) # 
-- (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10),
	datac => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datad => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	combout => \inst118|LPM_MUX_component|auto_generated|result_node[4]~2_combout\);

-- Location: FF_X30_Y8_N1
\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst16|inst10|altsyncram_component|auto_generated|q_a\(4),
	sload => VCC,
	ena => \inst2|LPM_DECODE_component|auto_generated|w_anode30w[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4));

-- Location: LCCOMB_X21_Y8_N22
\inst120|LPM_ADD_SUB_component|auto_generated|result[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst120|LPM_ADD_SUB_component|auto_generated|result[0]~0_combout\ = (\inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) $ (VCC))) # 
-- (!\inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & VCC))
-- \inst120|LPM_ADD_SUB_component|auto_generated|result[0]~1\ = CARRY((\inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datab => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \inst120|LPM_ADD_SUB_component|auto_generated|result[0]~0_combout\,
	cout => \inst120|LPM_ADD_SUB_component|auto_generated|result[0]~1\);

-- Location: LCCOMB_X21_Y8_N26
\inst120|LPM_ADD_SUB_component|auto_generated|result[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst120|LPM_ADD_SUB_component|auto_generated|result[2]~4_combout\ = ((\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) $ (\inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) $ 
-- (!\inst120|LPM_ADD_SUB_component|auto_generated|result[1]~3\)))) # (GND)
-- \inst120|LPM_ADD_SUB_component|auto_generated|result[2]~5\ = CARRY((\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & ((\inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2)) # 
-- (!\inst120|LPM_ADD_SUB_component|auto_generated|result[1]~3\))) # (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & 
-- !\inst120|LPM_ADD_SUB_component|auto_generated|result[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datab => \inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \inst120|LPM_ADD_SUB_component|auto_generated|result[1]~3\,
	combout => \inst120|LPM_ADD_SUB_component|auto_generated|result[2]~4_combout\,
	cout => \inst120|LPM_ADD_SUB_component|auto_generated|result[2]~5\);

-- Location: LCCOMB_X21_Y8_N28
\inst120|LPM_ADD_SUB_component|auto_generated|result[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst120|LPM_ADD_SUB_component|auto_generated|result[3]~6_combout\ = (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & ((\inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & 
-- (\inst120|LPM_ADD_SUB_component|auto_generated|result[2]~5\ & VCC)) # (!\inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & (!\inst120|LPM_ADD_SUB_component|auto_generated|result[2]~5\)))) # 
-- (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & ((\inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & (!\inst120|LPM_ADD_SUB_component|auto_generated|result[2]~5\)) # 
-- (!\inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & ((\inst120|LPM_ADD_SUB_component|auto_generated|result[2]~5\) # (GND)))))
-- \inst120|LPM_ADD_SUB_component|auto_generated|result[3]~7\ = CARRY((\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & (!\inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & 
-- !\inst120|LPM_ADD_SUB_component|auto_generated|result[2]~5\)) # (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & ((!\inst120|LPM_ADD_SUB_component|auto_generated|result[2]~5\) # 
-- (!\inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datab => \inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datad => VCC,
	cin => \inst120|LPM_ADD_SUB_component|auto_generated|result[2]~5\,
	combout => \inst120|LPM_ADD_SUB_component|auto_generated|result[3]~6_combout\,
	cout => \inst120|LPM_ADD_SUB_component|auto_generated|result[3]~7\);

-- Location: LCCOMB_X21_Y8_N30
\inst120|LPM_ADD_SUB_component|auto_generated|result[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst120|LPM_ADD_SUB_component|auto_generated|result[4]~8_combout\ = \inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) $ (\inst120|LPM_ADD_SUB_component|auto_generated|result[3]~7\ $ 
-- (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	datad => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	cin => \inst120|LPM_ADD_SUB_component|auto_generated|result[3]~7\,
	combout => \inst120|LPM_ADD_SUB_component|auto_generated|result[4]~8_combout\);

-- Location: LCCOMB_X21_Y8_N14
\inst123|LPM_ADD_SUB_component|auto_generated|result[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst123|LPM_ADD_SUB_component|auto_generated|result[3]~6_combout\ = (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & ((\inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & 
-- (!\inst123|LPM_ADD_SUB_component|auto_generated|result[2]~5\)) # (!\inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & (\inst123|LPM_ADD_SUB_component|auto_generated|result[2]~5\ & VCC)))) # 
-- (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & ((\inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & ((\inst123|LPM_ADD_SUB_component|auto_generated|result[2]~5\) # (GND))) # 
-- (!\inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & (!\inst123|LPM_ADD_SUB_component|auto_generated|result[2]~5\))))
-- \inst123|LPM_ADD_SUB_component|auto_generated|result[3]~7\ = CARRY((\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & (\inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & 
-- !\inst123|LPM_ADD_SUB_component|auto_generated|result[2]~5\)) # (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & ((\inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)) # 
-- (!\inst123|LPM_ADD_SUB_component|auto_generated|result[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datab => \inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datad => VCC,
	cin => \inst123|LPM_ADD_SUB_component|auto_generated|result[2]~5\,
	combout => \inst123|LPM_ADD_SUB_component|auto_generated|result[3]~6_combout\,
	cout => \inst123|LPM_ADD_SUB_component|auto_generated|result[3]~7\);

-- Location: LCCOMB_X21_Y8_N16
\inst123|LPM_ADD_SUB_component|auto_generated|result[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst123|LPM_ADD_SUB_component|auto_generated|result[4]~8_combout\ = \inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) $ (\inst123|LPM_ADD_SUB_component|auto_generated|result[3]~7\ $ 
-- (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	datad => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	cin => \inst123|LPM_ADD_SUB_component|auto_generated|result[3]~7\,
	combout => \inst123|LPM_ADD_SUB_component|auto_generated|result[4]~8_combout\);

-- Location: LCCOMB_X21_Y8_N4
\inst118|LPM_MUX_component|auto_generated|result_node[4]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst118|LPM_MUX_component|auto_generated|result_node[4]~1_combout\ = (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & ((\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & 
-- ((\inst123|LPM_ADD_SUB_component|auto_generated|result[4]~8_combout\))) # (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & (\inst120|LPM_ADD_SUB_component|auto_generated|result[4]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datab => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	datac => \inst120|LPM_ADD_SUB_component|auto_generated|result[4]~8_combout\,
	datad => \inst123|LPM_ADD_SUB_component|auto_generated|result[4]~8_combout\,
	combout => \inst118|LPM_MUX_component|auto_generated|result_node[4]~1_combout\);

-- Location: LCCOMB_X27_Y7_N30
\inst118|LPM_MUX_component|auto_generated|result_node[4]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst118|LPM_MUX_component|auto_generated|result_node[4]~0_combout\ = (\inst2|LPM_DECODE_component|auto_generated|w_anode41w[3]~0_combout\ & (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8) & 
-- \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|LPM_DECODE_component|auto_generated|w_anode41w[3]~0_combout\,
	datac => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8),
	datad => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9),
	combout => \inst118|LPM_MUX_component|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X23_Y8_N8
\inst118|LPM_MUX_component|auto_generated|result_node[4]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst118|LPM_MUX_component|auto_generated|result_node[4]~3_combout\ = (\inst118|LPM_MUX_component|auto_generated|result_node[4]~0_combout\ & ((\inst118|LPM_MUX_component|auto_generated|result_node[4]~1_combout\) # 
-- ((\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & \inst118|LPM_MUX_component|auto_generated|result_node[4]~2_combout\)))) # (!\inst118|LPM_MUX_component|auto_generated|result_node[4]~0_combout\ & 
-- (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	datab => \inst118|LPM_MUX_component|auto_generated|result_node[4]~2_combout\,
	datac => \inst118|LPM_MUX_component|auto_generated|result_node[4]~1_combout\,
	datad => \inst118|LPM_MUX_component|auto_generated|result_node[4]~0_combout\,
	combout => \inst118|LPM_MUX_component|auto_generated|result_node[4]~3_combout\);

-- Location: LCCOMB_X27_Y7_N4
\inst42~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst42~0_combout\ = (\inst118|LPM_MUX_component|auto_generated|result_node[4]~0_combout\ & (((\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6)) # (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7))) # 
-- (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst118|LPM_MUX_component|auto_generated|result_node[4]~0_combout\,
	datab => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10),
	datac => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datad => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	combout => \inst42~0_combout\);

-- Location: LCCOMB_X22_Y8_N16
\inst16|inst4|LPM_COUNTER_component|auto_generated|_~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|inst4|LPM_COUNTER_component|auto_generated|_~0_combout\ = (\inst42~0_combout\) # ((\inst2|LPM_DECODE_component|auto_generated|w_anode1w\(3) & !\inst84~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst42~0_combout\,
	datac => \inst2|LPM_DECODE_component|auto_generated|w_anode1w\(3),
	datad => \inst84~combout\,
	combout => \inst16|inst4|LPM_COUNTER_component|auto_generated|_~0_combout\);

-- Location: FF_X22_Y8_N29
\inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst16|inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	asdata => \inst118|LPM_MUX_component|auto_generated|result_node[4]~3_combout\,
	sload => \inst42~0_combout\,
	ena => \inst16|inst4|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4));

-- Location: FF_X30_Y8_N17
\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst16|inst10|altsyncram_component|auto_generated|q_a\(7),
	sload => VCC,
	ena => \inst2|LPM_DECODE_component|auto_generated|w_anode30w[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7));

-- Location: LCCOMB_X27_Y7_N14
\inst7|LPM_DECODE_component|auto_generated|w_anode162w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|LPM_DECODE_component|auto_generated|w_anode162w[3]~0_combout\ = (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8) & (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9) & 
-- (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8),
	datab => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9),
	datac => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datad => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	combout => \inst7|LPM_DECODE_component|auto_generated|w_anode162w[3]~0_combout\);

-- Location: LCCOMB_X30_Y8_N30
\inst7|LPM_DECODE_component|auto_generated|w_anode132w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|LPM_DECODE_component|auto_generated|w_anode132w[3]~0_combout\ = (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9) & (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8) & 
-- (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & !\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9),
	datab => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8),
	datac => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datad => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	combout => \inst7|LPM_DECODE_component|auto_generated|w_anode132w[3]~0_combout\);

-- Location: LCCOMB_X30_Y8_N18
inst55 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst55~combout\ = (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & 
-- \inst7|LPM_DECODE_component|auto_generated|w_anode132w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datab => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datac => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => \inst7|LPM_DECODE_component|auto_generated|w_anode132w[3]~0_combout\,
	combout => \inst55~combout\);

-- Location: LCCOMB_X29_Y7_N30
inst112 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst112~combout\ = (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\inst7|LPM_DECODE_component|auto_generated|w_anode142w[3]~0_combout\ & (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & 
-- \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datab => \inst7|LPM_DECODE_component|auto_generated|w_anode142w[3]~0_combout\,
	datac => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	combout => \inst112~combout\);

-- Location: LCCOMB_X29_Y8_N0
\inst7|LPM_DECODE_component|auto_generated|w_anode152w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|LPM_DECODE_component|auto_generated|w_anode152w[3]~0_combout\ = (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & 
-- (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8) & \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	datab => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datac => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8),
	datad => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9),
	combout => \inst7|LPM_DECODE_component|auto_generated|w_anode152w[3]~0_combout\);

-- Location: LCCOMB_X27_Y7_N24
\inst7|LPM_DECODE_component|auto_generated|w_anode51w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|LPM_DECODE_component|auto_generated|w_anode51w[3]~0_combout\ = (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9) & 
-- (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8) & !\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datab => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9),
	datac => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8),
	datad => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	combout => \inst7|LPM_DECODE_component|auto_generated|w_anode51w[3]~0_combout\);

-- Location: LCCOMB_X30_Y8_N26
\inst7|LPM_DECODE_component|auto_generated|w_anode91w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|LPM_DECODE_component|auto_generated|w_anode91w[3]~0_combout\ = (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9) & 
-- (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8) & !\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datab => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9),
	datac => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8),
	datad => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	combout => \inst7|LPM_DECODE_component|auto_generated|w_anode91w[3]~0_combout\);

-- Location: LCCOMB_X30_Y8_N6
\inst7|LPM_DECODE_component|auto_generated|w_anode122w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|LPM_DECODE_component|auto_generated|w_anode122w[3]~0_combout\ = (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9) & (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & 
-- (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & !\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9),
	datab => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	datac => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datad => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8),
	combout => \inst7|LPM_DECODE_component|auto_generated|w_anode122w[3]~0_combout\);

-- Location: LCCOMB_X30_Y8_N14
\inst22|68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|68~combout\ = (\inst2|LPM_DECODE_component|auto_generated|w_anode41w[3]~0_combout\ & ((\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10) & ((\inst7|LPM_DECODE_component|auto_generated|w_anode122w[3]~0_combout\))) # 
-- (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10) & (\inst7|LPM_DECODE_component|auto_generated|w_anode91w[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10),
	datab => \inst2|LPM_DECODE_component|auto_generated|w_anode41w[3]~0_combout\,
	datac => \inst7|LPM_DECODE_component|auto_generated|w_anode91w[3]~0_combout\,
	datad => \inst7|LPM_DECODE_component|auto_generated|w_anode122w[3]~0_combout\,
	combout => \inst22|68~combout\);

-- Location: IOIBUF_X41_Y11_N1
\USERINP[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_USERINP(3),
	o => \USERINP[3]~input_o\);

-- Location: FF_X28_Y7_N29
\inst16|inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \USERINP[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3));

-- Location: FF_X27_Y8_N1
\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst16|inst10|altsyncram_component|auto_generated|q_a\(2),
	sload => VCC,
	ena => \inst2|LPM_DECODE_component|auto_generated|w_anode30w[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X30_Y8_N4
\inst7|LPM_DECODE_component|auto_generated|w_anode112w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|LPM_DECODE_component|auto_generated|w_anode112w[3]~0_combout\ = (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & 
-- (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9) & !\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datab => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	datac => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9),
	datad => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8),
	combout => \inst7|LPM_DECODE_component|auto_generated|w_anode112w[3]~0_combout\);

-- Location: LCCOMB_X30_Y8_N8
\inst26|inst63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst26|inst63~combout\ = (\inst2|LPM_DECODE_component|auto_generated|w_anode41w[3]~0_combout\ & ((\inst7|LPM_DECODE_component|auto_generated|w_anode112w[3]~0_combout\) # ((\inst7|LPM_DECODE_component|auto_generated|w_anode122w[3]~0_combout\ & 
-- !\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LPM_DECODE_component|auto_generated|w_anode122w[3]~0_combout\,
	datab => \inst7|LPM_DECODE_component|auto_generated|w_anode112w[3]~0_combout\,
	datac => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10),
	datad => \inst2|LPM_DECODE_component|auto_generated|w_anode41w[3]~0_combout\,
	combout => \inst26|inst63~combout\);

-- Location: LCCOMB_X31_Y8_N2
\inst2|LPM_DECODE_component|auto_generated|w_anode52w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|LPM_DECODE_component|auto_generated|w_anode52w[3]~0_combout\ = (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & 
-- !\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datac => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	combout => \inst2|LPM_DECODE_component|auto_generated|w_anode52w[3]~0_combout\);

-- Location: LCCOMB_X30_Y8_N2
\inst26|inst3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst26|inst3~0_combout\ = (\inst7|LPM_DECODE_component|auto_generated|w_anode102w[3]~0_combout\ & (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & 
-- \inst2|LPM_DECODE_component|auto_generated|w_anode52w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LPM_DECODE_component|auto_generated|w_anode102w[3]~0_combout\,
	datab => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	datac => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	datad => \inst2|LPM_DECODE_component|auto_generated|w_anode52w[3]~0_combout\,
	combout => \inst26|inst3~0_combout\);

-- Location: LCCOMB_X29_Y8_N2
\inst26|inst7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst26|inst7~combout\ = (\inst26|inst3~0_combout\) # ((!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & \inst26|inst63~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datab => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datac => \inst26|inst63~combout\,
	datad => \inst26|inst3~0_combout\,
	combout => \inst26|inst7~combout\);

-- Location: LCCOMB_X30_Y8_N28
\inst26|inst5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst26|inst5~0_combout\ = (\inst7|LPM_DECODE_component|auto_generated|w_anode102w[3]~0_combout\ & (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & 
-- \inst2|LPM_DECODE_component|auto_generated|w_anode52w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LPM_DECODE_component|auto_generated|w_anode102w[3]~0_combout\,
	datab => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	datac => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	datad => \inst2|LPM_DECODE_component|auto_generated|w_anode52w[3]~0_combout\,
	combout => \inst26|inst5~0_combout\);

-- Location: LCCOMB_X29_Y8_N28
\inst26|inst9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst26|inst9~combout\ = (\inst26|inst5~0_combout\) # ((\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & \inst26|inst63~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datab => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datac => \inst26|inst63~combout\,
	datad => \inst26|inst5~0_combout\,
	combout => \inst26|inst9~combout\);

-- Location: LCCOMB_X30_Y8_N0
\inst26|inst4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst26|inst4~0_combout\ = (\inst7|LPM_DECODE_component|auto_generated|w_anode102w[3]~0_combout\ & (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & 
-- \inst2|LPM_DECODE_component|auto_generated|w_anode52w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LPM_DECODE_component|auto_generated|w_anode102w[3]~0_combout\,
	datab => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	datac => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	datad => \inst2|LPM_DECODE_component|auto_generated|w_anode52w[3]~0_combout\,
	combout => \inst26|inst4~0_combout\);

-- Location: LCCOMB_X30_Y8_N10
\inst26|inst8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst26|inst8~combout\ = (\inst26|inst4~0_combout\) # ((!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & \inst26|inst63~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datab => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datac => \inst26|inst63~combout\,
	datad => \inst26|inst4~0_combout\,
	combout => \inst26|inst8~combout\);

-- Location: FF_X27_Y8_N11
\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst16|inst10|altsyncram_component|auto_generated|q_a\(3),
	sload => VCC,
	ena => \inst2|LPM_DECODE_component|auto_generated|w_anode30w[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3));

-- Location: LCCOMB_X30_Y8_N12
\inst26|inst6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst26|inst6~0_combout\ = (\inst7|LPM_DECODE_component|auto_generated|w_anode102w[3]~0_combout\ & (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & 
-- \inst2|LPM_DECODE_component|auto_generated|w_anode52w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LPM_DECODE_component|auto_generated|w_anode102w[3]~0_combout\,
	datab => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	datac => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	datad => \inst2|LPM_DECODE_component|auto_generated|w_anode52w[3]~0_combout\,
	combout => \inst26|inst6~0_combout\);

-- Location: LCCOMB_X29_Y8_N16
\inst26|inst10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst26|inst10~combout\ = (\inst26|inst6~0_combout\) # ((\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & \inst26|inst63~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datab => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datac => \inst26|inst63~combout\,
	datad => \inst26|inst6~0_combout\,
	combout => \inst26|inst10~combout\);

-- Location: LCCOMB_X29_Y8_N14
\inst22|7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|7~0_combout\ = (!\inst22|68~combout\ & ((\inst26|inst10~combout\) # ((!\inst26|inst9~combout\ & \inst26|inst8~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|68~combout\,
	datab => \inst26|inst9~combout\,
	datac => \inst26|inst8~combout\,
	datad => \inst26|inst10~combout\,
	combout => \inst22|7~0_combout\);

-- Location: LCCOMB_X29_Y8_N20
\inst22|7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|7~1_combout\ = (!\inst26|inst9~combout\ & ((\inst137~combout\) # ((\inst2|LPM_DECODE_component|auto_generated|w_anode41w[3]~0_combout\ & \inst7|LPM_DECODE_component|auto_generated|w_anode132w[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst137~combout\,
	datab => \inst2|LPM_DECODE_component|auto_generated|w_anode41w[3]~0_combout\,
	datac => \inst7|LPM_DECODE_component|auto_generated|w_anode132w[3]~0_combout\,
	datad => \inst26|inst9~combout\,
	combout => \inst22|7~1_combout\);

-- Location: LCCOMB_X29_Y8_N6
\inst22|7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|7~2_combout\ = (\inst10~combout\) # ((\inst22|7~0_combout\) # ((!\inst26|inst7~combout\ & \inst22|7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10~combout\,
	datab => \inst26|inst7~combout\,
	datac => \inst22|7~0_combout\,
	datad => \inst22|7~1_combout\,
	combout => \inst22|7~2_combout\);

-- Location: LCCOMB_X28_Y7_N28
\inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result3w~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result3w~0_combout\ = ((\inst22|7~2_combout\ & (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3))) # (!\inst22|7~2_combout\ & 
-- ((\inst16|inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3))))) # (!\inst22|68~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datab => \inst22|68~combout\,
	datac => \inst16|inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datad => \inst22|7~2_combout\,
	combout => \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result3w~0_combout\);

-- Location: LCCOMB_X29_Y8_N12
\inst22|8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|8~0_combout\ = (!\inst26|inst8~combout\ & !\inst26|inst7~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst26|inst8~combout\,
	datad => \inst26|inst7~combout\,
	combout => \inst22|8~0_combout\);

-- Location: LCCOMB_X28_Y7_N22
\inst22|9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|9~0_combout\ = (!\inst22|68~combout\ & ((\inst26|inst10~combout\) # ((\inst26|inst9~combout\) # (!\inst22|8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|inst10~combout\,
	datab => \inst22|68~combout\,
	datac => \inst22|8~0_combout\,
	datad => \inst26|inst9~combout\,
	combout => \inst22|9~0_combout\);

-- Location: LCCOMB_X29_Y8_N10
\inst22|8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|8~1_combout\ = (\inst22|8~0_combout\ & ((\inst55~combout\) # ((\inst58~2_combout\ & !\inst22|68~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst58~2_combout\,
	datab => \inst55~combout\,
	datac => \inst22|68~combout\,
	datad => \inst22|8~0_combout\,
	combout => \inst22|8~1_combout\);

-- Location: LCCOMB_X29_Y8_N8
\inst22|8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|8~2_combout\ = (\inst22|8~1_combout\) # ((!\inst22|68~combout\ & ((\inst26|inst10~combout\) # (\inst26|inst9~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|inst10~combout\,
	datab => \inst26|inst9~combout\,
	datac => \inst22|68~combout\,
	datad => \inst22|8~1_combout\,
	combout => \inst22|8~2_combout\);

-- Location: LCCOMB_X30_Y8_N24
\inst61|inst10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst61|inst10~0_combout\ = (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9)) # ((\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & 
-- \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8))) # (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & 
-- !\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datab => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	datac => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9),
	datad => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8),
	combout => \inst61|inst10~0_combout\);

-- Location: LCCOMB_X31_Y8_N0
\inst133~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst133~1_combout\ = (!\inst7|LPM_DECODE_component|auto_generated|w_anode112w[3]~0_combout\ & (\inst61|inst10~0_combout\ & ((\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10)) # 
-- (!\inst7|LPM_DECODE_component|auto_generated|w_anode91w[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10),
	datab => \inst7|LPM_DECODE_component|auto_generated|w_anode91w[3]~0_combout\,
	datac => \inst7|LPM_DECODE_component|auto_generated|w_anode112w[3]~0_combout\,
	datad => \inst61|inst10~0_combout\,
	combout => \inst133~1_combout\);

-- Location: LCCOMB_X31_Y8_N14
\inst61|inst20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst61|inst20~combout\ = (\inst137~combout\) # ((\inst2|LPM_DECODE_component|auto_generated|w_anode41w[3]~0_combout\ & ((\inst7|LPM_DECODE_component|auto_generated|w_anode132w[3]~0_combout\) # (!\inst133~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst137~combout\,
	datab => \inst2|LPM_DECODE_component|auto_generated|w_anode41w[3]~0_combout\,
	datac => \inst7|LPM_DECODE_component|auto_generated|w_anode132w[3]~0_combout\,
	datad => \inst133~1_combout\,
	combout => \inst61|inst20~combout\);

-- Location: LCCOMB_X23_Y8_N14
\inst61|inst23~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst61|inst23~0_combout\ = (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & \inst61|inst20~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	datab => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	datad => \inst61|inst20~combout\,
	combout => \inst61|inst23~0_combout\);

-- Location: FF_X29_Y8_N31
\inst16|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result3w~5_combout\,
	sload => VCC,
	ena => \inst61|inst23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3));

-- Location: LCCOMB_X24_Y8_N12
\inst61|inst24~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst61|inst24~0_combout\ = (\inst61|inst20~combout\ & (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst61|inst20~combout\,
	datab => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	datad => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	combout => \inst61|inst24~0_combout\);

-- Location: FF_X28_Y8_N13
\inst16|inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result3w~5_combout\,
	sload => VCC,
	ena => \inst61|inst24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3));

-- Location: LCCOMB_X29_Y8_N30
\inst16|inst12|LPM_MUX_component|auto_generated|w_mux_outputs333w[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|inst12|LPM_MUX_component|auto_generated|w_mux_outputs333w[1]~0_combout\ = (\inst22|8~2_combout\) # ((\inst22|7~2_combout\ & ((\inst16|inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)))) # (!\inst22|7~2_combout\ & 
-- (\inst16|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|7~2_combout\,
	datab => \inst22|8~2_combout\,
	datac => \inst16|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datad => \inst16|inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	combout => \inst16|inst12|LPM_MUX_component|auto_generated|w_mux_outputs333w[1]~0_combout\);

-- Location: LCCOMB_X24_Y8_N30
\inst61|inst25~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst61|inst25~0_combout\ = (\inst61|inst20~combout\ & (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & !\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst61|inst20~combout\,
	datac => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	datad => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	combout => \inst61|inst25~0_combout\);

-- Location: FF_X29_Y8_N25
\inst16|inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result3w~5_combout\,
	sload => VCC,
	ena => \inst61|inst25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3));

-- Location: LCCOMB_X29_Y8_N24
\inst9|LPM_MUX_component|auto_generated|result_node[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|LPM_MUX_component|auto_generated|result_node[3]~0_combout\ = (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (((\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3))))) # 
-- (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & ((\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & ((\inst16|inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)))) # 
-- (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & (\inst16|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datab => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datac => \inst16|inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datad => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	combout => \inst9|LPM_MUX_component|auto_generated|result_node[3]~0_combout\);

-- Location: LCCOMB_X29_Y8_N22
\inst9|LPM_MUX_component|auto_generated|result_node[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|LPM_MUX_component|auto_generated|result_node[3]~1_combout\ = (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & ((\inst9|LPM_MUX_component|auto_generated|result_node[3]~0_combout\ & 
-- (\inst16|inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3))) # (!\inst9|LPM_MUX_component|auto_generated|result_node[3]~0_combout\ & ((\inst16|inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)))))) # 
-- (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (((\inst9|LPM_MUX_component|auto_generated|result_node[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datab => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datac => \inst16|inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datad => \inst9|LPM_MUX_component|auto_generated|result_node[3]~0_combout\,
	combout => \inst9|LPM_MUX_component|auto_generated|result_node[3]~1_combout\);

-- Location: LCCOMB_X29_Y8_N26
\inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result3w~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result3w~1_combout\ = ((\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & ((\inst9|LPM_MUX_component|auto_generated|result_node[3]~1_combout\) # 
-- (\inst8|LPM_MUX_component|auto_generated|result_node[3]~1_combout\))) # (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & (\inst9|LPM_MUX_component|auto_generated|result_node[3]~1_combout\ & 
-- \inst8|LPM_MUX_component|auto_generated|result_node[3]~1_combout\))) # (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	datab => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datac => \inst9|LPM_MUX_component|auto_generated|result_node[3]~1_combout\,
	datad => \inst8|LPM_MUX_component|auto_generated|result_node[3]~1_combout\,
	combout => \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result3w~1_combout\);

-- Location: LCCOMB_X24_Y8_N20
\inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result3w~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result3w~0_combout\ = (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & (\inst8|LPM_MUX_component|auto_generated|result_node[2]~3_combout\)) # 
-- (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & ((\inst9|LPM_MUX_component|auto_generated|result_node[3]~1_combout\ $ (\inst8|LPM_MUX_component|auto_generated|result_node[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|LPM_MUX_component|auto_generated|result_node[2]~3_combout\,
	datab => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	datac => \inst9|LPM_MUX_component|auto_generated|result_node[3]~1_combout\,
	datad => \inst8|LPM_MUX_component|auto_generated|result_node[3]~1_combout\,
	combout => \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result3w~0_combout\);

-- Location: LCCOMB_X29_Y7_N20
\inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result3w~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result3w~2_combout\ = (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9) & !\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9),
	datac => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8),
	combout => \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result3w~2_combout\);

-- Location: FF_X24_Y8_N13
\inst16|inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result2w~5_combout\,
	sload => VCC,
	ena => \inst61|inst24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X24_Y8_N28
\inst16|inst12|LPM_MUX_component|auto_generated|w_mux_outputs233w[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|inst12|LPM_MUX_component|auto_generated|w_mux_outputs233w[1]~0_combout\ = (\inst22|8~2_combout\) # ((\inst22|7~2_combout\ & ((\inst16|inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2)))) # (!\inst22|7~2_combout\ & 
-- (\inst16|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datab => \inst16|inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datac => \inst22|7~2_combout\,
	datad => \inst22|8~2_combout\,
	combout => \inst16|inst12|LPM_MUX_component|auto_generated|w_mux_outputs233w[1]~0_combout\);

-- Location: LCCOMB_X27_Y8_N14
\inst61|inst26~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst61|inst26~0_combout\ = (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & \inst61|inst20~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	datab => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	datad => \inst61|inst20~combout\,
	combout => \inst61|inst26~0_combout\);

-- Location: FF_X26_Y8_N21
\inst16|inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result2w~5_combout\,
	sload => VCC,
	ena => \inst61|inst26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X24_Y8_N8
\inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result2w~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result2w~1_combout\ = (\inst22|7~2_combout\ & (\inst16|inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2))) # (!\inst22|7~2_combout\ & 
-- ((\inst16|inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|7~2_combout\,
	datab => \inst16|inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => \inst16|inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	combout => \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result2w~1_combout\);

-- Location: LCCOMB_X24_Y8_N14
\inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result2w~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result2w~2_combout\ = (\inst16|inst12|LPM_MUX_component|auto_generated|w_mux_outputs233w[1]~0_combout\ & (\inst22|9~0_combout\ & 
-- ((\inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result2w~1_combout\) # (!\inst22|8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|8~2_combout\,
	datab => \inst16|inst12|LPM_MUX_component|auto_generated|w_mux_outputs233w[1]~0_combout\,
	datac => \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result2w~1_combout\,
	datad => \inst22|9~0_combout\,
	combout => \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result2w~2_combout\);

-- Location: LCCOMB_X24_Y8_N4
\inst16|inst12|LPM_MUX_component|auto_generated|_~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|inst12|LPM_MUX_component|auto_generated|_~0_combout\ = (\inst22|8~2_combout\) # ((\inst16|inst11|altsyncram_component|auto_generated|q_a\(2) & \inst22|7~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst11|altsyncram_component|auto_generated|q_a\(2),
	datac => \inst22|7~2_combout\,
	datad => \inst22|8~2_combout\,
	combout => \inst16|inst12|LPM_MUX_component|auto_generated|_~0_combout\);

-- Location: LCCOMB_X29_Y8_N18
\inst7|LPM_DECODE_component|auto_generated|w_anode61w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|LPM_DECODE_component|auto_generated|w_anode61w[3]~0_combout\ = (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & 
-- (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8) & !\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	datab => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datac => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8),
	datad => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9),
	combout => \inst7|LPM_DECODE_component|auto_generated|w_anode61w[3]~0_combout\);

-- Location: LCCOMB_X24_Y8_N16
\inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result2w~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result2w~2_combout\ = (\inst7|LPM_DECODE_component|auto_generated|w_anode61w[3]~0_combout\ & \inst8|LPM_MUX_component|auto_generated|result_node[3]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|LPM_DECODE_component|auto_generated|w_anode61w[3]~0_combout\,
	datad => \inst8|LPM_MUX_component|auto_generated|result_node[3]~1_combout\,
	combout => \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result2w~2_combout\);

-- Location: LCCOMB_X29_Y7_N0
\inst7|LPM_DECODE_component|auto_generated|w_anode41w[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|LPM_DECODE_component|auto_generated|w_anode41w[3]~1_combout\ = (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8) & 
-- !\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	datac => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8),
	datad => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9),
	combout => \inst7|LPM_DECODE_component|auto_generated|w_anode41w[3]~1_combout\);

-- Location: FF_X27_Y8_N15
\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst16|inst10|altsyncram_component|auto_generated|q_a\(1),
	sload => VCC,
	ena => \inst2|LPM_DECODE_component|auto_generated|w_anode30w[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X23_Y8_N0
\inst8|LPM_MUX_component|auto_generated|result_node[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|LPM_MUX_component|auto_generated|result_node[2]~2_combout\ = (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (((\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))))) # 
-- (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ((\inst16|inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2)))) # 
-- (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (\inst16|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datab => \inst16|inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datac => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	combout => \inst8|LPM_MUX_component|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X26_Y8_N20
\inst8|LPM_MUX_component|auto_generated|result_node[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|LPM_MUX_component|auto_generated|result_node[2]~3_combout\ = (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\inst8|LPM_MUX_component|auto_generated|result_node[2]~2_combout\ & 
-- ((\inst16|inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2)))) # (!\inst8|LPM_MUX_component|auto_generated|result_node[2]~2_combout\ & (\inst16|inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2))))) # 
-- (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (((\inst8|LPM_MUX_component|auto_generated|result_node[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datab => \inst16|inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datac => \inst16|inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => \inst8|LPM_MUX_component|auto_generated|result_node[2]~2_combout\,
	combout => \inst8|LPM_MUX_component|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X27_Y8_N22
\inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result2w~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result2w~3_combout\ = (\inst7|LPM_DECODE_component|auto_generated|w_anode41w[3]~1_combout\ & ((\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & 
-- ((\inst9|LPM_MUX_component|auto_generated|result_node[2]~3_combout\) # (\inst8|LPM_MUX_component|auto_generated|result_node[2]~3_combout\))) # (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & 
-- (\inst9|LPM_MUX_component|auto_generated|result_node[2]~3_combout\ & \inst8|LPM_MUX_component|auto_generated|result_node[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datab => \inst7|LPM_DECODE_component|auto_generated|w_anode41w[3]~1_combout\,
	datac => \inst9|LPM_MUX_component|auto_generated|result_node[2]~3_combout\,
	datad => \inst8|LPM_MUX_component|auto_generated|result_node[2]~3_combout\,
	combout => \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result2w~3_combout\);

-- Location: LCCOMB_X29_Y7_N12
\inst7|LPM_DECODE_component|auto_generated|w_anode71w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|LPM_DECODE_component|auto_generated|w_anode71w[3]~0_combout\ = (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8) & 
-- (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & !\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	datab => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8),
	datac => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datad => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9),
	combout => \inst7|LPM_DECODE_component|auto_generated|w_anode71w[3]~0_combout\);

-- Location: LCCOMB_X29_Y7_N6
\inst7|LPM_DECODE_component|auto_generated|w_anode21w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|LPM_DECODE_component|auto_generated|w_anode21w[3]~0_combout\ = (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8) & 
-- (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & !\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	datab => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8),
	datac => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datad => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9),
	combout => \inst7|LPM_DECODE_component|auto_generated|w_anode21w[3]~0_combout\);

-- Location: IOIBUF_X37_Y0_N1
\USERINP[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_USERINP(1),
	o => \USERINP[1]~input_o\);

-- Location: FF_X21_Y8_N1
\inst16|inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \USERINP[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X21_Y8_N0
\inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result1w~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result1w~0_combout\ = ((\inst22|7~2_combout\ & (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1))) # (!\inst22|7~2_combout\ & 
-- ((\inst16|inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1))))) # (!\inst22|68~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datab => \inst22|68~combout\,
	datac => \inst16|inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => \inst22|7~2_combout\,
	combout => \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result1w~0_combout\);

-- Location: LCCOMB_X24_Y8_N6
\inst16|inst12|LPM_MUX_component|auto_generated|w_mux_outputs133w[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|inst12|LPM_MUX_component|auto_generated|w_mux_outputs133w[1]~0_combout\ = (\inst22|8~2_combout\) # ((\inst22|7~2_combout\ & ((\inst16|inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))) # (!\inst22|7~2_combout\ & 
-- (\inst16|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datab => \inst16|inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datac => \inst22|7~2_combout\,
	datad => \inst22|8~2_combout\,
	combout => \inst16|inst12|LPM_MUX_component|auto_generated|w_mux_outputs133w[1]~0_combout\);

-- Location: FF_X27_Y8_N3
\inst16|inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result1w~5_combout\,
	sload => VCC,
	ena => \inst61|inst25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X23_Y8_N26
\inst16|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~feeder_combout\ = \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result1w~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result1w~5_combout\,
	combout => \inst16|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~feeder_combout\);

-- Location: FF_X23_Y8_N27
\inst16|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst16|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~feeder_combout\,
	ena => \inst61|inst23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X27_Y8_N0
\inst9|LPM_MUX_component|auto_generated|result_node[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|LPM_MUX_component|auto_generated|result_node[1]~4_combout\ = (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & ((\inst16|inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)) # 
-- ((\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2))))) # (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & (((!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & 
-- \inst16|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datab => \inst16|inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datac => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => \inst16|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	combout => \inst9|LPM_MUX_component|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X27_Y8_N16
\inst9|LPM_MUX_component|auto_generated|result_node[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|LPM_MUX_component|auto_generated|result_node[1]~5_combout\ = (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & ((\inst9|LPM_MUX_component|auto_generated|result_node[1]~4_combout\ & 
-- (\inst16|inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1))) # (!\inst9|LPM_MUX_component|auto_generated|result_node[1]~4_combout\ & ((\inst16|inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))))) # 
-- (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (((\inst9|LPM_MUX_component|auto_generated|result_node[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datab => \inst16|inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datac => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => \inst9|LPM_MUX_component|auto_generated|result_node[1]~4_combout\,
	combout => \inst9|LPM_MUX_component|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X26_Y8_N4
\inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result1w~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result1w~1_combout\ = (\inst7|LPM_DECODE_component|auto_generated|w_anode51w[3]~0_combout\ & (\inst8|LPM_MUX_component|auto_generated|result_node[1]~5_combout\ $ 
-- (\inst9|LPM_MUX_component|auto_generated|result_node[1]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|LPM_MUX_component|auto_generated|result_node[1]~5_combout\,
	datab => \inst9|LPM_MUX_component|auto_generated|result_node[1]~5_combout\,
	datad => \inst7|LPM_DECODE_component|auto_generated|w_anode51w[3]~0_combout\,
	combout => \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result1w~1_combout\);

-- Location: IOIBUF_X0_Y14_N8
\USERINP[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_USERINP(0),
	o => \USERINP[0]~input_o\);

-- Location: FF_X21_Y8_N7
\inst16|inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \USERINP[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X21_Y8_N6
\inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result0w~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\ = ((\inst22|7~2_combout\ & (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))) # (!\inst22|7~2_combout\ & 
-- ((\inst16|inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))))) # (!\inst22|68~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datab => \inst22|68~combout\,
	datac => \inst16|inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst22|7~2_combout\,
	combout => \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\);

-- Location: FF_X27_Y8_N29
\inst16|inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result0w~5_combout\,
	sload => VCC,
	ena => \inst61|inst25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X26_Y8_N14
\inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result0w~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\ = ((\inst22|7~2_combout\ & (\inst16|inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))) # (!\inst22|7~2_combout\ & 
-- ((\inst16|inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))))) # (!\inst22|8~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datab => \inst22|8~2_combout\,
	datac => \inst22|7~2_combout\,
	datad => \inst16|inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	combout => \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\);

-- Location: FF_X26_Y8_N11
\inst16|inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result0w~5_combout\,
	sload => VCC,
	ena => \inst61|inst24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X23_Y8_N28
\inst16|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~feeder_combout\ = \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result0w~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result0w~5_combout\,
	combout => \inst16|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~feeder_combout\);

-- Location: FF_X23_Y8_N29
\inst16|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst16|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~feeder_combout\,
	ena => \inst61|inst23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X27_Y8_N10
\inst9|LPM_MUX_component|auto_generated|result_node[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|LPM_MUX_component|auto_generated|result_node[0]~6_combout\ = (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & ((\inst16|inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)) # 
-- ((\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3))))) # (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (((!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & 
-- \inst16|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datab => \inst16|inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datad => \inst16|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	combout => \inst9|LPM_MUX_component|auto_generated|result_node[0]~6_combout\);

-- Location: LCCOMB_X27_Y8_N24
\inst9|LPM_MUX_component|auto_generated|result_node[0]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|LPM_MUX_component|auto_generated|result_node[0]~7_combout\ = (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & ((\inst9|LPM_MUX_component|auto_generated|result_node[0]~6_combout\ & 
-- ((\inst16|inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)))) # (!\inst9|LPM_MUX_component|auto_generated|result_node[0]~6_combout\ & (\inst16|inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))))) # 
-- (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & (((\inst9|LPM_MUX_component|auto_generated|result_node[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datab => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datac => \inst16|inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst9|LPM_MUX_component|auto_generated|result_node[0]~6_combout\,
	combout => \inst9|LPM_MUX_component|auto_generated|result_node[0]~7_combout\);

-- Location: LCCOMB_X28_Y8_N14
\inst1|inst3|LPM_ADD_SUB_component|auto_generated|result_int[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst3|LPM_ADD_SUB_component|auto_generated|result_int[0]~0_combout\ = (\inst8|LPM_MUX_component|auto_generated|result_node[0]~7_combout\ & (\inst9|LPM_MUX_component|auto_generated|result_node[0]~7_combout\ $ (VCC))) # 
-- (!\inst8|LPM_MUX_component|auto_generated|result_node[0]~7_combout\ & (\inst9|LPM_MUX_component|auto_generated|result_node[0]~7_combout\ & VCC))
-- \inst1|inst3|LPM_ADD_SUB_component|auto_generated|result_int[0]~1\ = CARRY((\inst8|LPM_MUX_component|auto_generated|result_node[0]~7_combout\ & \inst9|LPM_MUX_component|auto_generated|result_node[0]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|LPM_MUX_component|auto_generated|result_node[0]~7_combout\,
	datab => \inst9|LPM_MUX_component|auto_generated|result_node[0]~7_combout\,
	datad => VCC,
	combout => \inst1|inst3|LPM_ADD_SUB_component|auto_generated|result_int[0]~0_combout\,
	cout => \inst1|inst3|LPM_ADD_SUB_component|auto_generated|result_int[0]~1\);

-- Location: LCCOMB_X27_Y8_N4
\inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result0w~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\ = (\inst7|LPM_DECODE_component|auto_generated|w_anode41w[3]~1_combout\ & ((\inst8|LPM_MUX_component|auto_generated|result_node[0]~7_combout\ & 
-- ((\inst9|LPM_MUX_component|auto_generated|result_node[0]~7_combout\) # (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6)))) # (!\inst8|LPM_MUX_component|auto_generated|result_node[0]~7_combout\ & 
-- (\inst9|LPM_MUX_component|auto_generated|result_node[0]~7_combout\ & \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|LPM_MUX_component|auto_generated|result_node[0]~7_combout\,
	datab => \inst9|LPM_MUX_component|auto_generated|result_node[0]~7_combout\,
	datac => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datad => \inst7|LPM_DECODE_component|auto_generated|w_anode41w[3]~1_combout\,
	combout => \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\);

-- Location: LCCOMB_X27_Y8_N8
\inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result0w~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\ = (\inst8|LPM_MUX_component|auto_generated|result_node[1]~5_combout\ & \inst7|LPM_DECODE_component|auto_generated|w_anode61w[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|LPM_MUX_component|auto_generated|result_node[1]~5_combout\,
	datad => \inst7|LPM_DECODE_component|auto_generated|w_anode61w[3]~0_combout\,
	combout => \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\);

-- Location: LCCOMB_X27_Y8_N18
\inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result0w~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result0w~3_combout\ = (\inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\) # ((\inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\) # 
-- ((\inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result0w~2_combout\ & \inst1|inst3|LPM_ADD_SUB_component|auto_generated|result_int[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result0w~2_combout\,
	datab => \inst1|inst3|LPM_ADD_SUB_component|auto_generated|result_int[0]~0_combout\,
	datac => \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\,
	datad => \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\,
	combout => \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result0w~3_combout\);

-- Location: LCCOMB_X26_Y8_N24
\inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result0w~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result0w~2_combout\ = ((\inst22|7~2_combout\ & (\inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))) # (!\inst22|7~2_combout\ & 
-- ((\inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result0w~3_combout\)))) # (!\inst22|8~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datab => \inst22|7~2_combout\,
	datac => \inst22|8~2_combout\,
	datad => \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result0w~3_combout\,
	combout => \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result0w~2_combout\);

-- Location: LCCOMB_X26_Y8_N2
\inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result0w~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result0w~3_combout\ = (\inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result0w~2_combout\ & ((\inst22|8~2_combout\) # ((\inst16|inst11|altsyncram_component|auto_generated|q_a\(0) & 
-- \inst22|7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst11|altsyncram_component|auto_generated|q_a\(0),
	datab => \inst22|8~2_combout\,
	datac => \inst22|7~2_combout\,
	datad => \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result0w~2_combout\,
	combout => \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result0w~3_combout\);

-- Location: LCCOMB_X26_Y8_N12
\inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result0w~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result0w~4_combout\ = (\inst22|9~0_combout\ & (\inst16|inst12|LPM_MUX_component|auto_generated|w_mux_outputs33w[1]~0_combout\ & 
-- (\inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\))) # (!\inst22|9~0_combout\ & (((\inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result0w~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst12|LPM_MUX_component|auto_generated|w_mux_outputs33w[1]~0_combout\,
	datab => \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result0w~1_combout\,
	datac => \inst22|9~0_combout\,
	datad => \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result0w~3_combout\,
	combout => \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result0w~4_combout\);

-- Location: LCCOMB_X26_Y8_N26
\inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result0w~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result0w~5_combout\ = (\inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\ & ((\inst22|68~combout\) # 
-- (\inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result0w~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|68~combout\,
	datac => \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result0w~0_combout\,
	datad => \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result0w~4_combout\,
	combout => \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result0w~5_combout\);

-- Location: FF_X26_Y8_N5
\inst16|inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result0w~5_combout\,
	sload => VCC,
	ena => \inst61|inst26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X27_Y8_N6
\inst8|LPM_MUX_component|auto_generated|result_node[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|LPM_MUX_component|auto_generated|result_node[0]~6_combout\ = (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (((\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))))) # 
-- (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (\inst16|inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))) # 
-- (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ((\inst16|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datab => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datac => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst16|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	combout => \inst8|LPM_MUX_component|auto_generated|result_node[0]~6_combout\);

-- Location: LCCOMB_X27_Y8_N12
\inst8|LPM_MUX_component|auto_generated|result_node[0]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|LPM_MUX_component|auto_generated|result_node[0]~7_combout\ = (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\inst8|LPM_MUX_component|auto_generated|result_node[0]~6_combout\ & 
-- ((\inst16|inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)))) # (!\inst8|LPM_MUX_component|auto_generated|result_node[0]~6_combout\ & (\inst16|inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))))) # 
-- (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (((\inst8|LPM_MUX_component|auto_generated|result_node[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datab => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datac => \inst16|inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst8|LPM_MUX_component|auto_generated|result_node[0]~6_combout\,
	combout => \inst8|LPM_MUX_component|auto_generated|result_node[0]~7_combout\);

-- Location: LCCOMB_X26_Y8_N22
\inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result1w~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result1w~0_combout\ = (\inst7|LPM_DECODE_component|auto_generated|w_anode61w[3]~0_combout\ & ((\inst8|LPM_MUX_component|auto_generated|result_node[2]~3_combout\) # 
-- ((\inst8|LPM_MUX_component|auto_generated|result_node[0]~7_combout\ & \inst7|LPM_DECODE_component|auto_generated|w_anode71w[3]~0_combout\)))) # (!\inst7|LPM_DECODE_component|auto_generated|w_anode61w[3]~0_combout\ & 
-- (((\inst8|LPM_MUX_component|auto_generated|result_node[0]~7_combout\ & \inst7|LPM_DECODE_component|auto_generated|w_anode71w[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LPM_DECODE_component|auto_generated|w_anode61w[3]~0_combout\,
	datab => \inst8|LPM_MUX_component|auto_generated|result_node[2]~3_combout\,
	datac => \inst8|LPM_MUX_component|auto_generated|result_node[0]~7_combout\,
	datad => \inst7|LPM_DECODE_component|auto_generated|w_anode71w[3]~0_combout\,
	combout => \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result1w~0_combout\);

-- Location: LCCOMB_X28_Y8_N16
\inst1|inst3|LPM_ADD_SUB_component|auto_generated|result_int[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst3|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\ = (\inst9|LPM_MUX_component|auto_generated|result_node[1]~5_combout\ & ((\inst8|LPM_MUX_component|auto_generated|result_node[1]~5_combout\ & 
-- (\inst1|inst3|LPM_ADD_SUB_component|auto_generated|result_int[0]~1\ & VCC)) # (!\inst8|LPM_MUX_component|auto_generated|result_node[1]~5_combout\ & (!\inst1|inst3|LPM_ADD_SUB_component|auto_generated|result_int[0]~1\)))) # 
-- (!\inst9|LPM_MUX_component|auto_generated|result_node[1]~5_combout\ & ((\inst8|LPM_MUX_component|auto_generated|result_node[1]~5_combout\ & (!\inst1|inst3|LPM_ADD_SUB_component|auto_generated|result_int[0]~1\)) # 
-- (!\inst8|LPM_MUX_component|auto_generated|result_node[1]~5_combout\ & ((\inst1|inst3|LPM_ADD_SUB_component|auto_generated|result_int[0]~1\) # (GND)))))
-- \inst1|inst3|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\ = CARRY((\inst9|LPM_MUX_component|auto_generated|result_node[1]~5_combout\ & (!\inst8|LPM_MUX_component|auto_generated|result_node[1]~5_combout\ & 
-- !\inst1|inst3|LPM_ADD_SUB_component|auto_generated|result_int[0]~1\)) # (!\inst9|LPM_MUX_component|auto_generated|result_node[1]~5_combout\ & ((!\inst1|inst3|LPM_ADD_SUB_component|auto_generated|result_int[0]~1\) # 
-- (!\inst8|LPM_MUX_component|auto_generated|result_node[1]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|LPM_MUX_component|auto_generated|result_node[1]~5_combout\,
	datab => \inst8|LPM_MUX_component|auto_generated|result_node[1]~5_combout\,
	datad => VCC,
	cin => \inst1|inst3|LPM_ADD_SUB_component|auto_generated|result_int[0]~1\,
	combout => \inst1|inst3|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\,
	cout => \inst1|inst3|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\);

-- Location: LCCOMB_X28_Y8_N8
\inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result1w~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result1w~3_combout\ = (\inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result1w~2_combout\ & ((\inst7|LPM_DECODE_component|auto_generated|w_anode41w[3]~1_combout\) # 
-- ((\inst7|LPM_DECODE_component|auto_generated|w_anode21w[3]~0_combout\ & \inst1|inst3|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\)))) # (!\inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result1w~2_combout\ & 
-- (((\inst7|LPM_DECODE_component|auto_generated|w_anode21w[3]~0_combout\ & \inst1|inst3|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result1w~2_combout\,
	datab => \inst7|LPM_DECODE_component|auto_generated|w_anode41w[3]~1_combout\,
	datac => \inst7|LPM_DECODE_component|auto_generated|w_anode21w[3]~0_combout\,
	datad => \inst1|inst3|LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\,
	combout => \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result1w~3_combout\);

-- Location: LCCOMB_X26_Y8_N0
\inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result1w~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result1w~4_combout\ = (\inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result1w~1_combout\) # ((\inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result1w~0_combout\) # 
-- (\inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result1w~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result1w~1_combout\,
	datac => \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result1w~0_combout\,
	datad => \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result1w~3_combout\,
	combout => \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result1w~4_combout\);

-- Location: LCCOMB_X26_Y8_N16
\inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result1w~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result1w~2_combout\ = ((\inst22|7~2_combout\ & (\inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1))) # (!\inst22|7~2_combout\ & 
-- ((\inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result1w~4_combout\)))) # (!\inst22|8~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datab => \inst22|7~2_combout\,
	datac => \inst22|8~2_combout\,
	datad => \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result1w~4_combout\,
	combout => \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result1w~2_combout\);

-- Location: LCCOMB_X26_Y8_N18
\inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result1w~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result1w~3_combout\ = (\inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result1w~2_combout\ & ((\inst22|8~2_combout\) # ((\inst16|inst11|altsyncram_component|auto_generated|q_a\(1) & 
-- \inst22|7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst11|altsyncram_component|auto_generated|q_a\(1),
	datab => \inst22|8~2_combout\,
	datac => \inst22|7~2_combout\,
	datad => \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result1w~2_combout\,
	combout => \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result1w~3_combout\);

-- Location: LCCOMB_X26_Y8_N28
\inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result1w~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result1w~4_combout\ = (\inst22|9~0_combout\ & (\inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result1w~1_combout\ & 
-- (\inst16|inst12|LPM_MUX_component|auto_generated|w_mux_outputs133w[1]~0_combout\))) # (!\inst22|9~0_combout\ & (((\inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result1w~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result1w~1_combout\,
	datab => \inst22|9~0_combout\,
	datac => \inst16|inst12|LPM_MUX_component|auto_generated|w_mux_outputs133w[1]~0_combout\,
	datad => \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result1w~3_combout\,
	combout => \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result1w~4_combout\);

-- Location: LCCOMB_X26_Y8_N8
\inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result1w~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result1w~5_combout\ = (\inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result1w~0_combout\ & ((\inst22|68~combout\) # 
-- (\inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result1w~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|68~combout\,
	datac => \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result1w~0_combout\,
	datad => \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result1w~4_combout\,
	combout => \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result1w~5_combout\);

-- Location: FF_X26_Y8_N7
\inst16|inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result1w~5_combout\,
	sload => VCC,
	ena => \inst61|inst24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X27_Y8_N26
\inst8|LPM_MUX_component|auto_generated|result_node[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|LPM_MUX_component|auto_generated|result_node[1]~4_combout\ = (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (((\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1))))) # 
-- (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ((\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (\inst16|inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1))) # 
-- (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\inst16|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datab => \inst16|inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datac => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => \inst16|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	combout => \inst8|LPM_MUX_component|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X26_Y8_N6
\inst8|LPM_MUX_component|auto_generated|result_node[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|LPM_MUX_component|auto_generated|result_node[1]~5_combout\ = (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ((\inst8|LPM_MUX_component|auto_generated|result_node[1]~4_combout\ & 
-- (\inst16|inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1))) # (!\inst8|LPM_MUX_component|auto_generated|result_node[1]~4_combout\ & ((\inst16|inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))))) # 
-- (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (((\inst8|LPM_MUX_component|auto_generated|result_node[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datab => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \inst16|inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => \inst8|LPM_MUX_component|auto_generated|result_node[1]~4_combout\,
	combout => \inst8|LPM_MUX_component|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X28_Y8_N18
\inst1|inst3|LPM_ADD_SUB_component|auto_generated|result_int[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst3|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\ = ((\inst8|LPM_MUX_component|auto_generated|result_node[2]~3_combout\ $ (\inst9|LPM_MUX_component|auto_generated|result_node[2]~3_combout\ $ 
-- (!\inst1|inst3|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\)))) # (GND)
-- \inst1|inst3|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\ = CARRY((\inst8|LPM_MUX_component|auto_generated|result_node[2]~3_combout\ & ((\inst9|LPM_MUX_component|auto_generated|result_node[2]~3_combout\) # 
-- (!\inst1|inst3|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\))) # (!\inst8|LPM_MUX_component|auto_generated|result_node[2]~3_combout\ & (\inst9|LPM_MUX_component|auto_generated|result_node[2]~3_combout\ & 
-- !\inst1|inst3|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|LPM_MUX_component|auto_generated|result_node[2]~3_combout\,
	datab => \inst9|LPM_MUX_component|auto_generated|result_node[2]~3_combout\,
	datad => VCC,
	cin => \inst1|inst3|LPM_ADD_SUB_component|auto_generated|result_int[1]~3\,
	combout => \inst1|inst3|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\,
	cout => \inst1|inst3|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\);

-- Location: LCCOMB_X28_Y8_N28
\inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result2w~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result2w~0_combout\ = (\inst8|LPM_MUX_component|auto_generated|result_node[1]~5_combout\ & ((\inst7|LPM_DECODE_component|auto_generated|w_anode71w[3]~0_combout\) # 
-- ((\inst7|LPM_DECODE_component|auto_generated|w_anode21w[3]~0_combout\ & \inst1|inst3|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\)))) # (!\inst8|LPM_MUX_component|auto_generated|result_node[1]~5_combout\ & 
-- (((\inst7|LPM_DECODE_component|auto_generated|w_anode21w[3]~0_combout\ & \inst1|inst3|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|LPM_MUX_component|auto_generated|result_node[1]~5_combout\,
	datab => \inst7|LPM_DECODE_component|auto_generated|w_anode71w[3]~0_combout\,
	datac => \inst7|LPM_DECODE_component|auto_generated|w_anode21w[3]~0_combout\,
	datad => \inst1|inst3|LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\,
	combout => \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result2w~0_combout\);

-- Location: LCCOMB_X24_Y8_N2
\inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result2w~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result2w~4_combout\ = (\inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result2w~1_combout\) # ((\inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result2w~2_combout\) # 
-- ((\inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result2w~3_combout\) # (\inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result2w~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result2w~1_combout\,
	datab => \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result2w~2_combout\,
	datac => \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result2w~3_combout\,
	datad => \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result2w~0_combout\,
	combout => \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result2w~4_combout\);

-- Location: LCCOMB_X24_Y8_N10
\inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result2w~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result2w~3_combout\ = ((\inst22|7~2_combout\ & (\inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2))) # (!\inst22|7~2_combout\ & 
-- ((\inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result2w~4_combout\)))) # (!\inst22|8~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|8~2_combout\,
	datab => \inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datac => \inst22|7~2_combout\,
	datad => \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result2w~4_combout\,
	combout => \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result2w~3_combout\);

-- Location: LCCOMB_X24_Y8_N24
\inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result2w~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result2w~4_combout\ = (\inst22|68~combout\) # ((!\inst22|9~0_combout\ & (\inst16|inst12|LPM_MUX_component|auto_generated|_~0_combout\ & 
-- \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result2w~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|68~combout\,
	datab => \inst22|9~0_combout\,
	datac => \inst16|inst12|LPM_MUX_component|auto_generated|_~0_combout\,
	datad => \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result2w~3_combout\,
	combout => \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result2w~4_combout\);

-- Location: LCCOMB_X24_Y8_N22
\inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result2w~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result2w~5_combout\ = (\inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result2w~0_combout\ & ((\inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result2w~2_combout\) # 
-- (\inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result2w~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result2w~0_combout\,
	datac => \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result2w~2_combout\,
	datad => \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result2w~4_combout\,
	combout => \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result2w~5_combout\);

-- Location: FF_X27_Y8_N21
\inst16|inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result2w~5_combout\,
	sload => VCC,
	ena => \inst61|inst25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X23_Y8_N10
\inst9|LPM_MUX_component|auto_generated|result_node[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|LPM_MUX_component|auto_generated|result_node[2]~2_combout\ = (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (((\inst16|inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2)) # 
-- (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3))))) # (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\inst16|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & 
-- ((!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datab => \inst16|inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datac => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	combout => \inst9|LPM_MUX_component|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X27_Y8_N30
\inst9|LPM_MUX_component|auto_generated|result_node[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|LPM_MUX_component|auto_generated|result_node[2]~3_combout\ = (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & ((\inst9|LPM_MUX_component|auto_generated|result_node[2]~2_combout\ & 
-- (\inst16|inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2))) # (!\inst9|LPM_MUX_component|auto_generated|result_node[2]~2_combout\ & ((\inst16|inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2)))))) # 
-- (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & (((\inst9|LPM_MUX_component|auto_generated|result_node[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datab => \inst16|inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datac => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datad => \inst9|LPM_MUX_component|auto_generated|result_node[2]~2_combout\,
	combout => \inst9|LPM_MUX_component|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X28_Y8_N20
\inst1|inst3|LPM_ADD_SUB_component|auto_generated|result_int[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst3|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\ = (\inst8|LPM_MUX_component|auto_generated|result_node[3]~1_combout\ & ((\inst9|LPM_MUX_component|auto_generated|result_node[3]~1_combout\ & 
-- (\inst1|inst3|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\ & VCC)) # (!\inst9|LPM_MUX_component|auto_generated|result_node[3]~1_combout\ & (!\inst1|inst3|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\)))) # 
-- (!\inst8|LPM_MUX_component|auto_generated|result_node[3]~1_combout\ & ((\inst9|LPM_MUX_component|auto_generated|result_node[3]~1_combout\ & (!\inst1|inst3|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\)) # 
-- (!\inst9|LPM_MUX_component|auto_generated|result_node[3]~1_combout\ & ((\inst1|inst3|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\) # (GND)))))
-- \inst1|inst3|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\ = CARRY((\inst8|LPM_MUX_component|auto_generated|result_node[3]~1_combout\ & (!\inst9|LPM_MUX_component|auto_generated|result_node[3]~1_combout\ & 
-- !\inst1|inst3|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\)) # (!\inst8|LPM_MUX_component|auto_generated|result_node[3]~1_combout\ & ((!\inst1|inst3|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\) # 
-- (!\inst9|LPM_MUX_component|auto_generated|result_node[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|LPM_MUX_component|auto_generated|result_node[3]~1_combout\,
	datab => \inst9|LPM_MUX_component|auto_generated|result_node[3]~1_combout\,
	datad => VCC,
	cin => \inst1|inst3|LPM_ADD_SUB_component|auto_generated|result_int[2]~5\,
	combout => \inst1|inst3|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\,
	cout => \inst1|inst3|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\);

-- Location: LCCOMB_X28_Y8_N0
\inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result3w~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result3w~3_combout\ = (\inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result3w~2_combout\ & ((\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7)) # 
-- ((\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & \inst1|inst3|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	datab => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datac => \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result3w~2_combout\,
	datad => \inst1|inst3|LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\,
	combout => \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result3w~3_combout\);

-- Location: LCCOMB_X28_Y8_N10
\inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result3w~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result3w~5_combout\ = (\inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result3w~4_combout\ & ((\inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result3w~0_combout\) # 
-- ((\inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result3w~1_combout\ & \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result3w~3_combout\)))) # (!\inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result3w~4_combout\ & 
-- (\inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result3w~1_combout\ & ((\inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result3w~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result3w~4_combout\,
	datab => \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result3w~1_combout\,
	datac => \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result3w~0_combout\,
	datad => \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result3w~3_combout\,
	combout => \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result3w~5_combout\);

-- Location: LCCOMB_X28_Y8_N4
\inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result3w~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result3w~2_combout\ = ((\inst22|7~2_combout\ & (\inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3))) # (!\inst22|7~2_combout\ & 
-- ((\inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result3w~5_combout\)))) # (!\inst22|8~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|7~2_combout\,
	datab => \inst22|8~2_combout\,
	datac => \inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datad => \inst1|inst5|LPM_MUX_component|auto_generated|muxlut_result3w~5_combout\,
	combout => \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result3w~2_combout\);

-- Location: LCCOMB_X31_Y8_N16
inst81 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst81~combout\ = (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10) & (\inst7|LPM_DECODE_component|auto_generated|w_anode91w[3]~0_combout\ & \inst2|LPM_DECODE_component|auto_generated|w_anode52w[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10),
	datab => \inst7|LPM_DECODE_component|auto_generated|w_anode91w[3]~0_combout\,
	datad => \inst2|LPM_DECODE_component|auto_generated|w_anode52w[3]~0_combout\,
	combout => \inst81~combout\);

-- Location: LCCOMB_X30_Y8_N22
\inst7|LPM_DECODE_component|auto_generated|w_anode102w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|LPM_DECODE_component|auto_generated|w_anode102w[3]~0_combout\ = (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & 
-- (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9) & !\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datab => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	datac => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9),
	datad => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8),
	combout => \inst7|LPM_DECODE_component|auto_generated|w_anode102w[3]~0_combout\);

-- Location: LCCOMB_X31_Y8_N28
\inst32~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst32~0_combout\ = (\inst2|LPM_DECODE_component|auto_generated|w_anode41w[3]~0_combout\ & ((\inst7|LPM_DECODE_component|auto_generated|w_anode102w[3]~0_combout\) # ((\inst7|LPM_DECODE_component|auto_generated|w_anode91w[3]~0_combout\ & 
-- \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LPM_DECODE_component|auto_generated|w_anode91w[3]~0_combout\,
	datab => \inst7|LPM_DECODE_component|auto_generated|w_anode102w[3]~0_combout\,
	datac => \inst2|LPM_DECODE_component|auto_generated|w_anode41w[3]~0_combout\,
	datad => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10),
	combout => \inst32~0_combout\);

-- Location: FF_X28_Y7_N9
\inst16|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	sload => VCC,
	ena => \inst32~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: FF_X28_Y7_N31
\inst16|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	sload => VCC,
	ena => \inst32~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1));

-- Location: FF_X28_Y7_N1
\inst16|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	sload => VCC,
	ena => \inst32~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X28_Y7_N26
\inst16|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~feeder_combout\ = \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	combout => \inst16|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~feeder_combout\);

-- Location: FF_X28_Y7_N27
\inst16|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst16|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~feeder_combout\,
	ena => \inst32~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3));

-- Location: LCCOMB_X28_Y7_N12
\inst16|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]~feeder_combout\ = \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	combout => \inst16|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]~feeder_combout\);

-- Location: FF_X28_Y7_N13
\inst16|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst16|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]~feeder_combout\,
	ena => \inst32~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4));

-- Location: M9K_X25_Y8_N0
\inst16|inst11|altsyncram_component|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000040003",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "Ramhexxx.hex",
	init_file_layout => "port_a",
	logical_ram_name => "Block1:inst16|RAMDataMemory:inst11|altsyncram:altsyncram_component|altsyncram_f9i1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 4,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 5,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst50~combout\,
	portare => \inst81~combout\,
	clk0 => \Clock~inputclkctrl_outclk\,
	portadatain => \inst16|inst11|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \inst16|inst11|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst16|inst11|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X28_Y8_N2
\inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result3w~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result3w~3_combout\ = (\inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result3w~2_combout\ & ((\inst22|8~2_combout\) # ((\inst22|7~2_combout\ & 
-- \inst16|inst11|altsyncram_component|auto_generated|q_a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|7~2_combout\,
	datab => \inst22|8~2_combout\,
	datac => \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result3w~2_combout\,
	datad => \inst16|inst11|altsyncram_component|auto_generated|q_a\(3),
	combout => \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result3w~3_combout\);

-- Location: LCCOMB_X28_Y8_N24
\inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result3w~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result3w~4_combout\ = (\inst22|9~0_combout\ & (\inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result3w~1_combout\ & 
-- (\inst16|inst12|LPM_MUX_component|auto_generated|w_mux_outputs333w[1]~0_combout\))) # (!\inst22|9~0_combout\ & (((\inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result3w~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result3w~1_combout\,
	datab => \inst22|9~0_combout\,
	datac => \inst16|inst12|LPM_MUX_component|auto_generated|w_mux_outputs333w[1]~0_combout\,
	datad => \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result3w~3_combout\,
	combout => \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result3w~4_combout\);

-- Location: LCCOMB_X28_Y8_N26
\inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result3w~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result3w~5_combout\ = (\inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result3w~0_combout\ & ((\inst22|68~combout\) # 
-- (\inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result3w~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst22|68~combout\,
	datac => \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result3w~0_combout\,
	datad => \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result3w~4_combout\,
	combout => \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result3w~5_combout\);

-- Location: FF_X28_Y8_N7
\inst16|inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result3w~5_combout\,
	sload => VCC,
	ena => \inst61|inst26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3));

-- Location: LCCOMB_X29_Y8_N4
\inst8|LPM_MUX_component|auto_generated|result_node[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|LPM_MUX_component|auto_generated|result_node[3]~0_combout\ = (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (((\inst16|inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)) # 
-- (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))))) # (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (\inst16|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & 
-- ((!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datab => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datac => \inst16|inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datad => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	combout => \inst8|LPM_MUX_component|auto_generated|result_node[3]~0_combout\);

-- Location: LCCOMB_X28_Y8_N12
\inst8|LPM_MUX_component|auto_generated|result_node[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|LPM_MUX_component|auto_generated|result_node[3]~1_combout\ = (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ((\inst8|LPM_MUX_component|auto_generated|result_node[3]~0_combout\ & 
-- (\inst16|inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3))) # (!\inst8|LPM_MUX_component|auto_generated|result_node[3]~0_combout\ & ((\inst16|inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)))))) # 
-- (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (((\inst8|LPM_MUX_component|auto_generated|result_node[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datab => \inst16|inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datac => \inst16|inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datad => \inst8|LPM_MUX_component|auto_generated|result_node[3]~0_combout\,
	combout => \inst8|LPM_MUX_component|auto_generated|result_node[3]~1_combout\);

-- Location: LCCOMB_X23_Y8_N22
\inst109~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst109~0_combout\ = ((\inst7|LPM_DECODE_component|auto_generated|w_anode51w[3]~0_combout\ & \inst8|LPM_MUX_component|auto_generated|result_node[3]~1_combout\)) # (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10),
	datac => \inst7|LPM_DECODE_component|auto_generated|w_anode51w[3]~0_combout\,
	datad => \inst8|LPM_MUX_component|auto_generated|result_node[3]~1_combout\,
	combout => \inst109~0_combout\);

-- Location: LCCOMB_X28_Y8_N22
\inst1|inst3|LPM_ADD_SUB_component|auto_generated|result_int[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst3|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\ = !\inst1|inst3|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst1|inst3|LPM_ADD_SUB_component|auto_generated|result_int[3]~7\,
	combout => \inst1|inst3|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\);

-- Location: LCCOMB_X23_Y8_N20
\inst109~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst109~1_combout\ = (\inst7|LPM_DECODE_component|auto_generated|w_anode152w[3]~0_combout\ & ((\inst109~0_combout\) # ((\inst76~0_combout\ & \inst1|inst3|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst76~0_combout\,
	datab => \inst7|LPM_DECODE_component|auto_generated|w_anode152w[3]~0_combout\,
	datac => \inst109~0_combout\,
	datad => \inst1|inst3|LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\,
	combout => \inst109~1_combout\);

-- Location: LCCOMB_X23_Y8_N6
\inst65|7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst65|7~0_combout\ = (!\inst112~combout\ & ((\inst55~combout\) # ((\inst2|LPM_DECODE_component|auto_generated|w_anode41w[3]~0_combout\ & \inst109~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LPM_DECODE_component|auto_generated|w_anode41w[3]~0_combout\,
	datab => \inst55~combout\,
	datac => \inst112~combout\,
	datad => \inst109~1_combout\,
	combout => \inst65|7~0_combout\);

-- Location: LCCOMB_X23_Y8_N24
\inst65|7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst65|7~1_combout\ = (\inst2|LPM_DECODE_component|auto_generated|w_anode41w[3]~0_combout\ & ((\inst7|LPM_DECODE_component|auto_generated|w_anode162w[3]~0_combout\ & (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4))) # 
-- (!\inst7|LPM_DECODE_component|auto_generated|w_anode162w[3]~0_combout\ & ((\inst65|7~0_combout\))))) # (!\inst2|LPM_DECODE_component|auto_generated|w_anode41w[3]~0_combout\ & (((\inst65|7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	datab => \inst2|LPM_DECODE_component|auto_generated|w_anode41w[3]~0_combout\,
	datac => \inst7|LPM_DECODE_component|auto_generated|w_anode162w[3]~0_combout\,
	datad => \inst65|7~0_combout\,
	combout => \inst65|7~1_combout\);

-- Location: LCCOMB_X22_Y8_N2
\inst118|LPM_MUX_component|auto_generated|result_node[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst118|LPM_MUX_component|auto_generated|result_node[3]~4_combout\ = (\inst65|8~0_combout\ & (((\inst120|LPM_ADD_SUB_component|auto_generated|result[3]~6_combout\) # (\inst65|7~1_combout\)))) # (!\inst65|8~0_combout\ & 
-- (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & ((!\inst65|7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datab => \inst120|LPM_ADD_SUB_component|auto_generated|result[3]~6_combout\,
	datac => \inst65|8~0_combout\,
	datad => \inst65|7~1_combout\,
	combout => \inst118|LPM_MUX_component|auto_generated|result_node[3]~4_combout\);

-- Location: LCCOMB_X22_Y8_N4
\inst118|LPM_MUX_component|auto_generated|result_node[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst118|LPM_MUX_component|auto_generated|result_node[3]~5_combout\ = (\inst65|7~1_combout\ & ((\inst118|LPM_MUX_component|auto_generated|result_node[3]~4_combout\ & ((\inst123|LPM_ADD_SUB_component|auto_generated|result[3]~6_combout\))) # 
-- (!\inst118|LPM_MUX_component|auto_generated|result_node[3]~4_combout\ & (\inst119|LPM_MUX_component|auto_generated|result_node[3]~1_combout\)))) # (!\inst65|7~1_combout\ & (((\inst118|LPM_MUX_component|auto_generated|result_node[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst119|LPM_MUX_component|auto_generated|result_node[3]~1_combout\,
	datab => \inst65|7~1_combout\,
	datac => \inst123|LPM_ADD_SUB_component|auto_generated|result[3]~6_combout\,
	datad => \inst118|LPM_MUX_component|auto_generated|result_node[3]~4_combout\,
	combout => \inst118|LPM_MUX_component|auto_generated|result_node[3]~5_combout\);

-- Location: FF_X22_Y8_N27
\inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst16|inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	asdata => \inst118|LPM_MUX_component|auto_generated|result_node[3]~5_combout\,
	sload => \inst42~0_combout\,
	ena => \inst16|inst4|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3));

-- Location: FF_X30_Y8_N25
\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst16|inst10|altsyncram_component|auto_generated|q_a\(9),
	sload => VCC,
	ena => \inst2|LPM_DECODE_component|auto_generated|w_anode30w[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9));

-- Location: LCCOMB_X29_Y7_N24
\inst7|LPM_DECODE_component|auto_generated|w_anode142w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|LPM_DECODE_component|auto_generated|w_anode142w[3]~0_combout\ = (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8) & 
-- (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	datab => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8),
	datac => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datad => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9),
	combout => \inst7|LPM_DECODE_component|auto_generated|w_anode142w[3]~0_combout\);

-- Location: LCCOMB_X24_Y8_N0
\inst65|8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst65|8~0_combout\ = (\inst2|LPM_DECODE_component|auto_generated|w_anode41w[3]~0_combout\ & ((\inst7|LPM_DECODE_component|auto_generated|w_anode162w[3]~0_combout\ & (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4))) # 
-- (!\inst7|LPM_DECODE_component|auto_generated|w_anode162w[3]~0_combout\ & ((\inst7|LPM_DECODE_component|auto_generated|w_anode142w[3]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	datab => \inst7|LPM_DECODE_component|auto_generated|w_anode142w[3]~0_combout\,
	datac => \inst7|LPM_DECODE_component|auto_generated|w_anode162w[3]~0_combout\,
	datad => \inst2|LPM_DECODE_component|auto_generated|w_anode41w[3]~0_combout\,
	combout => \inst65|8~0_combout\);

-- Location: LCCOMB_X23_Y8_N12
\inst16|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]~feeder_combout\ = \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result2w~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result2w~5_combout\,
	combout => \inst16|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]~feeder_combout\);

-- Location: FF_X23_Y8_N13
\inst16|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst16|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]~feeder_combout\,
	ena => \inst61|inst23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X27_Y8_N20
\inst119|LPM_MUX_component|auto_generated|result_node[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst119|LPM_MUX_component|auto_generated|result_node[2]~2_combout\ = (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & (((\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4))))) # 
-- (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & ((\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & ((\inst16|inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2)))) # 
-- (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & (\inst16|inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datab => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	datac => \inst16|inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	combout => \inst119|LPM_MUX_component|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X23_Y8_N18
\inst119|LPM_MUX_component|auto_generated|result_node[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst119|LPM_MUX_component|auto_generated|result_node[2]~3_combout\ = (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & ((\inst119|LPM_MUX_component|auto_generated|result_node[2]~2_combout\ & 
-- (\inst16|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2))) # (!\inst119|LPM_MUX_component|auto_generated|result_node[2]~2_combout\ & ((\inst16|inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2)))))) # 
-- (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & (((\inst119|LPM_MUX_component|auto_generated|result_node[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	datab => \inst16|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datac => \inst16|inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => \inst119|LPM_MUX_component|auto_generated|result_node[2]~2_combout\,
	combout => \inst119|LPM_MUX_component|auto_generated|result_node[2]~3_combout\);

-- Location: LCCOMB_X22_Y8_N18
\inst118|LPM_MUX_component|auto_generated|result_node[2]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst118|LPM_MUX_component|auto_generated|result_node[2]~6_combout\ = (\inst65|8~0_combout\ & (((\inst65|7~1_combout\)))) # (!\inst65|8~0_combout\ & ((\inst65|7~1_combout\ & ((\inst119|LPM_MUX_component|auto_generated|result_node[2]~3_combout\))) # 
-- (!\inst65|7~1_combout\ & (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datab => \inst119|LPM_MUX_component|auto_generated|result_node[2]~3_combout\,
	datac => \inst65|8~0_combout\,
	datad => \inst65|7~1_combout\,
	combout => \inst118|LPM_MUX_component|auto_generated|result_node[2]~6_combout\);

-- Location: LCCOMB_X22_Y8_N8
\inst118|LPM_MUX_component|auto_generated|result_node[2]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst118|LPM_MUX_component|auto_generated|result_node[2]~7_combout\ = (\inst65|8~0_combout\ & ((\inst118|LPM_MUX_component|auto_generated|result_node[2]~6_combout\ & (\inst123|LPM_ADD_SUB_component|auto_generated|result[2]~4_combout\)) # 
-- (!\inst118|LPM_MUX_component|auto_generated|result_node[2]~6_combout\ & ((\inst120|LPM_ADD_SUB_component|auto_generated|result[2]~4_combout\))))) # (!\inst65|8~0_combout\ & (((\inst118|LPM_MUX_component|auto_generated|result_node[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst123|LPM_ADD_SUB_component|auto_generated|result[2]~4_combout\,
	datab => \inst65|8~0_combout\,
	datac => \inst120|LPM_ADD_SUB_component|auto_generated|result[2]~4_combout\,
	datad => \inst118|LPM_MUX_component|auto_generated|result_node[2]~6_combout\,
	combout => \inst118|LPM_MUX_component|auto_generated|result_node[2]~7_combout\);

-- Location: FF_X22_Y8_N25
\inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst16|inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	asdata => \inst118|LPM_MUX_component|auto_generated|result_node[2]~7_combout\,
	sload => \inst42~0_combout\,
	ena => \inst16|inst4|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2));

-- Location: FF_X30_Y8_N3
\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst16|inst10|altsyncram_component|auto_generated|q_a\(5),
	sload => VCC,
	ena => \inst2|LPM_DECODE_component|auto_generated|w_anode30w[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5));

-- Location: LCCOMB_X27_Y8_N2
\inst119|LPM_MUX_component|auto_generated|result_node[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst119|LPM_MUX_component|auto_generated|result_node[1]~4_combout\ = (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & (((\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4))))) # 
-- (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & ((\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & ((\inst16|inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))) # 
-- (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & (\inst16|inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datab => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	datac => \inst16|inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	combout => \inst119|LPM_MUX_component|auto_generated|result_node[1]~4_combout\);

-- Location: LCCOMB_X24_Y8_N18
\inst119|LPM_MUX_component|auto_generated|result_node[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst119|LPM_MUX_component|auto_generated|result_node[1]~5_combout\ = (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & ((\inst119|LPM_MUX_component|auto_generated|result_node[1]~4_combout\ & 
-- (\inst16|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1))) # (!\inst119|LPM_MUX_component|auto_generated|result_node[1]~4_combout\ & ((\inst16|inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))))) # 
-- (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & (((\inst119|LPM_MUX_component|auto_generated|result_node[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datab => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	datac => \inst16|inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => \inst119|LPM_MUX_component|auto_generated|result_node[1]~4_combout\,
	combout => \inst119|LPM_MUX_component|auto_generated|result_node[1]~5_combout\);

-- Location: LCCOMB_X23_Y8_N16
\inst118|LPM_MUX_component|auto_generated|result_node[1]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst118|LPM_MUX_component|auto_generated|result_node[1]~8_combout\ = (\inst65|8~0_combout\ & ((\inst120|LPM_ADD_SUB_component|auto_generated|result[1]~2_combout\) # ((\inst65|7~1_combout\)))) # (!\inst65|8~0_combout\ & 
-- (((\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & !\inst65|7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst120|LPM_ADD_SUB_component|auto_generated|result[1]~2_combout\,
	datab => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datac => \inst65|8~0_combout\,
	datad => \inst65|7~1_combout\,
	combout => \inst118|LPM_MUX_component|auto_generated|result_node[1]~8_combout\);

-- Location: LCCOMB_X23_Y8_N30
\inst118|LPM_MUX_component|auto_generated|result_node[1]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst118|LPM_MUX_component|auto_generated|result_node[1]~9_combout\ = (\inst65|7~1_combout\ & ((\inst118|LPM_MUX_component|auto_generated|result_node[1]~8_combout\ & (\inst123|LPM_ADD_SUB_component|auto_generated|result[1]~2_combout\)) # 
-- (!\inst118|LPM_MUX_component|auto_generated|result_node[1]~8_combout\ & ((\inst119|LPM_MUX_component|auto_generated|result_node[1]~5_combout\))))) # (!\inst65|7~1_combout\ & (((\inst118|LPM_MUX_component|auto_generated|result_node[1]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst123|LPM_ADD_SUB_component|auto_generated|result[1]~2_combout\,
	datab => \inst119|LPM_MUX_component|auto_generated|result_node[1]~5_combout\,
	datac => \inst65|7~1_combout\,
	datad => \inst118|LPM_MUX_component|auto_generated|result_node[1]~8_combout\,
	combout => \inst118|LPM_MUX_component|auto_generated|result_node[1]~9_combout\);

-- Location: FF_X22_Y8_N23
\inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst16|inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	asdata => \inst118|LPM_MUX_component|auto_generated|result_node[1]~9_combout\,
	sload => \inst42~0_combout\,
	ena => \inst16|inst4|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1));

-- Location: FF_X27_Y8_N9
\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst16|inst10|altsyncram_component|auto_generated|q_a\(0),
	sload => VCC,
	ena => \inst2|LPM_DECODE_component|auto_generated|w_anode30w[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X27_Y8_N28
\inst119|LPM_MUX_component|auto_generated|result_node[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst119|LPM_MUX_component|auto_generated|result_node[0]~6_combout\ = (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & (((\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4))))) # 
-- (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & ((\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & ((\inst16|inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)))) # 
-- (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & (\inst16|inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	datab => \inst16|inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \inst16|inst2|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	combout => \inst119|LPM_MUX_component|auto_generated|result_node[0]~6_combout\);

-- Location: LCCOMB_X23_Y8_N4
\inst119|LPM_MUX_component|auto_generated|result_node[0]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst119|LPM_MUX_component|auto_generated|result_node[0]~7_combout\ = (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & ((\inst119|LPM_MUX_component|auto_generated|result_node[0]~6_combout\ & 
-- ((\inst16|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)))) # (!\inst119|LPM_MUX_component|auto_generated|result_node[0]~6_combout\ & (\inst16|inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))))) # 
-- (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & (((\inst119|LPM_MUX_component|auto_generated|result_node[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datab => \inst16|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	datad => \inst119|LPM_MUX_component|auto_generated|result_node[0]~6_combout\,
	combout => \inst119|LPM_MUX_component|auto_generated|result_node[0]~7_combout\);

-- Location: LCCOMB_X23_Y8_N2
\inst118|LPM_MUX_component|auto_generated|result_node[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst118|LPM_MUX_component|auto_generated|result_node[0]~10_combout\ = (\inst65|8~0_combout\ & (((\inst65|7~1_combout\)))) # (!\inst65|8~0_combout\ & ((\inst65|7~1_combout\ & ((\inst119|LPM_MUX_component|auto_generated|result_node[0]~7_combout\))) # 
-- (!\inst65|7~1_combout\ & (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datab => \inst119|LPM_MUX_component|auto_generated|result_node[0]~7_combout\,
	datac => \inst65|8~0_combout\,
	datad => \inst65|7~1_combout\,
	combout => \inst118|LPM_MUX_component|auto_generated|result_node[0]~10_combout\);

-- Location: LCCOMB_X22_Y8_N30
\inst118|LPM_MUX_component|auto_generated|result_node[0]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst118|LPM_MUX_component|auto_generated|result_node[0]~11_combout\ = (\inst65|8~0_combout\ & ((\inst118|LPM_MUX_component|auto_generated|result_node[0]~10_combout\ & (\inst123|LPM_ADD_SUB_component|auto_generated|result[0]~0_combout\)) # 
-- (!\inst118|LPM_MUX_component|auto_generated|result_node[0]~10_combout\ & ((\inst120|LPM_ADD_SUB_component|auto_generated|result[0]~0_combout\))))) # (!\inst65|8~0_combout\ & (((\inst118|LPM_MUX_component|auto_generated|result_node[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst123|LPM_ADD_SUB_component|auto_generated|result[0]~0_combout\,
	datab => \inst120|LPM_ADD_SUB_component|auto_generated|result[0]~0_combout\,
	datac => \inst65|8~0_combout\,
	datad => \inst118|LPM_MUX_component|auto_generated|result_node[0]~10_combout\,
	combout => \inst118|LPM_MUX_component|auto_generated|result_node[0]~11_combout\);

-- Location: FF_X22_Y8_N21
\inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst16|inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	asdata => \inst118|LPM_MUX_component|auto_generated|result_node[0]~11_combout\,
	sload => \inst42~0_combout\,
	ena => \inst16|inst4|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: FF_X30_Y8_N31
\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst16|inst10|altsyncram_component|auto_generated|q_a\(6),
	sload => VCC,
	ena => \inst2|LPM_DECODE_component|auto_generated|w_anode30w[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6));

-- Location: LCCOMB_X29_Y7_N8
\inst76~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst76~0_combout\ = (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8) & (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & 
-- !\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	datab => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8),
	datac => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datad => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9),
	combout => \inst76~0_combout\);

-- Location: LCCOMB_X29_Y6_N6
inst84 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst84~combout\ = (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\inst76~0_combout\ & (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datab => \inst76~0_combout\,
	datac => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	combout => \inst84~combout\);

-- Location: LCCOMB_X31_Y8_N26
\inst|LPM_COUNTER_component|auto_generated|_~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|_~0_combout\ = (\inst14~combout\) # (!\inst84~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst84~combout\,
	datad => \inst14~combout\,
	combout => \inst|LPM_COUNTER_component|auto_generated|_~0_combout\);

-- Location: FF_X31_Y8_N9
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	asdata => \~GND~combout\,
	sload => \inst14~combout\,
	ena => \inst|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X31_Y8_N12
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ = \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ $ (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	cin => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\);

-- Location: FF_X31_Y8_N13
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	asdata => \~GND~combout\,
	sload => \inst14~combout\,
	ena => \inst|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X29_Y6_N0
\inst2|LPM_DECODE_component|auto_generated|w_anode1w[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|LPM_DECODE_component|auto_generated|w_anode1w\(3) = (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & 
-- !\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	combout => \inst2|LPM_DECODE_component|auto_generated|w_anode1w\(3));

-- Location: FF_X30_Y8_N27
\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst16|inst10|altsyncram_component|auto_generated|q_a\(8),
	sload => VCC,
	ena => \inst2|LPM_DECODE_component|auto_generated|w_anode30w[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8));

-- Location: LCCOMB_X29_Y7_N22
\inst133~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst133~0_combout\ = (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9) & ((\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & ((\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6)))) # 
-- (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	datab => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8),
	datac => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datad => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9),
	combout => \inst133~0_combout\);

-- Location: LCCOMB_X31_Y8_N6
\inst133~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst133~2_combout\ = (\inst133~0_combout\) # (!\inst133~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst133~0_combout\,
	datad => \inst133~1_combout\,
	combout => \inst133~2_combout\);

-- Location: LCCOMB_X31_Y8_N18
inst10 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10~combout\ = (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10) & (\inst7|LPM_DECODE_component|auto_generated|w_anode91w[3]~0_combout\ & \inst2|LPM_DECODE_component|auto_generated|w_anode41w[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10),
	datab => \inst7|LPM_DECODE_component|auto_generated|w_anode91w[3]~0_combout\,
	datad => \inst2|LPM_DECODE_component|auto_generated|w_anode41w[3]~0_combout\,
	combout => \inst10~combout\);

-- Location: LCCOMB_X31_Y8_N30
\inst14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14~0_combout\ = (\inst137~combout\) # ((\inst10~combout\) # ((\inst2|LPM_DECODE_component|auto_generated|w_anode52w[3]~0_combout\ & \inst7|LPM_DECODE_component|auto_generated|w_anode102w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst137~combout\,
	datab => \inst2|LPM_DECODE_component|auto_generated|w_anode52w[3]~0_combout\,
	datac => \inst10~combout\,
	datad => \inst7|LPM_DECODE_component|auto_generated|w_anode102w[3]~0_combout\,
	combout => \inst14~0_combout\);

-- Location: LCCOMB_X31_Y8_N20
inst14 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14~combout\ = (\inst14~0_combout\) # ((\inst2|LPM_DECODE_component|auto_generated|w_anode41w[3]~0_combout\ & ((\inst133~2_combout\) # (\inst109~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst133~2_combout\,
	datab => \inst2|LPM_DECODE_component|auto_generated|w_anode41w[3]~0_combout\,
	datac => \inst14~0_combout\,
	datad => \inst109~1_combout\,
	combout => \inst14~combout\);

-- Location: LCCOMB_X29_Y7_N16
\inst7|LPM_DECODE_component|auto_generated|w_anode31w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|LPM_DECODE_component|auto_generated|w_anode31w[3]~0_combout\ = (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9) & 
-- (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & !\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	datab => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9),
	datac => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datad => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8),
	combout => \inst7|LPM_DECODE_component|auto_generated|w_anode31w[3]~0_combout\);

-- Location: LCCOMB_X29_Y7_N26
\inst7|LPM_DECODE_component|auto_generated|w_anode41w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|LPM_DECODE_component|auto_generated|w_anode41w[3]~0_combout\ = (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9) & 
-- (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & !\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	datab => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9),
	datac => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datad => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8),
	combout => \inst7|LPM_DECODE_component|auto_generated|w_anode41w[3]~0_combout\);

-- Location: LCCOMB_X31_Y8_N4
\inst2|LPM_DECODE_component|auto_generated|w_anode74w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|LPM_DECODE_component|auto_generated|w_anode74w[3]~0_combout\ = (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & 
-- \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datac => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	combout => \inst2|LPM_DECODE_component|auto_generated|w_anode74w[3]~0_combout\);

-- Location: LCCOMB_X30_Y8_N16
inst137 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst137~combout\ = (\inst7|LPM_DECODE_component|auto_generated|w_anode91w[3]~0_combout\ & (\inst2|LPM_DECODE_component|auto_generated|w_anode74w[3]~0_combout\ & \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LPM_DECODE_component|auto_generated|w_anode91w[3]~0_combout\,
	datab => \inst2|LPM_DECODE_component|auto_generated|w_anode74w[3]~0_combout\,
	datad => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10),
	combout => \inst137~combout\);

-- Location: LCCOMB_X30_Y8_N20
\inst58~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst58~2_combout\ = (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & !\inst61|inst10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datab => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datac => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => \inst61|inst10~0_combout\,
	combout => \inst58~2_combout\);

-- Location: LCCOMB_X29_Y6_N18
\inst2|LPM_DECODE_component|auto_generated|w_anode19w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|LPM_DECODE_component|auto_generated|w_anode19w[3]~0_combout\ = (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & 
-- !\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	combout => \inst2|LPM_DECODE_component|auto_generated|w_anode19w[3]~0_combout\);

-- Location: LCCOMB_X29_Y6_N14
\inst2|LPM_DECODE_component|auto_generated|w_anode63w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|LPM_DECODE_component|auto_generated|w_anode63w[3]~0_combout\ = (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & 
-- !\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	combout => \inst2|LPM_DECODE_component|auto_generated|w_anode63w[3]~0_combout\);

-- Location: LCCOMB_X29_Y6_N8
\inst2|LPM_DECODE_component|auto_generated|w_anode85w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|LPM_DECODE_component|auto_generated|w_anode85w[3]~0_combout\ = (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & 
-- \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	combout => \inst2|LPM_DECODE_component|auto_generated|w_anode85w[3]~0_combout\);

-- Location: LCCOMB_X29_Y7_N18
\inst7|LPM_DECODE_component|auto_generated|w_anode81w[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|LPM_DECODE_component|auto_generated|w_anode81w[3]~0_combout\ = (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9) & 
-- (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	datab => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9),
	datac => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datad => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8),
	combout => \inst7|LPM_DECODE_component|auto_generated|w_anode81w[3]~0_combout\);

-- Location: LCCOMB_X27_Y7_N0
\inst26|inst61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst26|inst61~combout\ = (\inst2|LPM_DECODE_component|auto_generated|w_anode41w[3]~0_combout\ & (!\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10) & \inst7|LPM_DECODE_component|auto_generated|w_anode122w[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|LPM_DECODE_component|auto_generated|w_anode41w[3]~0_combout\,
	datac => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10),
	datad => \inst7|LPM_DECODE_component|auto_generated|w_anode122w[3]~0_combout\,
	combout => \inst26|inst61~combout\);

-- Location: LCCOMB_X29_Y7_N28
inst50 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst50~combout\ = (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (\inst7|LPM_DECODE_component|auto_generated|w_anode102w[3]~0_combout\ & (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & 
-- \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datab => \inst7|LPM_DECODE_component|auto_generated|w_anode102w[3]~0_combout\,
	datac => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	combout => \inst50~combout\);

-- Location: LCCOMB_X27_Y7_N22
inst52 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst52~combout\ = (\inst2|LPM_DECODE_component|auto_generated|w_anode41w[3]~0_combout\ & (\inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10) & \inst7|LPM_DECODE_component|auto_generated|w_anode122w[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|LPM_DECODE_component|auto_generated|w_anode41w[3]~0_combout\,
	datac => \inst16|inst6|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10),
	datad => \inst7|LPM_DECODE_component|auto_generated|w_anode122w[3]~0_combout\,
	combout => \inst52~combout\);

-- Location: LCCOMB_X27_Y7_N12
\inst16|inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~feeder_combout\ = \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result3w~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result3w~5_combout\,
	combout => \inst16|inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~feeder_combout\);

-- Location: FF_X27_Y7_N13
\inst16|inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst16|inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~feeder_combout\,
	ena => \inst26|inst61~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3));

-- Location: FF_X24_Y8_N23
\inst16|inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result2w~5_combout\,
	ena => \inst26|inst61~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2));

-- Location: FF_X24_Y8_N9
\inst16|inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result1w~5_combout\,
	sload => VCC,
	ena => \inst26|inst61~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X27_Y7_N26
\inst16|inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~feeder_combout\ = \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result0w~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result0w~5_combout\,
	combout => \inst16|inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~feeder_combout\);

-- Location: FF_X27_Y7_N27
\inst16|inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst16|inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~feeder_combout\,
	ena => \inst26|inst61~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: FF_X26_Y8_N9
\inst16|inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst16|inst12|LPM_MUX_component|auto_generated|muxlut_result1w~5_combout\,
	ena => \inst61|inst26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1));

ww_CLEAROUT <= \CLEAROUT~output_o\;

ww_D13 <= \D13~output_o\;

ww_D1 <= \D1~output_o\;

ww_D2 <= \D2~output_o\;

ww_D3 <= \D3~output_o\;

ww_D4 <= \D4~output_o\;

ww_D5 <= \D5~output_o\;

ww_D6 <= \D6~output_o\;

ww_D8 <= \D8~output_o\;

ww_D10 <= \D10~output_o\;

ww_D12 <= \D12~output_o\;

ww_D0 <= \D0~output_o\;

ww_D11 <= \D11~output_o\;

ww_D15 <= \D15~output_o\;

ww_D14 <= \D14~output_o\;

ww_D9 <= \D9~output_o\;

ww_IRLOAD <= \IRLOAD~output_o\;

ww_SelDm <= \SelDm~output_o\;

ww_SelAlu <= \SelAlu~output_o\;

ww_Selpc <= \Selpc~output_o\;

ww_Selr2 <= \Selr2~output_o\;

ww_Selr1 <= \Selr1~output_o\;

ww_Selr0 <= \Selr0~output_o\;

ww_Selr3 <= \Selr3~output_o\;

ww_PCCONTENT(4) <= \PCCONTENT[4]~output_o\;

ww_PCCONTENT(3) <= \PCCONTENT[3]~output_o\;

ww_PCCONTENT(2) <= \PCCONTENT[2]~output_o\;

ww_PCCONTENT(1) <= \PCCONTENT[1]~output_o\;

ww_PCCONTENT(0) <= \PCCONTENT[0]~output_o\;

ww_HaltOut <= \HaltOut~output_o\;

ww_TIME1 <= \TIME1~output_o\;

ww_TIME0 <= \TIME0~output_o\;

ww_TIME2 <= \TIME2~output_o\;

ww_TIME3 <= \TIME3~output_o\;

ww_TIME4 <= \TIME4~output_o\;

ww_TIME5 <= \TIME5~output_o\;

ww_TIME6 <= \TIME6~output_o\;

ww_TIME7 <= \TIME7~output_o\;

ww_D7 <= \D7~output_o\;

ww_ROMREADEN <= \ROMREADEN~output_o\;

ww_R0acik <= \R0acik~output_o\;

ww_R1acik <= \R1acik~output_o\;

ww_R2acik <= \R2acik~output_o\;

ww_R3acik <= \R3acik~output_o\;

ww_OutAcik <= \OutAcik~output_o\;

ww_Inpacik <= \Inpacik~output_o\;

ww_PCacik <= \PCacik~output_o\;

ww_ARacik <= \ARacik~output_o\;

ww_WRTacik <= \WRTacik~output_o\;

ww_SelINP <= \SelINP~output_o\;

ww_Sel_Ir <= \Sel_Ir~output_o\;

ww_ALUOUPUT(3) <= \ALUOUPUT[3]~output_o\;

ww_ALUOUPUT(2) <= \ALUOUPUT[2]~output_o\;

ww_ALUOUPUT(1) <= \ALUOUPUT[1]~output_o\;

ww_ALUOUPUT(0) <= \ALUOUPUT[0]~output_o\;

ww_BUS_SEL(3) <= \BUS_SEL[3]~output_o\;

ww_BUS_SEL(2) <= \BUS_SEL[2]~output_o\;

ww_BUS_SEL(1) <= \BUS_SEL[1]~output_o\;

ww_BUS_SEL(0) <= \BUS_SEL[0]~output_o\;

ww_BUSCONTENT(3) <= \BUSCONTENT[3]~output_o\;

ww_BUSCONTENT(2) <= \BUSCONTENT[2]~output_o\;

ww_BUSCONTENT(1) <= \BUSCONTENT[1]~output_o\;

ww_BUSCONTENT(0) <= \BUSCONTENT[0]~output_o\;

ww_IRCONTENT(10) <= \IRCONTENT[10]~output_o\;

ww_IRCONTENT(9) <= \IRCONTENT[9]~output_o\;

ww_IRCONTENT(8) <= \IRCONTENT[8]~output_o\;

ww_IRCONTENT(7) <= \IRCONTENT[7]~output_o\;

ww_IRCONTENT(6) <= \IRCONTENT[6]~output_o\;

ww_IRCONTENT(5) <= \IRCONTENT[5]~output_o\;

ww_IRCONTENT(4) <= \IRCONTENT[4]~output_o\;

ww_IRCONTENT(3) <= \IRCONTENT[3]~output_o\;

ww_IRCONTENT(2) <= \IRCONTENT[2]~output_o\;

ww_IRCONTENT(1) <= \IRCONTENT[1]~output_o\;

ww_IRCONTENT(0) <= \IRCONTENT[0]~output_o\;

ww_OutputData(3) <= \OutputData[3]~output_o\;

ww_OutputData(2) <= \OutputData[2]~output_o\;

ww_OutputData(1) <= \OutputData[1]~output_o\;

ww_OutputData(0) <= \OutputData[0]~output_o\;

ww_R0CONTENT(3) <= \R0CONTENT[3]~output_o\;

ww_R0CONTENT(2) <= \R0CONTENT[2]~output_o\;

ww_R0CONTENT(1) <= \R0CONTENT[1]~output_o\;

ww_R0CONTENT(0) <= \R0CONTENT[0]~output_o\;

ww_R1CONTENT(3) <= \R1CONTENT[3]~output_o\;

ww_R1CONTENT(2) <= \R1CONTENT[2]~output_o\;

ww_R1CONTENT(1) <= \R1CONTENT[1]~output_o\;

ww_R1CONTENT(0) <= \R1CONTENT[0]~output_o\;

ww_R2CONTENT(3) <= \R2CONTENT[3]~output_o\;

ww_R2CONTENT(2) <= \R2CONTENT[2]~output_o\;

ww_R2CONTENT(1) <= \R2CONTENT[1]~output_o\;

ww_R2CONTENT(0) <= \R2CONTENT[0]~output_o\;

ww_R3CONTENT(3) <= \R3CONTENT[3]~output_o\;

ww_R3CONTENT(2) <= \R3CONTENT[2]~output_o\;

ww_R3CONTENT(1) <= \R3CONTENT[1]~output_o\;

ww_R3CONTENT(0) <= \R3CONTENT[0]~output_o\;

ww_RAMDAT(3) <= \RAMDAT[3]~output_o\;

ww_RAMDAT(2) <= \RAMDAT[2]~output_o\;

ww_RAMDAT(1) <= \RAMDAT[1]~output_o\;

ww_RAMDAT(0) <= \RAMDAT[0]~output_o\;

ww_ROMDAT(10) <= \ROMDAT[10]~output_o\;

ww_ROMDAT(9) <= \ROMDAT[9]~output_o\;

ww_ROMDAT(8) <= \ROMDAT[8]~output_o\;

ww_ROMDAT(7) <= \ROMDAT[7]~output_o\;

ww_ROMDAT(6) <= \ROMDAT[6]~output_o\;

ww_ROMDAT(5) <= \ROMDAT[5]~output_o\;

ww_ROMDAT(4) <= \ROMDAT[4]~output_o\;

ww_ROMDAT(3) <= \ROMDAT[3]~output_o\;

ww_ROMDAT(2) <= \ROMDAT[2]~output_o\;

ww_ROMDAT(1) <= \ROMDAT[1]~output_o\;

ww_ROMDAT(0) <= \ROMDAT[0]~output_o\;

ww_SCcounter(2) <= \SCcounter[2]~output_o\;

ww_SCcounter(1) <= \SCcounter[1]~output_o\;

ww_SCcounter(0) <= \SCcounter[0]~output_o\;
END structure;


