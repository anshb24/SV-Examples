module decoder4to16_tb();
   logic [3:0] a_t;
   logic en_t;
   logic [15:0] op_t;
   integer c=0;
   
   decoder4to16 d9(
   .en(en_t),
   .a(a_t),
   .op(op_t)
   );
   
   initial 
   begin 
     en_t=1'b0;
     a_t=4'b0000;
     #50
     if(op_t !== 16'b0000_0000_0000_0000)
     begin
     $display("en=0 failed!");
     c++;
     end 
     
     en_t=1'b1;
     a_t=4'b0000;
     #50
     if(op_t !== 16'b0000_0000_0000_0001)
     begin
     $display("a=0000 failed!");
     c++;
     end
     
     en_t=1'b1;
     a_t=4'b0001;
     #50
     if(op_t !== 16'b0000_0000_0000_0010)
     begin
     $display("a=0001 failed!");
     c++;
     end
     
     en_t=1'b1;
     a_t=4'b0010;
     #50
     if(op_t !== 16'b0000_0000_0000_0100)
     begin
     $display("a=0010 failed!");
     c++;
     end
     
     en_t=1'b1;
     a_t=4'b0011;
     #50
     if(op_t !== 16'b0000_0000_0000_1000)
     begin
     $display("a=0011 failed!");
     c++;
     end
     
     en_t=1'b1;
     a_t=4'b0100;
     #50
     if(op_t !== 16'b0000_0000_0001_0000)
     begin
     $display("a=0100 failed!");
     c++;
     end
     
     en_t=1'b1;
     a_t=4'b0101;
     #50
     if(op_t !== 16'b0000_0000_0010_0000)
     begin
     $display("a=0101 failed!");
     c++;
     end
     
     en_t=1'b1;
     a_t=4'b0110;
     #50
     if(op_t !== 16'b0000_0000_0100_0000)
     begin
     $display("a=0110 failed!");
     c++;
     end
     
     en_t=1'b1;
     a_t=4'b0111;
     #50
     if(op_t !== 16'b0000_0000_1000_0000)
     begin
     $display("a=0111 failed!");
     c++;
     end
     
     en_t=1'b1;
     a_t=4'b1000;
     #50
     if(op_t !== 16'b0000_0001_0000_0000)
     begin
     $display("a=1000 failed!");
     c++;
     end
     
     en_t=1'b1;
     a_t=4'b1001;
     #50
     if(op_t !== 16'b0000_0010_0000_0000)
     begin
     $display("a=1001 failed!");
     c++;
     end
     
     en_t=1'b1;
     a_t=4'b1010;
     #50
     if(op_t !== 16'b0000_0100_0000_0000)
     begin
     $display("a=1010 failed!");
     c++;
     end
     
     en_t=1'b1;
     a_t=4'b1011;
     #50
     if(op_t !== 16'b0000_1000_0000_0000)
     begin
     $display("a=1011 failed!");
     c++;
     end
     
     en_t=1'b1;
     a_t=4'b1100;
     #50
     if(op_t !== 16'b0001_0000_0000_0000)
     begin
     $display("a=1100 failed!");
     c++;
     end
     
     en_t=1'b1;
     a_t=4'b1101;
     #50
     if(op_t !== 16'b0010_0000_0000_0000)
     begin
     $display("a=1101 failed!");
     c++;
     end
     
     en_t=1'b1;
     a_t=4'b1110;
     #50
     if(op_t !== 16'b0100_0000_0000_0000)
     begin
     $display("a=1110 failed!");
     c++;
     end
     
     en_t=1'b1;
     a_t=4'b1111;
     #50
     if(op_t !== 16'b1000_0000_0000_0000)
     begin
     $display("a=1111 failed!");
     c++;
     end
     
     if(c==0)
     $display("All test cases passed!");
     $stop;
     
   end 
   
endmodule
