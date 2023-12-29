/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : R-2020.09-SP5
// Date      : Thu Jun  1 16:57:36 2023
/////////////////////////////////////////////////////////////


module March_DW01_inc_0 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHX1 U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1 U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHX1 U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1 U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1 U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  XOR2X1 U1 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module March ( clk, rst, march_addr, march_data_out, we_n, cs_n, test_done );
  output [3:0] march_addr;
  output [1:0] march_data_out;
  input clk, rst;
  output we_n, cs_n, test_done;
  wire   N20, N83, N84, N85, N86, N87, N88, N89, N114, N115, N116, N117, N118,
         N119, N120, N141, N142, N173, N193, n9, n18, n19, n200, n21, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n830, n840, n850, n3, n4,
         n5, n6, n7, n8, n10, n11, n12, n13, n14, n15, n16, n17, n22, n23;
  wire   [3:0] c_state;
  wire   [6:0] counter;

  March_DW01_inc_0 r376 ( .A(counter), .SUM({N89, N88, N87, N86, N85, N84, N83}) );
  DFFQXL march_data_out_reg_1_ ( .D(N142), .CK(clk), .Q(march_data_out[1]) );
  DFFQXL march_data_out_reg_0_ ( .D(N141), .CK(clk), .Q(march_data_out[0]) );
  DFFQXL we_n_reg ( .D(N173), .CK(clk), .Q(we_n) );
  DFFQXL counter_reg_6_ ( .D(N120), .CK(clk), .Q(counter[6]) );
  DFFTRXL c_state_reg_3_ ( .D(rst), .RN(n49), .CK(clk), .Q(c_state[3]), .QN(
        n18) );
  DFFQXL counter_reg_0_ ( .D(N114), .CK(clk), .Q(counter[0]) );
  DFFTRXL c_state_reg_0_ ( .D(n53), .RN(rst), .CK(clk), .Q(c_state[0]), .QN(
        n21) );
  DFFTRXL c_state_reg_2_ ( .D(n52), .RN(rst), .CK(clk), .Q(c_state[2]), .QN(
        n19) );
  DFFQXL counter_reg_4_ ( .D(N118), .CK(clk), .Q(counter[4]) );
  DFFQXL counter_reg_5_ ( .D(N119), .CK(clk), .Q(counter[5]) );
  DFFTRXL c_state_reg_1_ ( .D(n47), .RN(rst), .CK(clk), .Q(c_state[1]), .QN(
        n200) );
  DFFQXL counter_reg_1_ ( .D(N115), .CK(clk), .Q(counter[1]) );
  DFFQXL counter_reg_2_ ( .D(N116), .CK(clk), .Q(counter[2]) );
  DFFQXL counter_reg_3_ ( .D(N117), .CK(clk), .Q(counter[3]) );
  INVX2 U3 ( .A(1'b1), .Y(cs_n) );
  OAI211XL U5 ( .A0(n59), .A1(n66), .B0(n61), .C0(n67), .Y(n47) );
  NAND3XL U6 ( .A(n21), .B(n200), .C(n77), .Y(n66) );
  OAI211XL U7 ( .A0(n59), .A1(n13), .B0(n61), .C0(n62), .Y(n53) );
  NOR2BX1 U8 ( .AN(n38), .B(n39), .Y(n41) );
  INVX2 U9 ( .A(n59), .Y(n8) );
  NAND2X2 U10 ( .A(n42), .B(n43), .Y(n39) );
  INVX2 U11 ( .A(n47), .Y(n6) );
  NAND2X2 U12 ( .A(n51), .B(n50), .Y(n35) );
  OA21X1 U13 ( .A0(n46), .A1(n5), .B0(n36), .Y(n43) );
  INVX2 U14 ( .A(n51), .Y(n5) );
  NAND2X2 U15 ( .A(n50), .B(n47), .Y(n33) );
  AND2X2 U16 ( .A(n33), .B(n46), .Y(n38) );
  NOR3BX1 U17 ( .AN(n68), .B(n69), .C(n58), .Y(n67) );
  NOR3X1 U18 ( .A(n13), .B(n70), .C(n8), .Y(n69) );
  NOR4X2 U19 ( .A(n10), .B(n14), .C(n15), .D(n16), .Y(n59) );
  NOR3BX1 U20 ( .AN(n35), .B(n31), .C(n30), .Y(n42) );
  NOR2X2 U21 ( .A(n49), .B(n6), .Y(n51) );
  INVX2 U22 ( .A(n45), .Y(n9) );
  OAI32XL U23 ( .A0(n39), .A1(n46), .A2(n47), .B0(n48), .B1(n39), .Y(n45) );
  AOI31X1 U24 ( .A0(n6), .A1(n49), .A2(n50), .B0(n51), .Y(n48) );
  NOR3X1 U25 ( .A(n47), .B(n46), .C(n49), .Y(n31) );
  NAND2X2 U26 ( .A(n4), .B(n53), .Y(n46) );
  NAND2X2 U27 ( .A(n70), .B(n71), .Y(n55) );
  INVX2 U28 ( .A(n52), .Y(n4) );
  NOR2X2 U29 ( .A(n53), .B(n52), .Y(n50) );
  INVX2 U30 ( .A(n71), .Y(n13) );
  NAND3XL U31 ( .A(n7), .B(n52), .C(n3), .Y(n36) );
  INVX2 U32 ( .A(n53), .Y(n3) );
  INVX2 U33 ( .A(n49), .Y(n7) );
  NOR2X2 U34 ( .A(n31), .B(n32), .Y(N173) );
  AOI31X1 U35 ( .A0(n4), .A1(n33), .A2(N20), .B0(n34), .Y(n32) );
  NOR2X2 U36 ( .A(n30), .B(n7), .Y(N20) );
  AOI31X1 U37 ( .A0(n35), .A1(n36), .A2(n37), .B0(n30), .Y(n34) );
  INVX2 U38 ( .A(n66), .Y(n12) );
  INVX2 U39 ( .A(n840), .Y(n11) );
  NOR3BX1 U40 ( .AN(n82), .B(n58), .C(n71), .Y(n830) );
  NAND3XL U41 ( .A(n840), .B(n66), .C(n830), .Y(n78) );
  OAI2BB2X2 U42 ( .B0(n16), .B1(n78), .A0N(N86), .A1N(n79), .Y(N117) );
  OAI2BB2X2 U43 ( .B0(n15), .B1(n78), .A0N(N85), .A1N(n79), .Y(N116) );
  OAI2BB2X2 U44 ( .B0(n14), .B1(n78), .A0N(N84), .A1N(n79), .Y(N115) );
  OAI2BB2X2 U45 ( .B0(n78), .B1(n22), .A0N(N88), .A1N(n79), .Y(N119) );
  OAI2BB2X2 U46 ( .B0(n78), .B1(n17), .A0N(N87), .A1N(n79), .Y(N118) );
  NAND2X2 U47 ( .A(n80), .B(n81), .Y(n79) );
  OAI21X1 U48 ( .A0(n71), .A1(n58), .B0(n82), .Y(n81) );
  OAI21X1 U49 ( .A0(n12), .A1(n11), .B0(n830), .Y(n80) );
  NOR4X2 U50 ( .A(n23), .B(n8), .C(counter[4]), .D(counter[5]), .Y(n70) );
  OAI2B11X2 U51 ( .A1N(n42), .A0(n43), .B0(n44), .C0(n9), .Y(N141) );
  NAND2X2 U52 ( .A(march_data_out[0]), .B(n41), .Y(n44) );
  INVX2 U53 ( .A(counter[3]), .Y(n16) );
  OAI211XL U54 ( .A0(n38), .A1(n39), .B0(n40), .C0(n9), .Y(N142) );
  NAND2X2 U55 ( .A(march_data_out[1]), .B(n41), .Y(n40) );
  INVX2 U56 ( .A(counter[2]), .Y(n15) );
  INVX2 U57 ( .A(counter[1]), .Y(n14) );
  INVX2 U58 ( .A(counter[0]), .Y(n10) );
  NAND4X2 U59 ( .A(n54), .B(n55), .C(n56), .D(n57), .Y(n52) );
  NAND3XL U60 ( .A(n60), .B(c_state[0]), .C(c_state[1]), .Y(n56) );
  AOI22XL U61 ( .A0(n12), .A1(n8), .B0(n58), .B1(n59), .Y(n57) );
  NAND4X2 U62 ( .A(n55), .B(n68), .C(n72), .D(n75), .Y(n49) );
  AOI221XL U63 ( .A0(n12), .A1(n59), .B0(n11), .B1(n8), .C0(n76), .Y(n75) );
  NOR4X2 U64 ( .A(c_state[3]), .B(n19), .C(n21), .D(n200), .Y(n76) );
  AOI211X2 U65 ( .A0(n12), .A1(n59), .B0(n11), .C0(n63), .Y(n62) );
  NOR4X2 U66 ( .A(n64), .B(n65), .C(counter[3]), .D(counter[2]), .Y(n63) );
  NAND3XL U67 ( .A(n22), .B(n23), .C(n17), .Y(n65) );
  NOR2X2 U68 ( .A(n850), .B(n21), .Y(n71) );
  NOR2X2 U69 ( .A(c_state[2]), .B(c_state[3]), .Y(n60) );
  NAND2X2 U70 ( .A(n60), .B(n200), .Y(n850) );
  NAND3XL U71 ( .A(n33), .B(n5), .C(we_n), .Y(n37) );
  NOR3X1 U72 ( .A(c_state[0]), .B(c_state[3]), .C(n19), .Y(n74) );
  AND2X2 U73 ( .A(n74), .B(n200), .Y(n58) );
  NAND4X2 U74 ( .A(n60), .B(n21), .C(n10), .D(n14), .Y(n64) );
  NOR2X2 U75 ( .A(n18), .B(c_state[2]), .Y(n77) );
  NAND3XL U76 ( .A(c_state[0]), .B(n77), .C(c_state[1]), .Y(n840) );
  NAND3XL U77 ( .A(n77), .B(n200), .C(c_state[0]), .Y(n68) );
  INVX2 U78 ( .A(counter[6]), .Y(n23) );
  NAND2X2 U79 ( .A(n74), .B(c_state[1]), .Y(n54) );
  AND3X2 U80 ( .A(n54), .B(n72), .C(n73), .Y(n61) );
  NAND3XL U81 ( .A(n60), .B(n21), .C(c_state[1]), .Y(n73) );
  NAND3XL U82 ( .A(n77), .B(n21), .C(c_state[1]), .Y(n72) );
  INVX2 U83 ( .A(counter[4]), .Y(n17) );
  INVX2 U84 ( .A(counter[5]), .Y(n22) );
  XNOR2X1 U85 ( .A(N193), .B(counter[2]), .Y(march_addr[2]) );
  XNOR2X1 U86 ( .A(N193), .B(counter[3]), .Y(march_addr[3]) );
  XNOR2X1 U87 ( .A(N193), .B(counter[0]), .Y(march_addr[0]) );
  XNOR2X1 U88 ( .A(N193), .B(counter[1]), .Y(march_addr[1]) );
  AOI2BB1X2 U89 ( .A0N(c_state[0]), .A1N(n850), .B0(n30), .Y(n82) );
  OAI2BB2X2 U90 ( .B0(n23), .B1(n78), .A0N(N89), .A1N(n79), .Y(N120) );
  OAI2BB2X2 U91 ( .B0(n10), .B1(n78), .A0N(N83), .A1N(n79), .Y(N114) );
  NOR4X2 U92 ( .A(c_state[1]), .B(c_state[0]), .C(n19), .D(n18), .Y(test_done)
         );
  INVX2 U93 ( .A(rst), .Y(n30) );
  AOI21X1 U94 ( .A0(counter[5]), .A1(counter[4]), .B0(counter[6]), .Y(N193) );
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


  AO2B2X2 U1 ( .B0(sel), .B1(normal_input_we_n), .A0(bist_we_n), .A1N(sel), 
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
  INVX2 U3 ( .A(n38), .Y(n88) );
  INVX2 U4 ( .A(n37), .Y(n92) );
  NAND2X2 U5 ( .A(n19), .B(n87), .Y(n16) );
  NAND2X2 U6 ( .A(n31), .B(n87), .Y(n30) );
  INVX2 U7 ( .A(n18), .Y(n91) );
  OAI2B2X1 U8 ( .A1N(addr[1]), .A0(n2), .B0(addr[1]), .B1(n1), .Y(N128) );
  AOI22XL U9 ( .A0(N120), .A1(n90), .B0(N119), .B1(addr[0]), .Y(n2) );
  AOI22XL U10 ( .A0(N122), .A1(n90), .B0(N121), .B1(addr[0]), .Y(n1) );
  INVX2 U11 ( .A(addr[2]), .Y(n87) );
  NAND2X2 U12 ( .A(n39), .B(n40), .Y(N127) );
  AOI22XL U13 ( .A0(N116), .A1(n89), .B0(N115), .B1(n91), .Y(n39) );
  AOI22XL U14 ( .A0(N118), .A1(n37), .B0(N117), .B1(n38), .Y(n40) );
  INVX2 U15 ( .A(n17), .Y(n89) );
  INVX2 U16 ( .A(addr[3]), .Y(n86) );
  NOR2X2 U17 ( .A(n90), .B(addr[1]), .Y(n38) );
  INVX2 U18 ( .A(addr[0]), .Y(n90) );
  NOR2X2 U19 ( .A(addr[0]), .B(addr[1]), .Y(n37) );
  NOR2BX1 U20 ( .AN(n25), .B(addr[3]), .Y(n19) );
  NAND2X2 U21 ( .A(addr[2]), .B(n19), .Y(n24) );
  NAND2X2 U22 ( .A(addr[1]), .B(n90), .Y(n17) );
  AND2X2 U23 ( .A(addr[3]), .B(n25), .Y(n31) );
  NAND2X2 U24 ( .A(n31), .B(addr[2]), .Y(n36) );
  NAND2X2 U25 ( .A(addr[1]), .B(addr[0]), .Y(n18) );
  OAI2BB2X2 U26 ( .B0(n12), .B1(n11), .A0N(mem[1]), .A1N(n12), .Y(n42) );
  OAI2BB2X2 U27 ( .B0(n12), .B1(n15), .A0N(mem[5]), .A1N(n12), .Y(n46) );
  OA21X1 U28 ( .A0(n16), .A1(n88), .B0(rst), .Y(n12) );
  OAI2BB2X2 U29 ( .B0(n21), .B1(n11), .A0N(mem[9]), .A1N(n21), .Y(n50) );
  OAI2BB2X2 U30 ( .B0(n21), .B1(n15), .A0N(mem[13]), .A1N(n21), .Y(n54) );
  OAI2BB2X2 U31 ( .B0(n27), .B1(n11), .A0N(mem[17]), .A1N(n27), .Y(n58) );
  OAI2BB2X2 U32 ( .B0(n27), .B1(n15), .A0N(mem[21]), .A1N(n27), .Y(n62) );
  OAI2BB2X2 U33 ( .B0(n33), .B1(n11), .A0N(mem[25]), .A1N(n33), .Y(n66) );
  OAI2BB2X2 U34 ( .B0(n33), .B1(n15), .A0N(mem[29]), .A1N(n33), .Y(n70) );
  OA21X1 U35 ( .A0(n88), .A1(n36), .B0(rst), .Y(n33) );
  OA21X1 U36 ( .A0(n88), .A1(n24), .B0(rst), .Y(n21) );
  OA21X1 U37 ( .A0(n88), .A1(n30), .B0(rst), .Y(n27) );
  OAI2BB2X2 U38 ( .B0(n10), .B1(n11), .A0N(mem[0]), .A1N(n10), .Y(n41) );
  OAI2BB2X2 U39 ( .B0(n10), .B1(n15), .A0N(mem[4]), .A1N(n10), .Y(n45) );
  OA21X1 U40 ( .A0(n16), .A1(n92), .B0(rst), .Y(n10) );
  OAI2BB2X2 U41 ( .B0(n20), .B1(n11), .A0N(mem[8]), .A1N(n20), .Y(n49) );
  OAI2BB2X2 U42 ( .B0(n22), .B1(n11), .A0N(mem[10]), .A1N(n22), .Y(n51) );
  OAI2BB2X2 U43 ( .B0(n23), .B1(n11), .A0N(mem[11]), .A1N(n23), .Y(n52) );
  OAI2BB2X2 U44 ( .B0(n20), .B1(n15), .A0N(mem[12]), .A1N(n20), .Y(n53) );
  OAI2BB2X2 U45 ( .B0(n22), .B1(n15), .A0N(mem[14]), .A1N(n22), .Y(n55) );
  OAI2BB2X2 U46 ( .B0(n23), .B1(n15), .A0N(mem[15]), .A1N(n23), .Y(n56) );
  OA21X1 U47 ( .A0(n92), .A1(n24), .B0(rst), .Y(n20) );
  OA21X1 U48 ( .A0(n17), .A1(n24), .B0(rst), .Y(n22) );
  OA21X1 U49 ( .A0(n18), .A1(n24), .B0(rst), .Y(n23) );
  OAI2BB2X2 U50 ( .B0(n26), .B1(n11), .A0N(mem[16]), .A1N(n26), .Y(n57) );
  OAI2BB2X2 U51 ( .B0(n26), .B1(n15), .A0N(mem[20]), .A1N(n26), .Y(n61) );
  OAI2BB2X2 U52 ( .B0(n32), .B1(n11), .A0N(mem[24]), .A1N(n32), .Y(n65) );
  OAI2BB2X2 U53 ( .B0(n32), .B1(n15), .A0N(mem[28]), .A1N(n32), .Y(n69) );
  OA21X1 U54 ( .A0(n92), .A1(n36), .B0(rst), .Y(n32) );
  OA21X1 U55 ( .A0(n92), .A1(n30), .B0(rst), .Y(n26) );
  OAI2BB2X2 U56 ( .B0(n13), .B1(n11), .A0N(mem[2]), .A1N(n13), .Y(n43) );
  OAI2BB2X2 U57 ( .B0(n14), .B1(n11), .A0N(mem[3]), .A1N(n14), .Y(n44) );
  OAI2BB2X2 U58 ( .B0(n13), .B1(n15), .A0N(mem[6]), .A1N(n13), .Y(n47) );
  OAI2BB2X2 U59 ( .B0(n14), .B1(n15), .A0N(mem[7]), .A1N(n14), .Y(n48) );
  OA21X1 U60 ( .A0(n16), .A1(n17), .B0(rst), .Y(n13) );
  OA21X1 U61 ( .A0(n16), .A1(n18), .B0(rst), .Y(n14) );
  OAI2BB2X2 U62 ( .B0(n28), .B1(n11), .A0N(mem[18]), .A1N(n28), .Y(n59) );
  OAI2BB2X2 U63 ( .B0(n28), .B1(n15), .A0N(mem[22]), .A1N(n28), .Y(n63) );
  OAI2BB2X2 U64 ( .B0(n34), .B1(n11), .A0N(mem[26]), .A1N(n34), .Y(n67) );
  OAI2BB2X2 U65 ( .B0(n34), .B1(n15), .A0N(mem[30]), .A1N(n34), .Y(n71) );
  OA21X1 U66 ( .A0(n17), .A1(n36), .B0(rst), .Y(n34) );
  OA21X1 U67 ( .A0(n17), .A1(n30), .B0(rst), .Y(n28) );
  OAI2BB2X2 U68 ( .B0(n29), .B1(n11), .A0N(mem[19]), .A1N(n29), .Y(n60) );
  OAI2BB2X2 U69 ( .B0(n29), .B1(n15), .A0N(mem[23]), .A1N(n29), .Y(n64) );
  OA21X1 U70 ( .A0(n18), .A1(n30), .B0(rst), .Y(n29) );
  OAI2BB2X2 U71 ( .B0(n35), .B1(n11), .A0N(mem[27]), .A1N(n35), .Y(n68) );
  OAI2BB2X2 U72 ( .B0(n35), .B1(n15), .A0N(mem[31]), .A1N(n35), .Y(n72) );
  OA21X1 U73 ( .A0(n18), .A1(n36), .B0(rst), .Y(n35) );
  NOR3BX1 U74 ( .AN(rst), .B(we_n), .C(cs_n), .Y(n25) );
  NAND2X2 U75 ( .A(data_in[0]), .B(n25), .Y(n11) );
  NAND2X2 U76 ( .A(data_in[1]), .B(n25), .Y(n15) );
  NOR2X1 U77 ( .A(n86), .B(addr[2]), .Y(n81) );
  NOR2X1 U78 ( .A(n86), .B(n87), .Y(n80) );
  AOI22XL U79 ( .A0(mem[16]), .A1(n81), .B0(mem[24]), .B1(n80), .Y(n4) );
  NOR2X1 U80 ( .A(addr[2]), .B(addr[3]), .Y(n83) );
  NOR2X1 U81 ( .A(n87), .B(addr[3]), .Y(n82) );
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
  XOR2X1 U2 ( .A(data_in2[1]), .B(data_in1[1]), .Y(n2) );
  XOR2X1 U3 ( .A(data_in2[0]), .B(data_in1[0]), .Y(n1) );
endmodule


module BIST_March ( clk, rst, normal_input_data, normal_input_addr, 
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
  wire   [1:0] data_out;
  wire   [1:0] delay_data_out;

  March Pattern_Generator ( .clk(clk), .rst(rst), .march_addr(test_addr), 
        .march_data_out(test_data), .we_n(bist_output_we_n), .cs_n(), 
        .test_done(test_done) );
  MUX_data MUX_data ( .normal_input_data(normal_input_data), .test_patterns(
        test_data), .sel(tester), .out_data(sram_data_in) );
  MUX_addr MUX_addr ( .normal_input_addr(normal_input_addr), .test_patterns(
        test_addr), .sel(tester), .out_addr(sram_addr) );
  MUX_we_n MUX_we_n ( .normal_input_we_n(normal_input_we_n), .bist_we_n(
        bist_output_we_n), .sel(tester), .out_we_n(output_we_n) );
  MUX_cs_n MUX_cs_n ( .normal_input_cs_n(normal_input_cs_n), .bist_cs_n(1'b0), 
        .sel(tester), .out_cs_n(output_cs_n) );
  SRAM SRAM ( .clk(clk), .rst(rst), .we_n(output_we_n), .cs_n(output_cs_n), 
        .data_in(sram_data_in), .data_out(data_out), .addr(sram_addr) );
  Delay_data Delay_data ( .clk(clk), .delay_data_in(test_data), 
        .delay_data_out(delay_data_out) );
  Delay_addr Delay_addr ( .clk(clk), .delay_addr_in(test_addr), 
        .delay_addr_out({SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2, 
        SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4}) );
  Delay_we_n Delay_we_n ( .clk(clk), .delay_we_in(bist_output_we_n), 
        .delay_we_out(delay_we_out) );
  Comparator Comparator ( .data_in1(delay_data_out), .data_in2(data_out), 
        .Equal_or_not(pass_or_fail), .we_n(delay_we_out) );
  NOR2BX1 U3 ( .AN(test_done), .B(tester), .Y(BIST_test_done) );
endmodule

