`timescale 1ns / 1ps
module project4_tb();

reg [2:0]S;
reg [7:0]I;
wire O;
mux81 ok(.o(O),.s(S),.i(I));

//initial 
//begin
//I=8'b0;S=3'b0;
//#500 $finish; 
//end
//always #1 I[0]=~I[0];
//always #2 I[1]=~I[1];
//always #3 I[2]=~I[2];
//always #4 I[3]=~I[3];
//always #5 I[4]=~I[4];
//always #6 I[5]=~I[5];
//always #7 I[6]=~I[6];
//always #8 I[7]=~I[7];
//always #9 S[0]=~S[0];
//always #10 S[1]=~S[1];
//always #11 S[2]=~S[2];

initial begin
    S=3'b000;
    I=8'b11010011;
    #5 begin
    S=3'b001;
    I=8'b11010011;
    end
    #5 begin
    S=3'b010;
    I=8'b11010011;
    end
    #5 begin
    S=3'b011;
    I=8'b11010011;
    end
    #5 begin
    S=3'b100;
    I=8'b11010011;
    end
    #5 begin
    S=3'b101;
    I=8'b11010011;
    end
    #5 begin
    S=3'b110;
    I=8'b11010011;
    end
    #5 begin
    S=3'b111;
    I=8'b11010011;
    end
    #5 $finish;
end
endmodule
