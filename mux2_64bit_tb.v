`timescale 1ns/1ns
`include "mux2_64bit.v"

module mux2_64bit_tb;

    reg [63:0] i0,i1;
    reg sel;
    wire [63:0] Out;

    mux2_64bit uut(.i0(i0), .i1(i1) , .select(sel), .Out(Out));

    initial begin

        $dumpfile("mux2_64bit_tb.vcd");
        $dumpvars(0, mux2_64bit_tb);


        i0 = 64'd7;
        i1 = 64'd12;
        sel = 1'b1;
        #20;

        $display("i0=%d", i0);
        $display("i1=%d", i1);
        if(Out == i1)
            $display("Test successfull - Output :", Out);
        else 
            $display("Test failed!");

        i0 = 64'd7;
        i1 = 64'd12;
        sel = 1'b0;
        #20;
        if(Out == i0) 
            $display("Test successfull - Output :", Out);
        else 
            $display("Test failed!");

    end

endmodule 
