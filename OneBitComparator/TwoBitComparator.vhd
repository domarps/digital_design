----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:16:59 05/19/2014 
-- Design Name: 
-- Module Name:    TwoBitComparator - Behavioral 
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
library IEEE, WORK;
use IEEE.STD_LOGIC_1164.ALL;
use WORK.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity TwoBitComparator is
	port (
				a , b : in std_logic_vector( 1 downto 0);
				aeqb : out std_logic
			);
end TwoBitComparator;

architecture Behavioral of TwoBitComparator is
					signal e0, e1 : std_logic;
									
--component foo is
--          port (
--							i0,i1: in std_logic;
--							eq: out std_logic
--							);
--end component
begin
 
			eq_bit0_unit: entity WORK.foo(OneBItComparatorArch)
						port map (i0 => a(0), i1 => b(0) , eq => e0);
				
				eq_bit1_unit: entity WORK.foo(OneBItComparatorArch)
						port map (i0 => a(1), i1 => b(1) , eq => e1);

aeqb <= e0 and e1;

end Behavioral;

