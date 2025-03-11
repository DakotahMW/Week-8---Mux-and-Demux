module top (
    input [15:0] sw,   
   
    input btnL,          
    input btnU,          
    input btnD,          
    input btnR,          
    input btnC,          
   
    output [15:0] led      
);

    wire [3:0] mux_output;  
    wire [1:0] Sel_Mux, Sel_Demux;

    assign Sel_Mux = {btnU, btnL};    
    assign Sel_Demux = {btnR, btnD};  

   
    ternary_4_mux_4_bits MUX (
        .A(sw [3:0]),
        .B(sw [7:4]),
        .C(sw [11:8]),
        .D(sw [15:12]),
        .Sel(Sel_Mux),
        .Enable(btnC),
        .Y(mux_output)
    );

    ternary_4_demux_4_bits DEMUX(
        .X(mux_output),
        .Sel(Sel_Demux),
        .Enable(btnC),
        .A(led [3:0]),
        .B(led [7:4]),
        .C(led [11:8]),
        .D(led [15:12])
    );

endmodule
