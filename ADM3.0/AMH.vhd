library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity AMH is
port(
		CLK_50M : IN  std_logic;  --force clk_50m 0 0 ,1 10000 -r 20000
		SCLK    : OUT std_logic;
      AD_CS   : OUT std_logic := '1';		
		sda     : IN  std_logic;
		sdb     : IN  std_logic;
----------------------------
      txd     : OUT std_logic:='1';
----------------------------      
		OE      : out std_logic;
      DIR1    : out std_logic;
      DIR2    : out std_logic;
      LCD_EN  : out std_logic;
      LCD_RS  : out std_logic := '0';
      LCD_RW  : out std_logic;
      LCD_DATA: out std_logic_vector(7 downto 0);
----------------------------
		dds_iou : OUT std_logic;
		dds_cs  : OUT std_logic;
		dds_sck : OUT std_logic;
		sdio0   : OUT std_logic;
		sdio1   : OUT std_logic;
		sdio2   : OUT std_logic;
		sdio3   : OUT std_logic;
		dds_mrt : OUT std_logic;
		dds_pdc : OUT std_logic;
		dds_cms : OUT std_logic;
		p0      : OUT std_logic;
		p1      : OUT std_logic;
		p2      : OUT std_logic;
		p3      : OUT std_logic;
		ctrl_mes : OUT std_logic;
		ctrl_ref : OUT std_logic
      );
end AMH;

architecture Behavioral of AMH is
COMPONENT DCM
   PORT(
		 CLKIN_IN : IN  std_logic;          
		CLKFX_OUT : OUT std_logic;
CLKIN_IBUFG_OUT : OUT std_logic;
		 CLK0_OUT : OUT std_logic;
	  CLK180_OUT : OUT std_logic;
	  LOCKED_OUT : OUT std_logic
		);
END COMPONENT;

COMPONENT TestData
	PORT(
		clk : IN  std_logic;
		num : IN  std_logic_vector(9 downto 0);          
		da1 : OUT std_logic_vector(11 downto 0);
		da2 : OUT std_logic_vector(11 downto 0)
		);
END COMPONENT;
	
COMPONENT FIFOA
   PORT (
    clk   : IN STD_LOGIC;
    din   : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    wr_en : IN STD_LOGIC;
    rd_en : IN STD_LOGIC;
    dout  : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    full  : OUT STD_LOGIC;
    empty : OUT STD_LOGIC;
    data_count : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
        );
END COMPONENT;

COMPONENT FIFOB
   PORT (
      clk : IN STD_LOGIC;
      din : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    wr_en : IN STD_LOGIC;
    rd_en : IN STD_LOGIC;
     dout : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
     full : OUT STD_LOGIC;
    empty : OUT STD_LOGIC;
    data_count : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
        );
END COMPONENT;

component FFTB
	port (
	clk: in std_logic;
	sclr: in std_logic;
	start: in std_logic;
	unload: in std_logic;
	xn0_re: in std_logic_vector(11 downto 0);
	xn0_im: in std_logic_vector(11 downto 0);
	xn1_re: in std_logic_vector(11 downto 0);
	xn1_im: in std_logic_vector(11 downto 0);
	fwd_inv0: in std_logic;
	fwd_inv0_we: in std_logic;
	fwd_inv1: in std_logic;
	fwd_inv1_we: in std_logic;
	scale_sch0: in std_logic_vector(19 downto 0);
	scale_sch0_we: in std_logic;
	scale_sch1: in std_logic_vector(19 downto 0);
	scale_sch1_we: in std_logic;
	rfd: out std_logic;
	xn_index: out std_logic_vector(9 downto 0);
	busy: out std_logic;
	edone: out std_logic;
	done: out std_logic;
	dv: out std_logic;
	xk_index: out std_logic_vector(9 downto 0);
	xk0_re: out std_logic_vector(11 downto 0);
	xk0_im: out std_logic_vector(11 downto 0);
	xk1_re: out std_logic_vector(11 downto 0);
	xk1_im: out std_logic_vector(11 downto 0));
