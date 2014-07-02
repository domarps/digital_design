----------------------------------------------------------------------------------
-- Company: Electronics Corporation of India Limited
-- Engineer: Rishav Ambasta
-- 
-- Create Date:    14:48:07 07/01/2014 
-- Design Name: 
-- Module Name:    Inst_TxModule - Behavioral 
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

entity Inst_TxModule is
    Port ( serial_out : out  STD_LOGIC;
	         send_data: in STD_LOGIC;
				dataToBeSent: in STD_LOGIC_VECTOR(7 downto 0);
           clk : in  STD_LOGIC;
			  reset : in STD_LOGIC;
			  state_led : out STD_LOGIC_VECTOR( 3 downto 0));
end Inst_TxModule;

architecture Behavioral of Inst_TxModule is



type states is (idle,start,data,stop);
signal curent_state, next_state : states;
 signal data_reg: STD_LOGIC_VECTOR (7 downto 0);--:= "00000000";
 signal data_next: STD_LOGIC_VECTOR (7 downto 0);
 signal pulse_couter_reg,pulse_couter_next: unsigned(3 downto 0);
 signal outputBit_couter_reg,outputBit_couter_next: unsigned(3 downto 0);
 signal baud_rate_tick:STD_LOGIC;
 begin
 
 
 Inst_BaudRateGenerator: entity work.BaudRateGenerator(Behavioral) PORT MAP(
		sampling_tick => baud_rate_tick,
		clk => clk,
		reset => reset 
	);


					process(clk,reset)
					begin
									if (reset = '1') then
											curent_state <= idle;
											pulse_couter_reg <= "0000";
											data_reg <= (others => '0');--dataToBeSent;
									elsif (clk'event and clk = '1') then
													curent_state <= next_state;
													pulse_couter_reg <= pulse_couter_next;
													outputBit_couter_reg <= outputBit_couter_next;
													data_reg <= data_next;
									end if;				
					end process;
					
					process(baud_rate_tick,curent_state,pulse_couter_reg,outputBit_couter_reg,data_reg,send_data,dataToBeSent)
					begin
					pulse_couter_next <= pulse_couter_reg;
					next_state <= curent_state;
					serial_out <= '1';
					outputBit_couter_next <= outputBit_couter_reg;
					data_next<= data_reg;
					
					case curent_state is
									when idle => 
												state_led <= "0001";
												if (send_data = '1') then
															next_state <= start;		
															pulse_couter_next <= "0000";		
															data_next <= dataToBeSent;
										     end if;
											  
									when start =>
									         state_led <= "0010";
												serial_out <= '0';
												if (baud_rate_tick = '1') then
														if (pulse_couter_reg = 15) then --here
																		pulse_couter_next <= "0000";
																		outputBit_couter_next<= "0000";
																		next_state <= data;
														 else				
														      pulse_couter_next <= pulse_couter_reg + 1 ;
												        end if;
											  end if;			  
												
								 when data =>
										state_led <= "0100";
										serial_out<= data_reg(0);
											 if (baud_rate_tick = '1') then
														if (outputBit_couter_reg = 8 ) then
																	 next_state <= stop;
																	 pulse_couter_next <= "0000";
														else
																	 if (pulse_couter_reg = 15) then				
																			pulse_couter_next <= "0000";
																			outputBit_couter_next <= outputBit_couter_reg + 1;
																			data_next<= '0' & data_reg(7 downto 1) ;
																	else
																			pulse_couter_next <= pulse_couter_reg + 1;
																	end if;		
														end if;			 
											end if;	
								 
								 
										when stop =>
												serial_out <= '1';
												state_led <= "1000";
												if (baud_rate_tick = '1') then
														if (pulse_couter_reg = 15) then
																	next_state <= idle;
														else				
														     pulse_couter_next <= pulse_couter_reg + 1 ;		

												       end if;
												end if;
												
								end case;							
					end process;

end Behavioral;

