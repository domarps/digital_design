--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: Arbiter_synthesis.vhd
-- /___/   /\     Timestamp: Fri Jun 20 17:21:23 2014
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm Arbiter -w -dir netgen/synthesis -ofmt vhdl -sim Arbiter.ngc Arbiter_synthesis.vhd 
-- Device	: xc6slx45-3-csg324
-- Input file	: Arbiter.ngc
-- Output file	: /home/rishav/logic/code_repository/WeightedRoundRobinArbiter/netgen/synthesis/Arbiter_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: Arbiter
-- Xilinx	: /opt/Xilinx/14.7/ISE_DS/ISE/
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity Arbiter is
  port (
    reset : in STD_LOGIC := 'X'; 
    clk : in STD_LOGIC := 'X'; 
    reqValid : out STD_LOGIC; 
    req : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    ack : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    masterPort : out STD_LOGIC_VECTOR ( 1 downto 0 ) 
  );
end Arbiter;

architecture Structure of Arbiter is
  signal req_3_IBUF_0 : STD_LOGIC; 
  signal req_2_IBUF_1 : STD_LOGIC; 
  signal req_0_IBUF_2 : STD_LOGIC; 
  signal reset_IBUF_3 : STD_LOGIC; 
  signal clk_BUFGP_4 : STD_LOGIC; 
  signal reqValidReg_7 : STD_LOGIC; 
  signal req_1_IBUF_26 : STD_LOGIC; 
  signal reqValidNext : STD_LOGIC; 
  signal n0019 : STD_LOGIC; 
  signal n0026 : STD_LOGIC; 
  signal Q_n0153_inv : STD_LOGIC; 
  signal Q_n0164_inv : STD_LOGIC; 
  signal Mcount_counter_reg_0 : STD_LOGIC; 
  signal Mcount_counter_reg_01 : STD_LOGIC; 
  signal Mcount_counter_reg_02 : STD_LOGIC; 
  signal Mcount_counter_reg_03 : STD_LOGIC; 
  signal counter_reg_1_3_GND_5_o_not_equal_11_o_inv : STD_LOGIC; 
  signal Q_n0168_inv : STD_LOGIC; 
  signal Mcount_counter_reg_1 : STD_LOGIC; 
  signal Mcount_counter_reg_11 : STD_LOGIC; 
  signal Mcount_counter_reg_12 : STD_LOGIC; 
  signal Mcount_counter_reg_13 : STD_LOGIC; 
  signal Mmux_counter_next_2_21_54 : STD_LOGIC; 
  signal Mmux_counter_next_3_21_55 : STD_LOGIC; 
  signal Q_n01391_56 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal ackReg_0_rstpot1_71 : STD_LOGIC; 
  signal ackReg_1_rstpot_72 : STD_LOGIC; 
  signal ackReg_2_rstpot_73 : STD_LOGIC; 
  signal ackReg_3_rstpot_74 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal N13 : STD_LOGIC; 
  signal masterPort_reg : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal counter_reg_0 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal counter_reg_2 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal counter_reg_3 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal counter_reg_1 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal ackReg : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal masterPort_next : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal counter_next : STD_LOGIC_VECTOR2 ( 3 downto 2 , 3 downto 0 ); 
