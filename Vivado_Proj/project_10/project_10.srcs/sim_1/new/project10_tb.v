`timescale 1ns / 1ps

module project10_tb;
    wire Q, Qbar;
    reg S,R,Clk;
    
    project10 dut(.q(Q),.qbar(Qbar),.s(S),.r(R),.clk(Clk));
    
    //$monitor("simtime = %g, Clk = %b, S = %b, R = %b, Q = %b, Qbar = %b", $time, Clk, S, R, Q, Qbar);
    
    initial begin
      Clk=0;
         forever #10 Clk = ~Clk;  
    end 
    initial begin 
      S= 1; R= 0;
      #100 S=0; R=1; 
      #100 S=0; R=0; 
      #100 S=1; R=1; 
    end 
endmodule
