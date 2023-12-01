//module demultiplexer14(i,s,o);
//input i;
//input [1:0]s;
//output [3:0]o;
//reg [3:0]o;
//always @(s,o)
//begin
//    case(s)
//    2'b00:begin o[0]=i; o[3:1]=0; end
//    2'b01:begin o[1]=i; o[0]=0; end
//    2'b10:begin o[2]=i; o[1:0]=0; end
//    2'b11:begin o[3]=i; o[2:0]=0; end
//    endcase
//end
//endmodule

module Demultiplexer_1_to_4_assign(output [3:0] Y, input [1:0] A, input din);
assign Y[0] = din & (~A[0]) & (~A[1]);
assign Y[1] = din & (~A[1]) & A[0];
assign Y[2] = din & A[1] & (~A[0]);
assign Y[3] = din & A[1] & A[0];
endmodule