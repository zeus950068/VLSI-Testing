/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : R-2020.09-SP5
// Date      : Tue May  9 16:35:45 2023
/////////////////////////////////////////////////////////////


module divider_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [5:3] carry;

  ADDHX1 U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  INVXL U1 ( .A(A[0]), .Y(SUM[0]) );
  CLKAND2X2 U2 ( .A(A[1]), .B(A[0]), .Y(n2) );
  CLKAND2X4 U3 ( .A(A[6]), .B(n3), .Y(n1) );
  AND2X2 U4 ( .A(A[5]), .B(carry[5]), .Y(n3) );
  XOR2XL U5 ( .A(A[6]), .B(n3), .Y(SUM[6]) );
  NAND2X2 U6 ( .A(n1), .B(n7), .Y(n8) );
  INVXL U7 ( .A(n1), .Y(n6) );
  CLKINVX2 U8 ( .A(n4), .Y(carry[3]) );
  NAND2X2 U9 ( .A(A[2]), .B(n2), .Y(n4) );
  NAND2X2 U10 ( .A(n6), .B(A[7]), .Y(n9) );
  NAND2X1 U11 ( .A(n8), .B(n9), .Y(SUM[7]) );
  XOR2XL U12 ( .A(A[5]), .B(carry[5]), .Y(SUM[5]) );
  XOR2XL U13 ( .A(A[2]), .B(n2), .Y(SUM[2]) );
  NAND2X2 U14 ( .A(A[3]), .B(carry[3]), .Y(n5) );
  INVX2 U15 ( .A(n5), .Y(carry[4]) );
  XOR2XL U16 ( .A(A[3]), .B(carry[3]), .Y(SUM[3]) );
  XOR2XL U17 ( .A(A[1]), .B(A[0]), .Y(SUM[1]) );
  INVXL U18 ( .A(A[7]), .Y(n7) );
endmodule


