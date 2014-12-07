----------------------------------------------------------------------------------
-- Company: Electronics Corporation of India Limited
-- Engineer: Rishav Ambasta
-- 
-- Create Date:    02:00:05 07/03/2014 
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

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity fifo is
    Port ( control_serial_in : in  STD_LOGIC;
               control_serial_out : out  STD_LOGIC;
               data_serial_in : in  std_logic_vector(7 downto 0);
               data_serial_out : out  STD_LOGIC_vector (7 downto 0);
					fifo_empty : out STD_LOGIC;
					fifo_full : out STD_LOGIC;
               clk : in  STD_LOGIC;
					reset : in STD_LOGIC);
end fifo;

architecture Behavioral of fifo is
signal fifo_buffer_reg,fifo_buffer_next : std_logic_vector (80 downto 0) := (others => '0');  --10 bytes FIFO buffer
signal end_pointer_reg,end_pointer_next: unsigned (7 downto 0):="00000000";
begin
				process (reset, clk)
				begin
									if (reset = '1') then
												fifo_buffer_reg <= (others => '0');
												end_pointer_reg <= "00001000";  --pointing to the MSB of one free byte.
												--data_serial_out <= (others => '0');
									elsif (clk'event and clk = '1') then
												fifo_buffer_reg <= fifo_buffer_next;
												end_pointer_reg <= end_pointer_next;
									end if ;		
				end process;
				
				process (control_serial_in,control_serial_out)
				begin
								fifo_buffer_next <= fifo_buffer_reg;
								end_pointer_next <= end_pointer_reg;	
								fifo_full <= '0';
								fifo_empty <= '0';
								
								if (control_serial_out = '1' and end_pointer_reg = 80) then
												fifo_full <= '1';
								else				
												fifo_buffer_next <= fifo_buffer_reg(
								end if;
				end process;
				

end Behavioral;

