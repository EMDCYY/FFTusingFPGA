----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:38:31 07/02/2013 
-- Design Name: 
-- Module Name:    DDS - Behavioral 
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

entity DDS is                              --force clk 0 0 ,1 10000 -r 20000
port(
      clk     : in  std_logic;
		dds_iou : out std_logic := '1';
		dds_cs  : out std_logic := '1';
		dds_sck : out std_logic := '1';
		sdio0   : out std_logic := '0';
		sdio1   : out std_logic := '0';
		sdio2   : out std_logic := '0';
		sdio3   : out std_logic	:= '0';
		dds_mrt : out std_logic := '0';  --must be low
		dds_pdc : out std_logic := '0';
		dds_cms : out std_logic := '1';
		p0      : out std_logic := '0';
		p1      : out std_logic := '0';
		p2      : out std_logic := '0';
		p3      : out std_logic := '0';
		ctrl_mes: out std_logic := '0';  --high: ch0_100m; low: ch1_4m
		ctrl_ref: out std_logic := '0'   --high: ch2_100m; low: ch3_4m
     );
end DDS;

architecture Behavioral of DDS is
signal cnt_sck : INTEGER RANGE 0 TO 25:= 0;
signal lgc_sck : std_logic := '1';

type   dds_states is (dds_start,    delay1, dds_config,   delay2, 
							 chan0_enable, delay3, tuning_word0, delay4,
							 chan1_enable, delay5, tuning_word1, delay6,
							 chan2_enable, delay7, tuning_word2, delay8,
							 chan3_enable, delay9, tuning_word3, delay10,
							 dds_stp);
signal dds_state: dds_states := dds_start;
signal cnt_dly : INTEGER RANGE 0 TO 127:= 0;
signal spi_wr_bgn : std_logic := '0';
signal spi_wr_end : std_logic := '1';
signal address : STD_LOGIC_VECTOR(7 DOWNTO 0):="00000000";
signal num_reg : INTEGER RANGE 0 TO 7:= 0;
signal reg0    : STD_LOGIC_VECTOR(7 DOWNTO 0):="00000000";
signal reg1    : STD_LOGIC_VECTOR(7 DOWNTO 0):="00000000";
signal reg2    : STD_LOGIC_VECTOR(7 DOWNTO 0):="00000000";
signal reg3    : STD_LOGIC_VECTOR(7 DOWNTO 0):="00000000";

type   spi_states is (spi_idl, spi_str1, spi_str2, spi_adr, spi_dat, spi_dly);
signal spi_state: spi_states := spi_idl;

signal cnt_bit : INTEGER RANGE 0 TO 8:= 8;
signal cnt_reg : INTEGER RANGE 0 TO 7:= 0;
signal wr_reg  : STD_LOGIC_VECTOR(7 DOWNTO 0) := "00000000";

begin
sdio1   <= '0';
sdio2   <= '0';
sdio3   <= '0';
dds_mrt <= '0';
dds_pdc <= '0';
dds_cms <= '1';
p0      <= '0';
p1      <= '0';
p2      <= '0';
p3      <= '0';
ctrl_mes<= '0'; --high: ch0_100m; low: ch1_4m
ctrl_ref<= '1'; --high: ch2_100m; low: ch3_4m