end component;

COMPONENT MLPARE
  PORT (
    clk : IN STD_LOGIC;
    a : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    p : OUT STD_LOGIC_VECTOR(23 DOWNTO 0)
  );
END COMPONENT;

COMPONENT mlpaim
  PORT (
    clk : IN STD_LOGIC;
    a : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    p : OUT STD_LOGIC_VECTOR(23 DOWNTO 0)
  );
END COMPONENT;

COMPONENT MLPBRE
  PORT (
    clk : IN STD_LOGIC;
    a : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    p : OUT STD_LOGIC_VECTOR(23 DOWNTO 0)
  );
END COMPONENT;

COMPONENT MLPBIM
  PORT (
    clk : IN STD_LOGIC;
    a : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    p : OUT STD_LOGIC_VECTOR(23 DOWNTO 0)
  );
END COMPONENT;


COMPONENT SUB
  PORT (
    a : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
    clk : IN STD_LOGIC;
    s : OUT STD_LOGIC_VECTOR(23 DOWNTO 0)
  );
END COMPONENT;

COMPONENT AAD
  PORT (
    a : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
    clk : IN STD_LOGIC;
    s : OUT STD_LOGIC_VECTOR(23 DOWNTO 0)
  );
END COMPONENT;

component ARCTANA
	port (
	x_in: in std_logic_vector(24 downto 0);
	y_in: in std_logic_vector(24 downto 0);
	phase_out: out std_logic_vector(25 downto 0);
	clk: in std_logic);
end component;

COMPONENT RS232
	PORT(
		clk : IN std_logic;
		uart_cs : IN std_logic;
		phase : IN std_logic_vector(25 downto 0);          
		txd : OUT std_logic
		);
END COMPONENT;

COMPONENT LCD
	PORT(
		clk : IN std_logic;
		phase : IN std_logic_vector(25 downto 0);          
		OE : OUT std_logic;
		DIR1 : OUT std_logic;
		DIR2 : OUT std_logic;
		LCD_EN : OUT std_logic;
		LCD_RS : OUT std_logic;
		LCD_RW : OUT std_logic;
		LCD_DATA : OUT std_logic_vector(7 downto 0)
		);
END COMPONENT;

COMPONENT DDS
	PORT(
		clk : IN std_logic;          
		dds_iou : OUT std_logic;
		dds_cs : OUT std_logic;
		dds_sck : OUT std_logic;
		sdio0 : OUT std_logic;
		sdio1 : OUT std_logic;
		sdio2 : OUT std_logic;
		sdio3 : OUT std_logic;
		dds_mrt : OUT std_logic;
		dds_pdc : OUT std_logic;
		dds_cms : OUT std_logic;
		p0 : OUT std_logic;
		p1 : OUT std_logic;
		p2 : OUT std_logic;
		p3 : OUT std_logic;
		ctrl_mes : OUT std_logic;
		ctrl_ref : OUT std_logic
		);
END COMPONENT;
--####################################################

-----------------DCM---------------------		
signal CLK_64M : std_logic;
signal DCM_LCK : std_logic;
signal CLK180  : std_logic;
signal CNT_64M : integer range 0 to 7;
signal LGC_6M4 : std_logic := '1';
signal CNT_6M4 : INTEGER RANGE 0 TO 25:= 0;

-----------------AD---------------------		
type   AD_states is (AD_idl, AD_srt, AD_tru, AD_stp);
signal AD_state: AD_states := AD_idl;
signal AD_CNT  : INTEGER RANGE 0 TO 1024 := 0; --1024
signal AD_CNT_VEC : std_logic_vector(9 DOWNTO 0) := "0000000000";
--inst_testdata
signal testdata_ch1 : STD_LOGIC_VECTOR(11 DOWNTO 0);
signal dina         : STD_LOGIC_VECTOR(11 DOWNTO 0);
signal din_FIFOA    : STD_LOGIC_VECTOR(11 DOWNTO 0);

