
-- VHDL Instantiation Created from source file DDS.vhd -- 10:48:23 08/20/2013
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

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

	Inst_DDS: DDS PORT MAP(
		clk => ,
		dds_iou => ,
		dds_cs => ,
		dds_sck => ,
		sdio0 => ,
		sdio1 => ,
		sdio2 => ,
		sdio3 => ,
		dds_mrt => ,
		dds_pdc => ,
		dds_cms => ,
		p0 => ,
		p1 => ,
		p2 => ,
		p3 => ,
		ctrl_mes => ,
		ctrl_ref => 
	);


