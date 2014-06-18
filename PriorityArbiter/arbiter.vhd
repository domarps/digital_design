----------------------------------------------------------------------------------
-- Company: Electronics Corporation of India Limited
-- Engineer: Rishav Ambasta
-- 
-- Create Date:    14:09:33 06/17/2014 
-- Design Name: 
-- Module Name:    arbiter - Behavioral 
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

entity arbiter is
    Port ( req : in  STD_LOGIC_VECTOR (3 downto 0);
           ack : out  STD_LOGIC_VECTOR (3 downto 0);
           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           reqValid : out  STD_LOGIC;
           masterPort : out  STD_LOGIC_VECTOR (1 downto 0));
end arbiter;

architecture Behavioral of arbiter is

signal masterPort_reg, masterPort_next :std_logic_vector(1 downto 0);
signal ackReg,ackNext :std_logic_vector (3 downto 0);
signal reqValidReg,reqValidNext : std_logic;
begin
-- Shift Logic
				process (clk,reset)
				begin
										if (reset = '1') then
										            masterPort_reg <= "00";
														reqValidReg <= '0';
										elsif (clk'event and clk = '1') then
															masterPort_reg <= masterPort_next;
															ackReg <= ackNext;
															reqValidReg <= reqValidNext ;
										end if;					
				end process;
				
-- Next State Logic
				process (req)
				begin

					if (req(0) = '1') then
																		masterPort_next <= "00";
																		reqValidNext <= '1';
																		ackNext <= "0001";
																		
										elsif (req(1) = '1') then
																		masterPort_next <= "01";
																		reqValidNext <= '1';
																		ackNext <= "0010";
																		
												elsif (req(2) = '1') then
																		masterPort_next <= "10";
																		reqValidNext <= '1';
																		ackNext <= "0100";
																		
														elsif (req(3) = '1') then
																		masterPort_next <= "11";
																		reqValidNext <= '1';
																		ackNext <= "1000";
																		
																else
																		masterPort_next <= "00";
																		ackNext <="0000";
																		reqValidNext <= '0';
					end if ;
				end process;
	-- output logic 
						masterPort <= masterPort_reg;
						reqValid <= reqValidReg;
						ack <= ackReg;
end Behavioral;

