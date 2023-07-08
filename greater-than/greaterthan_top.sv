// This is a top level file created to interface the design to the board I/O.

module greaterthan_top(
  input logic [3:0] sw, // 4 switches are used, 2 for each input a,b
  output logic [0:0] LED // one LED is used for the output op
    );
    
   greaterthan g1(
   .a(sw[3:2]),
   .b(sw[1:0]),
   .op(LED[0])
   );
     
endmodule
