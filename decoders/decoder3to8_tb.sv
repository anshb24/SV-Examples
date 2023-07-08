module decoder3to8_tb();
    logic [2:0] a_t;
    logic [7:0] op_t;
    integer c=0;
    
    decoder3to8 de(
     .a(a_t),
     .op(op_t)
    );
    
    initial 
    begin 
     a_t=3'b000;
     #50
     if(op_t !== 8'b0000_0001)
     begin
     $display("a=000 failed!");
     c++;
     end
     
     a_t=3'b001;
     #50
     if(op_t !== 8'b0000_0010)
     begin
     $display("a=001 failed!");
     c++;
     end
    
     a_t=3'b010;
     #50
     if(op_t !== 8'b0000_0100)
     begin
     $display("a=010 failed!");
     c++;
     end
     
     a_t=3'b011;
     #50
     if(op_t !== 8'b0000_1000)
     begin
     $display("a=011 failed!");
     c++;
     end
     
     a_t=3'b100;
     #50
     if(op_t !== 8'b0001_0000)
     begin
     $display("a=100 failed!");
     c++;
     end
     
     a_t=3'b101;
     #50
     if(op_t !== 8'b0010_0000)
     begin
     $display("a=101 failed!");
     c++;
     end
     
     a_t=3'b110;
     #50
     if(op_t !== 8'b0100_0000)
     begin
     $display("a=110 failed!");
     c++;
     end
     
     a_t=3'b111;
     #50
     if(op_t !== 8'b1000_0000)
     begin
     $display("a=111 failed!");
     c++;
     end
    
     if(c==0)
     $display("All test cases passed!"); 
     $stop;
    end 
    
endmodule
