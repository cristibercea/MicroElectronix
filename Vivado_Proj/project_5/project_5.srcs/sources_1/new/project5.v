module counter(o,clk,clear);
output [7:0]o;
input clk,clear;
reg [7:0]o;
always @(posedge clear or negedge clk)
begin
if(clear) o=8'd0;
else o=(o+1)%(16*16);
end
endmodule

/*module arithmetic_operations;

reg[7:0] data1;
reg[7:0] data2;

initial
begin

data1 = 45;
data2 = 9;
$display ("add(data1,data2) = %d", data1 + data2);
$display ("subtract(data1,data2) = %d", data1 - data2);
$display ("multiply(data1,data2) = %d", data1 * data2);
$display ("divide(data1,data2) = %d", data1 / data2);
$display ("modulus(data1,data2) = %d", data1 % data2);
$display ("power(data2,2) = %d", data2 ** 2);

end
endmodule*/