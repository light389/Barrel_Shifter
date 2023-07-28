`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.05.2022 21:01:51
// Design Name: 
// Module Name: shifter
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module shifter;
  reg [7:0] in;
  reg [2:0] ctrl;
  wire [7:0] out; 
  
shift uut(.in(in), .ctrl(ctrl), .out(out));
  
initial 
 begin
    $display($time, " << Starting the Simulation >>");
        in= 8'b0;  ctrl=3'b0; //no shift
    #100 in=8'b00000001; ctrl= 3'b001; 
    #100 in=8'b00000001; ctrl= 3'b010; //shift 2 bit
    #100 in=8'b00000001; ctrl= 3'b011; 
    #100 in=8'b00000001; ctrl= 3'b100; 
    #100 in=8'b00000001; ctrl= 3'b101;
    #100 in=8'b00000001; ctrl= 3'b110;
    #100 in=8'b00000001; ctrl= 3'b111;
  end
    initial begin
      $monitor("Input=%b, Control=%b, Output=%d",in,ctrl,out);
    end
endmodule
