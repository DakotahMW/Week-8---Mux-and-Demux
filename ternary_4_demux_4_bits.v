module ternary_4_demux_4_bits (
    input [3:0] X,  
    input [1:0] Sel,      
    input Enable,        
    output [3:0] A, B, C, D
);

    assign A = Enable ? (Sel == 'b00 ? X : 0) : 0;
    assign B = Enable ? (Sel == 'b01 ? X : 0) : 0;
    assign C = Enable ? (Sel == 'b10 ? X : 0) : 0;
    assign D = Enable ? (Sel == 'b11 ? X : 0) : 0;


endmodule



// ____ ? then : else
