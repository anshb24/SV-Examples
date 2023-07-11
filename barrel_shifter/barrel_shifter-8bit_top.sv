module barrel_shifter_top(
    input logic [11:0] sw,
    output logic [7:0] LED
    );
    
    barrel_shifter b1(
    .in(sw[7:0]),
    .cs(sw[8]),
    .shift(sw[11:9]),
    .out(LED[7:0])
    );
    
endmodule
