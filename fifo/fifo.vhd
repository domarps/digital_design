----------------------------------------------------------------------------------
-- Company: Electronics Corporation of India Limited
-- Engineer: Rishav Ambasta
-- 
-- Create Date:    15:28:40 06/04/2014 
-- Design Name: 
-- Module Name:    fifo - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity fifo is
	generic (
						B: natural := 8;
						W: natural :=3
);						
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           rd : in  STD_LOGIC;
           wt : in  STD_LOGIC;
           w_data : in  STD_LOGIC_VECTOR (B-1 downto 0);
          empty : out  STD_LOGIC;
          full : out  STD_LOGIC;
           r_data : out  STD_LOGIC_VECTOR (B-1 downto 0)
);
end fifo;

architecture Behavioral of fifo is
--Create the fifo having 8 buffers of 8bits each
type TwoDimArray is array (2**W - 1 downto 0) of STD_LOGIC_VECTOR (B-1 downto 0);
signal fifo: TwoDimArray;
signal overflow,underflow : std_logic;
signal wr_ptr,rd_ptr :  std_logic_vector (W-1 downto 0);
signal opCode :std_logic_vector (1 downto 0);

begin
		opCode <= rd & wt ;
		process (clk,reset)
			begin 
			     if (reset = '1' ) then 
								overflow <= '0';
								underflow <= '1';
								 wr_ptr <= "000";
								 rd_ptr <= "111";
								--fifo  <= (others => (others =>'0' ));
					else		
								if (clk'event and clk ='1')	then
										case opCode is 
													when "00" =>  -- no-op
													
													when "01" =>  -- Write
																	if(overflow = '0') then
																			 fifo (conv_integer(wr_ptr)) <= w_data ;
																			if (underflow = '1') then underflow <= '0'; end if;
																			wr_ptr <= wr_ptr + 1;
																			 if ( wr_ptr = rd_ptr ) then
																								overflow <= '1';
																				end if;				
																	 end if; 
																	 
													when "10" => --Read
																	if (underflow = '0') then
																			r_data <= fifo (conv_integer(rd_ptr));
																			if (overflow = '1' ) then overflow <= '0'; end if ;
																			rd_ptr <= rd_ptr + 1;
																			if (rd_ptr + 1 > wr_ptr or  rd_ptr +1 = wr_ptr ) then
																					underflow <= '1';
																			end if;
																	end if;	
														
													when others => --no-op
										end case;									 
							end if;
			     end if;			
		   end process;	
        --output logic
		  
end Behavioral;

