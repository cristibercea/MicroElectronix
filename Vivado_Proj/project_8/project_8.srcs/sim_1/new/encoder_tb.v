`timescale 1ns / 1ps

//module encoder_tb;
//reg [3:0]V;
//wire [1:0]OUT;
//encoder42 en(.v(V),.out(OUT));

//initial begin
//    repeat(10) begin
//        V=4'b1;
//        #10 V=4'b10;
//        #10 V=4'b100;
//        #10 V=4'b1000;
//        #10 V=4'b0;
//    end
//    #10 $finish;
//end
//endmodule

//module encoder_tb;
//reg [7:0]V;
//wire [2:0]OUT;
//encoder83 en(.v(V),.out(OUT));

//initial begin
//    //repeat(5) begin
//        V=8'b1;
//        #10 V=8'b10;
//        #10 V=8'b100;
//        #10 V=8'b1000;
//        #10 V=8'b10000;
//        #10 V=8'b100000;
//        #10 V=8'b1000000;
//        #10 V=8'b10000000;
//        #10 V=8'b0;
//    //end
//    #10 $finish;
//end
//endmodule

//priority 8:3 encoder tb

module encoder_tb;
reg [7:0]V;
wire [2:0]OUT;
encoder83 en(.v(V),.out(OUT));

initial begin
    //repeat(5) begin
        V=8'b1;//----non-priority encoding test----//
        #10 V=8'b10;
        #10 V=8'b100;
        #10 V=8'b1000;
        #10 V=8'b10000;
        #10 V=8'b100000;
        #10 V=8'b1000000;
        #10 V=8'b10000000;
        #10 V=8'b0;//==========//
        #10 V=8'b11;//-----priority encoding test-----//
        #10 V=8'b101;
        #10 V=8'b1110;
        #10 V=8'b11100;     // (random 1 to 8 bit numbers) //
        #10 V=8'b101101;
        #10 V=8'b1111010;
        #10 V=8'b11111111;
        #10 V=8'b0;//==========//
    //end
    #10 $finish;
end
endmodule