`timescale 1ns / 1ps

module adder_tb();
reg A,B,Cin;
wire SUM,Cout;

fa x(.SUM(SUM),.Cout(Cout),.A(A),.B(B),.Cin(Cin));
initial  begin
A=0;
B=1;
Cin=1;
#5 begin
A=1;
B=1;
Cin=1;
end
#5 begin
A=1;
B=1;
Cin=0;
end
#5 begin
A=0;
B=1;
Cin=0;
end
#5 begin
A=0;
B=0;
Cin=0;
end
#5 $finish;
end

endmodule
