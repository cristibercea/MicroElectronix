`timescale 1ns / 1ps

module project6_tb;
reg D,R;
wire Q,NQ;
reg Clk=1'b1;

project6 p(.clk(Clk),.rst(R),.d(D),.q(Q),.nq(NQ));

always #10 Clk=~Clk;
initial begin
    R=1;
    D=1;
    #10 R=0;
    #10 D=0;
    #10 D=1;
    #20 R=1;
    #2 $finish;
end

initial begin
    $monitor("simetime = %g, CLK = %b, RST =%b, D = %b, Q =%b, QBAR =%b", $time, Clk,R,D,Q,NQ); 
end

endmodule
