module decoder2to4_top(
    input logic [2:0] sw,
    output logic [3:0] LED
    );

  //instantiate the design to interface with board I/O
   decoder2to4 d1(
   .en(sw[2]),
   .a(sw[1:0]),
   .op3(LED[3]),
   .op2(LED[2]),
   .op1(LED[1]),
   .op0(LED[0])
   );
   
endmodule
