module dec4_16 (A3,A2,A1,A0,D0,D1,D2,D3,D4,D5,D6,D7,D8,D9,D10,D11,D12,D13,D14,D15);

    input A3,A2,A1,A0;
    output D0,D1,D2,D3,D4,D5,D6,D7,D8,D9,D10,D11,D12,D13,D14,D15;

    assign D0 = (~A3) & (~A2) & (~A1) & (~A0);
    assign D1 = (~A3) & (~A2) & (~A1) & (A0);
    assign D2 = (~A3) & (~A2) & (A1) & (~A0);
    assign D3 = (~A3) & (~A2) & (A1) & (A0);
    assign D4 = (~A3) & (A2) & (~A1) & (~A0);
    assign D5 = (~A3) & (A2) & (~A1) & (A0);
    assign D6 = (~A3) & (A2) & (A1) & (~A0);
    assign D7 = (~A3) & (A2) & (A1) & (A0);
    assign D8 = (A3) & (~A2) & (~A1) & (~A0);
    assign D9 = (A3) & (~A2) & (~A1) & (A0);
    assign D10 = (A3) & (~A2) & (A1) & (~A0);
    assign D11 = (A3) & (~A2) & (A1) & (A0);
    assign D12 = (A3) & (A2) & (~A1) & (~A0);
    assign D13 = (A3) & (A2) & (~A1) & (A0);
    assign D14 = (A3) & (A2) & (A1) & (~A0);
    assign D14 = (A3) & (A2) & (A1) & (A0);

endmodule 
