--------------------------------------------------------------------------------
-- Company: Electronics Corporation of India Limited
-- Engineer: Rishav Ambasta
--
-- Create Date:   16:05:44 06/17/2014
-- Design Name:   
-- Module Name:   /home/rishav/logic/code_repository/PriorityArbiter/tb_arbiter.vhd
-- Project Name:  PriorityArbiter
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: arbiter
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
 
ENTITY tb_arbiter IS
END tb_arbiter;
 
ARCHITECTURE behavior OF tb_arbiter IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT arbiter
    PORT(
         req : IN  std_logic_vector(3 downto 0);
         ack : OUT  std_logic_vector(3 downto 0);
         clk : IN  std_logic;
         reset : IN  std_logic;
         reqValid : OUT  std_logic;
         masterPort : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal req : std_logic_vector(3 downto 0) := (others => '0');
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal ack : std_logic_vector(3 downto 0);
   signal reqValid : std_logic;
   signal masterPort : std_logic_vector(1 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: arbiter PORT MAP (
          req => req,
          ack => ack,
          clk => clk,
          reset => reset,
          reqValid => reqValid,
          masterPort => masterPort
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
      wait for 115 ns;	

      wait until   (clk'event and clk = '1') ;
			reset <= '1';
			req <= "1111";
      
		--time  gap between two test cases is two clocks 
		wait until   (clk'event and clk = '1') ;--(clk'event and clk = '1') ;
		
		wait until   (clk'event and clk = '1') ; --wait for   (clk'event and clk = '1') ;
		
		    reset <= '0';
			req <= "0000";
		wait until   (clk'event and clk = '1') ;
		wait until   (clk'event and clk = '1') ;
		
		    reset <= '0';
			req <= "0001";
		wait until   (clk'event and clk = '1') ;
		wait until   (clk'event and clk = '1') ;
		
		    reset <= '0';
			req <= "0010";
		wait until   (clk'event and clk = '1') ;
		wait until   (clk'event and clk = '1') ;
		
		    reset <= '0';
			req <= "0011";
		wait until   (clk'event and clk = '1') ;
		wait until   (clk'event and clk = '1') ;
		
		    reset <= '0';
			req <= "0100";
		wait until   (clk'event and clk = '1') ;
		wait until   (clk'event and clk = '1') ;
		
		    reset <= '0';
			req <= "0101";
		wait until   (clk'event and clk = '1') ;
		wait until   (clk'event and clk = '1') ;
		
		    reset <= '0';
			req <= "0110";
		wait until   (clk'event and clk = '1') ;
		wait until   (clk'event and clk = '1') ;
		
		    reset <= '0';
			req <= "0111";
		wait until   (clk'event and clk = '1') ;
		wait until   (clk'event and clk = '1') ;
		
		    reset <= '0';
			req <= "1000";
		wait until   (clk'event and clk = '1') ;
		wait until   (clk'event and clk = '1') ;
		
		    reset <= '0';
			req <= "1001";
		wait until   (clk'event and clk = '1') ;
		wait until   (clk'event and clk = '1') ;
		
		    reset <= '0';
			req <= "1010";
		wait until   (clk'event and clk = '1') ;
		wait until   (clk'event and clk = '1') ;
		
		    reset <= '0';
			req <= "1011";
		wait until   (clk'event and clk = '1') ;
		wait until   (clk'event and clk = '1') ;
		
		    reset <= '0';
			req <= "1100";
		wait until   (clk'event and clk = '1') ;
		wait until   (clk'event and clk = '1') ;
		
		    reset <= '0';
			req <= "1101";
		wait until   (clk'event and clk = '1') ;
		wait until   (clk'event and clk = '1') ;
		
		    reset <= '0';
			req <= "1110";
		wait until   (clk'event and clk = '1') ;
		wait until   (clk'event and clk = '1') ;
		
		    reset <= '0';
			req <= "1111";

		
      wait;
   end process;

END;
