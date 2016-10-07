`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:32:57 10/07/2016
// Design Name:   matrixInversion
// Module Name:   F:/Study/Sem 3/LA/LA_Code_Submission_1/matrixInversion/inverse_tb.v
// Project Name:  matrixInversion
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: matrixInversion
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module inverse_tb;

	// Inputs
	reg clk;
	reg cnt;
	reg cnt40;
	reg cnt0;
	reg cnt1;
	reg cnt2;
	reg cnt3;
	reg cnt4;
	reg cnt5;
	reg cnt6;
	reg cnt7;
	reg cnt8;
	reg cnt9;
	reg cnt10;
	reg cnt11;
	reg cnt12;
	reg cnt13;
	reg cnt14;
	reg cnt15;
	reg cnt16;
	reg cnt17;
	reg cnt18;
	reg cnt19;
	reg cnt20;
	reg cnt21;
	reg cnt22;
	reg cnt23;
	reg cnt24;
	reg cnt25;
	reg cnt26;
	reg cnt27;
	reg cnt28;
	reg cnt29;
	reg cnt30;
	reg cnt31;
	reg cnt32;
	reg cnt33;
	reg cnt34;
	reg cnt35;
	reg cnt36;
	reg cnt37;
	reg cnt38;
	reg cnt39;

	// Outputs
	wire [63:0] detA;
	wire [63:0] ans00;
	wire [63:0] ans01;
	wire [63:0] ans02;
	wire [63:0] ans03;
	wire [63:0] ans04;
	wire [63:0] ans10;
	wire [63:0] ans11;
	wire [63:0] ans12;
	wire [63:0] ans13;
	wire [63:0] ans14;
	wire [63:0] ans20;
	wire [63:0] ans21;
	wire [63:0] ans22;
	wire [63:0] ans23;
	wire [63:0] ans24;
	wire [63:0] ans30;
	wire [63:0] ans31;
	wire [63:0] ans32;
	wire [63:0] ans33;
	wire [63:0] ans34;
	wire [63:0] ans40;
	wire [63:0] ans41;
	wire [63:0] ans42;
	wire [63:0] ans43;
	wire [63:0] ans44;

	// Instantiate the Unit Under Test (UUT)
	matrixInversion uut (
		.clk(clk), 
		.cnt(cnt), 
		.cnt40(cnt40), 
		.cnt0(cnt0), 
		.cnt1(cnt1), 
		.cnt2(cnt2), 
		.cnt3(cnt3), 
		.cnt4(cnt4), 
		.cnt5(cnt5), 
		.cnt6(cnt6), 
		.cnt7(cnt7), 
		.cnt8(cnt8), 
		.cnt9(cnt9), 
		.cnt10(cnt10), 
		.cnt11(cnt11), 
		.cnt12(cnt12), 
		.cnt13(cnt13), 
		.cnt14(cnt14), 
		.cnt15(cnt15), 
		.cnt16(cnt16), 
		.cnt17(cnt17), 
		.cnt18(cnt18), 
		.cnt19(cnt19), 
		.cnt20(cnt20), 
		.cnt21(cnt21), 
		.cnt22(cnt22), 
		.cnt23(cnt23), 
		.cnt24(cnt24), 
		.cnt25(cnt25), 
		.cnt26(cnt26), 
		.cnt27(cnt27), 
		.cnt28(cnt28), 
		.cnt29(cnt29), 
		.cnt30(cnt30), 
		.cnt31(cnt31), 
		.cnt32(cnt32), 
		.cnt33(cnt33), 
		.cnt34(cnt34), 
		.cnt35(cnt35), 
		.cnt36(cnt36), 
		.cnt37(cnt37), 
		.cnt38(cnt38), 
		.cnt39(cnt39), 
		.detA(detA), 
		.ans00(ans00), 
		.ans01(ans01), 
		.ans02(ans02), 
		.ans03(ans03), 
		.ans04(ans04), 
		.ans10(ans10), 
		.ans11(ans11), 
		.ans12(ans12), 
		.ans13(ans13), 
		.ans14(ans14), 
		.ans20(ans20), 
		.ans21(ans21), 
		.ans22(ans22), 
		.ans23(ans23), 
		.ans24(ans24), 
		.ans30(ans30), 
		.ans31(ans31), 
		.ans32(ans32), 
		.ans33(ans33), 
		.ans34(ans34), 
		.ans40(ans40), 
		.ans41(ans41), 
		.ans42(ans42), 
		.ans43(ans43), 
		.ans44(ans44)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		cnt = 0;
		cnt0 = 0;
		cnt1 = 0;
		cnt2 = 0;
		cnt3 = 0;
		cnt4 = 0;
		cnt5 = 0;
		cnt6 = 0;
		cnt7 = 0;
		cnt8 = 0;
		cnt9 = 0;
		cnt10 = 0;
		cnt11 = 0;
		cnt12 = 0;
		cnt13 = 0;
		cnt14 = 0;
		cnt15 = 0;
		cnt16 = 0;
		cnt17 = 0;
		cnt18 = 0;
		cnt19 = 0;
		cnt20 = 0;
		cnt21 = 0;
		cnt22 = 0;
		cnt23 = 0;
		cnt24 = 0;
		cnt25 = 0;
		cnt26 = 0;
		cnt27 = 0;
		cnt28 = 0;
		cnt29 = 0;
		cnt30 = 0;
		cnt31 = 0;
		cnt32 = 0;
		cnt33 = 0;
		cnt34 = 0;
		cnt35 = 0;
		cnt36 = 0;
		cnt37 = 0;
		cnt38 = 0;
		cnt39 = 0;
		cnt40 = 0;

		// Wait 100 ns for global reset to finish
		#100;
      cnt = 1;

		#1000;
		cnt0 = 1;
		
		#100;
      cnt1 = 1;
		
		#100;
      cnt2 = 1;

		#100;
      cnt3 = 1;
		
		#100;
      cnt4 = 1;
		
		#100;
      cnt5 = 1;

		#100;
      cnt6 = 1;

		#100;
      cnt7 = 1;

		#100;
      cnt8 = 1;

		#100;
      cnt9 = 1;

		#100;
		cnt10 = 1;
		
		#100;
      cnt11 = 1;
		
		#100;
      cnt12 = 1;

		#100;
      cnt13 = 1;
		
		#100;
      cnt14 = 1;
		
		#100;
      cnt15 = 1;

		#100;
      cnt16 = 1;

		#100;
      cnt17 = 1;

		#100;
      cnt18 = 1;

		#100;
      cnt19 = 1;

		#100;
		cnt20 = 1;
		
		#100;
      cnt21 = 1;
		
		#100;
      cnt22 = 1;

		#100;
      cnt23 = 1;
		
		#100;
      cnt24 = 1;
		
		#100;
      cnt25 = 1;

		#100;
      cnt26 = 1;

		#100;
      cnt27 = 1;

		#100;
      cnt28 = 1;

		#100;
      cnt29 = 1;

		#100;
		cnt30 = 1;
		
		#100;
      cnt31 = 1;
		
		#100;
      cnt32 = 1;

		#100;
      cnt33 = 1;
		
		#100;
      cnt34 = 1;
		
		#100;
      cnt35 = 1;

		#100;
      cnt36 = 1;

		#100;
      cnt37 = 1;

		#100;
      cnt38 = 1;

		#100;
      cnt39 = 1;
		
		#100;
		cnt40 = 1;

		// Add stimulus here

	end
      always
		begin
			#50;
			clk = ~clk;
		end
      
endmodule

