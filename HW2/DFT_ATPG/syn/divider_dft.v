/////////////////////////////////////////////////////////////
// Created by: Synopsys Design Compiler(R)
// Version   : R-2020.09-SP5
// Date      : Mon May  8 03:27:05 2023
/////////////////////////////////////////////////////////////


module divider_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n6, n7, n8, n10, n11, n12, n13, n15, n17, n18, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n37,
         n38, n39, n42, n43, n47, n48, n49, n50, n51, n52, n53, n54, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105;

  INVX2 U68 ( .A(B[1]), .Y(n53) );
  OAI21X2 U74 ( .A0(n88), .A1(n12), .B0(n13), .Y(n11) );
  NOR2X1 U75 ( .A(n23), .B(n26), .Y(n21) );
  INVX2 U76 ( .A(n104), .Y(n91) );
  OAI21X4 U77 ( .A0(n37), .A1(n39), .B0(n38), .Y(n104) );
  NOR2X2 U78 ( .A(n52), .B(A[2]), .Y(n33) );
  OAI21XL U80 ( .A0(n105), .A1(n26), .B0(n27), .Y(n25) );
  NOR2X4 U81 ( .A(n50), .B(A[4]), .Y(n26) );
  AND2X4 U82 ( .A(n43), .B(n27), .Y(n103) );
  NAND2X2 U84 ( .A(n53), .B(A[1]), .Y(n38) );
  INVX2 U86 ( .A(B[4]), .Y(n50) );
  OR2X1 U87 ( .A(n48), .B(A[6]), .Y(n101) );
  NAND2XL U89 ( .A(n48), .B(A[6]), .Y(n17) );
  XOR2X1 U90 ( .A(n8), .B(n39), .Y(DIFF[1]) );
  NOR2X4 U91 ( .A(n54), .B(A[0]), .Y(n39) );
  OA21X2 U92 ( .A0(n37), .A1(n39), .B0(n38), .Y(n100) );
  OR2X1 U93 ( .A(n52), .B(A[2]), .Y(n86) );
  INVX1 U94 ( .A(B[5]), .Y(n49) );
  AO21X4 U96 ( .A0(n28), .A1(n104), .B0(n29), .Y(n99) );
  OR2X4 U97 ( .A(n51), .B(A[3]), .Y(n96) );
  OAI21X2 U98 ( .A0(n37), .A1(n39), .B0(n38), .Y(n89) );
  CLKNAND2X2 U100 ( .A(n52), .B(A[2]), .Y(n34) );
  AOI21XL U101 ( .A0(n28), .A1(n104), .B0(n29), .Y(n88) );
  NAND2X4 U102 ( .A(n98), .B(n31), .Y(n29) );
  NAND2X1 U103 ( .A(n96), .B(n31), .Y(n6) );
  NOR2X2 U105 ( .A(n90), .B(n91), .Y(n92) );
  INVX1 U107 ( .A(n17), .Y(n15) );
  CLKNAND2X2 U108 ( .A(n101), .B(n17), .Y(n3) );
  CLKNAND2X2 U109 ( .A(n99), .B(n21), .Y(n93) );
  INVXL U110 ( .A(n22), .Y(n94) );
  CLKNAND2X2 U111 ( .A(n89), .B(n86), .Y(n95) );
  NAND2XL U112 ( .A(n95), .B(n34), .Y(n32) );
  NAND2BX1 U113 ( .AN(n37), .B(n38), .Y(n8) );
  CLKNAND2X2 U114 ( .A(n42), .B(n24), .Y(n4) );
  NAND2X2 U115 ( .A(n50), .B(A[4]), .Y(n27) );
  NOR2X2 U116 ( .A(n49), .B(A[5]), .Y(n23) );
  OR2X2 U117 ( .A(n47), .B(A[7]), .Y(n102) );
  NAND2XL U118 ( .A(n21), .B(n101), .Y(n12) );
  XNOR2XL U119 ( .A(n54), .B(A[0]), .Y(DIFF[0]) );
  NAND2XL U120 ( .A(n49), .B(A[5]), .Y(n24) );
  NAND2XL U122 ( .A(n47), .B(A[7]), .Y(n10) );
  INVX1 U123 ( .A(n34), .Y(n97) );
  NAND2X2 U124 ( .A(n51), .B(A[3]), .Y(n31) );
  XNOR2X1 U125 ( .A(n25), .B(n4), .Y(DIFF[5]) );
  XNOR2X1 U126 ( .A(n32), .B(n6), .Y(DIFF[3]) );
  NAND2X2 U127 ( .A(n102), .B(n10), .Y(n2) );
  XOR2X1 U128 ( .A(n100), .B(n7), .Y(DIFF[2]) );
  NAND2X2 U129 ( .A(n86), .B(n34), .Y(n7) );
  INVX2 U130 ( .A(B[7]), .Y(n47) );
  INVX2 U131 ( .A(n26), .Y(n43) );
  OAI21X1 U132 ( .A0(n23), .A1(n27), .B0(n24), .Y(n22) );
  INVX2 U133 ( .A(n23), .Y(n42) );
  AOI21X1 U134 ( .A0(n22), .A1(n101), .B0(n15), .Y(n13) );
  NOR2X4 U1 ( .A(n92), .B(n87), .Y(n1) );
  AOI21XL U2 ( .A0(n28), .A1(n104), .B0(n29), .Y(n105) );
  INVX3 U3 ( .A(n28), .Y(n90) );
  NAND2X3 U4 ( .A(n98), .B(n31), .Y(n87) );
  INVX6 U5 ( .A(B[3]), .Y(n51) );
  NOR2X6 U6 ( .A(n51), .B(A[3]), .Y(n30) );
  NAND2X4 U7 ( .A(n96), .B(n97), .Y(n98) );
  NOR2X6 U8 ( .A(n33), .B(n30), .Y(n28) );
  INVX3 U9 ( .A(B[2]), .Y(n52) );
  XNOR2X1 U10 ( .A(n1), .B(n103), .Y(DIFF[4]) );
  XNOR2X4 U11 ( .A(n18), .B(n3), .Y(DIFF[6]) );
  NAND2X2 U12 ( .A(n93), .B(n94), .Y(n18) );
  INVX2 U13 ( .A(B[6]), .Y(n48) );
  XNOR2X4 U14 ( .A(n11), .B(n2), .Y(DIFF[7]) );
  INVX3 U15 ( .A(B[0]), .Y(n54) );
  NOR2X3 U16 ( .A(n53), .B(A[1]), .Y(n37) );
