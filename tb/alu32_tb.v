`timescale 1ns/1ps

module alu32_tb;
    reg [31:0]A;
    reg [31:0]B;
    reg [3:0]opcode;
    
    wire[31:0]result;

    //Alu instantiation
    alu32 uut(
        .A(A),
        .B(B),
        .opcode(opcode),
        .result(result)
    );
    initial begin
        $monitor(                                       // What happens? Suppose A = 10; Console Time=0 A=10 B=5 Opcode=0000 Result=15
            "Time=%0t A=%d B=%d opcode=%b result=%d",   // No extra $monitor.It keeps watching.
            $time,A,B,opcode,result
        );
    end
    initial begin
        $dumpfile("waveform.vcd");
        $dumpvars(0,alu32_tb);

        A=10;
        B=15;
        opcode=4'b0000;

        #20;

        A=50;
        B=23;
        opcode=4'b0001;

        #20;

        A=29;
        B=25;
        opcode=4'b0010;

       #20;

        A=30;
        B=40;
        opcode=4'b0011;

        #20;

        A=40;
        B=50;
        opcode=4'b0100;

        #20;

        A=35;
        B=55;
        opcode=4'b0101;

        #20;

        A=5;
        opcode=4'b0110;

        #20;

        A=12;
        opcode=4'b0111;

        #20;

        A=60;
        B=40;
        opcode=4'b1000;

        #20;
    $finish;
    end

endmodule


