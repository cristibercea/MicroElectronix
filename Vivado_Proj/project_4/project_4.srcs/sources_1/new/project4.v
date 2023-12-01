module mux81(o,s,i);
output o;
input [2:0]s;
input [7:0]i;
reg o;

always @(s[2:0] or i[7:0])
begin
    case({s[2], s[1], s[0]})
        3'b000: o=i[0];
        3'b001: o=i[1];
        3'b010: o=i[2];
        3'b011: o=i[3];
        3'b100: o=i[4];
        3'b101: o=i[5];
        3'b110: o=i[6];
        3'b111: o=i[7];
        default: assign o=1'bx;
    endcase
    //o=~o;
end
endmodule
