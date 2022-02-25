// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Jan 19 20:05:17 2022
// Host        : LAPTOP-M107SEOD running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/Raymond_Meng/Documents/xlinx_FPGA/vivado_projects/pwm_led/pwm_led.sim/sim_1/synth/timing/xsim/pwm_led_time_synth.v
// Design      : pwm_led
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* CHANGE_TIME = "99" *) (* CNT_10MS = "499999" *) (* CNT_2S = "199" *) 
(* PWM_OFFSET = "5000" *) 
(* NotValidForBitStream *)
module pwm_led
   (sys_clk,
    rst_n,
    led);
  input sys_clk;
  input rst_n;
  output led;

  wire [19:0]cnt_10ms;
  wire \cnt_10ms[19]_i_10_n_0 ;
  wire \cnt_10ms[19]_i_2_n_0 ;
  wire \cnt_10ms[19]_i_3_n_0 ;
  wire \cnt_10ms[19]_i_5_n_0 ;
  wire \cnt_10ms[19]_i_6_n_0 ;
  wire \cnt_10ms[19]_i_7_n_0 ;
  wire \cnt_10ms[19]_i_8_n_0 ;
  wire \cnt_10ms[19]_i_9_n_0 ;
  wire \cnt_10ms_reg[12]_i_2_n_0 ;
  wire \cnt_10ms_reg[12]_i_2_n_1 ;
  wire \cnt_10ms_reg[12]_i_2_n_2 ;
  wire \cnt_10ms_reg[12]_i_2_n_3 ;
  wire \cnt_10ms_reg[16]_i_2_n_0 ;
  wire \cnt_10ms_reg[16]_i_2_n_1 ;
  wire \cnt_10ms_reg[16]_i_2_n_2 ;
  wire \cnt_10ms_reg[16]_i_2_n_3 ;
  wire \cnt_10ms_reg[19]_i_4_n_2 ;
  wire \cnt_10ms_reg[19]_i_4_n_3 ;
  wire \cnt_10ms_reg[4]_i_2_n_0 ;
  wire \cnt_10ms_reg[4]_i_2_n_1 ;
  wire \cnt_10ms_reg[4]_i_2_n_2 ;
  wire \cnt_10ms_reg[4]_i_2_n_3 ;
  wire \cnt_10ms_reg[8]_i_2_n_0 ;
  wire \cnt_10ms_reg[8]_i_2_n_1 ;
  wire \cnt_10ms_reg[8]_i_2_n_2 ;
  wire \cnt_10ms_reg[8]_i_2_n_3 ;
  wire \cnt_10ms_reg_n_0_[0] ;
  wire \cnt_10ms_reg_n_0_[10] ;
  wire \cnt_10ms_reg_n_0_[11] ;
  wire \cnt_10ms_reg_n_0_[12] ;
  wire \cnt_10ms_reg_n_0_[13] ;
  wire \cnt_10ms_reg_n_0_[14] ;
  wire \cnt_10ms_reg_n_0_[15] ;
  wire \cnt_10ms_reg_n_0_[16] ;
  wire \cnt_10ms_reg_n_0_[17] ;
  wire \cnt_10ms_reg_n_0_[18] ;
  wire \cnt_10ms_reg_n_0_[19] ;
  wire \cnt_10ms_reg_n_0_[1] ;
  wire \cnt_10ms_reg_n_0_[2] ;
  wire \cnt_10ms_reg_n_0_[3] ;
  wire \cnt_10ms_reg_n_0_[4] ;
  wire \cnt_10ms_reg_n_0_[5] ;
  wire \cnt_10ms_reg_n_0_[6] ;
  wire \cnt_10ms_reg_n_0_[7] ;
  wire \cnt_10ms_reg_n_0_[8] ;
  wire \cnt_10ms_reg_n_0_[9] ;
  wire cnt_2s;
  wire \cnt_2s[0]_i_1_n_0 ;
  wire \cnt_2s[1]_i_1_n_0 ;
  wire \cnt_2s[2]_i_1_n_0 ;
  wire \cnt_2s[3]_i_1_n_0 ;
  wire \cnt_2s[4]_i_1_n_0 ;
  wire \cnt_2s[4]_i_2_n_0 ;
  wire \cnt_2s[5]_i_1_n_0 ;
  wire \cnt_2s[6]_i_1_n_0 ;
  wire \cnt_2s[7]_i_2_n_0 ;
  wire \cnt_2s[7]_i_3_n_0 ;
  wire \cnt_2s_reg_n_0_[0] ;
  wire \cnt_2s_reg_n_0_[1] ;
  wire \cnt_2s_reg_n_0_[2] ;
  wire \cnt_2s_reg_n_0_[3] ;
  wire \cnt_2s_reg_n_0_[4] ;
  wire \cnt_2s_reg_n_0_[5] ;
  wire \cnt_2s_reg_n_0_[6] ;
  wire \cnt_2s_reg_n_0_[7] ;
  wire [19:1]data0;
  wire \duty_cycle[11]_i_2_n_0 ;
  wire \duty_cycle[11]_i_3_n_0 ;
  wire \duty_cycle[11]_i_4_n_0 ;
  wire \duty_cycle[11]_i_5_n_0 ;
  wire \duty_cycle[15]_i_2_n_0 ;
  wire \duty_cycle[15]_i_3_n_0 ;
  wire \duty_cycle[15]_i_4_n_0 ;
  wire \duty_cycle[15]_i_5_n_0 ;
  wire \duty_cycle[19]_i_2_n_0 ;
  wire \duty_cycle[3]_i_2_n_0 ;
  wire \duty_cycle[3]_i_3_n_0 ;
  wire \duty_cycle[3]_i_4_n_0 ;
  wire \duty_cycle[7]_i_2_n_0 ;
  wire \duty_cycle[7]_i_3_n_0 ;
  wire \duty_cycle[7]_i_4_n_0 ;
  wire \duty_cycle[7]_i_5_n_0 ;
  wire [19:3]duty_cycle_reg;
  wire \duty_cycle_reg[11]_i_1_n_0 ;
  wire \duty_cycle_reg[11]_i_1_n_1 ;
  wire \duty_cycle_reg[11]_i_1_n_2 ;
  wire \duty_cycle_reg[11]_i_1_n_3 ;
  wire \duty_cycle_reg[11]_i_1_n_4 ;
  wire \duty_cycle_reg[11]_i_1_n_5 ;
  wire \duty_cycle_reg[11]_i_1_n_6 ;
  wire \duty_cycle_reg[11]_i_1_n_7 ;
  wire \duty_cycle_reg[15]_i_1_n_0 ;
  wire \duty_cycle_reg[15]_i_1_n_1 ;
  wire \duty_cycle_reg[15]_i_1_n_2 ;
  wire \duty_cycle_reg[15]_i_1_n_3 ;
  wire \duty_cycle_reg[15]_i_1_n_4 ;
  wire \duty_cycle_reg[15]_i_1_n_5 ;
  wire \duty_cycle_reg[15]_i_1_n_6 ;
  wire \duty_cycle_reg[15]_i_1_n_7 ;
  wire \duty_cycle_reg[19]_i_1_n_7 ;
  wire \duty_cycle_reg[3]_i_1_n_0 ;
  wire \duty_cycle_reg[3]_i_1_n_1 ;
  wire \duty_cycle_reg[3]_i_1_n_2 ;
  wire \duty_cycle_reg[3]_i_1_n_3 ;
  wire \duty_cycle_reg[3]_i_1_n_4 ;
  wire \duty_cycle_reg[3]_i_1_n_5 ;
  wire \duty_cycle_reg[3]_i_1_n_6 ;
  wire \duty_cycle_reg[3]_i_1_n_7 ;
  wire \duty_cycle_reg[7]_i_1_n_0 ;
  wire \duty_cycle_reg[7]_i_1_n_1 ;
  wire \duty_cycle_reg[7]_i_1_n_2 ;
  wire \duty_cycle_reg[7]_i_1_n_3 ;
  wire \duty_cycle_reg[7]_i_1_n_4 ;
  wire \duty_cycle_reg[7]_i_1_n_5 ;
  wire \duty_cycle_reg[7]_i_1_n_6 ;
  wire \duty_cycle_reg[7]_i_1_n_7 ;
  wire led;
  wire led_OBUF;
  wire p_0_in;
  wire pwm;
  wire pwm_i_10_n_0;
  wire pwm_i_11_n_0;
  wire pwm_i_12_n_0;
  wire pwm_i_13_n_0;
  wire pwm_i_14_n_0;
  wire pwm_i_15_n_0;
  wire pwm_i_16_n_0;
  wire pwm_i_17_n_0;
  wire pwm_i_18_n_0;
  wire pwm_i_19_n_0;
  wire pwm_i_20_n_0;
  wire pwm_i_21_n_0;
  wire pwm_i_3_n_0;
  wire pwm_i_4_n_0;
  wire pwm_i_6_n_0;
  wire pwm_i_7_n_0;
  wire pwm_i_8_n_0;
  wire pwm_i_9_n_0;
  wire pwm_reg_i_2_n_0;
  wire pwm_reg_i_2_n_1;
  wire pwm_reg_i_2_n_2;
  wire pwm_reg_i_2_n_3;
  wire pwm_reg_i_5_n_0;
  wire pwm_reg_i_5_n_1;
  wire pwm_reg_i_5_n_2;
  wire pwm_reg_i_5_n_3;
  wire rst_n;
  wire rst_n_IBUF;
  wire sys_clk;
  wire sys_clk_IBUF;
  wire sys_clk_IBUF_BUFG;
  wire work_flag;
  wire work_flag_i_1_n_0;
  wire [3:2]\NLW_cnt_10ms_reg[19]_i_4_CO_UNCONNECTED ;
  wire [3:3]\NLW_cnt_10ms_reg[19]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_duty_cycle_reg[19]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_duty_cycle_reg[19]_i_1_O_UNCONNECTED ;
  wire [3:1]NLW_pwm_reg_i_1_CO_UNCONNECTED;
  wire [3:0]NLW_pwm_reg_i_1_O_UNCONNECTED;
  wire [3:0]NLW_pwm_reg_i_2_O_UNCONNECTED;
  wire [3:0]NLW_pwm_reg_i_5_O_UNCONNECTED;

