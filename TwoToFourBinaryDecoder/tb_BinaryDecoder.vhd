--------------------------------------------------------------------------------
-- Company: Electronics Corporation of India Limited
-- Engineer: Rishav Ambasta
--
-- Create Date:   22:19:17 05/21/2014
-- Design Name:   
-- Module Name:   /home/rishav/Logic/TwoToFourBinaryDecoder/tb_BinaryDecoder.vhd
-- Project Name:  TwoToFourBinaryDecoder
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: BinaryDeocer
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
 
ENTITY tb_BinaryDecoder IS
END tb_BinaryDecoder;
 
ARCHITECTURE behavior OF tb_BinaryDecoder IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT BinaryDeocer
    PORT(
         ip : IN  std_logic_vector(1 downto 0);
         op : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal ip : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal op : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: BinaryDeocer PORT MAP (
          ip => ip,
          op => op
        );

   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
-- 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
    
		 ip <= "00";
		  wait for 100 ns;	
		  
		 ip <= "01";
		 wait for 100 ns;	
		 
		 ip <= "10";
		 wait for 100 ns;	
		 
		 ip <= "11";
		   wait for 100 ns;	
   end process;

END;
