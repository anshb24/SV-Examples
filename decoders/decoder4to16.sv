module decoder4to16(
    input logic [3:0] a,
    input logic en,
    output logic [15:0] op
    );
    
    wire s1,s2,s3,s4;
    
    decoder2to4 d4(
    .en(en),
    .a(a[3:2]),
    .op0(s1),
    .op1(s2),
    .op2(s3),
    .op3(s4)
    );
    
    decoder2to4 d5(
    .en(s1),
    .a(a[1:0]),
    .op0(op[0]),
    .op1(op[1]),
    .op2(op[2]),
    .op3(op[3])
    );
    
    decoder2to4 d6(
    .en(s2),
    .a(a[1:0]),
    .op0(op[4]),
    .op1(op[5]),
    .op2(op[6]),
    .op3(op[7])
    );
    
    decoder2to4 d7(
    .en(s3),
    .a(a[1:0]),
    .op0(op[8]),
    .op1(op[9]),
    .op2(op[10]),
    .op3(op[11])
    );
    
    decoder2to4 d8(
    .en(s4),
    .a(a[1:0]),
    .op0(op[12]),
    .op1(op[13]),
    .op2(op[14]),
    .op3(op[15])
    );
    
endmodule