process(clk)
begin
  if (clk'event AND clk = '1') then
      if (cnt_sck  = 24) then      --  50mHz / 25 = 2MHz
		    cnt_sck <= 0;
          lgc_sck <= NOT lgc_sck;  -- 2MHz / 2 = 1MHz
	   else
		    cnt_sck <= cnt_sck + 1;
	   end if;
  end if;
end process;

PROCESS(lgc_sck)
BEGIN
if (lgc_sck'event AND lgc_sck = '1') then
   case dds_state is
	when dds_start =>
		  dds_state <= delay1;
     
   when delay1 =>
		  if(cnt_dly < 8) then
			  cnt_dly <= cnt_dly + 1;
			  dds_state <= delay1;
		  else
			  cnt_dly <= 0;
		     dds_state <= dds_config;
		  end if;
------------------config-------------------
   when dds_config =>
	     if(spi_wr_end ='1') then
		     spi_wr_bgn <=  '1';
           address <= x"01";
		     num_reg <= 3;
		     reg0   <= x"d3"; --11010011
			  -- VCO gain control  is '1' : the high range (system clock above 255 MHz, SYNC_CLK is 125MHz).
           -- PLL divider ratio is "10100" : multiplication factor=20(system clock is 500MHz).
           -- Charge pump control is "11" : charge pump current is 150 ¦ÌA.
   
           reg1   <= x"00";
		     reg2   <= x"00";
		     dds_state <= dds_config;
		  else
		     spi_wr_bgn <=  '0';
			  dds_state <= delay2;
		  end if;
		  
   when delay2 =>
	     if(spi_wr_end ='1') then
			  dds_state <= chan0_enable;
		  else
		     dds_state <= delay2;
		  end if;
------------------chan0--------------------
   when chan0_enable =>
	     if(spi_wr_end ='1') then
		     spi_wr_bgn  <='1';
           address <= x"00";
		     num_reg <= 1;
		     reg0   <= x"10";
		     dds_state <= chan0_enable;
        else
		     spi_wr_bgn <=  '0';
			  dds_state <= delay3;
		  end if;
   
	when delay3 =>
	     if(spi_wr_end ='1') then
			  dds_state <= tuning_word0;
		  else
		     dds_state <= delay3;
		  end if;

   when tuning_word0 =>
	     if(spi_wr_end ='1') then 
		     spi_wr_bgn  <='1';
           address <= x"04";
		     num_reg <= 4;
		     reg0   <= x"33";  -- sysclk_500MHz * tuning_word / 2^32 = ch0 100mhz 
			  reg1   <= x"33";
			  reg2   <= x"33";
			  reg3   <= x"33";
		     dds_state <= tuning_word0;
		  else
			  spi_wr_bgn <=  '0';
			  dds_state <= delay4;
		  end if;
		  
   when delay4 =>
	     if(spi_wr_end ='1') then
			  dds_iou <= '1';
			  dds_state <= chan1_enable;
		  else
		     dds_iou <= '0';
			  dds_state <= delay4;
		  end if;
---------------------chan1---------------------	
	when chan1_enable =>
	     dds_iou <= '0';
		  if(spi_wr_end ='1') then
		     dds_iou <= '0';
			  spi_wr_bgn  <='1';
           address <= x"00";
		     num_reg <= 1;
		     reg0   <= x"20";
		     dds_state <= chan1_enable;
		  else
			  spi_wr_bgn <=  '0';
			  dds_state <= delay5;
		  end if;

   when delay5 =>
	     if(spi_wr_end ='1') then
			  dds_state <= tuning_word1;
		  else
		     dds_state <= delay5;
		  end if;
		  
   when tuning_word1 =>
	     if(spi_wr_end ='1') then
		     dds_iou <= '0';
		     spi_wr_bgn  <='1';
           address <= x"04";
		     num_reg <= 4;
		     reg0   <= x"02";   --ch1 4mhz
			  reg1   <= x"0c";
			  reg2   <= x"6b";
			  reg3   <= x"48";
		     dds_state <= tuning_word1;
		  else
			  spi_wr_bgn <=  '0';
			  dds_state <= delay6;
		  end if;
		  
   when delay6 =>
	     if(spi_wr_end ='1') then
			  dds_iou <= '1';
			  dds_state <= chan2_enable;
		  else
		     dds_iou <= '0';
			  dds_state <= delay6;
		  end if;
-----------------chan2-----------------		  
	when chan2_enable =>
	     dds_iou <= '0';
		  if(spi_wr_end ='1') then
		     dds_iou <= '0';
		     spi_wr_bgn  <='1';
           address <= x"00";
		     num_reg <= 1;
		     reg0   <= x"40";
		     dds_state <= chan2_enable;
		  else
			  spi_wr_bgn <=  '0';
			  dds_state <= delay7;
		  end if;

   when delay7 =>
	     if(spi_wr_end ='1') then
			  dds_state <= tuning_word2;
		  else
		     dds_state <= delay7;
		  end if;

   when tuning_word2 =>
	     if(spi_wr_end ='1') then 
		     dds_iou <= '0';
		     spi_wr_bgn  <='1';
           address <= x"04";
		     num_reg <= 4;
		     reg0   <= x"33";  --ch2 100mhz
			  reg1   <= x"33";
			  reg2   <= x"33";
			  reg3   <= x"33";
		     dds_state <= tuning_word2;
		  else
			  spi_wr_bgn <=  '0';
			  dds_state <= delay8;
		  end if;
		  
   when delay8 =>
	     if(spi_wr_end ='1') then
			  dds_iou <= '1';
			  dds_state <= chan3_enable;
		  else
		     dds_iou <= '0';
			  dds_state <= delay8;
		  end if;
-----------------chan3------------------	
   when chan3_enable =>
	     if(spi_wr_end ='1') then
		     dds_iou <= '0';
		     spi_wr_bgn  <='1';
           address <= x"00";
		     num_reg <= 1;
		     reg0   <= x"80";
		     dds_state <= chan3_enable;
		  else
			  spi_wr_bgn <=  '0';
			  dds_state <= delay9;
		  end if;

   when delay9 =>
	     if(spi_wr_end ='1') then
			  dds_state <= tuning_word3;
		  else
		     dds_state <= delay9;
		  end if;
		  
   when tuning_word3 =>
	     if(spi_wr_end ='1') then
		     dds_iou <= '0';
		     spi_wr_bgn  <='1';
           address <= x"04";
		     num_reg <= 4;
		     reg0   <= x"02";   --ch3 4mhz
			  reg1   <= x"0c";
			  reg2   <= x"6b";
			  reg3   <= x"48";
		     dds_state <= tuning_word3;
		  else
			  spi_wr_bgn <=  '0';
			  dds_state <= delay10;
		  end if;
		  
   when delay10 =>
	     if(spi_wr_end ='1') then
			  dds_iou <= '1';
			  dds_state <= dds_stp;
		  else
		     dds_iou <= '0';
			  dds_state <= delay10;
		  end if;
		  
	when dds_stp =>
	     dds_iou <= '0';
	     dds_state <= dds_stp;
   
	when others =>
        dds_state <= dds_start;
		  
	end case;
end if;
end process;

process(lgc_sck)
begin
  if (lgc_sck'event AND lgc_sck = '1') then
      case spi_state is
		when spi_idl =>
		     cnt_reg <= 0;
			  DDS_CS <= '1';
			  dds_sck<= '0';
			  if (spi_wr_bgn='1') then
			      spi_wr_end <= '0';
			      spi_state <= spi_str1;
			  else
			      spi_state <= spi_idl;
			  end if;
			  
	   when spi_str1 =>
           DDS_CS <= '1';
           dds_sck<= '1';
		     spi_state <= spi_str2;
			  
	   when spi_str2 =>
           DDS_CS <= '0';
           dds_sck<= '1';
		     spi_state <= spi_adr;
		
		when spi_adr =>
		     if(cnt_bit > 0) then
		        dds_sck<= '0';
		        sdio0  <= wr_reg(cnt_bit-1);
				  cnt_bit<= cnt_bit - 1;
				  spi_state <= spi_str2;
			  else
              cnt_bit <=  8;			  
			     dds_sck <= '0';
 			     spi_state <= spi_dat; 
			  end if;
			  
      when spi_dat =>
           cnt_reg <= cnt_reg + 1;
			  if (cnt_reg < num_reg) then
			     spi_state <= spi_dly;
			  else
			     DDS_CS <= '1';
				  spi_wr_end<= '1';
				  spi_state <= spi_idl;
			  end if;
	  
	   when spi_dly =>
		     spi_state <= spi_adr;
			  
		when others =>
		     spi_state <= spi_idl;
		end case;
	end if;
end process;

PROCESS(lgc_sck)
BEGIN
IF(lgc_sck'EVENT AND lgc_sck='1') THEN
CASE cnt_reg IS
WHEN 0 => wr_reg <= address;
WHEN 1 => wr_reg <= reg0;
WHEN 2 => wr_reg <= reg1;
WHEN 3 => wr_reg <= reg2;
WHEN 4 => wr_reg <= reg3; 
WHEN others => wr_reg <= "00000000"; 
end case;
end if;
end process;

end Behavioral;

