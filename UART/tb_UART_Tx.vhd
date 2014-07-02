--------------------------------------------------------------------------------
-- Company: Electronics Corporation of India Limited
-- Engineer: Rishav Ambasta
--
-- Create Date:   16:20:59 07/02/2014
-- Design Name:   
-- Module Name:   /home/rishav/logic/code_repository/UART/tb_UART_Tx.vhd
-- Project Name:  UART
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Inst_TxModule
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_UART_Tx IS
END tb_UART_Tx;
 
ARCHITECTURE behavior OF tb_UART_Tx IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Inst_TxModule
    PORT(
         serial_out : OUT  std_logic;
         send_data : IN  std_logic;
         dataToBeSent : IN  std_logic_vector(7 downto 0);
         clk : IN  std_logic;
         reset : IN  std_logic;
         state_led : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal send_data : std_logic := '0';
   signal dataToBeSent : std_logic_vector(7 downto 0) := (others => '0');
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal serial_out : std_logic;
   signal state_led : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Inst_TxModule PORT MAP (
          serial_out => serial_out,
          send_data => send_data,
          dataToBeSent => dataToBeSent,
          clk => clk,
          reset => reset,
          state_led => state_led
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      dataToBeSent <= "01010101";
		reset <= '0';
		send_data <= '1';
       
      
   end process;

END;