signal testdata_ch2 : STD_LOGIC_VECTOR(11 DOWNTO 0);
signal dinb         : STD_LOGIC_VECTOR(11 DOWNTO 0);
signal din_FIFOB    : STD_LOGIC_VECTOR(11 DOWNTO 0);

-----------------FIFO---------------------	
type   FIFO_states is (FIFO_define, FIFO_check);
signal FIFO_state: FIFO_states := FIFO_define;
signal bit_cnt      : INTEGER RANGE 0 TO 12 := 0;
--signal bit_cnt : INTEGER RANGE 11 DOWNTO 0 := 11; --change
signal wr_en1: STD_LOGIC := '0';
signal rd_en1: STD_LOGIC := '0';
signal SCLR1 : STD_LOGIC;
signal full1 : STD_LOGIC;
signal empty1: STD_LOGIC;
signal dout1       : STD_LOGIC_VECTOR(11 DOWNTO 0);
signal data_count1 : STD_LOGIC_VECTOR( 9 DOWNTO 0);

signal wr_en2: STD_LOGIC := '0';
signal rd_en2: STD_LOGIC := '0';
signal SCLR2 : STD_LOGIC;
signal full2 : STD_LOGIC;
signal empty2: STD_LOGIC;
signal dout2       : STD_LOGIC_VECTOR(11 DOWNTO 0);
signal data_count2 : STD_LOGIC_VECTOR( 9 DOWNTO 0);

signal wr_en_in : STD_LOGIC := '0';
signal rd_en_in : STD_LOGIC := '0';
signal wr_en_out: STD_LOGIC := '0';
signal rd_en_out: STD_LOGIC := '0';
signal wait_cnt : INTEGER RANGE 0 TO 20:= 0;

-----------------FFT---------------------
signal FFT_CNT : INTEGER RANGE 0 TO 1024 := 0;
type   FFT_states is (FFT_idl, FFT_in, FFT_dsp,FFT_out);
signal FFT_state: FFT_states := FFT_idl;
signal FFT_start: STD_LOGIC := '0';
signal SCLR: STD_LOGIC;
signal xn_index : std_logic_vector(9 downto 0);
signal busy: STD_LOGIC;
signal edone: STD_LOGIC;
signal done: STD_LOGIC;
signal rfd: STD_LOGIC;
signal dv: STD_LOGIC;
signal xk_index: std_logic_vector(9 downto 0);

signal xk0_re: std_logic_vector(11 downto 0) := "000000000000";
signal xk0_im: std_logic_vector(11 downto 0) := "000000000000";
signal xk1_re: std_logic_vector(11 downto 0) := "000000000000";
signal xk1_im: std_logic_vector(11 downto 0) := "000000000000";

signal xr0   : std_logic_vector(11 downto 0) := "000000000000";
signal xi0   : std_logic_vector(11 downto 0) := "000000000000";
signal xr1   : std_logic_vector(11 downto 0) := "000000000000";
signal xi1   : std_logic_vector(11 downto 0) := "000000000000";
signal ovflo: STD_LOGIC;
signal unload: STD_LOGIC;

signal i0r1  : std_logic_vector(23 downto 0) := "000000000000000000000000";
signal i1r0  : std_logic_vector(23 downto 0) := "000000000000000000000000";
signal r0r1  : std_logic_vector(23 downto 0) := "000000000000000000000000";
signal i0i1  : std_logic_vector(23 downto 0) := "000000000000000000000000";
signal sub0  : STD_LOGIC_VECTOR(23 DOWNTO 0) := "000000000000000000000000";
signal sum0  : STD_LOGIC_VECTOR(23 DOWNTO 0) := "000000000000000000000000";

signal arctan_y : std_logic_vector(24 downto 0) := "0000000000000000000000000";
signal arctan_x : std_logic_vector(24 downto 0) := "0000000000000000000000000";
signal phase_out: std_logic_vector(25 downto 0) := "00000000000000000000000000";
signal     phase: std_logic_vector(25 downto 0) := "00000000000000000000000000";
--substract

