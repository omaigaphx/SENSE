`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:27:44 08/17/2016 
// Design Name: 
// Module Name:    Pulse_Counter 
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
module Pulse_Counter(
    input wire clk,
    input wire rst,
    input wire SPEC_Acc_Done,
    input wire Capture_En,	
    output reg [15:0] Pulse_counts
    );
	
//¼ÆÊý¿ØÖÆ
always @(posedge clk or posedge rst)
begin
    if(rst == 1)
    begin
        Pulse_counts <= 0;
    end
    else if(Capture_En == 0)
        Pulse_counts <= 0;
    else if(SPEC_Acc_Done == 1)
        Pulse_counts <= Pulse_counts + 1;
    else
        Pulse_counts <= Pulse_counts;
end

endmodule