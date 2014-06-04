----------------------------------------------------------------------------------
-- Company: Electronics Corporation of India Limited
-- Engineer: Rishav Ambasta
-- 
-- Create Date:    18:11:49 05/29/2014 
-- Design Name: 
-- Module Name:    stopWatchTop - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity stopWatchTop is
    Port ( go : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           d : out  STD_LOGIC_VECTOR (2 downto 0);
           clk : in  STD_LOGIC);
end stopWatchTop;

architecture Behavioral of stopWatchTop is
signal current_value,next_value : unsigned (2 downto 0);
signal counter : unsigned (23 downto 0) ;
begin
			process (clk) 
			begin  -- logic to latch the output 
			
				if (clk'event and clk = '1') then
			         current_value <= next_value;
				end if;		
			end process;
			
			process (clk)
			begin
			    if (clk'event and clk = '1' ) then       
				     if ( go = '1') then
							counter <= counter + 1 ;
						end if;
				end if;
			end process;
			
		-- combinotorial logic to determine the next state
		
		next_value <= current_value + 1 when counter = "101000000000000000000000" else -- 100MHz clock takes these many Clock pulses for 1 ms.
						   "000" when clr = '1' else
						    current_value;
		
		--counter <= "000000000000000000000000" when clr = '1' ;
		-- output logic
		d <= STD_LOGIC_VECTOR( current_value );
		
end Behavioral;