signal uart_cs      : STD_LOGIC := '0';
SIGNAL uart_cs_cnt  : INTEGER RANGE 0 TO 250 := 0;

signal CNT_LCDCLK :INTEGER RANGE 0 TO 250000;
signal LCD_CLK : std_logic :='1';
type   LCD_STATES is (set_function,clear_display,set_cursor,set_display,set_ddram1,write_data1,set_ddram2,write_data2);
signal lcd_state: LCD_STATES;

BEGIN
Inst_DCM: DCM PORT MAP(
		CLKIN_IN => CLK_50M,
		CLKFX_OUT => clk_64M,
		CLKIN_IBUFG_OUT => OPEN,
		CLK0_OUT => OPEN,
		CLK180_OUT => CLK180,
		LOCKED_OUT => DCM_LCK
      );

Inst_TestData: TestData PORT MAP(
		clk => CLK_64M,
		num => AD_CNT_VEC,
		da1 => testdata_ch1,
		da2 => testdata_ch2
	);

Inst_FIFOA : FIFOA PORT MAP (
    clk => clk_64M,
    din => din_FIFOA,
    wr_en => wr_en1,
    rd_en => rd_en1,
    dout => dout1,
    full => full1,
    empty => empty1,
    data_count => data_count1
    );
  
Inst_FIFOB : FIFOB PORT MAP (
    clk => clk_64M,
    din => din_FIFOB,
    wr_en => wr_en2,
    rd_en => rd_en2,
    dout => dout2,
    full => full2,
    empty => empty2,
    data_count => data_count2
    );  

Inst_FFT : FFTB port map (
			clk => clk_64M,
			sclr => sclr,
			start => fft_start,
			unload => unload,
			xn0_re => dout1,
			xn0_im => "000000000000",
			xn1_re => dout2,
			xn1_im => "000000000000",
			fwd_inv0 => '1',
			fwd_inv0_we => '1',
			fwd_inv1 => '1',
			fwd_inv1_we => '1',
			scale_sch0 => "01010101010101010110",
			scale_sch0_we => '1',
			scale_sch1 => "01010101010101010110",
			scale_sch1_we => '1',
			rfd => rfd,
			xn_index => xn_index,
			busy => busy,
			edone => edone,
			done => done,
			dv => dv,
			xk_index => xk_index,
			xk0_re => xk0_re,
			xk0_im => xk0_im,
			xk1_re => xk1_re,
			xk1_im => xk1_im
			);

INST_I0R1 : MLPARE
  PORT MAP (
    clk => clk_64m,
    a => xi0,
    b => xr1,
    p => i0r1
  );

INST_I1R0 : MLPAIM
  PORT MAP (
    clk => clk_64m,
    a => xi1,
    b => xr0,
    p => i1r0
  );

INST_R0R1 : MLPBRE
  PORT MAP (
    clk => clk_64m,
    a => xr0,
    b => xr1,
    p => r0r1
  );

INST_I0I1 : MLPBIM
  PORT MAP (
    clk => clk_64m,
    a => xi0,
    b => xi1,
    p => i0i1
  );


Inst_SUB : SUB
  PORT MAP (
    a => i0r1,
    b => i1r0,
    clk => clk_64M,
    s => sub0
  );

INST_AAD : AAD
  PORT MAP (
    a => r0r1,
    b => i0i1,
    clk => clk_64m,
    s => sum0
  );

arctan_y <= sub0(23) &'1' &sub0(22 downto 0) WHEN sub0(23) = '1' ELSE sub0(23) &'0' &sub0(22 downto 0);
arctan_x <= sum0(23) &'1' &sum0(22 downto 0) WHEN sum0(23) = '1' ELSE sum0(23) &'0' &sum0(22 downto 0);
			
