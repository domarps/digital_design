----------------------------------------------------------------------------------
-- Company: Electronics Corporation of India Limited
-- Engineer: Rishav Ambasta
-- 
-- Create Date:    12:12:58 05/28/2014 
-- Design Name: 
-- Module Name:    universalBinaryCounter - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity universalBinaryCounter is
    Port ( d : in  STD_LOGIC_VECTOR (3 downto 0);
           syn_clr : in  STD_LOGIC;
           load : in  STD_LOGIC;
           en : in  STD_LOGIC;
           up : in  STD_LOGIC;
			  clk: in STD_LOGIC;
           q : out  STD_LOGIC_VECTOR (3 downto 0));
end universalBinaryCounter;

architecture Behavioral of universalBinaryCounter is
signal current_value, next_value: unsigned (3 downto 0);
--signal temp :std_logic;
begin
		process (clk)
		begin
							if (clk'event and clk = '1') then   --when the pos edge comes
								current_value <= next_value;
							end if;	
		end process;	
		
--		 Combinational logic to determine the next state of the device.
     next_value <=  (others=>'0')when syn_clr = '1' else
											unsigned(d) when load = '1' else
	                              current_value + 1 when (en ='1' and up = '1') else
											current_value - 1 when (en ='1' and up = '0') ;
	-- output logic		
	
	 q <= STD_LOGIC_VECTOR ( current_value );
	 
end Behavioral;

