`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.04.2023 12:31:49
// Design Name: 
// Module Name: alu__tb
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


module alu__tb();




 reg [2:0] alu_code;

 reg [3:0] a;

 reg [3:0] b;

 // Outputs

 wire [7:0] result;

 wire flag_c;

 

 reg [2:0] count = 3'd0;

 // Instantiate the Unit Under Test (UUT)

 alu_4bit uut (alu_code,a,b,result,flag_c);


 initial
 begin

  // Initialize Inputs

 alu_code  = 3'b0;

 a = 4'h0;

 b = 4'h0;

  // Wait 100 ns for global reset to finish

  #100;    

  // Add stimulus here  
 a = 4'b1010;
 
  b = 4'b0101;

  for (count = 0; count < 8; count = count + 1'b1) 

  begin

   alu_code = count;

   #20;

   end

  end     

endmodule

