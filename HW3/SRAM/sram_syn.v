/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : R-2020.09-SP5
// Date      : Fri Jun  2 22:56:34 2023
/////////////////////////////////////////////////////////////


module SRAM ( clk, rst_n, we_n, cs_n, data_in, data_out, addr );
  input [1:0] data_in;
  output [1:0] data_out;
  input [3:0] addr;
  input clk, rst_n, we_n, cs_n;
  wire   N113, N114, N115, N116, N117, N118, N119, N120, N125, N126, n1, n2,
         n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96;
  wire   [31:0] mem;

  DFFRQX2 mem_reg_0__2_ ( .D(n40), .CK(clk), .RN(rst_n), .Q(mem[2]) );
  DFFRQX2 mem_reg_2__2_ ( .D(n56), .CK(clk), .RN(rst_n), .Q(mem[18]) );
  DFFRQX2 mem_reg_0__0_ ( .D(n38), .CK(clk), .RN(rst_n), .Q(mem[0]) );
  DFFRQX2 mem_reg_2__0_ ( .D(n54), .CK(clk), .RN(rst_n), .Q(mem[16]) );
  DFFRQX2 mem_reg_0__3_ ( .D(n41), .CK(clk), .RN(rst_n), .Q(mem[3]) );
  DFFRQX2 mem_reg_2__3_ ( .D(n57), .CK(clk), .RN(rst_n), .Q(mem[19]) );
  DFFRQX2 mem_reg_1__2_ ( .D(n48), .CK(clk), .RN(rst_n), .Q(mem[10]) );
  DFFRQX2 mem_reg_3__2_ ( .D(n64), .CK(clk), .RN(rst_n), .Q(mem[26]) );
  DFFRQX2 mem_reg_0__4_ ( .D(n42), .CK(clk), .RN(rst_n), .Q(mem[4]) );
  DFFRQX2 mem_reg_2__4_ ( .D(n58), .CK(clk), .RN(rst_n), .Q(mem[20]) );
  DFFRQX2 mem_reg_0__1_ ( .D(n39), .CK(clk), .RN(rst_n), .Q(mem[1]) );
  DFFRQX2 mem_reg_2__1_ ( .D(n55), .CK(clk), .RN(rst_n), .Q(mem[17]) );
  DFFRQX2 mem_reg_0__6_ ( .D(n44), .CK(clk), .RN(rst_n), .Q(mem[6]) );
  DFFRQX2 mem_reg_1__0_ ( .D(n46), .CK(clk), .RN(rst_n), .Q(mem[8]) );
  DFFRQX2 mem_reg_2__6_ ( .D(n60), .CK(clk), .RN(rst_n), .Q(mem[22]) );
  DFFRQX2 mem_reg_3__0_ ( .D(n62), .CK(clk), .RN(rst_n), .Q(mem[24]) );
  DFFRQX2 mem_reg_1__3_ ( .D(n49), .CK(clk), .RN(rst_n), .Q(mem[11]) );
  DFFRQX2 mem_reg_3__3_ ( .D(n65), .CK(clk), .RN(rst_n), .Q(mem[27]) );
  DFFRQX2 mem_reg_0__5_ ( .D(n43), .CK(clk), .RN(rst_n), .Q(mem[5]) );
  DFFRQX2 mem_reg_2__5_ ( .D(n59), .CK(clk), .RN(rst_n), .Q(mem[21]) );
  DFFRQX2 mem_reg_1__4_ ( .D(n50), .CK(clk), .RN(rst_n), .Q(mem[12]) );
  DFFRQX2 mem_reg_3__4_ ( .D(n66), .CK(clk), .RN(rst_n), .Q(mem[28]) );
  DFFRQX2 mem_reg_1__1_ ( .D(n47), .CK(clk), .RN(rst_n), .Q(mem[9]) );
  DFFRQX2 mem_reg_3__1_ ( .D(n63), .CK(clk), .RN(rst_n), .Q(mem[25]) );
  DFFRQX2 mem_reg_0__7_ ( .D(n45), .CK(clk), .RN(rst_n), .Q(mem[7]) );
  DFFRQX2 mem_reg_1__6_ ( .D(n52), .CK(clk), .RN(rst_n), .Q(mem[14]) );
  DFFRQX2 mem_reg_2__7_ ( .D(n61), .CK(clk), .RN(rst_n), .Q(mem[23]) );
  DFFRQX2 mem_reg_3__6_ ( .D(n68), .CK(clk), .RN(rst_n), .Q(mem[30]) );
  DFFRQX2 mem_reg_1__5_ ( .D(n51), .CK(clk), .RN(rst_n), .Q(mem[13]) );
  DFFRQX2 mem_reg_3__5_ ( .D(n67), .CK(clk), .RN(rst_n), .Q(mem[29]) );
  DFFRQX2 mem_reg_1__7_ ( .D(n53), .CK(clk), .RN(rst_n), .Q(mem[15]) );
  DFFRQX2 mem_reg_3__7_ ( .D(n69), .CK(clk), .RN(rst_n), .Q(mem[31]) );
  DFFQXL data_out_reg_1_ ( .D(N125), .CK(clk), .Q(data_out[1]) );
  DFFQXL data_out_reg_0_ ( .D(N126), .CK(clk), .Q(data_out[0]) );
  BUFX2 U74 ( .A(n13), .Y(n91) );
  NOR2X2 U75 ( .A(n95), .B(n96), .Y(n18) );
  NAND3XL U76 ( .A(n23), .B(n91), .C(n24), .Y(n19) );
  NAND3XL U77 ( .A(n16), .B(n91), .C(n23), .Y(n20) );
  NAND3XL U78 ( .A(n17), .B(n91), .C(n23), .Y(n21) );
  NAND3XL U79 ( .A(n16), .B(n91), .C(n29), .Y(n26) );
  NAND3XL U80 ( .A(n17), .B(n91), .C(n29), .Y(n27) );
  NAND3XL U81 ( .A(n16), .B(n91), .C(n34), .Y(n31) );
  NAND3XL U82 ( .A(n17), .B(n91), .C(n34), .Y(n32) );
  NAND3XL U83 ( .A(n24), .B(n91), .C(n29), .Y(n25) );
  NAND3XL U84 ( .A(n24), .B(n91), .C(n34), .Y(n30) );
  NAND3XL U85 ( .A(n18), .B(n91), .C(n23), .Y(n22) );
  NAND3XL U86 ( .A(n18), .B(n91), .C(n29), .Y(n28) );
  NAND3XL U87 ( .A(n15), .B(n91), .C(n16), .Y(n10) );
  NAND3XL U88 ( .A(n15), .B(n91), .C(n17), .Y(n11) );
  NAND3XL U89 ( .A(n15), .B(n91), .C(n18), .Y(n12) );
  NAND2X2 U90 ( .A(n36), .B(n37), .Y(N125) );
  AOI32XL U91 ( .A0(addr[0]), .A1(n95), .A2(N115), .B0(n24), .B1(N116), .Y(n37) );
  AOI33X2 U92 ( .A0(addr[1]), .A1(n96), .A2(N114), .B0(addr[1]), .B1(addr[0]), 
        .B2(N113), .Y(n36) );
  OAI2B2X1 U93 ( .A1N(addr[1]), .A0(n2), .B0(addr[1]), .B1(n1), .Y(N126) );
  AOI22XL U94 ( .A0(N118), .A1(n96), .B0(N117), .B1(addr[0]), .Y(n2) );
  AOI22XL U95 ( .A0(N120), .A1(n96), .B0(N119), .B1(addr[0]), .Y(n1) );
  OAI2BB2X2 U96 ( .B0(n93), .B1(n19), .A0N(mem[8]), .A1N(n19), .Y(n46) );
  OAI2BB2X2 U97 ( .B0(n92), .B1(n19), .A0N(mem[12]), .A1N(n19), .Y(n50) );
  OAI2BB2X2 U98 ( .B0(n93), .B1(n20), .A0N(mem[9]), .A1N(n20), .Y(n47) );
  OAI2BB2X2 U99 ( .B0(n93), .B1(n21), .A0N(mem[10]), .A1N(n21), .Y(n48) );
  OAI2BB2X2 U100 ( .B0(n92), .B1(n20), .A0N(mem[13]), .A1N(n20), .Y(n51) );
  OAI2BB2X2 U101 ( .B0(n92), .B1(n21), .A0N(mem[14]), .A1N(n21), .Y(n52) );
  OAI2BB2X2 U102 ( .B0(n93), .B1(n31), .A0N(mem[25]), .A1N(n31), .Y(n63) );
  OAI2BB2X2 U103 ( .B0(n93), .B1(n32), .A0N(mem[26]), .A1N(n32), .Y(n64) );
  OAI2BB2X2 U104 ( .B0(n92), .B1(n31), .A0N(mem[29]), .A1N(n31), .Y(n67) );
  OAI2BB2X2 U105 ( .B0(n92), .B1(n32), .A0N(mem[30]), .A1N(n32), .Y(n68) );
  OAI2BB2X2 U106 ( .B0(n93), .B1(n30), .A0N(mem[24]), .A1N(n30), .Y(n62) );
  OAI2BB2X2 U107 ( .B0(n92), .B1(n30), .A0N(mem[28]), .A1N(n30), .Y(n66) );
  OAI2BB2X2 U108 ( .B0(n93), .B1(n33), .A0N(mem[27]), .A1N(n33), .Y(n65) );
  OAI2BB2X2 U109 ( .B0(n92), .B1(n33), .A0N(mem[31]), .A1N(n33), .Y(n69) );
  OAI2BB2X2 U110 ( .B0(n93), .B1(n22), .A0N(mem[11]), .A1N(n22), .Y(n49) );
  OAI2BB2X2 U111 ( .B0(n92), .B1(n22), .A0N(mem[15]), .A1N(n22), .Y(n53) );
  OAI2BB2X2 U112 ( .B0(n93), .B1(n26), .A0N(mem[17]), .A1N(n26), .Y(n55) );
  OAI2BB2X2 U113 ( .B0(n93), .B1(n27), .A0N(mem[18]), .A1N(n27), .Y(n56) );
  OAI2BB2X2 U114 ( .B0(n92), .B1(n26), .A0N(mem[21]), .A1N(n26), .Y(n59) );
  OAI2BB2X2 U115 ( .B0(n92), .B1(n27), .A0N(mem[22]), .A1N(n27), .Y(n60) );
  OAI2BB2X2 U116 ( .B0(n93), .B1(n25), .A0N(mem[16]), .A1N(n25), .Y(n54) );
  OAI2BB2X2 U117 ( .B0(n92), .B1(n25), .A0N(mem[20]), .A1N(n25), .Y(n58) );
  OAI2BB2X2 U118 ( .B0(n9), .B1(n93), .A0N(mem[0]), .A1N(n9), .Y(n38) );
  OAI2BB2X2 U119 ( .B0(n9), .B1(n92), .A0N(mem[4]), .A1N(n9), .Y(n42) );
  OAI2BB2X2 U120 ( .B0(n10), .B1(n92), .A0N(mem[5]), .A1N(n10), .Y(n43) );
  OAI2BB2X2 U121 ( .B0(n11), .B1(n92), .A0N(mem[6]), .A1N(n11), .Y(n44) );
  OAI2BB2X2 U122 ( .B0(n12), .B1(n92), .A0N(mem[7]), .A1N(n12), .Y(n45) );
  OAI2BB2X2 U123 ( .B0(n93), .B1(n10), .A0N(mem[1]), .A1N(n10), .Y(n39) );
  OAI2BB2X2 U124 ( .B0(n93), .B1(n11), .A0N(mem[2]), .A1N(n11), .Y(n40) );
  OAI2BB2X2 U125 ( .B0(n93), .B1(n12), .A0N(mem[3]), .A1N(n12), .Y(n41) );
  OAI2BB2X2 U126 ( .B0(n93), .B1(n28), .A0N(mem[19]), .A1N(n28), .Y(n57) );
  OAI2BB2X2 U127 ( .B0(n92), .B1(n28), .A0N(mem[23]), .A1N(n28), .Y(n61) );
  NOR2X2 U128 ( .A(n94), .B(addr[3]), .Y(n23) );
  NOR2X2 U129 ( .A(n95), .B(addr[0]), .Y(n17) );
  NOR2X2 U130 ( .A(n96), .B(addr[1]), .Y(n16) );
  NOR2X2 U131 ( .A(addr[1]), .B(addr[0]), .Y(n24) );
  NOR2X2 U132 ( .A(addr[3]), .B(addr[2]), .Y(n15) );
  AND2X2 U133 ( .A(addr[3]), .B(n94), .Y(n29) );
  NOR2X2 U134 ( .A(we_n), .B(cs_n), .Y(n13) );
  NAND3XL U135 ( .A(n91), .B(n96), .C(n14), .Y(n9) );
  NOR3X1 U136 ( .A(addr[1]), .B(addr[3]), .C(addr[2]), .Y(n14) );
  AND2X2 U137 ( .A(addr[3]), .B(addr[2]), .Y(n34) );
  NAND3XL U138 ( .A(addr[3]), .B(addr[2]), .C(n35), .Y(n33) );
  AND3X2 U139 ( .A(n91), .B(addr[1]), .C(addr[0]), .Y(n35) );
  INVX2 U140 ( .A(data_in[1]), .Y(n92) );
  INVX2 U141 ( .A(data_in[0]), .Y(n93) );
  INVX2 U142 ( .A(addr[0]), .Y(n96) );
  INVX2 U143 ( .A(addr[1]), .Y(n95) );
  INVX2 U144 ( .A(addr[2]), .Y(n94) );
  INVX2 U145 ( .A(addr[3]), .Y(n90) );
  NOR2X1 U146 ( .A(n90), .B(addr[2]), .Y(n85) );
  NOR2X1 U147 ( .A(n90), .B(n94), .Y(n84) );
  AOI22XL U148 ( .A0(mem[16]), .A1(n85), .B0(mem[24]), .B1(n84), .Y(n71) );
  NOR2X1 U149 ( .A(addr[2]), .B(addr[3]), .Y(n87) );
  NOR2X1 U150 ( .A(n94), .B(addr[3]), .Y(n86) );
  AOI22XL U151 ( .A0(mem[0]), .A1(n87), .B0(mem[8]), .B1(n86), .Y(n70) );
  CLKNAND2X2 U152 ( .A(n71), .B(n70), .Y(N120) );
  AOI22XL U153 ( .A0(mem[17]), .A1(n85), .B0(mem[25]), .B1(n84), .Y(n73) );
  AOI22XL U154 ( .A0(mem[1]), .A1(n87), .B0(mem[9]), .B1(n86), .Y(n72) );
  CLKNAND2X2 U155 ( .A(n73), .B(n72), .Y(N119) );
  AOI22XL U156 ( .A0(mem[18]), .A1(n85), .B0(mem[26]), .B1(n84), .Y(n75) );
  AOI22XL U157 ( .A0(mem[2]), .A1(n87), .B0(mem[10]), .B1(n86), .Y(n74) );
  CLKNAND2X2 U158 ( .A(n75), .B(n74), .Y(N118) );
  AOI22XL U159 ( .A0(mem[19]), .A1(n85), .B0(mem[27]), .B1(n84), .Y(n77) );
  AOI22XL U160 ( .A0(mem[3]), .A1(n87), .B0(mem[11]), .B1(n86), .Y(n76) );
  CLKNAND2X2 U161 ( .A(n77), .B(n76), .Y(N117) );
  AOI22XL U162 ( .A0(mem[20]), .A1(n85), .B0(mem[28]), .B1(n84), .Y(n79) );
  AOI22XL U163 ( .A0(mem[4]), .A1(n87), .B0(mem[12]), .B1(n86), .Y(n78) );
  CLKNAND2X2 U164 ( .A(n79), .B(n78), .Y(N116) );
  AOI22XL U165 ( .A0(mem[21]), .A1(n85), .B0(mem[29]), .B1(n84), .Y(n81) );
  AOI22XL U166 ( .A0(mem[5]), .A1(n87), .B0(mem[13]), .B1(n86), .Y(n80) );
  CLKNAND2X2 U167 ( .A(n81), .B(n80), .Y(N115) );
  AOI22XL U168 ( .A0(mem[22]), .A1(n85), .B0(mem[30]), .B1(n84), .Y(n83) );
  AOI22XL U169 ( .A0(mem[6]), .A1(n87), .B0(mem[14]), .B1(n86), .Y(n82) );
  CLKNAND2X2 U170 ( .A(n83), .B(n82), .Y(N114) );
  AOI22XL U171 ( .A0(mem[23]), .A1(n85), .B0(mem[31]), .B1(n84), .Y(n89) );
  AOI22XL U172 ( .A0(mem[7]), .A1(n87), .B0(mem[15]), .B1(n86), .Y(n88) );
  CLKNAND2X2 U173 ( .A(n89), .B(n88), .Y(N113) );
endmodule

