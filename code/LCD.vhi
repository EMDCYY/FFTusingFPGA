
-- VHDL Instantiation Created from source file LCD.vhd -- 14:40:04 08/17/2013
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

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

	Inst_LCD: LCD PORT MAP(
		clk => ,
		phase => ,
		OE => ,
		DIR1 => ,
		DIR2 => ,
		LCD_EN => ,
		LCD_RS => ,
		LCD_RW => ,
		LCD_DATA => 
	);


