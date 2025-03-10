-- ==============================================================
-- Generated by Vitis HLS v2023.1
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- ==============================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity sobel_focus_xFGradientY3x3_0_0_s is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    t0_val : IN STD_LOGIC_VECTOR (7 downto 0);
    t1_val : IN STD_LOGIC_VECTOR (7 downto 0);
    t2_val : IN STD_LOGIC_VECTOR (7 downto 0);
    b0_val : IN STD_LOGIC_VECTOR (7 downto 0);
    b1_val : IN STD_LOGIC_VECTOR (7 downto 0);
    b2_val : IN STD_LOGIC_VECTOR (7 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (7 downto 0);
    ap_ce : IN STD_LOGIC );
end;


architecture behav of sobel_focus_xFGradientY3x3_0_0_s is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001010";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv8_FF : STD_LOGIC_VECTOR (7 downto 0) := "11111111";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";

attribute shreg_extract : string;
    signal add_ln117_fu_162_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln117_reg_216 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal tmp_reg_221 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln122_fu_186_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln122_reg_227 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal M00_fu_70_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal M01_fu_82_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal zext_ln109_1_fu_98_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal zext_ln109_fu_94_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal A00_fu_102_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal zext_ln110_1_fu_116_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal zext_ln110_fu_112_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal S00_fu_120_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal zext_ln110_2_fu_126_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal zext_ln107_fu_78_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal add_ln113_fu_130_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal zext_ln108_fu_90_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal zext_ln114_fu_136_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal out_pix_2_fu_140_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal zext_ln109_2_fu_108_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal trunc_ln115_fu_146_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln117_1_fu_156_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal out_pix_fu_150_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_1_fu_176_p4 : STD_LOGIC_VECTOR (2 downto 0);
    signal xor_ln120_fu_192_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln120_fu_205_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln120_fu_197_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal select_ln120_1_fu_209_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_ce_reg : STD_LOGIC;
    signal ap_return_int_reg : STD_LOGIC_VECTOR (7 downto 0);


begin




    ap_ce_reg_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            ap_ce_reg <= ap_ce;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_const_logic_1))) then
                add_ln117_reg_216 <= add_ln117_fu_162_p2;
                icmp_ln122_reg_227 <= icmp_ln122_fu_186_p2;
                tmp_reg_221 <= out_pix_fu_150_p2(10 downto 10);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_ce_reg)) then
                ap_return_int_reg <= select_ln120_1_fu_209_p3;
            end if;
        end if;
    end process;
    A00_fu_102_p2 <= std_logic_vector(unsigned(zext_ln109_1_fu_98_p1) + unsigned(zext_ln109_fu_94_p1));
    M00_fu_70_p3 <= (t1_val & ap_const_lv1_0);
    M01_fu_82_p3 <= (b1_val & ap_const_lv1_0);
    S00_fu_120_p2 <= std_logic_vector(unsigned(zext_ln110_1_fu_116_p1) + unsigned(zext_ln110_fu_112_p1));
    add_ln113_fu_130_p2 <= std_logic_vector(unsigned(zext_ln110_2_fu_126_p1) + unsigned(zext_ln107_fu_78_p1));
    add_ln117_1_fu_156_p2 <= std_logic_vector(unsigned(trunc_ln115_fu_146_p1) + unsigned(b0_val));
    add_ln117_fu_162_p2 <= std_logic_vector(unsigned(add_ln117_1_fu_156_p2) + unsigned(b2_val));
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_return_assign_proc : process(select_ln120_1_fu_209_p3, ap_ce_reg, ap_return_int_reg)
    begin
        if ((ap_const_logic_0 = ap_ce_reg)) then 
            ap_return <= ap_return_int_reg;
        elsif ((ap_const_logic_1 = ap_ce_reg)) then 
            ap_return <= select_ln120_1_fu_209_p3;
        else 
            ap_return <= "XXXXXXXX";
        end if; 
    end process;

    icmp_ln122_fu_186_p2 <= "1" when (signed(tmp_1_fu_176_p4) > signed(ap_const_lv3_0)) else "0";
    or_ln120_fu_205_p2 <= (tmp_reg_221 or icmp_ln122_reg_227);
    out_pix_2_fu_140_p2 <= std_logic_vector(unsigned(zext_ln108_fu_90_p1) - unsigned(zext_ln114_fu_136_p1));
    out_pix_fu_150_p2 <= std_logic_vector(unsigned(out_pix_2_fu_140_p2) + unsigned(zext_ln109_2_fu_108_p1));
    select_ln120_1_fu_209_p3 <= 
        select_ln120_fu_197_p3 when (or_ln120_fu_205_p2(0) = '1') else 
        add_ln117_reg_216;
    select_ln120_fu_197_p3 <= 
        ap_const_lv8_FF when (xor_ln120_fu_192_p2(0) = '1') else 
        ap_const_lv8_0;
    tmp_1_fu_176_p4 <= out_pix_fu_150_p2(10 downto 8);
    trunc_ln115_fu_146_p1 <= out_pix_2_fu_140_p2(8 - 1 downto 0);
    xor_ln120_fu_192_p2 <= (tmp_reg_221 xor ap_const_lv1_1);
    zext_ln107_fu_78_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(M00_fu_70_p3),10));
    zext_ln108_fu_90_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(M01_fu_82_p3),11));
    zext_ln109_1_fu_98_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(b2_val),9));
    zext_ln109_2_fu_108_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(A00_fu_102_p2),11));
    zext_ln109_fu_94_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(b0_val),9));
    zext_ln110_1_fu_116_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(t2_val),9));
    zext_ln110_2_fu_126_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(S00_fu_120_p2),10));
    zext_ln110_fu_112_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(t0_val),9));
    zext_ln114_fu_136_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln113_fu_130_p2),11));
end behav;
