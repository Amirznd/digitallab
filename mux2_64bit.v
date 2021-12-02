module mux2_64bit (i0,i1,select,Out);

    input [63:0] i0,i1;
    input select;
    output [63:0] Out; 

    assign Out = select ? i1 : i0;

endmodule 
