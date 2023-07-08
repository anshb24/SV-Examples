module decoder3to8(
    input logic [2:0] a,
    output logic [7:0] op
    );
    
    decoder2to4 d2 (
      .en(~a[2]),
      .a(a[1:0]),
      .op0(op[0]),
      .op1(op[1]),
      .op2(op[2]),
      .op3(op[3])
    );
    
    decoder2to4 d3 (
      .en(a[2]),
      .a(a[1:0]),
      .op0(op[4]),
      .op1(op[5]),
      .op2(op[6]),
      .op3(op[7])
    );
    
endmodule
