module decoder2to4(
   input logic en,
   input logic [1:0] a,
   output logic op0,op1,op2,op3
    );
  
    // Gate level modelling   
    assign op0 = (en&~a[1]&~a[0]);
    assign op1 = (en&~a[1]&a[0]);
    assign op2 = (en&a[1]&~a[0]);
    assign op3 = (en&a[1]&a[0]);
    
endmodule