endmodule


module divider_DW01_inc_1 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;
  wire   n2, n3, n4, n5, n6, n7, n9, n10, n12, n13, n14, n17, n19, n20, n21,
         n23;

  XNOR2X2 U35 ( .A(n2), .B(A[7]), .Y(SUM[7]) );
  XOR2X1 U36 ( .A(n5), .B(n4), .Y(SUM[6]) );
  INVXL U38 ( .A(A[0]), .Y(SUM[0]) );
  INVXL U39 ( .A(n7), .Y(n6) );
  NAND2XL U40 ( .A(n13), .B(n6), .Y(n5) );
  XNOR2XL U41 ( .A(n13), .B(n12), .Y(SUM[4]) );
  XNOR2XL U42 ( .A(n17), .B(A[3]), .Y(SUM[3]) );
  NOR2X2 U44 ( .A(n7), .B(n4), .Y(n3) );
  INVX2 U45 ( .A(n21), .Y(n20) );
  NAND2X2 U46 ( .A(n3), .B(n13), .Y(n2) );
  NAND2X2 U47 ( .A(A[1]), .B(A[0]), .Y(n21) );
  NOR2X4 U48 ( .A(n14), .B(n21), .Y(n13) );
  XNOR2X1 U49 ( .A(n23), .B(A[0]), .Y(SUM[1]) );
  INVX2 U50 ( .A(A[1]), .Y(n23) );
  XOR2X1 U51 ( .A(n10), .B(n9), .Y(SUM[5]) );
  INVXL U52 ( .A(A[5]), .Y(n9) );
  XNOR2X1 U53 ( .A(n20), .B(n19), .Y(SUM[2]) );
  INVX2 U54 ( .A(A[2]), .Y(n19) );
  NAND2X2 U55 ( .A(n20), .B(A[2]), .Y(n17) );
  CLKNAND2X2 U56 ( .A(A[3]), .B(A[2]), .Y(n14) );
  NAND2XL U58 ( .A(n13), .B(A[4]), .Y(n10) );
  INVX2 U1 ( .A(A[6]), .Y(n4) );
  NAND2X2 U2 ( .A(A[4]), .B(A[5]), .Y(n7) );
  INVXL U3 ( .A(A[4]), .Y(n12) );
