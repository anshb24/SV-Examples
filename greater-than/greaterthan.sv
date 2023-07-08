module greaterthan(
 input logic [1:0] a,b,
 output logic op
    );
    
    logic w1, w2, w3, w4, w5, w6;
    
    
    assign op = w1 | w2 | w3 | w4 | w5 | w6;  
    
    assign w1 = (~a[1]&~b[1])&(a[0]&~b[0]);
    assign w2 = (a[1]&~b[1])&(~a[0]&~b[0]);
    assign w3 = (a[1]&~b[1])&(~a[0]&b[0]);
    assign w4 = (a[1]&~b[1])&(a[0]&~b[0]);
    assign w5 = (a[1]&~b[1])&(a[0]&b[0]);
    assign w6 = (a[1]&b[1])&(a[0]&~b[0]);
    
endmodule
