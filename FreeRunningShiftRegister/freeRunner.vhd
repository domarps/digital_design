----------------------------------------------------------------------------------
-- Company: Electronics Corporation of India Limited
-- Engineer: Rishav Ambasta
-- 
-- Create Date:    17:47:18 05/26/2014 
-- Design Name: 
-- Module Name:    freeRunner - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity freeRunner is
    Port ( ip1 : in  STD_LOGIC;
           ip2 : in  STD_LOGIC;
           en : in  STD_LOGIC;
           op : out  STD_LOGIC);
end freeRunner;

architecture Behavioral of freeRunner is

begin
				 op <= ip1 and ip2 when en = '1' else
							'0';
end Behavioral;

