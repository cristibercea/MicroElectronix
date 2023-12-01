`timescale 1ns / 1ps

module project7_tb;
reg A,B;
wire D,BR;

hs lmao(.a(A),.b(B),.d(D),.br(BR));
initial begin
A=1;
B=1;
#10 begin A=0;B=1; end
#10 begin A=1;B=0; end
#10 begin A=0;B=0; end
#10 $finish;
end
endmodule