initial begin
 $sdf_annotate("pwm_led_time_synth.sdf",,,,"tool_control");
end
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_10ms[0]_i_1 
       (.I0(\cnt_10ms_reg_n_0_[0] ),
        .O(cnt_10ms[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_10ms[10]_i_1 
       (.I0(\cnt_10ms[19]_i_3_n_0 ),
        .I1(data0[10]),
        .O(cnt_10ms[10]));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_10ms[11]_i_1 
       (.I0(\cnt_10ms[19]_i_3_n_0 ),
        .I1(data0[11]),
        .O(cnt_10ms[11]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_10ms[12]_i_1 
       (.I0(\cnt_10ms[19]_i_3_n_0 ),
        .I1(data0[12]),
        .O(cnt_10ms[12]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_10ms[13]_i_1 
       (.I0(\cnt_10ms[19]_i_3_n_0 ),
        .I1(data0[13]),
        .O(cnt_10ms[13]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_10ms[14]_i_1 
       (.I0(\cnt_10ms[19]_i_3_n_0 ),
        .I1(data0[14]),
        .O(cnt_10ms[14]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_10ms[15]_i_1 
       (.I0(\cnt_10ms[19]_i_3_n_0 ),
        .I1(data0[15]),
        .O(cnt_10ms[15]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_10ms[16]_i_1 
       (.I0(\cnt_10ms[19]_i_3_n_0 ),
        .I1(data0[16]),
        .O(cnt_10ms[16]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_10ms[17]_i_1 
       (.I0(\cnt_10ms[19]_i_3_n_0 ),
        .I1(data0[17]),
        .O(cnt_10ms[17]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_10ms[18]_i_1 
       (.I0(\cnt_10ms[19]_i_3_n_0 ),
        .I1(data0[18]),
        .O(cnt_10ms[18]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_10ms[19]_i_1 
       (.I0(\cnt_10ms[19]_i_3_n_0 ),
        .I1(data0[19]),
        .O(cnt_10ms[19]));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \cnt_10ms[19]_i_10 
       (.I0(\cnt_10ms_reg_n_0_[4] ),
        .I1(\cnt_10ms_reg_n_0_[5] ),
        .I2(\cnt_10ms_reg_n_0_[8] ),
        .I3(\cnt_10ms_reg_n_0_[9] ),
        .O(\cnt_10ms[19]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_10ms[19]_i_2 
       (.I0(rst_n_IBUF),
        .O(\cnt_10ms[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \cnt_10ms[19]_i_3 
       (.I0(\cnt_10ms[19]_i_5_n_0 ),
        .I1(\cnt_10ms[19]_i_6_n_0 ),
        .I2(\cnt_10ms[19]_i_7_n_0 ),
        .I3(\cnt_10ms[19]_i_8_n_0 ),
        .I4(\cnt_10ms[19]_i_9_n_0 ),
        .I5(\cnt_10ms[19]_i_10_n_0 ),
        .O(\cnt_10ms[19]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \cnt_10ms[19]_i_5 
       (.I0(\cnt_10ms_reg_n_0_[1] ),
        .I1(\cnt_10ms_reg_n_0_[0] ),
        .I2(\cnt_10ms_reg_n_0_[3] ),
        .I3(\cnt_10ms_reg_n_0_[2] ),
        .O(\cnt_10ms[19]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \cnt_10ms[19]_i_6 
       (.I0(\cnt_10ms_reg_n_0_[17] ),
        .I1(\cnt_10ms_reg_n_0_[16] ),
        .I2(\cnt_10ms_reg_n_0_[18] ),
        .I3(\cnt_10ms_reg_n_0_[19] ),
        .O(\cnt_10ms[19]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \cnt_10ms[19]_i_7 
       (.I0(\cnt_10ms_reg_n_0_[10] ),
        .I1(\cnt_10ms_reg_n_0_[11] ),
        .O(\cnt_10ms[19]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \cnt_10ms[19]_i_8 
       (.I0(\cnt_10ms_reg_n_0_[6] ),
        .I1(\cnt_10ms_reg_n_0_[7] ),
        .O(\cnt_10ms[19]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \cnt_10ms[19]_i_9 
       (.I0(\cnt_10ms_reg_n_0_[13] ),
        .I1(\cnt_10ms_reg_n_0_[12] ),
        .I2(\cnt_10ms_reg_n_0_[15] ),
        .I3(\cnt_10ms_reg_n_0_[14] ),
        .O(\cnt_10ms[19]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_10ms[1]_i_1 
       (.I0(\cnt_10ms[19]_i_3_n_0 ),
        .I1(data0[1]),
        .O(cnt_10ms[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_10ms[2]_i_1 
       (.I0(\cnt_10ms[19]_i_3_n_0 ),
        .I1(data0[2]),
        .O(cnt_10ms[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_10ms[3]_i_1 
       (.I0(\cnt_10ms[19]_i_3_n_0 ),
        .I1(data0[3]),
        .O(cnt_10ms[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_10ms[4]_i_1 
       (.I0(\cnt_10ms[19]_i_3_n_0 ),
        .I1(data0[4]),
        .O(cnt_10ms[4]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_10ms[5]_i_1 
       (.I0(\cnt_10ms[19]_i_3_n_0 ),
        .I1(data0[5]),
        .O(cnt_10ms[5]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_10ms[6]_i_1 
       (.I0(\cnt_10ms[19]_i_3_n_0 ),
        .I1(data0[6]),
        .O(cnt_10ms[6]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_10ms[7]_i_1 
       (.I0(\cnt_10ms[19]_i_3_n_0 ),
        .I1(data0[7]),
        .O(cnt_10ms[7]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_10ms[8]_i_1 
       (.I0(\cnt_10ms[19]_i_3_n_0 ),
        .I1(data0[8]),
        .O(cnt_10ms[8]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_10ms[9]_i_1 
       (.I0(\cnt_10ms[19]_i_3_n_0 ),
        .I1(data0[9]),
        .O(cnt_10ms[9]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_10ms_reg[0] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cnt_10ms[19]_i_2_n_0 ),
        .D(cnt_10ms[0]),
        .Q(\cnt_10ms_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_10ms_reg[10] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cnt_10ms[19]_i_2_n_0 ),
        .D(cnt_10ms[10]),
        .Q(\cnt_10ms_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_10ms_reg[11] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cnt_10ms[19]_i_2_n_0 ),
        .D(cnt_10ms[11]),
        .Q(\cnt_10ms_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_10ms_reg[12] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cnt_10ms[19]_i_2_n_0 ),
        .D(cnt_10ms[12]),
        .Q(\cnt_10ms_reg_n_0_[12] ));
  CARRY4 \cnt_10ms_reg[12]_i_2 
       (.CI(\cnt_10ms_reg[8]_i_2_n_0 ),
        .CO({\cnt_10ms_reg[12]_i_2_n_0 ,\cnt_10ms_reg[12]_i_2_n_1 ,\cnt_10ms_reg[12]_i_2_n_2 ,\cnt_10ms_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S({\cnt_10ms_reg_n_0_[12] ,\cnt_10ms_reg_n_0_[11] ,\cnt_10ms_reg_n_0_[10] ,\cnt_10ms_reg_n_0_[9] }));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_10ms_reg[13] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cnt_10ms[19]_i_2_n_0 ),
        .D(cnt_10ms[13]),
        .Q(\cnt_10ms_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_10ms_reg[14] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cnt_10ms[19]_i_2_n_0 ),
        .D(cnt_10ms[14]),
        .Q(\cnt_10ms_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_10ms_reg[15] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cnt_10ms[19]_i_2_n_0 ),
        .D(cnt_10ms[15]),
        .Q(\cnt_10ms_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_10ms_reg[16] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cnt_10ms[19]_i_2_n_0 ),
        .D(cnt_10ms[16]),
        .Q(\cnt_10ms_reg_n_0_[16] ));
  CARRY4 \cnt_10ms_reg[16]_i_2 
       (.CI(\cnt_10ms_reg[12]_i_2_n_0 ),
        .CO({\cnt_10ms_reg[16]_i_2_n_0 ,\cnt_10ms_reg[16]_i_2_n_1 ,\cnt_10ms_reg[16]_i_2_n_2 ,\cnt_10ms_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S({\cnt_10ms_reg_n_0_[16] ,\cnt_10ms_reg_n_0_[15] ,\cnt_10ms_reg_n_0_[14] ,\cnt_10ms_reg_n_0_[13] }));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_10ms_reg[17] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cnt_10ms[19]_i_2_n_0 ),
        .D(cnt_10ms[17]),
        .Q(\cnt_10ms_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_10ms_reg[18] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cnt_10ms[19]_i_2_n_0 ),
        .D(cnt_10ms[18]),
        .Q(\cnt_10ms_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_10ms_reg[19] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cnt_10ms[19]_i_2_n_0 ),
        .D(cnt_10ms[19]),
        .Q(\cnt_10ms_reg_n_0_[19] ));
  CARRY4 \cnt_10ms_reg[19]_i_4 
       (.CI(\cnt_10ms_reg[16]_i_2_n_0 ),
        .CO({\NLW_cnt_10ms_reg[19]_i_4_CO_UNCONNECTED [3:2],\cnt_10ms_reg[19]_i_4_n_2 ,\cnt_10ms_reg[19]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_cnt_10ms_reg[19]_i_4_O_UNCONNECTED [3],data0[19:17]}),
        .S({1'b0,\cnt_10ms_reg_n_0_[19] ,\cnt_10ms_reg_n_0_[18] ,\cnt_10ms_reg_n_0_[17] }));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_10ms_reg[1] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cnt_10ms[19]_i_2_n_0 ),
        .D(cnt_10ms[1]),
        .Q(\cnt_10ms_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_10ms_reg[2] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cnt_10ms[19]_i_2_n_0 ),
        .D(cnt_10ms[2]),
        .Q(\cnt_10ms_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_10ms_reg[3] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cnt_10ms[19]_i_2_n_0 ),
        .D(cnt_10ms[3]),
        .Q(\cnt_10ms_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_10ms_reg[4] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cnt_10ms[19]_i_2_n_0 ),
        .D(cnt_10ms[4]),
        .Q(\cnt_10ms_reg_n_0_[4] ));
  CARRY4 \cnt_10ms_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\cnt_10ms_reg[4]_i_2_n_0 ,\cnt_10ms_reg[4]_i_2_n_1 ,\cnt_10ms_reg[4]_i_2_n_2 ,\cnt_10ms_reg[4]_i_2_n_3 }),
        .CYINIT(\cnt_10ms_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({\cnt_10ms_reg_n_0_[4] ,\cnt_10ms_reg_n_0_[3] ,\cnt_10ms_reg_n_0_[2] ,\cnt_10ms_reg_n_0_[1] }));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_10ms_reg[5] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cnt_10ms[19]_i_2_n_0 ),
        .D(cnt_10ms[5]),
        .Q(\cnt_10ms_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_10ms_reg[6] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cnt_10ms[19]_i_2_n_0 ),
        .D(cnt_10ms[6]),
        .Q(\cnt_10ms_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_10ms_reg[7] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cnt_10ms[19]_i_2_n_0 ),
        .D(cnt_10ms[7]),
        .Q(\cnt_10ms_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_10ms_reg[8] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cnt_10ms[19]_i_2_n_0 ),
        .D(cnt_10ms[8]),
        .Q(\cnt_10ms_reg_n_0_[8] ));
  CARRY4 \cnt_10ms_reg[8]_i_2 
       (.CI(\cnt_10ms_reg[4]_i_2_n_0 ),
        .CO({\cnt_10ms_reg[8]_i_2_n_0 ,\cnt_10ms_reg[8]_i_2_n_1 ,\cnt_10ms_reg[8]_i_2_n_2 ,\cnt_10ms_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S({\cnt_10ms_reg_n_0_[8] ,\cnt_10ms_reg_n_0_[7] ,\cnt_10ms_reg_n_0_[6] ,\cnt_10ms_reg_n_0_[5] }));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_10ms_reg[9] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cnt_10ms[19]_i_2_n_0 ),
        .D(cnt_10ms[9]),
        .Q(\cnt_10ms_reg_n_0_[9] ));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_2s[0]_i_1 
       (.I0(\cnt_2s_reg_n_0_[0] ),
        .O(\cnt_2s[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \cnt_2s[1]_i_1 
       (.I0(\cnt_2s[4]_i_2_n_0 ),
        .I1(\cnt_2s_reg_n_0_[1] ),
        .I2(\cnt_2s_reg_n_0_[0] ),
        .O(\cnt_2s[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \cnt_2s[2]_i_1 
       (.I0(\cnt_2s[4]_i_2_n_0 ),
        .I1(\cnt_2s_reg_n_0_[2] ),
        .I2(\cnt_2s_reg_n_0_[0] ),
        .I3(\cnt_2s_reg_n_0_[1] ),
        .O(\cnt_2s[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \cnt_2s[3]_i_1 
       (.I0(\cnt_2s[4]_i_2_n_0 ),
        .I1(\cnt_2s_reg_n_0_[3] ),
        .I2(\cnt_2s_reg_n_0_[1] ),
        .I3(\cnt_2s_reg_n_0_[0] ),
        .I4(\cnt_2s_reg_n_0_[2] ),
        .O(\cnt_2s[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \cnt_2s[4]_i_1 
       (.I0(\cnt_2s[4]_i_2_n_0 ),
        .I1(\cnt_2s_reg_n_0_[4] ),
        .I2(\cnt_2s_reg_n_0_[3] ),
        .I3(\cnt_2s_reg_n_0_[2] ),
        .I4(\cnt_2s_reg_n_0_[0] ),
        .I5(\cnt_2s_reg_n_0_[1] ),
        .O(\cnt_2s[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFBFFFF)) 
    \cnt_2s[4]_i_2 
       (.I0(\cnt_2s_reg_n_0_[5] ),
        .I1(\cnt_2s_reg_n_0_[7] ),
        .I2(\cnt_2s_reg_n_0_[3] ),
        .I3(\cnt_2s_reg_n_0_[4] ),
        .I4(\cnt_2s_reg_n_0_[6] ),
        .I5(\cnt_2s[7]_i_3_n_0 ),
        .O(\cnt_2s[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hAA6A)) 
    \cnt_2s[5]_i_1 
       (.I0(\cnt_2s_reg_n_0_[5] ),
        .I1(\cnt_2s_reg_n_0_[4] ),
        .I2(\cnt_2s_reg_n_0_[3] ),
        .I3(\cnt_2s[7]_i_3_n_0 ),
        .O(\cnt_2s[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCC3CCCCCC4)) 
    \cnt_2s[6]_i_1 
       (.I0(\cnt_2s_reg_n_0_[7] ),
        .I1(\cnt_2s_reg_n_0_[6] ),
        .I2(\cnt_2s_reg_n_0_[3] ),
        .I3(\cnt_2s_reg_n_0_[4] ),
        .I4(\cnt_2s_reg_n_0_[5] ),
        .I5(\cnt_2s[7]_i_3_n_0 ),
        .O(\cnt_2s[6]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_2s[7]_i_1 
       (.I0(\cnt_10ms[19]_i_3_n_0 ),
        .O(cnt_2s));
  LUT6 #(
    .INIT(64'hAAAAAAAA6AA8AAAA)) 
    \cnt_2s[7]_i_2 
       (.I0(\cnt_2s_reg_n_0_[7] ),
        .I1(\cnt_2s_reg_n_0_[3] ),
        .I2(\cnt_2s_reg_n_0_[4] ),
        .I3(\cnt_2s_reg_n_0_[5] ),
        .I4(\cnt_2s_reg_n_0_[6] ),
        .I5(\cnt_2s[7]_i_3_n_0 ),
        .O(\cnt_2s[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \cnt_2s[7]_i_3 
       (.I0(\cnt_2s_reg_n_0_[1] ),
        .I1(\cnt_2s_reg_n_0_[0] ),
        .I2(\cnt_2s_reg_n_0_[2] ),
        .O(\cnt_2s[7]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_2s_reg[0] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(cnt_2s),
        .CLR(\cnt_10ms[19]_i_2_n_0 ),
        .D(\cnt_2s[0]_i_1_n_0 ),
        .Q(\cnt_2s_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_2s_reg[1] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(cnt_2s),
        .CLR(\cnt_10ms[19]_i_2_n_0 ),
        .D(\cnt_2s[1]_i_1_n_0 ),
        .Q(\cnt_2s_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_2s_reg[2] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(cnt_2s),
        .CLR(\cnt_10ms[19]_i_2_n_0 ),
        .D(\cnt_2s[2]_i_1_n_0 ),
        .Q(\cnt_2s_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_2s_reg[3] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(cnt_2s),
        .CLR(\cnt_10ms[19]_i_2_n_0 ),
        .D(\cnt_2s[3]_i_1_n_0 ),
        .Q(\cnt_2s_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_2s_reg[4] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(cnt_2s),
        .CLR(\cnt_10ms[19]_i_2_n_0 ),
        .D(\cnt_2s[4]_i_1_n_0 ),
        .Q(\cnt_2s_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_2s_reg[5] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(cnt_2s),
        .CLR(\cnt_10ms[19]_i_2_n_0 ),
        .D(\cnt_2s[5]_i_1_n_0 ),
        .Q(\cnt_2s_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_2s_reg[6] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(cnt_2s),
        .CLR(\cnt_10ms[19]_i_2_n_0 ),
        .D(\cnt_2s[6]_i_1_n_0 ),
        .Q(\cnt_2s_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_2s_reg[7] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(cnt_2s),
        .CLR(\cnt_10ms[19]_i_2_n_0 ),
        .D(\cnt_2s[7]_i_2_n_0 ),
        .Q(\cnt_2s_reg_n_0_[7] ));
  LUT2 #(
    .INIT(4'h6)) 
    \duty_cycle[11]_i_2 
       (.I0(work_flag),
        .I1(duty_cycle_reg[14]),
        .O(\duty_cycle[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \duty_cycle[11]_i_3 
       (.I0(work_flag),
        .I1(duty_cycle_reg[13]),
        .O(\duty_cycle[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \duty_cycle[11]_i_4 
       (.I0(work_flag),
        .I1(duty_cycle_reg[12]),
        .O(\duty_cycle[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \duty_cycle[11]_i_5 
       (.I0(work_flag),
        .I1(duty_cycle_reg[11]),
        .O(\duty_cycle[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \duty_cycle[15]_i_2 
       (.I0(work_flag),
        .I1(duty_cycle_reg[18]),
        .O(\duty_cycle[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \duty_cycle[15]_i_3 
       (.I0(work_flag),
        .I1(duty_cycle_reg[17]),
        .O(\duty_cycle[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \duty_cycle[15]_i_4 
       (.I0(work_flag),
        .I1(duty_cycle_reg[16]),
        .O(\duty_cycle[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \duty_cycle[15]_i_5 
       (.I0(work_flag),
        .I1(duty_cycle_reg[15]),
        .O(\duty_cycle[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \duty_cycle[19]_i_2 
       (.I0(work_flag),
        .I1(duty_cycle_reg[19]),
        .O(\duty_cycle[19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \duty_cycle[3]_i_2 
       (.I0(work_flag),
        .I1(duty_cycle_reg[6]),
        .O(\duty_cycle[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \duty_cycle[3]_i_3 
       (.I0(work_flag),
        .I1(duty_cycle_reg[5]),
        .O(\duty_cycle[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \duty_cycle[3]_i_4 
       (.I0(work_flag),
        .I1(duty_cycle_reg[4]),
        .O(\duty_cycle[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \duty_cycle[7]_i_2 
       (.I0(work_flag),
        .I1(duty_cycle_reg[10]),
        .O(\duty_cycle[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \duty_cycle[7]_i_3 
       (.I0(work_flag),
        .I1(duty_cycle_reg[9]),
        .O(\duty_cycle[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \duty_cycle[7]_i_4 
       (.I0(work_flag),
        .I1(duty_cycle_reg[8]),
        .O(\duty_cycle[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \duty_cycle[7]_i_5 
       (.I0(work_flag),
        .I1(duty_cycle_reg[7]),
        .O(\duty_cycle[7]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \duty_cycle_reg[10] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(cnt_2s),
        .CLR(\cnt_10ms[19]_i_2_n_0 ),
        .D(\duty_cycle_reg[7]_i_1_n_4 ),
        .Q(duty_cycle_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \duty_cycle_reg[11] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(cnt_2s),
        .CLR(\cnt_10ms[19]_i_2_n_0 ),
        .D(\duty_cycle_reg[11]_i_1_n_7 ),
        .Q(duty_cycle_reg[11]));
  CARRY4 \duty_cycle_reg[11]_i_1 
       (.CI(\duty_cycle_reg[7]_i_1_n_0 ),
        .CO({\duty_cycle_reg[11]_i_1_n_0 ,\duty_cycle_reg[11]_i_1_n_1 ,\duty_cycle_reg[11]_i_1_n_2 ,\duty_cycle_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({work_flag,work_flag,duty_cycle_reg[12],work_flag}),
        .O({\duty_cycle_reg[11]_i_1_n_4 ,\duty_cycle_reg[11]_i_1_n_5 ,\duty_cycle_reg[11]_i_1_n_6 ,\duty_cycle_reg[11]_i_1_n_7 }),
        .S({\duty_cycle[11]_i_2_n_0 ,\duty_cycle[11]_i_3_n_0 ,\duty_cycle[11]_i_4_n_0 ,\duty_cycle[11]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \duty_cycle_reg[12] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(cnt_2s),
        .CLR(\cnt_10ms[19]_i_2_n_0 ),
        .D(\duty_cycle_reg[11]_i_1_n_6 ),
        .Q(duty_cycle_reg[12]));
  FDCE #(
    .INIT(1'b0)) 
    \duty_cycle_reg[13] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(cnt_2s),
        .CLR(\cnt_10ms[19]_i_2_n_0 ),
        .D(\duty_cycle_reg[11]_i_1_n_5 ),
        .Q(duty_cycle_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \duty_cycle_reg[14] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(cnt_2s),
        .CLR(\cnt_10ms[19]_i_2_n_0 ),
        .D(\duty_cycle_reg[11]_i_1_n_4 ),
        .Q(duty_cycle_reg[14]));
  FDCE #(
    .INIT(1'b0)) 
    \duty_cycle_reg[15] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(cnt_2s),
        .CLR(\cnt_10ms[19]_i_2_n_0 ),
        .D(\duty_cycle_reg[15]_i_1_n_7 ),
        .Q(duty_cycle_reg[15]));
  CARRY4 \duty_cycle_reg[15]_i_1 
       (.CI(\duty_cycle_reg[11]_i_1_n_0 ),
        .CO({\duty_cycle_reg[15]_i_1_n_0 ,\duty_cycle_reg[15]_i_1_n_1 ,\duty_cycle_reg[15]_i_1_n_2 ,\duty_cycle_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({work_flag,work_flag,work_flag,work_flag}),
        .O({\duty_cycle_reg[15]_i_1_n_4 ,\duty_cycle_reg[15]_i_1_n_5 ,\duty_cycle_reg[15]_i_1_n_6 ,\duty_cycle_reg[15]_i_1_n_7 }),
        .S({\duty_cycle[15]_i_2_n_0 ,\duty_cycle[15]_i_3_n_0 ,\duty_cycle[15]_i_4_n_0 ,\duty_cycle[15]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \duty_cycle_reg[16] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(cnt_2s),
        .CLR(\cnt_10ms[19]_i_2_n_0 ),
        .D(\duty_cycle_reg[15]_i_1_n_6 ),
        .Q(duty_cycle_reg[16]));
  FDCE #(
    .INIT(1'b0)) 
    \duty_cycle_reg[17] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(cnt_2s),
        .CLR(\cnt_10ms[19]_i_2_n_0 ),
        .D(\duty_cycle_reg[15]_i_1_n_5 ),
        .Q(duty_cycle_reg[17]));
  FDCE #(
    .INIT(1'b0)) 
    \duty_cycle_reg[18] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(cnt_2s),
        .CLR(\cnt_10ms[19]_i_2_n_0 ),
        .D(\duty_cycle_reg[15]_i_1_n_4 ),
        .Q(duty_cycle_reg[18]));
  FDCE #(
    .INIT(1'b0)) 
    \duty_cycle_reg[19] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(cnt_2s),
        .CLR(\cnt_10ms[19]_i_2_n_0 ),
        .D(\duty_cycle_reg[19]_i_1_n_7 ),
        .Q(duty_cycle_reg[19]));
  CARRY4 \duty_cycle_reg[19]_i_1 
       (.CI(\duty_cycle_reg[15]_i_1_n_0 ),
        .CO(\NLW_duty_cycle_reg[19]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_duty_cycle_reg[19]_i_1_O_UNCONNECTED [3:1],\duty_cycle_reg[19]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,\duty_cycle[19]_i_2_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \duty_cycle_reg[3] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(cnt_2s),
        .CLR(\cnt_10ms[19]_i_2_n_0 ),
        .D(\duty_cycle_reg[3]_i_1_n_7 ),
        .Q(duty_cycle_reg[3]));
  CARRY4 \duty_cycle_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\duty_cycle_reg[3]_i_1_n_0 ,\duty_cycle_reg[3]_i_1_n_1 ,\duty_cycle_reg[3]_i_1_n_2 ,\duty_cycle_reg[3]_i_1_n_3 }),
        .CYINIT(1'b1),
        .DI({work_flag,work_flag,work_flag,1'b0}),
        .O({\duty_cycle_reg[3]_i_1_n_4 ,\duty_cycle_reg[3]_i_1_n_5 ,\duty_cycle_reg[3]_i_1_n_6 ,\duty_cycle_reg[3]_i_1_n_7 }),
        .S({\duty_cycle[3]_i_2_n_0 ,\duty_cycle[3]_i_3_n_0 ,\duty_cycle[3]_i_4_n_0 ,duty_cycle_reg[3]}));
  FDCE #(
    .INIT(1'b0)) 
    \duty_cycle_reg[4] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(cnt_2s),
        .CLR(\cnt_10ms[19]_i_2_n_0 ),
        .D(\duty_cycle_reg[3]_i_1_n_6 ),
        .Q(duty_cycle_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \duty_cycle_reg[5] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(cnt_2s),
        .CLR(\cnt_10ms[19]_i_2_n_0 ),
        .D(\duty_cycle_reg[3]_i_1_n_5 ),
        .Q(duty_cycle_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \duty_cycle_reg[6] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(cnt_2s),
        .CLR(\cnt_10ms[19]_i_2_n_0 ),
        .D(\duty_cycle_reg[3]_i_1_n_4 ),
        .Q(duty_cycle_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \duty_cycle_reg[7] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(cnt_2s),
        .CLR(\cnt_10ms[19]_i_2_n_0 ),
        .D(\duty_cycle_reg[7]_i_1_n_7 ),
        .Q(duty_cycle_reg[7]));
  CARRY4 \duty_cycle_reg[7]_i_1 
       (.CI(\duty_cycle_reg[3]_i_1_n_0 ),
        .CO({\duty_cycle_reg[7]_i_1_n_0 ,\duty_cycle_reg[7]_i_1_n_1 ,\duty_cycle_reg[7]_i_1_n_2 ,\duty_cycle_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({work_flag,duty_cycle_reg[9:7]}),
        .O({\duty_cycle_reg[7]_i_1_n_4 ,\duty_cycle_reg[7]_i_1_n_5 ,\duty_cycle_reg[7]_i_1_n_6 ,\duty_cycle_reg[7]_i_1_n_7 }),
        .S({\duty_cycle[7]_i_2_n_0 ,\duty_cycle[7]_i_3_n_0 ,\duty_cycle[7]_i_4_n_0 ,\duty_cycle[7]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \duty_cycle_reg[8] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(cnt_2s),
        .CLR(\cnt_10ms[19]_i_2_n_0 ),
        .D(\duty_cycle_reg[7]_i_1_n_6 ),
        .Q(duty_cycle_reg[8]));
  FDCE #(
    .INIT(1'b0)) 
    \duty_cycle_reg[9] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(cnt_2s),
        .CLR(\cnt_10ms[19]_i_2_n_0 ),
        .D(\duty_cycle_reg[7]_i_1_n_5 ),
        .Q(duty_cycle_reg[9]));
  OBUF led_OBUF_inst
       (.I(led_OBUF),
        .O(led));
  LUT1 #(
    .INIT(2'h1)) 
    led_OBUF_inst_i_1
       (.I0(pwm),
        .O(led_OBUF));
  LUT4 #(
    .INIT(16'h8421)) 
    pwm_i_10
       (.I0(\cnt_10ms_reg_n_0_[16] ),
        .I1(\cnt_10ms_reg_n_0_[17] ),
        .I2(duty_cycle_reg[16]),
        .I3(duty_cycle_reg[17]),
        .O(pwm_i_10_n_0));
  LUT4 #(
    .INIT(16'h8241)) 
    pwm_i_11
       (.I0(\cnt_10ms_reg_n_0_[14] ),
        .I1(\cnt_10ms_reg_n_0_[15] ),
        .I2(duty_cycle_reg[15]),
        .I3(duty_cycle_reg[14]),
        .O(pwm_i_11_n_0));
  LUT4 #(
    .INIT(16'h8241)) 
    pwm_i_12
       (.I0(\cnt_10ms_reg_n_0_[12] ),
        .I1(\cnt_10ms_reg_n_0_[13] ),
        .I2(duty_cycle_reg[13]),
        .I3(duty_cycle_reg[12]),
        .O(pwm_i_12_n_0));
  LUT4 #(
    .INIT(16'h8421)) 
    pwm_i_13
       (.I0(\cnt_10ms_reg_n_0_[11] ),
        .I1(\cnt_10ms_reg_n_0_[10] ),
        .I2(duty_cycle_reg[11]),
        .I3(duty_cycle_reg[10]),
        .O(pwm_i_13_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    pwm_i_14
       (.I0(duty_cycle_reg[9]),
        .I1(\cnt_10ms_reg_n_0_[9] ),
        .I2(duty_cycle_reg[8]),
        .I3(\cnt_10ms_reg_n_0_[8] ),
        .O(pwm_i_14_n_0));
  LUT4 #(
    .INIT(16'h50D4)) 
    pwm_i_15
       (.I0(\cnt_10ms_reg_n_0_[7] ),
        .I1(duty_cycle_reg[6]),
        .I2(duty_cycle_reg[7]),
        .I3(\cnt_10ms_reg_n_0_[6] ),
        .O(pwm_i_15_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    pwm_i_16
       (.I0(duty_cycle_reg[5]),
        .I1(\cnt_10ms_reg_n_0_[5] ),
        .I2(duty_cycle_reg[4]),
        .I3(\cnt_10ms_reg_n_0_[4] ),
        .O(pwm_i_16_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pwm_i_17
       (.I0(duty_cycle_reg[3]),
        .I1(\cnt_10ms_reg_n_0_[3] ),
        .O(pwm_i_17_n_0));
  LUT4 #(
    .INIT(16'h8421)) 
    pwm_i_18
       (.I0(\cnt_10ms_reg_n_0_[8] ),
        .I1(\cnt_10ms_reg_n_0_[9] ),
        .I2(duty_cycle_reg[8]),
        .I3(duty_cycle_reg[9]),
        .O(pwm_i_18_n_0));
  LUT4 #(
    .INIT(16'h8421)) 
    pwm_i_19
       (.I0(\cnt_10ms_reg_n_0_[7] ),
        .I1(\cnt_10ms_reg_n_0_[6] ),
        .I2(duty_cycle_reg[7]),
        .I3(duty_cycle_reg[6]),
        .O(pwm_i_19_n_0));
  LUT4 #(
    .INIT(16'h8421)) 
    pwm_i_20
       (.I0(\cnt_10ms_reg_n_0_[4] ),
        .I1(\cnt_10ms_reg_n_0_[5] ),
        .I2(duty_cycle_reg[4]),
        .I3(duty_cycle_reg[5]),
        .O(pwm_i_20_n_0));
  LUT3 #(
    .INIT(8'h21)) 
    pwm_i_21
       (.I0(duty_cycle_reg[3]),
        .I1(\cnt_10ms_reg_n_0_[2] ),
        .I2(\cnt_10ms_reg_n_0_[3] ),
        .O(pwm_i_21_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    pwm_i_3
       (.I0(duty_cycle_reg[19]),
        .I1(\cnt_10ms_reg_n_0_[19] ),
        .I2(duty_cycle_reg[18]),
        .I3(\cnt_10ms_reg_n_0_[18] ),
        .O(pwm_i_3_n_0));
  LUT4 #(
    .INIT(16'h8421)) 
    pwm_i_4
       (.I0(\cnt_10ms_reg_n_0_[18] ),
        .I1(\cnt_10ms_reg_n_0_[19] ),
        .I2(duty_cycle_reg[18]),
        .I3(duty_cycle_reg[19]),
        .O(pwm_i_4_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    pwm_i_6
       (.I0(duty_cycle_reg[17]),
        .I1(\cnt_10ms_reg_n_0_[17] ),
        .I2(duty_cycle_reg[16]),
        .I3(\cnt_10ms_reg_n_0_[16] ),
        .O(pwm_i_6_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    pwm_i_7
       (.I0(duty_cycle_reg[15]),
        .I1(\cnt_10ms_reg_n_0_[15] ),
        .I2(duty_cycle_reg[14]),
        .I3(\cnt_10ms_reg_n_0_[14] ),
        .O(pwm_i_7_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    pwm_i_8
       (.I0(duty_cycle_reg[13]),
        .I1(\cnt_10ms_reg_n_0_[13] ),
        .I2(duty_cycle_reg[12]),
        .I3(\cnt_10ms_reg_n_0_[12] ),
        .O(pwm_i_8_n_0));
  LUT4 #(
    .INIT(16'h50D4)) 
    pwm_i_9
       (.I0(\cnt_10ms_reg_n_0_[11] ),
        .I1(duty_cycle_reg[10]),
        .I2(duty_cycle_reg[11]),
        .I3(\cnt_10ms_reg_n_0_[10] ),
        .O(pwm_i_9_n_0));
  FDCE #(
    .INIT(1'b0)) 
    pwm_reg
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cnt_10ms[19]_i_2_n_0 ),
        .D(p_0_in),
        .Q(pwm));
  CARRY4 pwm_reg_i_1
       (.CI(pwm_reg_i_2_n_0),
        .CO({NLW_pwm_reg_i_1_CO_UNCONNECTED[3:1],p_0_in}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,pwm_i_3_n_0}),
        .O(NLW_pwm_reg_i_1_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,pwm_i_4_n_0}));
  CARRY4 pwm_reg_i_2
       (.CI(pwm_reg_i_5_n_0),
        .CO({pwm_reg_i_2_n_0,pwm_reg_i_2_n_1,pwm_reg_i_2_n_2,pwm_reg_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({pwm_i_6_n_0,pwm_i_7_n_0,pwm_i_8_n_0,pwm_i_9_n_0}),
        .O(NLW_pwm_reg_i_2_O_UNCONNECTED[3:0]),
        .S({pwm_i_10_n_0,pwm_i_11_n_0,pwm_i_12_n_0,pwm_i_13_n_0}));
  CARRY4 pwm_reg_i_5
       (.CI(1'b0),
        .CO({pwm_reg_i_5_n_0,pwm_reg_i_5_n_1,pwm_reg_i_5_n_2,pwm_reg_i_5_n_3}),
        .CYINIT(1'b0),
        .DI({pwm_i_14_n_0,pwm_i_15_n_0,pwm_i_16_n_0,pwm_i_17_n_0}),
        .O(NLW_pwm_reg_i_5_O_UNCONNECTED[3:0]),
        .S({pwm_i_18_n_0,pwm_i_19_n_0,pwm_i_20_n_0,pwm_i_21_n_0}));
  IBUF rst_n_IBUF_inst
       (.I(rst_n),
        .O(rst_n_IBUF));
  BUFG sys_clk_IBUF_BUFG_inst
       (.I(sys_clk_IBUF),
        .O(sys_clk_IBUF_BUFG));
  IBUF sys_clk_IBUF_inst
       (.I(sys_clk),
        .O(sys_clk_IBUF));
  LUT3 #(
    .INIT(8'hA8)) 
    work_flag_i_1
       (.I0(work_flag),
        .I1(\cnt_10ms[19]_i_3_n_0 ),
        .I2(\cnt_2s[4]_i_2_n_0 ),
        .O(work_flag_i_1_n_0));
  FDPE #(
    .INIT(1'b1)) 
    work_flag_reg
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(work_flag_i_1_n_0),
        .PRE(\cnt_10ms[19]_i_2_n_0 ),
        .Q(work_flag));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
