`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:25:54 09/15/2022 
// Design Name: 
// Module Name:    jk_ff 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module jk_ff(output reg q,qbar, input j,k,clk,clr );
always@(posedge clk)
if (clr== 1'b1)
begin 
q<=1'b0;
qbar<=1'b1;
end
else
case({j,k})
2'b00: begin q<=q; qbar<=qbar; end
2'b01: begin q<=1'b0; qbar<=1'b1; end
2'b10: begin q<=1'b1; qbar<=1'b0; end
2'b11: begin q<=~q; qbar<=~qbar; end
default : {q,qbar}<= 2'bxx;
endcase
endmodule

