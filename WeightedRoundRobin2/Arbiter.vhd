----------------------------------------------------------------------------------
-- Company: Electronics Corporation of India Limited
-- Engineer: Rishav Ambasta
-- 
-- Create Date:    12:00:07 06/18/2014 
-- Design Name: 
-- Module Name:    Arbiter - Behavioral 
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
use ieee.std_logic_unsigned.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Arbiter is
	 GENERIC
	(		     
				weight0: std_logic_vector(3 downto 0) := "1111";
			   weight1: std_logic_vector(3 downto 0) := "1110";
			   weight2: std_logic_vector(3 downto 0) := "0011";
			   weight3: std_logic_vector(3 downto 0) := "0001"
	);
    Port ( req : in  STD_LOGIC_VECTOR (3 downto 0);
           reset : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           ack : out  STD_LOGIC_VECTOR (3 downto 0);
           reqValid : out  STD_LOGIC;
           masterPort : out  STD_LOGIC_VECTOR (1 downto 0)
			  );
end Arbiter;

architecture Behavioral of arbiter is

type width is array (3 downto 0) of std_logic_vector(3 downto 0 );
signal counter_reg, counter_next: width ;
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
														counter_reg <= (weight3,weight2,weight1,weight0);
														
										elsif (clk'event and clk = '1') then
															masterPort_reg <= masterPort_next;
															ackReg <= ackNext;
															reqValidReg <= reqValidNext ;
															counter_reg <= counter_next;
										end if;					
				end process;
				
-- Next State Logic
				process (req,counter_reg)
				begin

										if (req(0) = '1' and counter_reg(0) /= "0000") then
																		masterPort_next <= "00";
																		reqValidNext <= '1';
																		ackNext <= "0001";
																		counter_next(0) <= (counter_reg(0))- 1;
																		counter_next(1) <= counter_reg(1);
																		counter_next(2) <= counter_reg(2);
																		counter_next(3) <= counter_reg(3);		
								elsif (req(1) = '1' and counter_reg(1) /= "0000") then
																		masterPort_next <= "01";
																		reqValidNext <= '1';
																		ackNext <= "0010";
																		counter_next(1) <=  counter_reg(1) - 1;
																		counter_next(0) <= counter_reg(0);
																		counter_next(2) <=  counter_reg(2);
																		counter_next(3) <=  counter_reg(3);
																
							 elsif (req(2) = '1' and counter_reg(2) /= "0000" ) then
																		masterPort_next <= "10";
																		reqValidNext <= '1';
																		ackNext <= "0100";
																		counter_next(2) <=   counter_reg(2) - 1;		
																		counter_next(0) <=  counter_reg(0);
																		counter_next(1) <=  counter_reg(1);
																		counter_next(3) <=  counter_reg(3);		
														
								elsif (req(3) = '1' and counter_reg(3) /= "0000" ) then
																		masterPort_next <= "11";
																		reqValidNext <= '1';
																		ackNext <= "1000";
																		counter_next(3) <=   counter_reg(3) - 1;
																		counter_next(2) <=   counter_reg(2);		
																		counter_next(0) <=  counter_reg(0);
																		counter_next(1) <=  counter_reg(1);	
										 	else
																if (req /= "0000") then
																		masterPort_next <= masterPort_reg;
																		reqValidNext <= '0';
																		ackNext <= "0000";
																		counter_next(0) <= counter_reg(0);
																		counter_next(1) <= counter_reg(1);
																		counter_next(2) <= counter_reg(2); 
																		counter_next(3) <= counter_reg(3); 

																		masterPort_next <= "00";
																		ackNext <="0000";
																		reqValidNext <= '0';
																		counter_next(0) <=  weight0;
																		counter_next(1) <=  weight1;
																		counter_next(2) <=  weight2;
																		counter_next(3) <=  weight3;
																else
																		masterPort_next <= "00";
																		reqValidNext <= '0';
																		ackNext <= "0000";
																		counter_next(0) <=weight0;
																		counter_next(1) <= weight1;
																		counter_next(2) <= weight2;
																		counter_next(3) <= weight3;
																end if;		
					end if ;
				end process;
	-- output logic 
						masterPort <= masterPort_reg;
						reqValid <= reqValidReg;
						ack <= ackReg;
end Behavioral;


