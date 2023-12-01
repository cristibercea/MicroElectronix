//`timescale 1ns / 1ps

//module demultiplexer_tb;
//reg [1:0]S;
//wire [3:0]O;
//reg I;
//demultiplexer14 ij(.i(I),.s(S),.o(O));

//initial begin
//    I = 1;
//    S = 2'b00;
//#2  S = 2'b01;
//#2  S = 2'b10;
//#2  S = 2'b11;
//#2 $finish;
//end
//endmodule


module Demultiplexer_1_to_4_assign_tb; 
wire [3:0] Y; 
reg [1:0] A;
reg din; 
Demultiplexer_1_to_4_assign I0 (.Y(Y),.A(A), .din(din)); 
initial begin 
din = 1;
A[1] = 0; A[0] = 0; 
 #1 A[1] = 0; A[0] = 1; 
 #1 A[1] = 1; A[0] = 0;
 #1 A[1] = 1; A[0] = 1; 
end 
initial begin
 $monitor("%t| Din = %d| A[1] = %d| A[0] = %d| Y[0] = %d| Y[1] = %d| Y[2] = %d| Y[3] = %d", 
 $time, din, A[1], A[0], Y[0], Y[1], Y[2], Y[3]); 
end endmodule