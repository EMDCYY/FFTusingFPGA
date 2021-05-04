
-- VHDL Instantiation Created from source file RS232.vhd -- 10:43:00 08/20/2013
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT RS232
	PORT(
		clk : IN std_logic;
		uart_cs : IN std_logic;
		phase : IN std_logic_vector(25 downto 0);          
		txd : OUT std_logic
		);
	END COMPONENT;

	Inst_RS232: RS232 PORT MAP(
		clk => ,
		uart_cs => ,
		phase => ,
		txd => 
	);


