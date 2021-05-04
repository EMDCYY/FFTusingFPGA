library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;

entity LCD is  --force clk 0 0 ,1 10000 -r 20000
port(  
       OE      : out std_logic;
       DIR1    : out std_logic;
       DIR2    : out std_logic;
       LCD_EN  : out std_logic;
       LCD_RS  : out std_logic := '0';
       LCD_RW  : out std_logic;
       LCD_DATA: out std_logic_vector(7 downto 0);
		  clk    :  in std_logic;
		 phase   :  in std_logic_vector(25 downto 0) := "11100110110011000111000000"
     );
end LCD;

architecture Behavioral of LCD is
component transfer
	port (
	clk: in std_logic;
	sclr: in std_logic;
	rfd: out std_logic;
	dividend: in std_logic_vector(25 downto 0);
	divisor: in std_logic_vector(25 downto 0);
	quotient: out std_logic_vector(25 downto 0);
	fractional: out std_logic_vector(25 downto 0));
end component;

type   DAT_STATES is (dat_str,dat_hdrs,dat_tens,dat_unit,dat_punit,dat_ptens,dat_phdrs);
signal dat_state: DAT_STATES := dat_str;

signal   dividend: std_logic_vector(25 downto 0) := "00000000000000000000000000";
signal    divisor: std_logic_vector(25 downto 0) := "00000000000000000000000000" ;
signal   quotient: std_logic_vector(25 downto 0) := "00000000000000000000000000";
signal fractional: std_logic_vector(25 downto 0) := "00000000000000000000000000";

signal phase_abs: std_logic_vector(25 downto 0) := "00000000000000000000000000";
signal       cnt: integer range 0 to 255:= 0;
signal      sclr: std_logic := '0';
signal       rfd: std_logic := '0';

signal CNT_LCDCLK :INTEGER RANGE 0 TO 250000;
signal LCD_CLK : std_logic :='1';
type   LCD_STATES is (set_function,clear_display,set_cursor,set_display,set_ddram1,write_data1,set_ddram2,write_data2);
signal lcd_state: LCD_STATES := set_function;

signal sign  : std_logic_vector (7 downto 0):="00000000"; 
signal hdrs  : std_logic_vector (7 downto 0):="00000000"; 
signal tens  : std_logic_vector (7 downto 0):="00000000"; 
signal unit  : std_logic_vector (7 downto 0):="00000000"; 
signal ptens : std_logic_vector (7 downto 0):="00000000"; 
signal punit : std_logic_vector (7 downto 0):="00000000";
signal phdrs : std_logic_vector (7 downto 0):="00000000"; 
type ram is array (0 to 15) of std_logic_vector (7 downto 0);
--	 constant ram1 : ram:=(x"44",x"44",x"53",x"20",x"46",x"52",x"45",x"51",x"3A",x"31",x"30",x"2e",x"30",x"4b",x"48",x"7a"); --DDS FREQ:10.0KHz
constant ram1 : ram:=(x"20",x"50",x"68",x"61",x"73",x"65",x"20",x"45",x"72",x"72",x"6f",x"72",x"20",x"3a",x"20",x"20");     --_Phase_Error_:__  
constant ram2 : ram:=(x"20",x"20",x"20", sign, hdrs, tens, unit,x"2e",punit,ptens,phdrs,x"df",x"20",x"20",x"20",x"20");     --___?XXX.XXX?____

BEGIN
INST_HDRS : TRANSFER
  port map (
			clk => clk,
			rfd => rfd,
			sclr=> sclr,
			dividend => dividend,         --width 26
			divisor =>   divisor,         --      26
			quotient => quotient,         --      26
			fractional => fractional      --      26 
			);