Inst_ARCTANA: ARCTANA 
     port map (
			x_in => arctan_x,
			y_in => arctan_y,
			phase_out => phase_out,
			clk => clk_64M
			);
			
Inst_RS232: RS232 PORT MAP(
		clk => clk180,
		uart_cs => uart_cs,
		phase => phase_out,
		txd => txd
	);

--phase <= "01100100100001111110110101"-phase_out;
Inst_LCD: LCD PORT MAP(
		clk => clk180,
		phase => phase_out,
		OE => oe,
		DIR1 => dir1,
		DIR2 => dir2,
		LCD_EN => lcd_en,
		LCD_RS => lcd_rs,
		LCD_RW => lcd_rw,
		LCD_DATA => lcd_data 
	);

Inst_DDS: DDS PORT MAP(
		clk => clk_64m,
		dds_iou => dds_iou,
		dds_cs => dds_cs,
		dds_sck => dds_sck,
		sdio0 => sdio0,
		sdio1 => sdio1,
		sdio2 => sdio2,
		sdio3 => sdio3,
		dds_mrt => dds_mrt,
		dds_pdc => dds_pdc,
		dds_cms => dds_cms,
		p0 => p0,
		p1 => p1,
		p2 => p2,
		p3 => p3,
		ctrl_mes => ctrl_mes,
		ctrl_ref => ctrl_ref
	);
			