module divider_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   n1, n3, n4, n5, n6, n7, n9, n10, n11, n12, n13, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n30, n32, n33, n35, n37, n38,
         n39, n41, n42, n43, n44, n46, n47, n48, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89;

  OAI21X1 U35 ( .A0(n83), .A1(n27), .B0(n87), .Y(n26) );
  NOR2X2 U60 ( .A(n46), .B(A[2]), .Y(n27) );
  CLKINVX2 U61 ( .A(B[0]), .Y(n48) );
  NAND2X2 U62 ( .A(n44), .B(A[4]), .Y(n20) );
  OAI21X1 U63 ( .A0(n24), .A1(n28), .B0(n25), .Y(n23) );
  XNOR2X1 U64 ( .A(n85), .B(n3), .Y(DIFF[5]) );
  XNOR2X2 U65 ( .A(n13), .B(n84), .Y(DIFF[6]) );
  AND2X2 U66 ( .A(n35), .B(n12), .Y(n84) );
  OA21X4 U67 ( .A0(n82), .A1(n33), .B0(n32), .Y(n83) );
  NOR2X4 U68 ( .A(n48), .B(A[0]), .Y(n33) );
  AOI21BX4 U69 ( .A0(n88), .A1(n18), .B0N(n17), .Y(n13) );
  OAI2B1X4 U70 ( .A1N(n80), .A0(n33), .B0(n32), .Y(n30) );
  OR2X2 U71 ( .A(n47), .B(A[1]), .Y(n80) );
  OAI21X4 U72 ( .A0(n13), .A1(n11), .B0(n12), .Y(n10) );
  OR2XL U73 ( .A(n21), .B(n19), .Y(n81) );
  CLKNAND2X2 U74 ( .A(n81), .B(n20), .Y(n85) );
  AOI21X4 U75 ( .A0(n30), .A1(n22), .B0(n23), .Y(n21) );
  NOR2X2 U76 ( .A(n44), .B(A[4]), .Y(n19) );
  XNOR2X2 U77 ( .A(n10), .B(n1), .Y(DIFF[7]) );
  NOR2XL U78 ( .A(n47), .B(A[1]), .Y(n82) );
  NOR2X2 U79 ( .A(n86), .B(A[3]), .Y(n24) );
  OAI21X2 U80 ( .A0(n21), .A1(n19), .B0(n20), .Y(n18) );
  CLKNAND2X2 U81 ( .A(n46), .B(A[2]), .Y(n28) );
  INVX1 U82 ( .A(B[2]), .Y(n46) );
  INVX2 U83 ( .A(B[3]), .Y(n86) );
  XNOR2XL U84 ( .A(n48), .B(A[0]), .Y(DIFF[0]) );
  XOR2XL U85 ( .A(n7), .B(n33), .Y(DIFF[1]) );
  NAND2XL U86 ( .A(n46), .B(A[2]), .Y(n87) );
  INVXL U87 ( .A(n24), .Y(n38) );
  INVXL U88 ( .A(n27), .Y(n39) );
  NAND2BXL U89 ( .AN(n82), .B(n32), .Y(n7) );
  NAND2XL U90 ( .A(n86), .B(A[3]), .Y(n25) );
  NAND2XL U91 ( .A(n38), .B(n25), .Y(n5) );
  NAND2XL U92 ( .A(n39), .B(n87), .Y(n6) );
  NOR2X2 U93 ( .A(n27), .B(n24), .Y(n22) );
  INVX2 U94 ( .A(n19), .Y(n37) );
  INVX2 U95 ( .A(n11), .Y(n35) );
  INVX2 U96 ( .A(B[1]), .Y(n47) );
  NAND2X2 U97 ( .A(n88), .B(n17), .Y(n3) );
  NAND2X2 U98 ( .A(n89), .B(n9), .Y(n1) );
  NAND2X2 U99 ( .A(n41), .B(A[7]), .Y(n9) );
  NAND2X2 U100 ( .A(n47), .B(A[1]), .Y(n32) );
  XNOR2X1 U101 ( .A(n26), .B(n5), .Y(DIFF[3]) );
  XOR2X1 U102 ( .A(n21), .B(n4), .Y(DIFF[4]) );
  NAND2X2 U103 ( .A(n37), .B(n20), .Y(n4) );
  INVX2 U104 ( .A(B[4]), .Y(n44) );
  OR2X2 U105 ( .A(n43), .B(A[5]), .Y(n88) );
  INVX2 U106 ( .A(B[5]), .Y(n43) );
  XOR2X1 U107 ( .A(n83), .B(n6), .Y(DIFF[2]) );
  NOR2X2 U108 ( .A(n42), .B(A[6]), .Y(n11) );
  INVX2 U109 ( .A(B[6]), .Y(n42) );
  NAND2X2 U110 ( .A(n43), .B(A[5]), .Y(n17) );
  NAND2X2 U111 ( .A(n42), .B(A[6]), .Y(n12) );
  OR2X2 U112 ( .A(n41), .B(A[7]), .Y(n89) );
  INVX2 U113 ( .A(B[7]), .Y(n41) );
endmodule


