`timescale 1ns / 1ps

module project3_tb();
reg A1,A2,A3,A4,L1,L2;
wire M;
mux41 ok(.m(M),.a1(A1),.a2(A2),.a3(A3),.a4(A4),.l1(L1),.l2(L2));
    initial begin
    A1=4'h9;
    A2=0;
    A3=1;
    A4=0;
    L1=0;
    L2=0;
    #4 begin
    A1=1;
    A2=0;
    A3=1;
    A4=0;
    L1=1;
    L2=0;
    end
    #4 begin
    A1=1;
    A2=0;
    A3=1;
    A4=0;
    L1=0;
    L2=1;
    end
    #4 begin
    A1=0;
    A2=0;
    A3=1;
    A4=1;
    L1=1;
    L2=1;
    end
    #4 begin
    A1=0;
    A2=0;
    A3=0;
    A4=0;
    L1=1;
    L2=1;
    end
    #4 begin
    A1=1;
    A2=0;
    A3=1;
    A4=1;
    L1=1;
    L2=0;
    end
    #4 $finish;
    end
endmodule
