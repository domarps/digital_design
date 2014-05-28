----------------------------------------------------------------------------------
-- Company: Electronics Corporation of India Limited
-- Engineer: Rishav Ambasta
-- 
-- Create Date:    15:41:27 05/27/2014 
-- Design Name: 
-- Module Name:    FreeRunner - Behavioral 
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
use IEEE.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FreeRunner is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           q : out  STD_LOGIC_VECTOR (3 downto 0));
end FreeRunner;

architecture Behavioral of FreeRunner is
	signal r_temp,r_temp1 : unsigned (3 downto 0);
begin
				process (clk,reset)
				begin
					if (reset = '1')		then	
							r_temp <= "0000" 	;
							q <= "0000";
					elsif (clk'event and clk = '1')   then --rising edge of the clock
									q <= std_logic_vector(r_temp1);
									r_temp <= r_temp1;
					end if	;			
				end process;				
				--combinotorial circuit
				r_temp1  <= r_temp + 1;
				
end Behavioral;

