//==================================================
// 32-bit ALU
// Supported Operations:
// ADD, SUB, AND, OR, XOR, NOT,
// Shift Left, Shift Right, Compare
//==================================================

module alu32 (
    input [31:0] A,
    input [31:0] B,
    input [3:0] opcode,
    output reg [31:0]result // golden rule: for reg # always will use it 
);
    always@(*)
    begin
        case (opcode)
       
             4'b0000:result=A+B;
             4'b0001:result=A-B;
             4'b0010:result=A&B;
             4'b0011:result=A|B;
             4'b0100:result=A^B;
             4'b0101:result=~A;
             4'b0110:result=A<<1;
             4'b0111:result=A>>1;
             4'b1000:result=(A>B)? 32'd1:32'd0;

             default:result=32'd0;

        endcase 
    end
endmodule
