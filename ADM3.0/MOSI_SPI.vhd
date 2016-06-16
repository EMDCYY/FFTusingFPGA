----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:17:17 07/03/2013 
-- Design Name: 
-- Module Name:    spi - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity spi is
port(
      lgc_sck : in  std_logic := '1';
		spi_bgn : in  std_logic := '0';
		spi_end : out std_logic := '1';
		address  : in  STD_LOGIC_VECTOR(7 DOWNTO 0);
		num_dat : in  STD_LOGIC_VECTOR(3 DOWNTO 0);
		data0   : in  STD_LOGIC_VECTOR(7 DOWNTO 0);
		data1   : in  STD_LOGIC_VECTOR(7 DOWNTO 0);
		data2   : in  STD_LOGIC_VECTOR(7 DOWNTO 0);
		data3   : in  STD_LOGIC_VECTOR(7 DOWNTO 0);
		spi_sck : out std_logic := '0';
		spi_cs  : out std_logic := '1';
		mosi    : out std_logic := '1'	
     );
end spi;

architecture Behavioral of spi is
signal cnt_bit : INTEGER RANGE 0 TO 8:= 0;
signal cnt_dat : INTEGER RANGE 0 TO 7:= 0;
signal spi_word: STD_LOGIC_VECTOR(7 DOWNTO 0) := "00000000";

type   spi_states is (spi_idl, spi_str1, spi_str2, spi_adr, spi_dat);
signal spi_state: spi_states := spi_idl;

begin
process(lgc_sck)
begin
  if (lgc_sck'event AND lgc_sck = '1') then
      case spi_state is
		when spi_idl =>
		     cnt_dat <= 0;
			  spi_cs <= '1';
			  spi_sck<= '0';
			  if (spi_bgn='1') then
			      spi_end <= '0';
			      spi_state <= spi_str1;
			  else
			      spi_state <= spi_idl;
			  end if;
			  
	   when spi_str1 =>
           spi_cs <= '1';
           spi_sck<= '1';
		     spi_state <= spi_str2;
			  
	   when spi_str2 =>
           spi_cs <= '0';
           spi_sck<= '1';
		     spi_state <= spi_adr;
		
		when spi_adr =>
		     if(cnt_bit < 8) then
		        spi_sck<= '0';
		        mosi  <= spi_word(cnt_bit);
				  cnt_bit<= cnt_bit + 1;
				  spi_state <= spi_str2;
			  else
              cnt_bit <=  0;			  
			     spi_sck <= '0';
 			     spi_state <= spi_dat; 
			  end if;
			  
      when spi_dat =>
           cnt_dat <= cnt_dat + 1;		
		     if(cnt_dat < num_dat + 1) then
			     spi_state <= spi_adr;
			  else
			     spi_cs <= '1';
				  spi_end<= '1';
				  spi_state <= spi_idl;
			  end if;
			  
		when others =>
		     spi_state <= spi_idl;
		end case;
	end if;
end process;

PROCESS(lgc_sck)
BEGIN
IF(lgc_sck'EVENT AND lgc_sck='1') THEN
CASE cnt_dat IS
WHEN 0 => spi_word <= address;
WHEN 1 => spi_word <= data0;
WHEN 2 => spi_word <= data1;
WHEN 3 => spi_word <= data2;
WHEN 4 => spi_word <= data3; 
WHEN others => spi_word <= "00000000"; 
end case;
end if;
end process;

end Behavioral;

