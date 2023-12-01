`timescale 1ns / 1ps

module project5_tb();
wire [7:0]O;
reg en,clr;
counter c(.o(O),.clk(en),.clear(clr));
initial
begin
en=1;
clr=1;
#2 clr=0;
repeat(1000) begin 
#2 en=~en;
end
#3 $finish;
end
endmodule