endmodule


module divider ( dividend, divisor, quotient, remainder, clk, rst_n, in_valid, 
        out_valid, test_si, test_se );
  input [7:0] dividend;
  input [7:0] divisor;
  output [7:0] quotient;
  output [7:0] remainder;
  input clk, rst_n, in_valid, test_si, test_se;
  output out_valid;
  wire   n171, n172, N13, N14, N15, N16, N17, N18, N19, N20, N47, N48, N49,
         N50, N51, N52, N53, N54, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n470, n480, n490, n500, n510, n520, n530, n540,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n69,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170;
  wire   [7:0] input_A;
  wire   [7:0] input_B;
  wire   [1:0] c_state;

  divider_DW01_sub_1 sub_28 ( .A({input_A[7:4], n94, input_A[2:0]}), .B(
        input_B), .CI(1'b0), .DIFF({N20, N19, N18, N17, N16, N15, N14, N13})
         );
  divider_DW01_inc_1 add_70_S2 ( .A({quotient[7:5], n171, quotient[3:1], n69}), 
        .SUM({N54, N53, N52, N51, N50, N49, N48, N47}) );
  BUFX2 U69 ( .A(n172), .Y(n69) );
  BUFX3 U70 ( .A(n172), .Y(quotient[0]) );
  AO2B2X2 U71 ( .B0(n107), .B1(input_A[6]), .A0(dividend[6]), .A1N(n106), .Y(
        n99) );
  NAND2BX4 U72 ( .AN(in_valid), .B(n97), .Y(n98) );
  AO2B2X4 U73 ( .B0(n107), .B1(input_A[4]), .A0(N17), .A1N(n97), .Y(n101) );
  NAND2BX8 U74 ( .AN(in_valid), .B(n169), .Y(n97) );
  NAND2BX2 U75 ( .AN(input_A[6]), .B(input_B[6]), .Y(n124) );
  NAND2X2 U76 ( .A(n125), .B(n124), .Y(n110) );
  INVX2 U77 ( .A(quotient[3]), .Y(n148) );
  NAND2BX2 U79 ( .AN(c_state[1]), .B(n79), .Y(n160) );
  CLKINVX6 U80 ( .A(n160), .Y(n169) );
  AND2X4 U83 ( .A(n133), .B(n132), .Y(n81) );
  AOI211X2 U85 ( .A0(n129), .A1(n128), .B0(n127), .C0(n126), .Y(n130) );
  CLKBUFX4 U86 ( .A(c_state[0]), .Y(n79) );
  NAND2BX2 U88 ( .AN(c_state[0]), .B(c_state[1]), .Y(n84) );
  AOI21BX2 U89 ( .A0(quotient[0]), .A1(n170), .B0N(n167), .Y(n89) );
  INVX2 U90 ( .A(n92), .Y(n167) );
  INVX2 U91 ( .A(dividend[5]), .Y(n75) );
  AO21X2 U92 ( .A0(dividend[2]), .A1(in_valid), .B0(n103), .Y(n56) );
  AO21X2 U93 ( .A0(dividend[0]), .A1(in_valid), .B0(n105), .Y(n58) );
  OR2X2 U96 ( .A(n82), .B(n130), .Y(n72) );
  AO2B2BX2 U98 ( .A0(N16), .A1N(n97), .B0(n107), .B1N(n112), .Y(n102) );
  NAND2X2 U100 ( .A(n76), .B(n77), .Y(n510) );
  OAI2BB1X2 U102 ( .A0N(n74), .A1N(n79), .B0(n167), .Y(n500) );
  AO21X4 U103 ( .A0(input_B[4]), .A1(n111), .B0(n110), .Y(n73) );
  NAND2XL U105 ( .A(n124), .B(n132), .Y(n127) );
  INVX2 U108 ( .A(input_A[1]), .Y(n80) );
  NAND2X2 U109 ( .A(input_A[1]), .B(n114), .Y(n117) );
  AO2B2X2 U110 ( .B0(n107), .B1(input_A[7]), .A0(dividend[7]), .A1N(n106), .Y(
        n108) );
  NAND2BXL U111 ( .AN(input_B[4]), .B(input_A[4]), .Y(n129) );
  INVX2 U113 ( .A(n97), .Y(n109) );
  INVXL U114 ( .A(input_A[6]), .Y(n122) );
  OAI2B2X2 U115 ( .A1N(n96), .A0(n85), .B0(n120), .B1(n121), .Y(n123) );
  AO21X4 U116 ( .A0(dividend[3]), .A1(in_valid), .B0(n102), .Y(n55) );
  NOR2XL U117 ( .A(n72), .B(n81), .Y(n74) );
  OAI2BB2X1 U118 ( .B0(n75), .B1(n106), .A0N(n107), .A1N(input_A[5]), .Y(n100)
         );
  NAND2BX1 U119 ( .AN(input_A[5]), .B(input_B[5]), .Y(n125) );
  INVX2 U120 ( .A(n108), .Y(n77) );
  INVX3 U121 ( .A(n98), .Y(n107) );
  MX2X1 U122 ( .A(n145), .B(n88), .S0(quotient[3]), .Y(n146) );
  NAND2XL U124 ( .A(N53), .B(n169), .Y(n78) );
  NAND2BXL U131 ( .AN(n159), .B(n93), .Y(n157) );
  CLKINVX1 U132 ( .A(n156), .Y(n159) );
  AOI31X2 U133 ( .A0(input_B[0]), .A1(n117), .A2(n116), .B0(n115), .Y(n121) );
  AO2B2X1 U134 ( .B0(input_A[0]), .B1(n169), .A0(remainder[0]), .A1N(n137), 
        .Y(n34) );
  CLKINVX2 U135 ( .A(input_A[0]), .Y(n116) );
  INVXL U136 ( .A(input_B[7]), .Y(n131) );
  AND2XL U138 ( .A(input_A[7]), .B(n131), .Y(n82) );
  AOI211X2 U139 ( .A0(n163), .A1(n162), .B0(n161), .C0(quotient[7]), .Y(n164)
         );
  NAND2BX2 U140 ( .AN(input_A[7]), .B(input_B[7]), .Y(n132) );
  INVXL U141 ( .A(n125), .Y(n126) );
  OR4X4 U142 ( .A(quotient[1]), .B(n147), .C(quotient[2]), .D(quotient[0]), 
        .Y(n152) );
  INVXL U145 ( .A(input_A[4]), .Y(n111) );
  NAND2BXL U146 ( .AN(n79), .B(c_state[1]), .Y(n83) );
  INVXL U148 ( .A(n165), .Y(n161) );
  INVXL U149 ( .A(n149), .Y(quotient[4]) );
  OAI2BB1XL U151 ( .A0N(N51), .A1N(n169), .B0(n151), .Y(n45) );
  AND2XL U154 ( .A(c_state[0]), .B(c_state[1]), .Y(n92) );
  AO21XL U155 ( .A0(N49), .A1(n169), .B0(n86), .Y(n470) );
  NAND2BX1 U157 ( .AN(n84), .B(quotient[5]), .Y(n156) );
  OAI2BB1XL U158 ( .A0N(N48), .A1N(n169), .B0(n139), .Y(n480) );
  NAND2BXL U159 ( .AN(input_B[5]), .B(input_A[5]), .Y(n128) );
  AO2B2X1 U161 ( .B0(n94), .B1(n169), .A0(remainder[3]), .A1N(n137), .Y(n37)
         );
  AO2B2X1 U162 ( .B0(input_A[4]), .B1(n169), .A0(remainder[4]), .A1N(n137), 
        .Y(n38) );
  AO2B2X1 U163 ( .B0(input_A[5]), .B1(n169), .A0(remainder[5]), .A1N(n137), 
        .Y(n39) );
  AO2B2X1 U164 ( .B0(input_A[7]), .B1(n169), .A0(remainder[7]), .A1N(n137), 
        .Y(n41) );
  INVXL U165 ( .A(quotient[5]), .Y(n154) );
  OAI2BB1XL U166 ( .A0N(N47), .A1N(n169), .B0(n168), .Y(n490) );
  INVXL U167 ( .A(c_state[1]), .Y(n137) );
  MX2XL U168 ( .A(input_B[6]), .B(divisor[6]), .S0(in_valid), .Y(n64) );
  MX2XL U169 ( .A(input_B[5]), .B(divisor[5]), .S0(in_valid), .Y(n63) );
  MX2XL U170 ( .A(input_B[4]), .B(divisor[4]), .S0(in_valid), .Y(n62) );
  MX2XL U171 ( .A(input_B[2]), .B(divisor[2]), .S0(in_valid), .Y(n60) );
  MX2XL U172 ( .A(input_B[1]), .B(divisor[1]), .S0(in_valid), .Y(n59) );
  MX2XL U173 ( .A(input_B[0]), .B(divisor[0]), .S0(in_valid), .Y(n66) );
  OAI2BB1XL U174 ( .A0N(N50), .A1N(n169), .B0(n146), .Y(n46) );
  OR2X2 U176 ( .A(n83), .B(n144), .Y(n145) );
  AO21X2 U177 ( .A0(dividend[4]), .A1(in_valid), .B0(n101), .Y(n540) );
  NAND2X2 U178 ( .A(in_valid), .B(n137), .Y(n135) );
  INVX2 U180 ( .A(input_B[1]), .Y(n114) );
  NAND2BX2 U182 ( .AN(n160), .B(N54), .Y(n165) );
  AOI31X1 U183 ( .A0(n166), .A1(n91), .A2(n165), .B0(n164), .Y(n42) );
  INVX2 U184 ( .A(quotient[7]), .Y(n158) );
  NAND3BX2 U185 ( .AN(quotient[5]), .B(n170), .C(n153), .Y(n155) );
  AO21X2 U186 ( .A0(dividend[1]), .A1(in_valid), .B0(n104), .Y(n57) );
  MX2X1 U187 ( .A(n138), .B(n89), .S0(quotient[1]), .Y(n139) );
  NAND3BX2 U188 ( .AN(quotient[1]), .B(n140), .C(n142), .Y(n144) );
  INVX2 U189 ( .A(quotient[2]), .Y(n142) );
  OA21X1 U190 ( .A0(n141), .A1(n142), .B0(n144), .Y(n143) );
  INVX2 U191 ( .A(quotient[1]), .Y(n141) );
  INVX2 U192 ( .A(quotient[6]), .Y(n162) );
  MX2X1 U193 ( .A(input_B[7]), .B(divisor[7]), .S0(in_valid), .Y(n65) );
  INVX2 U194 ( .A(in_valid), .Y(n106) );
  AO2B2X1 U195 ( .B0(input_A[6]), .B1(n169), .A0(remainder[6]), .A1N(n137), 
        .Y(n40) );
  AO2B2X1 U198 ( .B0(input_A[2]), .B1(n169), .A0(remainder[2]), .A1N(n137), 
        .Y(n36) );
  MX2XL U199 ( .A(input_B[3]), .B(divisor[3]), .S0(in_valid), .Y(n61) );
  INVX2 U200 ( .A(quotient[0]), .Y(n140) );
  MX2X1 U202 ( .A(n83), .B(n167), .S0(quotient[0]), .Y(n168) );
  INVXL U203 ( .A(n171), .Y(n149) );
  AO2B2X4 U204 ( .B0(N15), .B1(n109), .A0(n107), .A1N(n113), .Y(n103) );
  SDFFRQXL remainder_reg_7_ ( .D(n41), .SI(remainder[6]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(remainder[7]) );
  SDFFRQXL remainder_reg_5_ ( .D(n39), .SI(remainder[4]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(remainder[5]) );
  SDFFRQXL remainder_reg_4_ ( .D(n38), .SI(remainder[3]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(remainder[4]) );
  SDFFRQXL remainder_reg_3_ ( .D(n37), .SI(remainder[2]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(remainder[3]) );
  SDFFRQXL remainder_reg_1_ ( .D(n35), .SI(remainder[0]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(remainder[1]) );
  SDFFRQXL remainder_reg_0_ ( .D(n34), .SI(quotient[7]), .SE(test_se), .CK(clk), .RN(rst_n), .Q(remainder[0]) );
  SDFFRQXL remainder_reg_6_ ( .D(n40), .SI(remainder[5]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(remainder[6]) );
  SDFFRQXL remainder_reg_2_ ( .D(n36), .SI(remainder[1]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(remainder[2]) );
  SDFFRQXL out_valid_reg ( .D(n170), .SI(input_B[7]), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(out_valid) );
  SDFFRHQX4 input_B_reg_0_ ( .D(n66), .SI(input_A[7]), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(input_B[0]) );
  SDFFRHQX4 input_B_reg_1_ ( .D(n59), .SI(input_B[0]), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(input_B[1]) );
  SDFFRHQX4 input_A_reg_0_ ( .D(n58), .SI(c_state[1]), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(input_A[0]) );
  SDFFRHQX4 c_state_reg_1_ ( .D(n500), .SI(c_state[0]), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(c_state[1]) );
  SDFFRHQX4 quotient_reg_3_ ( .D(n46), .SI(quotient[2]), .SE(test_se), .CK(clk), .RN(rst_n), .Q(quotient[3]) );
  SDFFRQX4 quotient_reg_2_ ( .D(n470), .SI(quotient[1]), .SE(test_se), .CK(clk), .RN(rst_n), .Q(quotient[2]) );
  SDFFRHQX8 quotient_reg_1_ ( .D(n480), .SI(n172), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(quotient[1]) );
  SDFFRHQX4 quotient_reg_0_ ( .D(n490), .SI(out_valid), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(n172) );
  SDFFRHQX4 input_A_reg_5_ ( .D(n530), .SI(input_A[4]), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(input_A[5]) );
  SDFFRHQX4 quotient_reg_4_ ( .D(n45), .SI(quotient[3]), .SE(test_se), .CK(clk), .RN(rst_n), .Q(n171) );
  SDFFRHQX2 quotient_reg_5_ ( .D(n44), .SI(n171), .SE(test_se), .CK(clk), .RN(
        rst_n), .Q(quotient[5]) );
  SDFFRHQX8 quotient_reg_6_ ( .D(n43), .SI(quotient[5]), .SE(test_se), .CK(clk), .RN(rst_n), .Q(quotient[6]) );
  SDFFRHQX2 input_B_reg_6_ ( .D(n64), .SI(input_B[5]), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(input_B[6]) );
  SDFFRHQX2 input_B_reg_7_ ( .D(n65), .SI(input_B[6]), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(input_B[7]) );
  SDFFRHQX4 input_B_reg_2_ ( .D(n60), .SI(input_B[1]), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(input_B[2]) );
  SDFFRHQX2 input_B_reg_4_ ( .D(n62), .SI(input_B[3]), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(input_B[4]) );
  SDFFRHQX2 input_B_reg_5_ ( .D(n63), .SI(input_B[4]), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(input_B[5]) );
  SDFFRHQX2 input_A_reg_6_ ( .D(n520), .SI(input_A[5]), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(input_A[6]) );
  SDFFRHQX2 input_A_reg_7_ ( .D(n510), .SI(input_A[6]), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(input_A[7]) );
  SDFFRHQX4 input_A_reg_3_ ( .D(n55), .SI(input_A[2]), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(input_A[3]) );
  SDFFRHQX8 input_A_reg_1_ ( .D(n57), .SI(input_A[0]), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(input_A[1]) );
  SDFFRHQX4 quotient_reg_7_ ( .D(n42), .SI(quotient[6]), .SE(test_se), .CK(clk), .RN(rst_n), .Q(quotient[7]) );
  SDFFRHQX2 input_A_reg_4_ ( .D(n540), .SI(input_A[3]), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(input_A[4]) );
  SDFFRHQX8 input_B_reg_3_ ( .D(n61), .SI(input_B[2]), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(input_B[3]) );
  SDFFRHQX4 input_A_reg_2_ ( .D(n56), .SI(input_A[1]), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(input_A[2]) );
  SDFFRHQX8 c_state_reg_0_ ( .D(n67), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(c_state[0]) );
  INVX6 U1 ( .A(n118), .Y(n119) );
  NOR2X2 U2 ( .A(n72), .B(n81), .Y(n136) );
  OAI22X2 U3 ( .A0(n143), .A1(n84), .B0(n89), .B1(n142), .Y(n86) );
  NAND2BX8 U4 ( .AN(input_A[3]), .B(input_B[3]), .Y(n118) );
  CLKINVX2 U5 ( .A(n152), .Y(n153) );
  AO22X4 U6 ( .A0(N13), .A1(n109), .B0(n107), .B1(input_A[0]), .Y(n105) );
  AO2B2X4 U7 ( .B0(N14), .B1(n109), .A0(n107), .A1N(n80), .Y(n104) );
  AO21X4 U8 ( .A0(N18), .A1(n109), .B0(n100), .Y(n530) );
  NAND2XL U9 ( .A(N20), .B(n109), .Y(n76) );
  CLKINVX3 U10 ( .A(n155), .Y(n163) );
  CLKINVX4 U11 ( .A(input_A[3]), .Y(n112) );
  MXI2X6 U12 ( .A(n135), .B(n134), .S0(n79), .Y(n67) );
  AND2X6 U13 ( .A(n136), .B(n167), .Y(n134) );
  INVX3 U14 ( .A(input_A[2]), .Y(n113) );
  CLKINVX6 U15 ( .A(n112), .Y(n94) );
  AO21X4 U16 ( .A0(n113), .A1(input_B[2]), .B0(n119), .Y(n96) );
  OAI22X2 U17 ( .A0(n73), .A1(n123), .B0(n122), .B1(input_B[6]), .Y(n133) );
  MXI2X2 U18 ( .A(n163), .B(n157), .S0(quotient[6]), .Y(n71) );
  AOI211X4 U19 ( .A0(quotient[6]), .A1(n170), .B0(n159), .C0(n158), .Y(n166)
         );
  OAI32X1 U20 ( .A0(n119), .A1(input_B[2]), .A2(n113), .B0(input_B[3]), .B1(
        n112), .Y(n85) );
  AO21X4 U21 ( .A0(N19), .A1(n109), .B0(n99), .Y(n520) );
  NAND2BX2 U22 ( .AN(n171), .B(n148), .Y(n147) );
  NAND2X2 U23 ( .A(n78), .B(n71), .Y(n43) );
  OAI32X1 U24 ( .A0(n119), .A1(input_B[2]), .A2(n113), .B0(input_B[3]), .B1(
        n112), .Y(n120) );
  AO21X4 U25 ( .A0(N52), .A1(n169), .B0(n87), .Y(n44) );
  OA22X4 U26 ( .A0(n150), .A1(n84), .B0(n88), .B1(n149), .Y(n151) );
  AOI21BX2 U27 ( .A0(n170), .A1(n144), .B0N(n167), .Y(n88) );
  OA21X4 U28 ( .A0(n148), .A1(n149), .B0(n152), .Y(n150) );
  OAI21X2 U29 ( .A0(n91), .A1(n154), .B0(n155), .Y(n87) );
  CLKINVX4 U30 ( .A(n90), .Y(n91) );
  AOI21X4 U31 ( .A0(n170), .A1(n152), .B0(n92), .Y(n93) );
  NAND2BXL U32 ( .AN(quotient[0]), .B(n170), .Y(n138) );
  CLKINVX4 U33 ( .A(n84), .Y(n170) );
  INVX2 U34 ( .A(n93), .Y(n90) );
  NOR2X2 U35 ( .A(n114), .B(input_A[1]), .Y(n115) );
  AO2B2X2 U36 ( .B0(input_A[1]), .B1(n169), .A0(remainder[1]), .A1N(n137), .Y(
        n35) );
endmodule

