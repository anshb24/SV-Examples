module decoder2to4_tb();

 logic en_t;
 logic [1:0]a_t;
 logic op0_t,op1_t,op2_t,op3_t;
 integer c=0;
 
 decoder2to4 dut1(
   .en(en_t),
   .a(a_t),
   .op0(op0_t),
   .op1(op1_t),
   .op2(op2_t),
   .op3(op3_t)  
 );
 
 initial
 begin 
 en_t=1'b0;
 a_t=2'b00;
 #50
 if((op0_t !== 1'b0) && (op1_t!==1'b0) && (op2_t!==1'b0) && (op3_t!==1'b0))
 begin
 $display("en=0 a=00 failed!");
 c++;
 end
 en_t=1'b0;
 a_t=2'b01;
 #50
 if(op0_t !== 1'b0 && op1_t!==1'b0 && op2_t!==1'b0 && op3_t!==1'b0)
 begin
 $display("en=0 a=01 failed!");
 c++;
 end
 en_t=1'b0;
 a_t=2'b10;
 #50
 if(op0_t !== 1'b0 && op1_t!==1'b0 && op2_t!==1'b0 && op3_t!==1'b0)
 begin
 $display("en=0 a=10 failed!");
 c++;
 end
 en_t=1'b0;
 a_t=2'b11;
 #50
 if(op0_t !== 1'b0 && op1_t!==1'b0 && op2_t!==1'b0 && op3_t!==1'b0)
 begin
 $display("en=0 a=11 failed!");
 c++;
 end
 
 //en=1
 
 en_t=1'b1;
 a_t=2'b00;
 #50
 if(op0_t !== 1'b1 && op1_t!==1'b0 && op2_t!==1'b0 && op3_t!==1'b0)
 begin
 $display("en=1 a=00 failed!");
 c++;
 end
 en_t=1'b1;
 a_t=2'b01;
 #50
 if(op0_t !== 1'b0 && op1_t!==1'b1 && op2_t!==1'b0 && op3_t!==1'b0)
 begin
 $display("en=1 a=01 failed!");
 c++;
 end
 en_t=1'b1;
 a_t=2'b10;
 #50
 if(op0_t !== 1'b0 && op1_t!==1'b0 && op2_t!==1'b1 && op3_t!==1'b0)
 begin
 $display("en=1 a=10 failed!");
 c++;
 end
 en_t=1'b1;
 a_t=2'b11;
 #50
 if(op0_t !== 1'b0 && op1_t!==1'b0 && op2_t!==1'b0 && op3_t!==1'b1)
 begin
 $display("en=1 a=11 failed!");
 c++;
 end
 if(c==0)
 $display("All test cases passed!");
 $stop;
 
 
 end
endmodule
