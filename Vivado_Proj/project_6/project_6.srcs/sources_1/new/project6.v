module project6(
input clk,rst,d,
output reg q,nq 
);

    always @(posedge clk)
    begin
        if(rst==1) begin
            q<=0;
            nq<=1;
        end
        else begin
            q<=d;
            nq<=~d;
        end
    end
    
endmodule