process(CLK_64M)
begin
if(DCM_LCK = '1') then
  if (CLK_64M'event AND CLK_64M = '1') then
      if (CNT_64M  = 4) then       --    64 MHz / 5 = 12.8 MHz
		    CNT_64M <= 0;
          LGC_6M4 <= NOT LGC_6M4;  --  12.8 MHz / 2 =  6.4 MHz
	   else
		    CNT_64M <= CNT_64M + 1;
	   end if;
  end if;
end if;
end process;

AD_CNT_VEC <= CONV_STD_LOGIC_VECTOR (AD_CNT,10);

process(LGC_6M4)
begin
SCLK <= LGC_6M4;
if (LGC_6M4'EVENT and LGC_6M4 = '1') then
		 case AD_state is
       when AD_idl =>
           	AD_CS  <= '1';
				wr_en_in <= '0';
			   rd_en_in <= '0';
				if (FFT_START ='0' AND AD_CNT < 1024) then --WHEN AD_CNT =1024 , FFT_START = 1 next step.
					 CNT_6M4 <= CNT_6M4 + 1;
					 AD_state <= AD_srt;
				else
                AD_CNT <= 0;			
					 AD_state <= AD_idl;
				end if;
                     
       when AD_srt =>
            AD_CS <= '0';
            if (CNT_6M4 < 2 ) then  -- waiting for two steps at low  level.
					 CNT_6M4 <= CNT_6M4 + 1;
					 AD_state <= AD_srt;
				else
				    CNT_6M4 <= CNT_6M4 + 1;
				    AD_state <= AD_tru;
				end if;
				
		 when AD_tru =>
		      if (CNT_6M4 < 15) then
				    dina(bit_cnt) <= testdata_ch1(bit_cnt);
					 dinb(bit_cnt) <= testdata_ch2(bit_cnt);
					 bit_cnt <= bit_cnt + 1;
--				    dina(bit_cnt) <= sda; --change
--				    dinb(bit_cnt) <= sdb;
--					 if (bit_cnt > 0) then
--					     bit_cnt <= bit_cnt - 1;
--					 end if;
					 CNT_6M4 <= CNT_6M4 + 1;
					 AD_state <= AD_tru;
			   else
				    AD_CS <= '1';
					 bit_cnt <= 0; --change
--				    bit_cnt <= 11;
					 CNT_6M4 <= CNT_6M4 + 1;
					 AD_state <= AD_stp;
			   end if;
        
       when AD_stp =>
		      if (CNT_6M4 < 24) then  --cap frq : 6.4M / 25 = 256KHZ
                AD_CS <= '1';
					 CNT_6M4 <= CNT_6M4 + 1;
				    AD_state <= AD_stp;
				else
				    wr_en_in <= '1';
			       rd_en_in <= '0';
    				 din_FIFOA <= dina;
					 din_FIFOB <= dinb;
					 AD_CNT <= AD_CNT + 1;
					 CNT_6M4 <= 0;
					 AD_state <= AD_idl;
            end if;

       when others => AD_state <= AD_idl;
       end case;
	 end if;
end process;

process(CLK_64M)
begin
if (CLK_64M'EVENT and CLK_64M = '1') then
	 case FFT_state is
	 when FFT_idl =>
	      SCLR <= '1';
	      if (uart_cs_cnt < 250) then  --once uart_cs = 1 , the condition is only for 250 periods
			    uart_cs_cnt <= uart_cs_cnt + 1;
		   else
			    UART_CS <= '0';
				 uart_cs_cnt <= 0;
			end if;
			unload <= '0';
			if (AD_CNT = 1024) then --1024
	          SCLR<='0';
				 wr_en_out <= '0';
			    rd_en_out <= '1';
				 FFT_state <= FFT_in;
		   else
			    FFT_state <= FFT_idl;
	      end if;
   
    when FFT_in =>
	      uart_cs_cnt <= 0;
	      FFT_start <= '1';
			xr0 <= "000000000000";
			xi0 <= "000000000000";
			xr1 <= "000000000000";
			xi1 <= "000000000000";
	      if ( empty1 = '1' AND empty2 = '1') then -- wait for reading out fifo clearly
				  wr_en_out <= '0';
			     rd_en_out <= '0';
				  FFT_state <= FFT_dsp;
			else
				  wr_en_out <= '0';
			     rd_en_out <= '1';
				  FFT_state <= FFT_in;
			end if;
				 
	 when FFT_dsp =>
	      unload <= '1';
	      if ( dv = '1' ) then --when clk_64M pulse, dv has delay time.
				  FFT_state <= FFT_out;
			else
				  FFT_state <= FFT_dsp;
			end if;


	 when FFT_out =>
         if (xk_index = "0000000100") then
			   xr0 <= xk0_re;
				xi0 <= xk0_im;
				xr1 <= xk1_re;
				xi1 <= xk1_im;
				FFT_start <= '0';
				FFT_CNT <= 0;
			   uart_cs <= '1';
				FFT_state <= FFT_idl;
			else
			   FFT_CNT <= FFT_CNT + 1;
            FFT_state <= FFT_out;
		   end if;

	 when others => FFT_state <= FFT_idl;
	 end case;
end if;
end process;

process(clk_64M)
begin
if(clk_64M'event and clk_64M='1') then
   case FIFO_state is
	when FIFO_define =>
	     if (wr_en_in = '1') then
		      wr_en1 <= '1';
				wr_en2 <= '1';
				FIFO_state <= FIFO_check;
		  elsif ( wr_en_out = '1') then
 		      wr_en1 <= '1';
				wr_en2 <= '1';
				FIFO_state <= FIFO_define;
				elsif ( rd_en_out = '1') then
		      rd_en1 <= '1';
				rd_en2 <= '1';
				FIFO_state <= FIFO_define;
		         else
			      wr_en1 <= '0';
				   rd_en1 <= '0';
					wr_en2 <= '0';
				   rd_en2 <= '0';
			      FIFO_state <= FIFO_define;
		  end if;
		  
   when FIFO_check =>
        if (wait_cnt < 15) then
		      wr_en1 <= '0';
				wr_en2 <= '0';
		      if ( rd_en_out = '1') then
		           rd_en1 <= '1';
					  rd_en2 <= '1';
            end if;
           FIFO_state <= FIFO_check;
	        wait_cnt <= wait_cnt + 1;
		  else
		      FIFO_state <= FIFO_define;
				wait_cnt <= 0;
        end if;
		  
	 when others => FIFO_state <= FIFO_define;
   end case;
end if;
end process;

end behavioral;