begin
  masterPort_reg_0 : FDC
    port map (
      C => clk_BUFGP_4,
      CLR => reset_IBUF_3,
      D => masterPort_next(0),
      Q => masterPort_reg(0)
    );
  masterPort_reg_1 : FDC
    port map (
      C => clk_BUFGP_4,
      CLR => reset_IBUF_3,
      D => masterPort_next(1),
      Q => masterPort_reg(1)
    );
  reqValidReg : FDC
    port map (
      C => clk_BUFGP_4,
      CLR => reset_IBUF_3,
      D => reqValidNext,
      Q => reqValidReg_7
    );
  counter_reg_2_0 : FDPE
    port map (
      C => clk_BUFGP_4,
      CE => Q_n0153_inv,
      D => counter_next(2, 0),
      PRE => reset_IBUF_3,
      Q => counter_reg_2(0)
    );
  counter_reg_2_1 : FDPE
    port map (
      C => clk_BUFGP_4,
      CE => Q_n0153_inv,
      D => counter_next(2, 1),
      PRE => reset_IBUF_3,
      Q => counter_reg_2(1)
    );
  counter_reg_2_2 : FDCE
    port map (
      C => clk_BUFGP_4,
      CE => Q_n0153_inv,
      CLR => reset_IBUF_3,
      D => counter_next(2, 2),
      Q => counter_reg_2(2)
    );
  counter_reg_2_3 : FDCE
    port map (
      C => clk_BUFGP_4,
      CE => Q_n0153_inv,
      CLR => reset_IBUF_3,
      D => counter_next(2, 3),
      Q => counter_reg_2(3)
    );
  counter_reg_3_0 : FDPE
    port map (
      C => clk_BUFGP_4,
      CE => Q_n0164_inv,
      D => counter_next(3, 0),
      PRE => reset_IBUF_3,
      Q => counter_reg_3(0)
    );
  counter_reg_3_1 : FDCE
    port map (
      C => clk_BUFGP_4,
      CE => Q_n0164_inv,
      CLR => reset_IBUF_3,
      D => counter_next(3, 1),
      Q => counter_reg_3(1)
    );
  counter_reg_3_2 : FDCE
    port map (
      C => clk_BUFGP_4,
      CE => Q_n0164_inv,
      CLR => reset_IBUF_3,
      D => counter_next(3, 2),
      Q => counter_reg_3(2)
    );
  counter_reg_3_3 : FDCE
    port map (
      C => clk_BUFGP_4,
      CE => Q_n0164_inv,
      CLR => reset_IBUF_3,
      D => counter_next(3, 3),
      Q => counter_reg_3(3)
    );
  counter_reg_1_0 : FDCE
    port map (
      C => clk_BUFGP_4,
      CE => Q_n0168_inv,
      CLR => reset_IBUF_3,
      D => Mcount_counter_reg_1,
      Q => counter_reg_1(0)
    );
  counter_reg_0_0 : FDPE
    port map (
      C => clk_BUFGP_4,
      CE => req_0_IBUF_2,
      D => Mcount_counter_reg_0,
      PRE => reset_IBUF_3,
      Q => counter_reg_0(0)
    );
  counter_reg_0_1 : FDPE
    port map (
      C => clk_BUFGP_4,
      CE => req_0_IBUF_2,
      D => Mcount_counter_reg_01,
      PRE => reset_IBUF_3,
      Q => counter_reg_0(1)
    );
  counter_reg_0_2 : FDPE
    port map (
      C => clk_BUFGP_4,
      CE => req_0_IBUF_2,
      D => Mcount_counter_reg_02,
      PRE => reset_IBUF_3,
      Q => counter_reg_0(2)
    );
  counter_reg_0_3 : FDPE
    port map (
      C => clk_BUFGP_4,
      CE => req_0_IBUF_2,
      D => Mcount_counter_reg_03,
      PRE => reset_IBUF_3,
      Q => counter_reg_0(3)
    );
  counter_reg_1_3 : FDPE
    port map (
      C => clk_BUFGP_4,
      CE => Q_n0168_inv,
      D => Mcount_counter_reg_13,
      PRE => reset_IBUF_3,
      Q => counter_reg_1(3)
    );
  counter_reg_1_1 : FDPE
    port map (
      C => clk_BUFGP_4,
      CE => Q_n0168_inv,
      D => Mcount_counter_reg_11,
      PRE => reset_IBUF_3,
      Q => counter_reg_1(1)
    );
  counter_reg_1_2 : FDPE
    port map (
      C => clk_BUFGP_4,
      CE => Q_n0168_inv,
      D => Mcount_counter_reg_12,
      PRE => reset_IBUF_3,
      Q => counter_reg_1(2)
    );
  n0011_3_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => counter_reg_1(3),
      I1 => counter_reg_1(2),
      I2 => counter_reg_1(1),
      I3 => counter_reg_1(0),
      O => counter_reg_1_3_GND_5_o_not_equal_11_o_inv
    );
  Q_n0168_inv1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => req_0_IBUF_2,
      I1 => req_1_IBUF_26,
      O => Q_n0168_inv
    );
  Mmux_counter_next_2_211 : LUT3
    generic map(
      INIT => X"EF"
    )
    port map (
      I0 => req_1_IBUF_26,
      I1 => req_0_IBUF_2,
      I2 => req_2_IBUF_1,
      O => Mmux_counter_next_2_21_54
    );
  Mmux_counter_next_3_211 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => req_2_IBUF_1,
      I1 => req_0_IBUF_2,
      I2 => req_1_IBUF_26,
      O => Mmux_counter_next_3_21_55
    );
  Mmux_counter_next_3_31 : LUT6
    generic map(
      INIT => X"EEEBEEEA44414440"
    )
    port map (
      I0 => Mmux_counter_next_3_21_55,
      I1 => counter_reg_3(2),
      I2 => counter_reg_3(1),
      I3 => counter_reg_3(0),
      I4 => counter_reg_3(3),
      I5 => counter_reg_0(2),
      O => counter_next(3, 2)
    );
  Mmux_counter_next_2_31 : LUT6
    generic map(
      INIT => X"EEEBEEEA44414440"
    )
    port map (
      I0 => Mmux_counter_next_2_21_54,
      I1 => counter_reg_2(2),
      I2 => counter_reg_2(1),
      I3 => counter_reg_2(0),
      I4 => counter_reg_2(3),
      I5 => counter_reg_0(2),
      O => counter_next(2, 2)
    );
  Mmux_counter_next_3_41 : LUT6
    generic map(
      INIT => X"EEEEEEEA44444440"
    )
    port map (
      I0 => Mmux_counter_next_3_21_55,
      I1 => counter_reg_3(3),
      I2 => counter_reg_3(1),
      I3 => counter_reg_3(2),
      I4 => counter_reg_3(0),
      I5 => counter_reg_0(3),
      O => counter_next(3, 3)
    );
  n0026_3_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => counter_reg_3(3),
      I1 => counter_reg_3(1),
      I2 => counter_reg_3(2),
      I3 => counter_reg_3(0),
      O => n0026
    );
  Mmux_masterPort_next21 : LUT5
    generic map(
      INIT => X"000F222F"
    )
    port map (
      I0 => req_3_IBUF_0,
      I1 => Mmux_counter_next_3_21_55,
      I2 => Mmux_counter_next_2_21_54,
      I3 => n0019,
      I4 => n0026,
      O => masterPort_next(1)
    );
  Mmux_counter_next_2_41 : LUT6
    generic map(
      INIT => X"EEEEEEEA44444440"
    )
    port map (
      I0 => Mmux_counter_next_2_21_54,
      I1 => counter_reg_2(3),
      I2 => counter_reg_2(1),
      I3 => counter_reg_2(2),
      I4 => counter_reg_2(0),
      I5 => counter_reg_0(3),
      O => counter_next(2, 3)
    );
  n0019_3_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => counter_reg_2(3),
      I1 => counter_reg_2(1),
      I2 => counter_reg_2(2),
      I3 => counter_reg_2(0),
      O => n0019
    );
  Q_n0164_inv1 : LUT6
    generic map(
      INIT => X"FFFEFFAEAAFEAAAE"
    )
    port map (
      I0 => req_0_IBUF_2,
      I1 => req_3_IBUF_0,
      I2 => req_2_IBUF_1,
      I3 => req_1_IBUF_26,
      I4 => n0019,
      I5 => counter_reg_1_3_GND_5_o_not_equal_11_o_inv,
      O => Q_n0164_inv
    );
  Q_n0153_inv1 : LUT6
    generic map(
      INIT => X"FFFEFFFAAAFEAAFA"
    )
    port map (
      I0 => req_0_IBUF_2,
      I1 => req_3_IBUF_0,
      I2 => req_2_IBUF_1,
      I3 => req_1_IBUF_26,
      I4 => n0026,
      I5 => counter_reg_1_3_GND_5_o_not_equal_11_o_inv,
      O => Q_n0153_inv
    );
  Mcount_counter_reg_0_xor_1_11 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => counter_reg_0(1),
      I1 => counter_reg_0(0),
      O => Mcount_counter_reg_01
    );
  Mcount_counter_reg_0_xor_2_11 : LUT3
    generic map(
      INIT => X"A9"
    )
    port map (
      I0 => counter_reg_0(2),
      I1 => counter_reg_0(0),
      I2 => counter_reg_0(1),
      O => Mcount_counter_reg_02
    );
  Mcount_counter_reg_0_xor_3_11 : LUT4
    generic map(
      INIT => X"AAA9"
    )
    port map (
      I0 => counter_reg_0(3),
      I1 => counter_reg_0(0),
      I2 => counter_reg_0(1),
      I3 => counter_reg_0(2),
      O => Mcount_counter_reg_03
    );
  Q_n01391 : LUT6
    generic map(
      INIT => X"00FD00F1000D0001"
    )
    port map (
      I0 => req_3_IBUF_0,
      I1 => req_2_IBUF_1,
      I2 => req_1_IBUF_26,
      I3 => req_0_IBUF_2,
      I4 => n0019,
      I5 => counter_reg_1_3_GND_5_o_not_equal_11_o_inv,
      O => Q_n01391_56
    );
  Mmux_reqValidNext1_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => counter_reg_0(2),
      I1 => counter_reg_0(1),
      I2 => counter_reg_0(0),
      O => N4
    );
  Mmux_reqValidNext1 : LUT6
    generic map(
      INIT => X"FFFFFFFFA8FDA8A8"
    )
    port map (
      I0 => req_0_IBUF_2,
      I1 => N4,
      I2 => counter_reg_0(3),
      I3 => counter_reg_1_3_GND_5_o_not_equal_11_o_inv,
      I4 => req_1_IBUF_26,
      I5 => masterPort_next(1),
      O => reqValidNext
    );
  req_3_IBUF : IBUF
    port map (
      I => req(3),
      O => req_3_IBUF_0
    );
  req_2_IBUF : IBUF
    port map (
      I => req(2),
      O => req_2_IBUF_1
    );
  req_1_IBUF : IBUF
    port map (
      I => req(1),
      O => req_1_IBUF_26
    );
  req_0_IBUF : IBUF
    port map (
      I => req(0),
      O => req_0_IBUF_2
    );
  reset_IBUF : IBUF
    port map (
      I => reset,
      O => reset_IBUF_3
    );
  ack_3_OBUF : OBUF
    port map (
      I => ackReg(3),
      O => ack(3)
    );
  ack_2_OBUF : OBUF
    port map (
      I => ackReg(2),
      O => ack(2)
    );
  ack_1_OBUF : OBUF
    port map (
      I => ackReg(1),
      O => ack(1)
    );
  ack_0_OBUF : OBUF
    port map (
      I => ackReg(0),
      O => ack(0)
    );
  masterPort_1_OBUF : OBUF
    port map (
      I => masterPort_reg(1),
      O => masterPort(1)
    );
  masterPort_0_OBUF : OBUF
    port map (
      I => masterPort_reg(0),
      O => masterPort(0)
    );
  reqValid_OBUF : OBUF
    port map (
      I => reqValidReg_7,
      O => reqValid
    );
  ackReg_0 : FD
    port map (
      C => clk_BUFGP_4,
      D => ackReg_0_rstpot1_71,
      Q => ackReg(0)
    );
  ackReg_1 : FD
    port map (
      C => clk_BUFGP_4,
      D => ackReg_1_rstpot_72,
      Q => ackReg(1)
    );
  ackReg_2 : FD
    port map (
      C => clk_BUFGP_4,
      D => ackReg_2_rstpot_73,
      Q => ackReg(2)
    );
  ackReg_3 : FD
    port map (
      C => clk_BUFGP_4,
      D => ackReg_3_rstpot_74,
      Q => ackReg(3)
    );
  ackReg_1_rstpot : LUT5
    generic map(
      INIT => X"ABAA0100"
    )
    port map (
      I0 => reset_IBUF_3,
      I1 => req_0_IBUF_2,
      I2 => counter_reg_1_3_GND_5_o_not_equal_11_o_inv,
      I3 => req_1_IBUF_26,
      I4 => ackReg(1),
      O => ackReg_1_rstpot_72
    );
  Reset_OR_DriverANDClockEnable1_SW1 : LUT6
    generic map(
      INIT => X"EEEEEEEEEEEEEEEF"
    )
    port map (
      I0 => req_2_IBUF_1,
      I1 => req_1_IBUF_26,
      I2 => counter_reg_3(3),
      I3 => counter_reg_3(1),
      I4 => counter_reg_3(2),
      I5 => counter_reg_3(0),
      O => N8
    );
  ackReg_3_rstpot : LUT5
    generic map(
      INIT => X"A0A0A0B1"
    )
    port map (
      I0 => reset_IBUF_3,
      I1 => req_0_IBUF_2,
      I2 => ackReg(3),
      I3 => N8,
      I4 => Q_n01391_56,
      O => ackReg_3_rstpot_74
    );
  ackReg_2_rstpot : LUT6
    generic map(
      INIT => X"8888888D88888888"
    )
    port map (
      I0 => reset_IBUF_3,
      I1 => ackReg(2),
      I2 => req_0_IBUF_2,
      I3 => req_1_IBUF_26,
      I4 => n0019,
      I5 => req_2_IBUF_1,
      O => ackReg_2_rstpot_73
    );
  ackReg_0_rstpot1_SW0 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => counter_reg_0(2),
      I1 => counter_reg_0(3),
      O => N13
    );
  ackReg_0_rstpot1 : LUT6
    generic map(
      INIT => X"EEEEEEEA44444440"
    )
    port map (
      I0 => reset_IBUF_3,
      I1 => req_0_IBUF_2,
      I2 => counter_reg_0(0),
      I3 => counter_reg_0(1),
      I4 => N13,
      I5 => ackReg(0),
      O => ackReg_0_rstpot1_71
    );
  Mcount_counter_reg_1_xor_1_11 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => counter_reg_1(0),
      I1 => counter_reg_1(1),
      O => Mcount_counter_reg_11
    );
  Mcount_counter_reg_1_xor_2_11 : LUT3
    generic map(
      INIT => X"A9"
    )
    port map (
      I0 => counter_reg_1(2),
      I1 => counter_reg_1(0),
      I2 => counter_reg_1(1),
      O => Mcount_counter_reg_12
    );
  Mcount_counter_reg_1_xor_3_11 : LUT4
    generic map(
      INIT => X"AAA9"
    )
    port map (
      I0 => counter_reg_1(3),
      I1 => counter_reg_1(0),
      I2 => counter_reg_1(1),
      I3 => counter_reg_1(2),
      O => Mcount_counter_reg_13
    );
  Mmux_counter_next_3_21 : LUT6
    generic map(
      INIT => X"EBEBEBEA41414140"
    )
    port map (
      I0 => Mmux_counter_next_3_21_55,
      I1 => counter_reg_3(1),
      I2 => counter_reg_3(0),
      I3 => counter_reg_3(2),
      I4 => counter_reg_3(3),
      I5 => counter_reg_0(1),
      O => counter_next(3, 1)
    );
  Mcount_counter_reg_1_xor_0_11 : LUT4
    generic map(
      INIT => X"5554"
    )
    port map (
      I0 => counter_reg_1(0),
      I1 => counter_reg_1(3),
      I2 => counter_reg_1(2),
      I3 => counter_reg_1(1),
      O => Mcount_counter_reg_1
    );
  Mmux_masterPort_next11 : LUT6
    generic map(
      INIT => X"0000010044444544"
    )
    port map (
      I0 => req_0_IBUF_2,
      I1 => req_1_IBUF_26,
      I2 => n0026,
      I3 => req_3_IBUF_0,
      I4 => req_2_IBUF_1,
      I5 => counter_reg_1_3_GND_5_o_not_equal_11_o_inv,
      O => masterPort_next(0)
    );
  Mmux_counter_next_3_11 : LUT5
    generic map(
      INIT => X"AAA8AAAB"
    )
    port map (
      I0 => counter_reg_0(0),
      I1 => req_2_IBUF_1,
      I2 => req_0_IBUF_2,
      I3 => req_1_IBUF_26,
      I4 => counter_reg_3(0),
      O => counter_next(3, 0)
    );
  Mmux_counter_next_2_11 : LUT5
    generic map(
      INIT => X"A8AAABAA"
    )
    port map (
      I0 => counter_reg_0(0),
      I1 => req_1_IBUF_26,
      I2 => req_0_IBUF_2,
      I3 => req_2_IBUF_1,
      I4 => counter_reg_2(0),
      O => counter_next(2, 0)
    );
  Mmux_counter_next_2_21 : LUT6
    generic map(
      INIT => X"ABAAA8AAA8AAABAA"
    )
    port map (
      I0 => counter_reg_0(1),
      I1 => req_1_IBUF_26,
      I2 => req_0_IBUF_2,
      I3 => req_2_IBUF_1,
      I4 => counter_reg_2(1),
      I5 => counter_reg_2(0),
      O => counter_next(2, 1)
    );
  clk_BUFGP : BUFGP
    port map (
      I => clk,
      O => clk_BUFGP_4
    );
  Mcount_counter_reg_0_xor_0_11_INV_0 : INV
    port map (
      I => counter_reg_0(0),
      O => Mcount_counter_reg_0
    );

end Structure;

