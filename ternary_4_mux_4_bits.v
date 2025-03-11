module ternary_4_mux_4_bits (
    input [3:0] A, 
    input [3:0] B, 
    input [3:0] C, 
    input [3:0] D,
    input [1:0] Sel,                  
    input Enable,                      
    output [3:0] Y          
);

    assign Y = Enable ? ((Sel == 'b00 ? A:
                         (Sel == 'b01 ? B: 
                         (Sel == 'b10 ? C:
                         (Sel == 'b11 ? D : 0))))) : 0;

endmodule
