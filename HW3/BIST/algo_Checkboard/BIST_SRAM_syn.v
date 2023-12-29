/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : R-2020.09-SP5
// Date      : Thu Jun  1 16:36:07 2023
/////////////////////////////////////////////////////////////


module Checkboard_DW01_inc_0 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;
  wire   n1, n2, n3, n4, n5;
  wire   [6:2] carry;

  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(n1), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  AND2X2 U1 ( .A(A[3]), .B(carry[3]), .Y(n1) );
  NAND2XL U2 ( .A(n2), .B(A[6]), .Y(n5) );
  XOR2XL U3 ( .A(A[3]), .B(carry[3]), .Y(SUM[3]) );
  CLKNAND2X2 U4 ( .A(carry[6]), .B(n3), .Y(n4) );
  CLKNAND2X2 U5 ( .A(n4), .B(n5), .Y(SUM[6]) );
  CLKINVX1 U6 ( .A(carry[6]), .Y(n2) );
  INVXL U7 ( .A(A[6]), .Y(n3) );
  INVXL U8 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module Checkboard ( clk, rst, checkboard_addr, checkboard_data_out, we_n, cs_n, 
        test_done );
  output [3:0] checkboard_addr;
  output [1:0] checkboard_data_out;
  input clk, rst;
  output we_n, cs_n, test_done;
  wire   N108, N109, N110, N111, N112, N113, N114, N131, N132, N133, N134,
         N135, N136, N137, n2, n8, n9, n10, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n4, n5, n6, n7, n11, n12,
         n13, n14, n15, n16, n17, n18, n49, n50, n51, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66;
  wire   [2:0] c_state;
  wire   [6:0] counter;

  DFFTRX4 c_state_reg_2_ ( .D(rst), .RN(n58), .CK(clk), .Q(c_state[2]), .QN(n8) );
  Checkboard_DW01_inc_0 r375 ( .A({counter[6], n12, counter[4:0]}), .SUM({N114, 
        N113, N112, N111, N110, N109, N108}) );
  DFFQXL checkboard_data_out_reg_1_ ( .D(n47), .CK(clk), .Q(
        checkboard_data_out[1]) );
  DFFQXL checkboard_data_out_reg_0_ ( .D(n48), .CK(clk), .Q(
        checkboard_data_out[0]) );
  DFFTRXL checkboard_addr_reg_1_ ( .D(rst), .RN(counter[1]), .CK(clk), .Q(
        checkboard_addr[1]), .QN() );
  DFFTRXL checkboard_addr_reg_0_ ( .D(counter[0]), .RN(rst), .CK(clk), .Q(
        checkboard_addr[0]), .QN() );
  DFFTRXL checkboard_addr_reg_3_ ( .D(rst), .RN(counter[3]), .CK(clk), .Q(
        checkboard_addr[3]), .QN() );
  DFFTRXL checkboard_addr_reg_2_ ( .D(counter[2]), .RN(rst), .CK(clk), .Q(
        checkboard_addr[2]), .QN() );
  DFFHQX4 counter_reg_0_ ( .D(N131), .CK(clk), .Q(counter[0]) );
  DFFHQX2 counter_reg_1_ ( .D(N132), .CK(clk), .Q(counter[1]) );
  DFFTRX4 c_state_reg_0_ ( .D(n30), .RN(rst), .CK(clk), .Q(c_state[0]), .QN(
        n10) );
  DFFHQX4 counter_reg_3_ ( .D(N134), .CK(clk), .Q(counter[3]) );
  DFFHQX2 counter_reg_4_ ( .D(N135), .CK(clk), .Q(counter[4]) );
  DFFQX2 counter_reg_5_ ( .D(N136), .CK(clk), .Q(counter[5]) );
  DFFTRX4 c_state_reg_1_ ( .D(n54), .RN(rst), .CK(clk), .Q(c_state[1]), .QN(n9) );
  DFFHQX4 counter_reg_2_ ( .D(N133), .CK(clk), .Q(counter[2]) );
  DFFHQX2 counter_reg_6_ ( .D(N137), .CK(clk), .Q(counter[6]) );
  INVX2 U3 ( .A(1'b1), .Y(cs_n) );
  CLKAND2X2 U5 ( .A(n8), .B(n9), .Y(n5) );
  CLKNAND2X2 U6 ( .A(c_state[0]), .B(n5), .Y(n53) );
  INVX2 U7 ( .A(counter[2]), .Y(n66) );
  OAI21X1 U8 ( .A0(n53), .A1(n19), .B0(n45), .Y(n44) );
  CLKINVX2 U9 ( .A(n53), .Y(n40) );
  CLKAND2X2 U10 ( .A(n9), .B(n8), .Y(n4) );
  OR3X2 U11 ( .A(n62), .B(counter[5]), .C(counter[4]), .Y(n6) );
  AND2X2 U12 ( .A(counter[5]), .B(counter[4]), .Y(n7) );
  AND3XL U13 ( .A(n36), .B(n37), .C(n38), .Y(n17) );
  OR3X2 U14 ( .A(n12), .B(n62), .C(counter[4]), .Y(n11) );
  INVX2 U15 ( .A(n34), .Y(n57) );
  OAI2BB2X1 U16 ( .B0(n61), .B1(n43), .A0N(N109), .A1N(n44), .Y(N132) );
  AND4X1 U17 ( .A(n56), .B(n61), .C(n66), .D(n65), .Y(n41) );
  NOR3BX2 U18 ( .AN(n10), .B(n50), .C(n9), .Y(we_n) );
  INVXL U19 ( .A(n8), .Y(n50) );
  BUFX2 U20 ( .A(counter[5]), .Y(n12) );
  NAND3X1 U21 ( .A(n36), .B(n37), .C(n38), .Y(n30) );
  AOI32X1 U22 ( .A0(n12), .A1(n55), .A2(n39), .B0(n40), .B1(n35), .Y(n38) );
  NAND2X1 U23 ( .A(n14), .B(n42), .Y(n36) );
  NAND2XL U24 ( .A(n10), .B(n4), .Y(n37) );
  AND3X4 U25 ( .A(n37), .B(n53), .C(rst), .Y(n46) );
  OAI211X2 U26 ( .A0(n22), .A1(n23), .B0(n24), .C0(n25), .Y(n21) );
  NAND4X2 U27 ( .A(n56), .B(n61), .C(n66), .D(n65), .Y(n13) );
  NAND2X2 U28 ( .A(n62), .B(n7), .Y(n29) );
  NOR2XL U29 ( .A(n6), .B(n13), .Y(n49) );
  NAND2X2 U30 ( .A(n49), .B(n55), .Y(n32) );
  NOR3XL U31 ( .A(n9), .B(c_state[2]), .C(n10), .Y(n42) );
  AO2B2XL U32 ( .B0(N113), .B1(n44), .A0(n12), .A1N(n43), .Y(N136) );
  OR2XL U33 ( .A(n13), .B(n29), .Y(n14) );
  NAND2X2 U34 ( .A(n28), .B(n30), .Y(n23) );
  BUFX2 U35 ( .A(n57), .Y(n51) );
  AOI21X4 U36 ( .A0(n32), .A1(n57), .B0(n19), .Y(n28) );
  NAND3X2 U37 ( .A(n15), .B(n16), .C(n59), .Y(n34) );
  INVX2 U38 ( .A(n42), .Y(n59) );
  NAND2X2 U39 ( .A(n31), .B(n41), .Y(n35) );
  OR2X1 U40 ( .A(n33), .B(n60), .Y(n15) );
  CLKINVX2 U41 ( .A(counter[0]), .Y(n56) );
  OAI211XL U42 ( .A0(n26), .A1(n27), .B0(n28), .C0(n17), .Y(n25) );
  INVXL U43 ( .A(counter[6]), .Y(n62) );
  NOR3XL U44 ( .A(n13), .B(counter[6]), .C(counter[4]), .Y(n39) );
  OR2X2 U45 ( .A(n35), .B(n53), .Y(n16) );
  INVX2 U46 ( .A(n18), .Y(n60) );
  CLKINVX2 U47 ( .A(n60), .Y(n55) );
  AND4X2 U48 ( .A(n28), .B(n29), .C(n63), .D(n23), .Y(n20) );
  CLKINVX2 U49 ( .A(n21), .Y(n2) );
  INVX2 U50 ( .A(counter[1]), .Y(n61) );
  NOR2XL U51 ( .A(n11), .B(n13), .Y(n33) );
  OAI2BB2X1 U52 ( .B0(n62), .B1(n43), .A0N(N114), .A1N(n44), .Y(N137) );
  NOR3BX1 U53 ( .AN(n10), .B(c_state[2]), .C(n9), .Y(n18) );
  NAND4BXL U54 ( .AN(test_done), .B(n46), .C(n59), .D(n60), .Y(n43) );
  INVXL U55 ( .A(n32), .Y(n58) );
  CLKINVX2 U56 ( .A(counter[3]), .Y(n65) );
  OAI2BB2XL U57 ( .B0(n56), .B1(n43), .A0N(N108), .A1N(n44), .Y(N131) );
  XNOR2XL U58 ( .A(n56), .B(counter[2]), .Y(n22) );
  OAI33XL U59 ( .A0(n29), .A1(counter[2]), .A2(counter[0]), .B0(n56), .B1(
        counter[2]), .B2(n63), .Y(n27) );
  OAI33XL U60 ( .A0(n66), .A1(counter[0]), .A2(n63), .B0(n56), .B1(n29), .B2(
        n66), .Y(n26) );
  OAI2BB2X2 U61 ( .B0(n66), .B1(n43), .A0N(N110), .A1N(n44), .Y(N133) );
  OAI2BB2X2 U62 ( .B0(n65), .B1(n43), .A0N(N111), .A1N(n44), .Y(N134) );
  OAI2BB2X2 U63 ( .B0(n64), .B1(n43), .A0N(N112), .A1N(n44), .Y(N135) );
  NAND4X2 U64 ( .A(rst), .B(n51), .C(n22), .D(n30), .Y(n24) );
  OAI2BB1X1 U65 ( .A0N(checkboard_data_out[0]), .A1N(n20), .B0(n2), .Y(n48) );
  OAI2BB1X1 U66 ( .A0N(checkboard_data_out[1]), .A1N(n20), .B0(n2), .Y(n47) );
  NOR3X1 U67 ( .A(counter[5]), .B(counter[6]), .C(n64), .Y(n31) );
  INVX2 U68 ( .A(counter[4]), .Y(n64) );
  INVX2 U69 ( .A(rst), .Y(n19) );
  NOR3XL U70 ( .A(c_state[0]), .B(c_state[1]), .C(n8), .Y(test_done) );
  INVXL U71 ( .A(n31), .Y(n63) );
  INVXL U72 ( .A(n51), .Y(n54) );
  OAI21XL U73 ( .A0(n55), .A1(n42), .B0(n46), .Y(n45) );
endmodule


module MUX_data ( normal_input_data, test_patterns, sel, out_data );
  input [1:0] normal_input_data;
  input [1:0] test_patterns;
  output [1:0] out_data;
  input sel;
  wire   n1;

  AO22X2 U1 ( .A0(test_patterns[0]), .A1(n1), .B0(normal_input_data[0]), .B1(
        sel), .Y(out_data[0]) );
  AO22X2 U2 ( .A0(test_patterns[1]), .A1(n1), .B0(sel), .B1(
        normal_input_data[1]), .Y(out_data[1]) );
  INVX2 U3 ( .A(sel), .Y(n1) );
endmodule


module MUX_addr ( normal_input_addr, test_patterns, sel, out_addr );
  input [3:0] normal_input_addr;
  input [3:0] test_patterns;
  output [3:0] out_addr;
  input sel;
  wire   n1;

  AO22X2 U1 ( .A0(test_patterns[2]), .A1(n1), .B0(normal_input_addr[2]), .B1(
        sel), .Y(out_addr[2]) );
  AO22X2 U2 ( .A0(test_patterns[3]), .A1(n1), .B0(sel), .B1(
        normal_input_addr[3]), .Y(out_addr[3]) );
  AO22X2 U3 ( .A0(test_patterns[0]), .A1(n1), .B0(normal_input_addr[0]), .B1(
        sel), .Y(out_addr[0]) );
  AO22X2 U4 ( .A0(test_patterns[1]), .A1(n1), .B0(normal_input_addr[1]), .B1(
        sel), .Y(out_addr[1]) );
  INVX2 U5 ( .A(sel), .Y(n1) );
endmodule


module MUX_we_n ( normal_input_we_n, bist_we_n, sel, out_we_n );
  input normal_input_we_n, bist_we_n, sel;
  output out_we_n;


  AO2B2X4 U1 ( .B0(sel), .B1(normal_input_we_n), .A0(bist_we_n), .A1N(sel), 
        .Y(out_we_n) );
endmodule


module MUX_cs_n ( normal_input_cs_n, bist_cs_n, sel, out_cs_n );
  input normal_input_cs_n, bist_cs_n, sel;
  output out_cs_n;


  AO2B2X2 U1 ( .B0(sel), .B1(normal_input_cs_n), .A0(bist_cs_n), .A1N(sel), 
        .Y(out_cs_n) );
endmodule


module SRAM ( clk, rst, we_n, cs_n, data_in, data_out, addr );
  input [1:0] data_in;
  output [1:0] data_out;
  input [3:0] addr;
  input clk, rst, we_n, cs_n;
  wire   N115, N116, N117, N118, N119, N120, N121, N122, N127, N128, n1, n2,
         n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n3, n4, n5, n6, n7, n8, n9, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92;
  wire   [31:0] mem;

  OA21X4 U12 ( .A0(n16), .A1(n90), .B0(rst), .Y(n10) );
  OA21X4 U14 ( .A0(n16), .A1(n91), .B0(rst), .Y(n12) );
  OA21X4 U16 ( .A0(n16), .A1(n17), .B0(rst), .Y(n13) );
  OA21X4 U18 ( .A0(n16), .A1(n18), .B0(rst), .Y(n14) );
  OA21X4 U25 ( .A0(n90), .A1(n24), .B0(rst), .Y(n20) );
  OA21X4 U27 ( .A0(n91), .A1(n24), .B0(rst), .Y(n21) );
  OA21X4 U29 ( .A0(n17), .A1(n24), .B0(rst), .Y(n22) );
  OA21X4 U31 ( .A0(n18), .A1(n24), .B0(rst), .Y(n23) );
  DFFQXL data_out_reg_1_ ( .D(N127), .CK(clk), .Q(data_out[1]) );
  DFFQXL data_out_reg_0_ ( .D(N128), .CK(clk), .Q(data_out[0]) );
  DFFQXL mem_reg_0__2_ ( .D(n43), .CK(clk), .Q(mem[2]) );
  DFFQXL mem_reg_2__2_ ( .D(n59), .CK(clk), .Q(mem[18]) );
  DFFQXL mem_reg_0__6_ ( .D(n47), .CK(clk), .Q(mem[6]) );
  DFFQXL mem_reg_2__6_ ( .D(n63), .CK(clk), .Q(mem[22]) );
  DFFQXL mem_reg_0__4_ ( .D(n45), .CK(clk), .Q(mem[4]) );
  DFFQXL mem_reg_2__4_ ( .D(n61), .CK(clk), .Q(mem[20]) );
  DFFQXL mem_reg_0__0_ ( .D(n41), .CK(clk), .Q(mem[0]) );
  DFFQXL mem_reg_2__0_ ( .D(n57), .CK(clk), .Q(mem[16]) );
  DFFQXL mem_reg_0__3_ ( .D(n44), .CK(clk), .Q(mem[3]) );
  DFFQXL mem_reg_2__3_ ( .D(n60), .CK(clk), .Q(mem[19]) );
  DFFQXL mem_reg_0__7_ ( .D(n48), .CK(clk), .Q(mem[7]) );
  DFFQXL mem_reg_1__2_ ( .D(n51), .CK(clk), .Q(mem[10]) );
  DFFQXL mem_reg_2__7_ ( .D(n64), .CK(clk), .Q(mem[23]) );
  DFFQXL mem_reg_3__2_ ( .D(n67), .CK(clk), .Q(mem[26]) );
  DFFQXL mem_reg_0__5_ ( .D(n46), .CK(clk), .Q(mem[5]) );
  DFFQXL mem_reg_2__5_ ( .D(n62), .CK(clk), .Q(mem[21]) );
  DFFQXL mem_reg_1__6_ ( .D(n55), .CK(clk), .Q(mem[14]) );
  DFFQXL mem_reg_3__6_ ( .D(n71), .CK(clk), .Q(mem[30]) );
  DFFQXL mem_reg_0__1_ ( .D(n42), .CK(clk), .Q(mem[1]) );
  DFFQXL mem_reg_1__4_ ( .D(n53), .CK(clk), .Q(mem[12]) );
  DFFQXL mem_reg_2__1_ ( .D(n58), .CK(clk), .Q(mem[17]) );
  DFFQXL mem_reg_3__4_ ( .D(n69), .CK(clk), .Q(mem[28]) );
  DFFQXL mem_reg_1__0_ ( .D(n49), .CK(clk), .Q(mem[8]) );
  DFFQXL mem_reg_3__0_ ( .D(n65), .CK(clk), .Q(mem[24]) );
  DFFQXL mem_reg_1__3_ ( .D(n52), .CK(clk), .Q(mem[11]) );
  DFFQXL mem_reg_3__3_ ( .D(n68), .CK(clk), .Q(mem[27]) );
  DFFQXL mem_reg_1__7_ ( .D(n56), .CK(clk), .Q(mem[15]) );
  DFFQXL mem_reg_3__7_ ( .D(n72), .CK(clk), .Q(mem[31]) );
  DFFQXL mem_reg_1__5_ ( .D(n54), .CK(clk), .Q(mem[13]) );
  DFFQXL mem_reg_3__5_ ( .D(n70), .CK(clk), .Q(mem[29]) );
  DFFQXL mem_reg_1__1_ ( .D(n50), .CK(clk), .Q(mem[9]) );
  DFFQXL mem_reg_3__1_ ( .D(n66), .CK(clk), .Q(mem[25]) );
  NOR3BX4 U3 ( .AN(rst), .B(we_n), .C(cs_n), .Y(n25) );
  OA21X2 U4 ( .A0(n91), .A1(n36), .B0(rst), .Y(n33) );
  OA21X2 U5 ( .A0(n18), .A1(n36), .B0(rst), .Y(n35) );
  OA21X2 U6 ( .A0(n90), .A1(n36), .B0(rst), .Y(n32) );
  OA21X2 U7 ( .A0(n91), .A1(n30), .B0(rst), .Y(n27) );
  OA21X2 U8 ( .A0(n17), .A1(n36), .B0(rst), .Y(n34) );
  OA21X2 U9 ( .A0(n18), .A1(n30), .B0(rst), .Y(n29) );
  OA21X2 U10 ( .A0(n90), .A1(n30), .B0(rst), .Y(n26) );
  NAND2X2 U11 ( .A(data_in[1]), .B(n25), .Y(n15) );
  OA21X2 U13 ( .A0(n17), .A1(n30), .B0(rst), .Y(n28) );
  NAND2X2 U15 ( .A(data_in[0]), .B(n25), .Y(n11) );
  NOR2X2 U17 ( .A(n86), .B(addr[3]), .Y(n82) );
  NOR2X2 U19 ( .A(n87), .B(n86), .Y(n80) );
  NAND2X2 U20 ( .A(n31), .B(n86), .Y(n30) );
  NAND2X2 U21 ( .A(n19), .B(n86), .Y(n16) );
  INVX2 U22 ( .A(n38), .Y(n91) );
  INVX2 U23 ( .A(n37), .Y(n90) );
  INVX2 U24 ( .A(n18), .Y(n89) );
  NOR2BX1 U26 ( .AN(n25), .B(addr[3]), .Y(n19) );
  NAND2X2 U28 ( .A(addr[2]), .B(n19), .Y(n24) );
  AND2X2 U30 ( .A(addr[3]), .B(n25), .Y(n31) );
  NAND2X2 U32 ( .A(n31), .B(addr[2]), .Y(n36) );
  OAI2B2X1 U33 ( .A1N(addr[1]), .A0(n2), .B0(addr[1]), .B1(n1), .Y(N128) );
  AOI22XL U34 ( .A0(N120), .A1(n92), .B0(N119), .B1(addr[0]), .Y(n2) );
  AOI22XL U35 ( .A0(N122), .A1(n92), .B0(N121), .B1(addr[0]), .Y(n1) );
  INVX2 U36 ( .A(addr[2]), .Y(n86) );
  NAND2X2 U37 ( .A(n39), .B(n40), .Y(N127) );
  AOI22XL U38 ( .A0(N116), .A1(n88), .B0(N115), .B1(n89), .Y(n39) );
  AOI22XL U39 ( .A0(N118), .A1(n37), .B0(N117), .B1(n38), .Y(n40) );
  INVX2 U40 ( .A(n17), .Y(n88) );
  INVX2 U41 ( .A(addr[3]), .Y(n87) );
  NOR2X2 U42 ( .A(n92), .B(addr[1]), .Y(n38) );
  INVX2 U43 ( .A(addr[0]), .Y(n92) );
  NOR2X2 U44 ( .A(addr[0]), .B(addr[1]), .Y(n37) );
  NAND2X2 U45 ( .A(addr[1]), .B(n92), .Y(n17) );
  NAND2X2 U46 ( .A(addr[1]), .B(addr[0]), .Y(n18) );
  OAI2BB2X2 U47 ( .B0(n20), .B1(n11), .A0N(mem[8]), .A1N(n20), .Y(n49) );
  OAI2BB2X2 U48 ( .B0(n21), .B1(n11), .A0N(mem[9]), .A1N(n21), .Y(n50) );
  OAI2BB2X2 U49 ( .B0(n22), .B1(n11), .A0N(mem[10]), .A1N(n22), .Y(n51) );
  OAI2BB2X2 U50 ( .B0(n23), .B1(n11), .A0N(mem[11]), .A1N(n23), .Y(n52) );
  OAI2BB2X2 U51 ( .B0(n20), .B1(n15), .A0N(mem[12]), .A1N(n20), .Y(n53) );
  OAI2BB2X2 U52 ( .B0(n21), .B1(n15), .A0N(mem[13]), .A1N(n21), .Y(n54) );
  OAI2BB2X2 U53 ( .B0(n22), .B1(n15), .A0N(mem[14]), .A1N(n22), .Y(n55) );
  OAI2BB2X2 U54 ( .B0(n23), .B1(n15), .A0N(mem[15]), .A1N(n23), .Y(n56) );
  OAI2BB2X2 U55 ( .B0(n32), .B1(n11), .A0N(mem[24]), .A1N(n32), .Y(n65) );
  OAI2BB2X2 U56 ( .B0(n33), .B1(n11), .A0N(mem[25]), .A1N(n33), .Y(n66) );
  OAI2BB2X2 U57 ( .B0(n34), .B1(n11), .A0N(mem[26]), .A1N(n34), .Y(n67) );
  OAI2BB2X2 U58 ( .B0(n35), .B1(n11), .A0N(mem[27]), .A1N(n35), .Y(n68) );
  OAI2BB2X2 U59 ( .B0(n32), .B1(n15), .A0N(mem[28]), .A1N(n32), .Y(n69) );
  OAI2BB2X2 U60 ( .B0(n33), .B1(n15), .A0N(mem[29]), .A1N(n33), .Y(n70) );
  OAI2BB2X2 U61 ( .B0(n34), .B1(n15), .A0N(mem[30]), .A1N(n34), .Y(n71) );
  OAI2BB2X2 U62 ( .B0(n35), .B1(n15), .A0N(mem[31]), .A1N(n35), .Y(n72) );
  OAI2BB2X2 U63 ( .B0(n28), .B1(n11), .A0N(mem[18]), .A1N(n28), .Y(n59) );
  OAI2BB2X2 U64 ( .B0(n29), .B1(n11), .A0N(mem[19]), .A1N(n29), .Y(n60) );
  OAI2BB2X2 U65 ( .B0(n28), .B1(n15), .A0N(mem[22]), .A1N(n28), .Y(n63) );
  OAI2BB2X2 U66 ( .B0(n29), .B1(n15), .A0N(mem[23]), .A1N(n29), .Y(n64) );
  OAI2BB2X2 U67 ( .B0(n26), .B1(n11), .A0N(mem[16]), .A1N(n26), .Y(n57) );
  OAI2BB2X2 U68 ( .B0(n27), .B1(n11), .A0N(mem[17]), .A1N(n27), .Y(n58) );
  OAI2BB2X2 U69 ( .B0(n26), .B1(n15), .A0N(mem[20]), .A1N(n26), .Y(n61) );
  OAI2BB2X2 U70 ( .B0(n27), .B1(n15), .A0N(mem[21]), .A1N(n27), .Y(n62) );
  OAI2BB2X2 U71 ( .B0(n10), .B1(n11), .A0N(mem[0]), .A1N(n10), .Y(n41) );
  OAI2BB2X2 U72 ( .B0(n12), .B1(n11), .A0N(mem[1]), .A1N(n12), .Y(n42) );
  OAI2BB2X2 U73 ( .B0(n13), .B1(n11), .A0N(mem[2]), .A1N(n13), .Y(n43) );
  OAI2BB2X2 U74 ( .B0(n14), .B1(n11), .A0N(mem[3]), .A1N(n14), .Y(n44) );
  OAI2BB2X2 U75 ( .B0(n10), .B1(n15), .A0N(mem[4]), .A1N(n10), .Y(n45) );
  OAI2BB2X2 U76 ( .B0(n12), .B1(n15), .A0N(mem[5]), .A1N(n12), .Y(n46) );
  OAI2BB2X2 U77 ( .B0(n13), .B1(n15), .A0N(mem[6]), .A1N(n13), .Y(n47) );
  OAI2BB2X2 U78 ( .B0(n14), .B1(n15), .A0N(mem[7]), .A1N(n14), .Y(n48) );
  NOR2X1 U79 ( .A(n87), .B(addr[2]), .Y(n81) );
  AOI22XL U80 ( .A0(mem[16]), .A1(n81), .B0(mem[24]), .B1(n80), .Y(n4) );
  NOR2X1 U81 ( .A(addr[2]), .B(addr[3]), .Y(n83) );
  AOI22XL U82 ( .A0(mem[0]), .A1(n83), .B0(mem[8]), .B1(n82), .Y(n3) );
  CLKNAND2X2 U83 ( .A(n4), .B(n3), .Y(N122) );
  AOI22XL U84 ( .A0(mem[17]), .A1(n81), .B0(mem[25]), .B1(n80), .Y(n6) );
  AOI22XL U85 ( .A0(mem[1]), .A1(n83), .B0(mem[9]), .B1(n82), .Y(n5) );
  CLKNAND2X2 U86 ( .A(n6), .B(n5), .Y(N121) );
  AOI22XL U87 ( .A0(mem[18]), .A1(n81), .B0(mem[26]), .B1(n80), .Y(n8) );
  AOI22XL U88 ( .A0(mem[2]), .A1(n83), .B0(mem[10]), .B1(n82), .Y(n7) );
  CLKNAND2X2 U89 ( .A(n8), .B(n7), .Y(N120) );
  AOI22XL U90 ( .A0(mem[19]), .A1(n81), .B0(mem[27]), .B1(n80), .Y(n73) );
  AOI22XL U91 ( .A0(mem[3]), .A1(n83), .B0(mem[11]), .B1(n82), .Y(n9) );
  CLKNAND2X2 U92 ( .A(n73), .B(n9), .Y(N119) );
  AOI22XL U93 ( .A0(mem[20]), .A1(n81), .B0(mem[28]), .B1(n80), .Y(n75) );
  AOI22XL U94 ( .A0(mem[4]), .A1(n83), .B0(mem[12]), .B1(n82), .Y(n74) );
  CLKNAND2X2 U95 ( .A(n75), .B(n74), .Y(N118) );
  AOI22XL U96 ( .A0(mem[21]), .A1(n81), .B0(mem[29]), .B1(n80), .Y(n77) );
  AOI22XL U97 ( .A0(mem[5]), .A1(n83), .B0(mem[13]), .B1(n82), .Y(n76) );
  CLKNAND2X2 U98 ( .A(n77), .B(n76), .Y(N117) );
  AOI22XL U99 ( .A0(mem[22]), .A1(n81), .B0(mem[30]), .B1(n80), .Y(n79) );
  AOI22XL U100 ( .A0(mem[6]), .A1(n83), .B0(mem[14]), .B1(n82), .Y(n78) );
  CLKNAND2X2 U101 ( .A(n79), .B(n78), .Y(N116) );
  AOI22XL U102 ( .A0(mem[23]), .A1(n81), .B0(mem[31]), .B1(n80), .Y(n85) );
  AOI22XL U103 ( .A0(mem[7]), .A1(n83), .B0(mem[15]), .B1(n82), .Y(n84) );
  CLKNAND2X2 U104 ( .A(n85), .B(n84), .Y(N115) );
endmodule


module Delay_data ( clk, delay_data_in, delay_data_out );
  input [1:0] delay_data_in;
  output [1:0] delay_data_out;
  input clk;


  DFFQXL delay_data_out_reg_1_ ( .D(delay_data_in[1]), .CK(clk), .Q(
        delay_data_out[1]) );
  DFFQXL delay_data_out_reg_0_ ( .D(delay_data_in[0]), .CK(clk), .Q(
        delay_data_out[0]) );
endmodule


module Delay_addr ( clk, delay_addr_in, delay_addr_out );
  input [3:0] delay_addr_in;
  output [3:0] delay_addr_out;
  input clk;


  DFFQXL delay_addr_out_reg_3_ ( .D(delay_addr_in[3]), .CK(clk), .Q(
        delay_addr_out[3]) );
  DFFQXL delay_addr_out_reg_2_ ( .D(delay_addr_in[2]), .CK(clk), .Q(
        delay_addr_out[2]) );
  DFFQXL delay_addr_out_reg_1_ ( .D(delay_addr_in[1]), .CK(clk), .Q(
        delay_addr_out[1]) );
  DFFQXL delay_addr_out_reg_0_ ( .D(delay_addr_in[0]), .CK(clk), .Q(
        delay_addr_out[0]) );
endmodule


module Delay_we_n ( clk, delay_we_in, delay_we_out );
  input clk, delay_we_in;
  output delay_we_out;


  DFFQXL delay_we_out_reg ( .D(delay_we_in), .CK(clk), .Q(delay_we_out) );
endmodule


module Comparator ( data_in1, data_in2, Equal_or_not, we_n );
  input [1:0] data_in1;
  input [1:0] data_in2;
  input we_n;
  output Equal_or_not;
  wire   n1, n2;

  OAI21X1 U1 ( .A0(n1), .A1(n2), .B0(we_n), .Y(Equal_or_not) );
  XOR2X1 U2 ( .A(data_in2[0]), .B(data_in1[0]), .Y(n1) );
  XOR2X1 U3 ( .A(data_in2[1]), .B(data_in1[1]), .Y(n2) );
endmodule


module BIST_Checkboard ( clk, rst, normal_input_data, normal_input_addr, 
        normal_input_we_n, normal_input_cs_n, tester, pass_or_fail, 
        BIST_test_done );
  input [1:0] normal_input_data;
  input [3:0] normal_input_addr;
  input clk, rst, normal_input_we_n, normal_input_cs_n, tester;
  output pass_or_fail, BIST_test_done;
  wire   bist_output_we_n, test_done, output_we_n, output_cs_n, delay_we_out,
         SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4;
  wire   [3:0] test_addr;
  wire   [1:0] test_data;
  wire   [1:0] sram_data_in;
  wire   [3:0] sram_addr;
  wire   [1:0] sram_data_out;
  wire   [1:0] delay_data_out;

  Checkboard Pattern_Generator ( .clk(clk), .rst(rst), .checkboard_addr(
        test_addr), .checkboard_data_out(test_data), .we_n(bist_output_we_n), 
        .cs_n(), .test_done(test_done) );
  MUX_data MUX_data ( .normal_input_data(normal_input_data), .test_patterns(
        test_data), .sel(tester), .out_data(sram_data_in) );
  MUX_addr MUX_addr ( .normal_input_addr(normal_input_addr), .test_patterns(
        test_addr), .sel(tester), .out_addr(sram_addr) );
  MUX_we_n MUX_we_n ( .normal_input_we_n(normal_input_we_n), .bist_we_n(
        bist_output_we_n), .sel(tester), .out_we_n(output_we_n) );
  MUX_cs_n MUX_cs_n ( .normal_input_cs_n(normal_input_cs_n), .bist_cs_n(1'b0), 
        .sel(tester), .out_cs_n(output_cs_n) );
  SRAM SRAM ( .clk(clk), .rst(rst), .we_n(output_we_n), .cs_n(output_cs_n), 
        .data_in(sram_data_in), .data_out(sram_data_out), .addr(sram_addr) );
  Delay_data Delay_data ( .clk(clk), .delay_data_in(test_data), 
        .delay_data_out(delay_data_out) );
  Delay_addr Delay_addr ( .clk(clk), .delay_addr_in(test_addr), 
        .delay_addr_out({SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2, 
        SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4}) );
  Delay_we_n Delay_we_n ( .clk(clk), .delay_we_in(bist_output_we_n), 
        .delay_we_out(delay_we_out) );
  Comparator Comparator ( .data_in1(delay_data_out), .data_in2(sram_data_out), 
        .Equal_or_not(pass_or_fail), .we_n(delay_we_out) );
  NOR2BX1 U3 ( .AN(test_done), .B(tester), .Y(BIST_test_done) );
endmodule

