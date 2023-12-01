`timescale 1ns / 1ps

module project1_tb();

wire Y;
reg D0,D1,S;
project1 i1(.Y(Y),.D0(D0),.D1(D1),.S(S));

initial begin

D0 = 132;
D1 = 321;
S = 1;

#10 begin
D0 = 69;
D1 = 420;
S = 0;
end
#10 begin
D0 = 68;
D1 = 440;
S = 1;
end

#10 begin
D0 = 99;
D1 = 87;
S = 0;
end
#5 $finish;
end
endmodule