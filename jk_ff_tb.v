`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:22:24 02/10/2023
// Design Name:   jk_ff
// Module Name:   C:/Users/DELL/Documents/newbie/jk_ff/jk_ff_tb.v
// Project Name:  jk_ff
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: jk_ff
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module jk_ff_tb;

	// Inputs
	reg j;
	reg k;
	reg clk;
	reg clr;

	// Outputs
	wire q;
	wire qbar;
	
	// Instantiate the Unit Under Test (UUT)
	jk_ff uut (
		.q(q), 
		.qbar(qbar), 
		.j(j), 
		.k(k), 
		.clk(clk), 
		.clr(clr)
	);
	initial begin
	  clk=0;
		forever #2 clk = ~clk;
	end

	initial begin
		// Initialize Inputs
		
		j = 0;
		k = 0;
		clr = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		j = 0;
		k = 0;
		
		clr = 0;
		#100;
		
		j = 1;
		k = 0;
		
		clr = 0;
		#100;
		
		j = 0;
		k = 1;
		
		clr = 0;
		#100;
		
		j = 1;
		k = 1;
		clr = 0;
		#100;
		// Add stimulus here

	end
	
	initial begin
	$monitor("input j = %b, k = %b,  clk = %b, clr = %b, output q = %b, qbar = %b" , j , k , clk, clr, q, qbar );
	#500;
	$finish;
	end
      
endmodule