sign <= x"2B" when phase(25) = '0' else x"2D";
phase_abs <= abs(phase);
process(clk)
begin
  if (clk'event AND clk = '0') then
      case dat_state is
		when dat_str =>
   		  dividend <= phase_abs;  
			  divisor  <= "00110111110110011011110011";  
		     dat_state <= dat_hdrs;
		
		when dat_hdrs =>	  
			  if (cnt = 255) then
			      cnt <= 0;			  
			      hdrs <= quotient(7 downto 0) + X"30";
               dividend <= fractional;
		         divisor  <= "00011001100110011001100110";
			      dat_state<= dat_tens;
			  else
		         cnt <= cnt + 1;
					dat_state <= dat_hdrs;
			  end if;
			  
	   when dat_tens =>	  
			  if (cnt = 255) then
			      cnt <= 0;			  
			      tens <= quotient(7 downto 0) + X"30";
               dividend <= fractional;
		         divisor  <= "00011001100110011001100110";
			      dat_state<= dat_unit;
			  else
		         cnt <= cnt + 1;
					dat_state <= dat_tens;
			  end if;
			  		
		
		when dat_unit =>	  
			  if (cnt = 255) then
			      cnt <= 0;			  
			      unit <= quotient(7 downto 0) + X"30";
               dividend <= fractional;
		         divisor  <= "00011001100110011001100110";
			      dat_state<= dat_punit;
			  else
		         cnt <= cnt + 1;
					dat_state <= dat_unit;
			  end if;
			  
		when dat_punit =>	  
			  if (cnt = 255) then
			      cnt <= 0;			  
			      punit <= quotient(7 downto 0) + X"30";
               dividend <= fractional;
		         divisor  <= "00011001100110011001100110";
			      dat_state<= dat_ptens;
			  else
		         cnt <= cnt + 1;
					dat_state <= dat_punit;
			  end if;
			  
		when dat_ptens =>	  
			  if (cnt = 255) then
			      cnt <= 0;			  
			      ptens <= quotient(7 downto 0) + X"30";
               dividend <= fractional;
		         divisor  <= "00011001100110011001100110";
			      dat_state<= dat_phdrs;
			  else
		         cnt <= cnt + 1;
					dat_state <= dat_ptens;
			  end if;
			  
		when dat_phdrs =>	  
			  if (cnt = 255) then
			      cnt <= 0;			  
			      phdrs <= quotient(7 downto 0) + X"30";
               dividend <= fractional;
		         divisor  <= "00011001100110011001100110";
			      dat_state<= dat_str;
			  else
		         cnt <= cnt + 1;
					dat_state <= dat_phdrs;
			  end if;
		
		when others => dat_state <= dat_str;
		end case;
	end if;
end process;

--LCD
OE <= '0';   --enable VOLTAGE TRANSLATION SN74LVCH16T245 
DIR1 <= '1'; -- A data to B bus
DIR2 <= '1';

process(clk)
begin
  if (clk'event AND clk = '0') then
     if (CNT_LCDCLK = 249999) then
	      CNT_LCDCLK <=0;
         LCD_CLK <= not LCD_CLK;  --lcd clk = 50000000/(249999+1)/2=100Hz (the minimum clock of 1602A is 1000ns)
	  else
         CNT_LCDCLK <= CNT_LCDCLK + 1;
	  end if;
  end if;
end process;

LCD_EN <= LCD_CLK;
LCD_RW <= '0';

process(lcd_clk,lcd_state)
variable cnt : integer range 0 to 16;
begin
  if (LCD_CLK'event AND LCD_CLK = '1') then
      case lcd_state is
		when set_function =>
		     lcd_data <= "00111000";  -- 8 bits, 2 rows, 5*7 per chacter
           lcd_rs   <= '0';
           lcd_state<= set_display;
			  
      when set_display =>
		     lcd_data <= "00001100";  -- display on ; cursor off, no shine
           lcd_rs   <= '0';
           lcd_state<= clear_display;

      when clear_display =>
		     lcd_data <= "00000001";  -- clear display
           lcd_rs   <= '0';
           lcd_state<= set_cursor;
 
      when set_cursor =>
		     lcd_data <= "00000110";  -- cursor move right
           lcd_rs   <= '0';
           lcd_state<= set_ddram1;

      when set_ddram1 =>
		     lcd_data <= "10000000";  -- addram address , 1st row 1st line
           lcd_rs   <= '0';
           lcd_state<= write_data1;

      when write_data1 =>
		     lcd_rs   <= '1';
			  lcd_data <= ram1(cnt)(7 downto 0);  
           cnt := cnt + 1;
			  if (cnt = 16) then
			      lcd_state<= set_ddram2;
					cnt := 0;
			  end if;
		
		when set_ddram2 =>
		     lcd_rs   <= '0';
			  lcd_data <= "11000000"; -- addram address , 2nd row 1st line
			  lcd_state<= write_data2;
			  
	   when write_data2 =>
		     lcd_rs   <= '1';
			  lcd_data <= ram2(cnt)(7 downto 0);  
           cnt := cnt + 1;
			  if (cnt = 16) then
			      lcd_state<= set_ddram1;
					cnt := 0;
			  end if;
		
		when others => LCD_STATE <= set_function;
	end case;
  end if;
end process;


end Behavioral;

