`timescale 1ns / 1ps
module project11_tb;
reg J,K, CLK;
wire Q, QBAR;

project11 dut(.q(Q), .qbar(QBAR), .j(J), .k(K), .clk(CLK));

//$monitor("simtime = %g, CLK = %b, J = %b, K = %b, Q = %b, QBAR = %b", $time, CLK, J, K, Q, QBAR);

initial begin
  CLK=0;
     forever #10 CLK = ~CLK;  
end 
initial begin 
 J= 1; K= 0;
 #100; J= 0; K= 1; 
 #100; J= 0; K= 0; 
 #100; J= 1; K=1; 
end 
endmodule