module divider ( dividend, divisor, quotient, remainder, clk, rst_n, in_valid, 
        out_valid );
  input [7:0] dividend;
  input [7:0] divisor;
  output [7:0] quotient;
  output [7:0] remainder;
  input clk, rst_n, in_valid;
  output out_valid;
  wire   N16, N17, N18, N19, N20, N21, N22, N23, n_state_1_, N50, N51, N52,
         N53, N54, N55, N56, N57, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n500, n510, n520, n530, n540, n550,
         n560, n570, n58, n59, n60, n61, n62, n63, n64, n65, n66, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120,
         n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131,
         n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142,
         n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153,
         n154, n155, n156;
  wire   [7:0] input_A;
  wire   [7:0] input_B;
  wire   [1:0] c_state;

  divider_DW01_inc_0 add_70_S2 ( .A(quotient), .SUM({N57, N56, N55, N54, N53, 
        N52, N51, N50}) );
  divider_DW01_sub_1 sub_28 ( .A({input_A[7:3], n68, input_A[1:0]}), .B(
        input_B), .CI(1'b0), .DIFF({N23, N22, N21, N20, N19, N18, N17, N16}), 
        .CO() );
  DFFRQX2 remainder_reg_7_ ( .D(n42), .CK(clk), .RN(rst_n), .Q(remainder[7])
         );
  DFFRQX2 remainder_reg_6_ ( .D(n41), .CK(clk), .RN(rst_n), .Q(remainder[6])
         );
  DFFRQX2 remainder_reg_5_ ( .D(n40), .CK(clk), .RN(rst_n), .Q(remainder[5])
         );
  DFFRQX2 remainder_reg_2_ ( .D(n37), .CK(clk), .RN(rst_n), .Q(remainder[2])
         );
  DFFRQX2 remainder_reg_1_ ( .D(n36), .CK(clk), .RN(rst_n), .Q(remainder[1])
         );
  DFFRQX2 remainder_reg_0_ ( .D(n35), .CK(clk), .RN(rst_n), .Q(remainder[0])
         );
  DFFRQX2 remainder_reg_4_ ( .D(n39), .CK(clk), .RN(rst_n), .Q(remainder[4])
         );
  DFFRQX2 remainder_reg_3_ ( .D(n38), .CK(clk), .RN(rst_n), .Q(remainder[3])
         );
  DFFRQX2 quotient_reg_6_ ( .D(n44), .CK(clk), .RN(rst_n), .Q(quotient[6]) );
  DFFRQX2 input_B_reg_7_ ( .D(n65), .CK(clk), .RN(rst_n), .Q(input_B[7]) );
  DFFRQX2 input_B_reg_6_ ( .D(n64), .CK(clk), .RN(rst_n), .Q(input_B[6]) );
  DFFRQX2 quotient_reg_4_ ( .D(n46), .CK(clk), .RN(rst_n), .Q(quotient[4]) );
  DFFRQX2 input_B_reg_5_ ( .D(n63), .CK(clk), .RN(rst_n), .Q(input_B[5]) );
  DFFRQX2 input_B_reg_4_ ( .D(n62), .CK(clk), .RN(rst_n), .Q(input_B[4]) );
  DFFRQX2 input_A_reg_4_ ( .D(n540), .CK(clk), .RN(rst_n), .Q(input_A[4]) );
  DFFRQX2 out_valid_reg ( .D(n154), .CK(clk), .RN(rst_n), .Q(out_valid) );
  DFFRQX2 quotient_reg_7_ ( .D(n43), .CK(clk), .RN(rst_n), .Q(quotient[7]) );
  DFFRQX2 quotient_reg_3_ ( .D(n47), .CK(clk), .RN(rst_n), .Q(quotient[3]) );
  DFFRQX2 quotient_reg_5_ ( .D(n45), .CK(clk), .RN(rst_n), .Q(quotient[5]) );
  DFFRQX2 input_B_reg_0_ ( .D(n66), .CK(clk), .RN(rst_n), .Q(input_B[0]) );
  DFFRX1 input_A_reg_2_ ( .D(n560), .CK(clk), .RN(rst_n), .Q(), .QN(n118) );
  DFFRHQX2 input_B_reg_1_ ( .D(n59), .CK(clk), .RN(rst_n), .Q(input_B[1]) );
  DFFRHQX2 input_B_reg_2_ ( .D(n60), .CK(clk), .RN(rst_n), .Q(input_B[2]) );
  DFFRHQX2 input_B_reg_3_ ( .D(n61), .CK(clk), .RN(rst_n), .Q(input_B[3]) );
  DFFRHQX2 quotient_reg_0_ ( .D(n500), .CK(clk), .RN(rst_n), .Q(quotient[0])
         );
  DFFRHQX2 input_A_reg_1_ ( .D(n570), .CK(clk), .RN(rst_n), .Q(input_A[1]) );
  DFFRHQX2 quotient_reg_1_ ( .D(n49), .CK(clk), .RN(rst_n), .Q(quotient[1]) );
  DFFRHQX2 quotient_reg_2_ ( .D(n48), .CK(clk), .RN(rst_n), .Q(quotient[2]) );
  DFFRHQX2 c_state_reg_1_ ( .D(n_state_1_), .CK(clk), .RN(rst_n), .Q(
        c_state[1]) );
  DFFRHQX2 input_A_reg_3_ ( .D(n550), .CK(clk), .RN(rst_n), .Q(input_A[3]) );
  DFFRHQX2 c_state_reg_0_ ( .D(n156), .CK(clk), .RN(rst_n), .Q(c_state[0]) );
  DFFRQX4 input_A_reg_0_ ( .D(n58), .CK(clk), .RN(rst_n), .Q(input_A[0]) );
  DFFRQX1 input_A_reg_5_ ( .D(n530), .CK(clk), .RN(rst_n), .Q(input_A[5]) );
  DFFRQX1 input_A_reg_7_ ( .D(n510), .CK(clk), .RN(rst_n), .Q(input_A[7]) );
  DFFRQX1 input_A_reg_6_ ( .D(n520), .CK(clk), .RN(rst_n), .Q(input_A[6]) );
  AO21X4 U69 ( .A0(dividend[5]), .A1(in_valid), .B0(n113), .Y(n530) );
  NAND3X2 U70 ( .A(n70), .B(n71), .C(n96), .Y(n94) );
  AOI21BX2 U71 ( .A0(n154), .A1(n142), .B0N(n151), .Y(n79) );
  OAI32XL U72 ( .A0(c_state[1]), .A1(c_state[0]), .A2(n106), .B0(n105), .B1(
        n84), .Y(n156) );
  INVX1 U73 ( .A(quotient[0]), .Y(n131) );
  INVX2 U74 ( .A(n107), .Y(n74) );
  AO2B2X4 U75 ( .B0(N21), .B1(n122), .A0(n123), .A1N(n112), .Y(n113) );
  INVX2 U76 ( .A(n118), .Y(n68) );
  NAND3X1 U77 ( .A(n126), .B(n125), .C(n124), .Y(n510) );
  NOR2XL U78 ( .A(n127), .B(n84), .Y(n_state_1_) );
  NAND2BXL U79 ( .AN(input_A[3]), .B(input_B[3]), .Y(n89) );
  OAI221X4 U80 ( .A0(n104), .A1(n103), .B0(input_B[7]), .B1(n102), .C0(n101), 
        .Y(n127) );
  CLKINVX2 U81 ( .A(n89), .Y(n88) );
  NAND2BXL U82 ( .AN(in_valid), .B(n108), .Y(n109) );
  NAND3BX2 U83 ( .AN(quotient[1]), .B(n131), .C(n133), .Y(n137) );
  OAI32X1 U84 ( .A0(input_B[2]), .A1(n88), .A2(n118), .B0(input_B[3]), .B1(
        n116), .Y(n69) );
  OAI32X2 U85 ( .A0(input_B[2]), .A1(n88), .A2(n118), .B0(input_B[3]), .B1(
        n116), .Y(n92) );
  OAI2BB1X1 U86 ( .A0N(N57), .A1N(n74), .B0(n150), .Y(n43) );
  OA21XL U87 ( .A0(n152), .A1(n147), .B0(n82), .Y(n148) );
  INVXL U88 ( .A(input_B[2]), .Y(n90) );
  NAND2BX2 U89 ( .AN(input_A[6]), .B(input_B[6]), .Y(n96) );
  OR2X2 U90 ( .A(n93), .B(n92), .Y(n70) );
  OR2X2 U91 ( .A(n69), .B(n91), .Y(n71) );
  OA21XL U92 ( .A0(n68), .A1(n90), .B0(n89), .Y(n91) );
  NOR2XL U93 ( .A(n77), .B(n78), .Y(n93) );
  NOR2XL U94 ( .A(input_A[0]), .B(n87), .Y(n77) );
  INVXL U95 ( .A(n108), .Y(n122) );
  AO22X1 U96 ( .A0(N16), .A1(n122), .B0(n123), .B1(input_A[0]), .Y(n121) );
  MX2XL U97 ( .A(n145), .B(n82), .S0(quotient[6]), .Y(n144) );
  NAND2BX1 U98 ( .AN(n137), .B(n154), .Y(n135) );
  NAND2BX1 U99 ( .AN(quotient[0]), .B(n154), .Y(n129) );
  NAND2X2 U100 ( .A(N17), .B(n122), .Y(n72) );
  NAND2XL U101 ( .A(n123), .B(input_A[1]), .Y(n73) );
  NAND2X2 U102 ( .A(n72), .B(n73), .Y(n120) );
  CLKINVX2 U103 ( .A(n109), .Y(n123) );
  NAND2BX2 U104 ( .AN(c_state[1]), .B(c_state[0]), .Y(n107) );
  CLKINVX2 U105 ( .A(n145), .Y(n146) );
  CLKINVX2 U106 ( .A(n152), .Y(n154) );
  OAI21XL U107 ( .A0(n79), .A1(n143), .B0(n145), .Y(n80) );
  AOI21BX1 U108 ( .A0(n154), .A1(n137), .B0N(n151), .Y(n81) );
  AO21X2 U109 ( .A0(N54), .A1(n74), .B0(n75), .Y(n46) );
  OAI22XL U110 ( .A0(n141), .A1(n152), .B0(n81), .B1(n140), .Y(n75) );
  INVXL U111 ( .A(input_A[3]), .Y(n116) );
  NAND2BXL U112 ( .AN(n155), .B(c_state[1]), .Y(n151) );
  INVXL U113 ( .A(c_state[0]), .Y(n155) );
  AO21X2 U114 ( .A0(N52), .A1(n74), .B0(n76), .Y(n48) );
  OAI22XL U115 ( .A0(n134), .A1(n152), .B0(n83), .B1(n133), .Y(n76) );
  AOI21BX1 U116 ( .A0(quotient[0]), .A1(n154), .B0N(n151), .Y(n83) );
  AO2B2XL U117 ( .B0(N18), .B1(n122), .A0(n123), .A1N(n118), .Y(n119) );
  MX2XL U118 ( .A(n129), .B(n83), .S0(quotient[1]), .Y(n130) );
  AO2B2X1 U119 ( .B0(input_A[0]), .B1(n74), .A0(remainder[0]), .A1N(n128), .Y(
        n35) );
  AO2B2X1 U120 ( .B0(input_A[1]), .B1(n74), .A0(remainder[1]), .A1N(n128), .Y(
        n36) );
  AO2B2X1 U121 ( .B0(n68), .B1(n74), .A0(remainder[2]), .A1N(n128), .Y(n37) );
  MX2XL U122 ( .A(n152), .B(n151), .S0(quotient[0]), .Y(n153) );
  AO22XL U123 ( .A0(input_A[3]), .A1(n74), .B0(remainder[3]), .B1(c_state[1]), 
        .Y(n38) );
  AO22X1 U124 ( .A0(input_A[4]), .A1(n74), .B0(remainder[4]), .B1(c_state[1]), 
        .Y(n39) );
  OR2XL U125 ( .A(n155), .B(c_state[1]), .Y(n84) );
  INVXL U126 ( .A(c_state[1]), .Y(n128) );
  MX2XL U127 ( .A(input_B[2]), .B(divisor[2]), .S0(in_valid), .Y(n60) );
  MX2XL U128 ( .A(input_B[3]), .B(divisor[3]), .S0(in_valid), .Y(n61) );
  MX2XL U129 ( .A(input_B[0]), .B(divisor[0]), .S0(in_valid), .Y(n66) );
  AO2B2X4 U130 ( .B0(N22), .B1(n122), .A0(n123), .A1N(n110), .Y(n111) );
  NOR2XL U131 ( .A(input_A[1]), .B(n86), .Y(n78) );
  OA22X4 U132 ( .A0(n95), .A1(n94), .B0(input_B[6]), .B1(n110), .Y(n103) );
  OAI2BB1XL U133 ( .A0N(input_A[1]), .A1N(n86), .B0(input_B[0]), .Y(n87) );
  NAND3BX2 U134 ( .AN(n142), .B(n154), .C(n143), .Y(n145) );
  AO21X2 U135 ( .A0(N55), .A1(n74), .B0(n80), .Y(n45) );
  INVX2 U136 ( .A(n97), .Y(n99) );
  INVX2 U137 ( .A(n96), .Y(n100) );
  INVX2 U138 ( .A(in_valid), .Y(n106) );
  INVX2 U139 ( .A(input_A[7]), .Y(n102) );
  OR4X2 U140 ( .A(n104), .B(n100), .C(n99), .D(n98), .Y(n101) );
  AO21X2 U141 ( .A0(dividend[6]), .A1(in_valid), .B0(n111), .Y(n520) );
  NAND2X2 U142 ( .A(dividend[7]), .B(in_valid), .Y(n124) );
  NAND2X2 U143 ( .A(n123), .B(input_A[7]), .Y(n125) );
  NAND2X2 U144 ( .A(N23), .B(n122), .Y(n126) );
  NAND3BX2 U145 ( .AN(quotient[4]), .B(n138), .C(n139), .Y(n142) );
  INVX2 U146 ( .A(n137), .Y(n138) );
  INVX2 U147 ( .A(quotient[6]), .Y(n147) );
  MX2X1 U148 ( .A(n149), .B(n148), .S0(quotient[7]), .Y(n150) );
  NAND2BX2 U149 ( .AN(quotient[6]), .B(n146), .Y(n149) );
  AOI21BX2 U150 ( .A0(quotient[5]), .A1(n154), .B0N(n79), .Y(n82) );
  AO21X2 U151 ( .A0(dividend[3]), .A1(in_valid), .B0(n117), .Y(n550) );
  AO2B2X2 U152 ( .B0(N19), .B1(n122), .A0(n123), .A1N(n116), .Y(n117) );
  AO21X2 U153 ( .A0(dividend[4]), .A1(in_valid), .B0(n115), .Y(n540) );
  AO2B2X2 U154 ( .B0(N20), .B1(n122), .A0(n123), .A1N(n114), .Y(n115) );
  INVX2 U155 ( .A(quotient[2]), .Y(n133) );
  INVX2 U156 ( .A(input_B[1]), .Y(n86) );
  NAND2BX2 U157 ( .AN(c_state[0]), .B(c_state[1]), .Y(n152) );
  OAI2BB1X1 U158 ( .A0N(N56), .A1N(n74), .B0(n144), .Y(n44) );
  AO21X2 U159 ( .A0(dividend[2]), .A1(in_valid), .B0(n119), .Y(n560) );
  NAND2BX2 U160 ( .AN(in_valid), .B(n74), .Y(n108) );
  AO21X2 U161 ( .A0(dividend[1]), .A1(in_valid), .B0(n120), .Y(n570) );
  AO21X2 U162 ( .A0(dividend[0]), .A1(in_valid), .B0(n121), .Y(n58) );
  OA22X2 U163 ( .A0(input_B[4]), .A1(n114), .B0(input_B[5]), .B1(n112), .Y(n98) );
  INVX2 U164 ( .A(input_A[5]), .Y(n112) );
  INVX2 U165 ( .A(quotient[3]), .Y(n139) );
  INVX2 U166 ( .A(input_A[4]), .Y(n114) );
  NAND2BX2 U167 ( .AN(input_A[5]), .B(input_B[5]), .Y(n97) );
  OAI2BB1X1 U168 ( .A0N(input_B[4]), .A1N(n114), .B0(n97), .Y(n95) );
  OA21X1 U169 ( .A0(n139), .A1(n140), .B0(n142), .Y(n141) );
  INVX2 U170 ( .A(quotient[4]), .Y(n140) );
  OA21X1 U171 ( .A0(n132), .A1(n133), .B0(n137), .Y(n134) );
  INVX2 U172 ( .A(quotient[1]), .Y(n132) );
  OAI2BB1X1 U173 ( .A0N(N53), .A1N(n74), .B0(n136), .Y(n47) );
  MX2X1 U174 ( .A(n135), .B(n81), .S0(quotient[3]), .Y(n136) );
  OAI2BB1X1 U175 ( .A0N(N51), .A1N(n74), .B0(n130), .Y(n49) );
  INVX2 U176 ( .A(input_A[6]), .Y(n110) );
  INVX2 U177 ( .A(n85), .Y(n104) );
  NAND2BX2 U178 ( .AN(input_A[7]), .B(input_B[7]), .Y(n85) );
  INVX2 U179 ( .A(quotient[5]), .Y(n143) );
  OAI2BB1X1 U180 ( .A0N(N50), .A1N(n74), .B0(n153), .Y(n500) );
  AO2B2X2 U181 ( .B0(input_A[5]), .B1(n74), .A0(remainder[5]), .A1N(n128), .Y(
        n40) );
  AO2B2X2 U182 ( .B0(input_A[6]), .B1(n74), .A0(remainder[6]), .A1N(n128), .Y(
        n41) );
  AO2B2X2 U183 ( .B0(input_A[7]), .B1(n74), .A0(remainder[7]), .A1N(n128), .Y(
        n42) );
  MX2X1 U184 ( .A(input_B[1]), .B(divisor[1]), .S0(in_valid), .Y(n59) );
  MX2X1 U185 ( .A(input_B[7]), .B(divisor[7]), .S0(in_valid), .Y(n65) );
  MX2X1 U186 ( .A(input_B[5]), .B(divisor[5]), .S0(in_valid), .Y(n63) );
  MX2X1 U187 ( .A(input_B[6]), .B(divisor[6]), .S0(in_valid), .Y(n64) );
  MX2X1 U188 ( .A(input_B[4]), .B(divisor[4]), .S0(in_valid), .Y(n62) );
  INVX2 U189 ( .A(n127), .Y(n105) );
endmodule

