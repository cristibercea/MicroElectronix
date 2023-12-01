//module encoder42(v,out);
//input wire [3:0]v;
//output [1:0]out;
//reg [1:0]out;
//always @(v or out) begin 
//case(v[3:0])
//    4'b0001: out=2'b00;
//    4'b0010: out=2'b01;
//    4'b0100: out=2'b10;
//    4'b1000: out=2'b11;
//    default: out=2'bx;
//endcase
//end
//endmodule

//priority 8:3encoder
//v1
module encoder83(v,out);
input wire [7:0]v;
output [2:0]out;
reg [2:0]out;
always @(v or out) begin 
casex(v)
    8'b1: out=3'b0;
    8'b1x: out=3'b1;
    8'b1xx: out=3'b10;
    8'b1xxx: out=3'b11;
    8'b1xxxx: out=3'b100;
    8'b1xxxxx: out=3'b101;
    8'b1xxxxxx: out=3'b110;
    8'b1xxxxxxx: out=3'b111;
    default: begin out=3'bx; $display("Eroare boss!"); end
endcase
end
endmodule

//v2
//module encoder83(v,out);
//input wire [7:0]v;
//output [2:0]out;
//reg [2:0]out;
//always @(v or out) begin 
//    if(v[7]==1) out=3'b111;
//    else if(v[6]==1) out=3'b110;
//    else if(v[5]==1) out=3'b101;
//    else if(v[4]==1) out=3'b100;
//    else if(v[3]==1) out=3'b11;
//    else if(v[2]==1) out=3'b10;
//    else if(v[1]==1) out=3'b1;
//    else if(v[0]==1) out=3'b0;
//    else out=3'bz;
//end
//endmodule