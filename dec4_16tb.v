`timescale 1ns/1ns
`include "dec4_16.v"

module dec4_16_tb;

 reg A3,A2,A1,A0, others;
 wire D0,D1,D2,D3,D4,D5,D6,D7,D8,D9,D10,D11,D12,D13,D14,D15;

 dec4_16 uut(A3,A2,A1,A0,D0,D1,D2,D3,D4,D5,D6,D7,D8,D9,D10,D11,D12,D13,D14,D15);

 initial begin
    $dumpfile("dec4_16_tb.vcd");
    $dumpvars(0, dec4_16_tb);

    A3 = 1'b0;
    A2 = 1'b0;
    A1 = 1'b0;
    A0 = 1'b0;
    #20
    if(D0 == 1'b1)  begin
        $display("Test successful");
    end
    else $display("Test Failed");

    A3 = 1'b0;
    A2 = 1'b1;
    A1 = 1'b1;
    A0 = 1'b1;
    #20
    if(D7 == 1'b1) begin
        $display("Test successful");
    end
    else $display("Test Failed");

    A3 = 1'b1;
    A2 = 1'b0;
    A1 = 1'b1;
    A0 = 1'b0;
    #20
    if(D10 == 1'b1) begin
        $display("Test successful");
    end
    else $display("Test Failed");

 end

endmodule 
