
-- VHDL Instantiation Created from source file TestData.vhd -- 10:46:52 08/15/2013
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT TestData
	PORT(
		clk : IN std_logic;
		num : IN std_logic_vector(9 downto 0);          
		da1 : OUT std_logic_vector(11 downto 0);
		da2 : OUT std_logic_vector(11 downto 0)
		);
	END COMPONENT;

	Inst_TestData: TestData PORT MAP(
		clk => ,
		num => ,
		da1 => ,
		da2 => 
	);


