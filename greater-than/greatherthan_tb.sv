module greaterthan_tb();

logic [1:0] a_t,b_t;
logic op_t;
integer c=0;

greaterthan dut(
    .a(a_t),
    .b(b_t),
    .op(op_t)
    );

initial
begin
  a_t=2'b00;
  b_t=2'b00;
  #50
  if (op_t !== 0) 
  begin
  $display("a=00 b=00 failed!");
  c++;
  end
  a_t=2'b00;
  b_t=2'b01;
  #50
  if (op_t !== 0) 
  begin
  $display("a=00 b=01 failed!");
  c++;
  end 
  a_t=2'b00;
  b_t=2'b10;
  #50
  if (op_t !== 0) 
  begin 
  $display("a=00 b=10 failed!");
  c++;
  end
  a_t=2'b00;
  b_t=2'b11;
  #50
  if (op_t !== 0) 
  begin
  $display("a=00 b=11 failed!");
  c++;
  end
  a_t=2'b01;
  b_t=2'b00;
  #50
  if (op_t !== 1) 
  begin 
  $display("a=01 b=00 failed!");
  c++;
  end
  a_t=2'b01;
  b_t=2'b01;
  #50
  if (op_t !== 0) 
  begin
  $display("a=01 b=01 failed!");
  c++;
  end
  a_t=2'b01;
  b_t=2'b10;
  #50
  if (op_t !== 0) 
  begin
  $display("a=01 b=10 failed!");
  c++;
  end
  a_t=2'b01;
  b_t=2'b11;
  #50
  if (op_t !== 0) 
  begin
  $display("a=01 b=11 failed!");
  c++;
  end
  a_t=2'b10;
  b_t=2'b00;
  #50
  if (op_t !== 1) 
  begin
  $display("a=10 b=00 failed!");
  c++;
  end
  a_t=2'b10;
  b_t=2'b01;
  #50
  if (op_t !== 1) 
  begin
  $display("a=10 b=01 failed!");
  c++;
  end
  a_t=2'b10;
  b_t=2'b10;
  #50
  if (op_t !== 0) 
  begin
  $display("a=10 b=10 failed!");
  c++;
  end
  a_t=2'b10;
  b_t=2'b11;
  #50
  if (op_t !== 0) 
  begin
  $display("a=10 b=11 failed!");
  c++;
  end
  a_t=2'b11;
  b_t=2'b00;
  #50
  if (op_t !== 1)
  begin 
  $display("a=11 b=00 failed!");
  c++;
  end
  a_t=2'b11;
  b_t=2'b01;
  #50
  if (op_t !== 1) 
  begin
  $display("a=11 b=01 failed!");
  c++;
  end
  a_t=2'b11;
  b_t=2'b10;
  #50
  if (op_t !== 1) 
  begin
  $display("a=11 b=10 failed!");
  c++;
  end
  a_t=2'b11;
  b_t=2'b11;
  #50
  if (op_t !== 0) 
  begin 
  $display("a=11 b=11 failed!");
  c++;
  end
  if(c==0)
  $display("All test cases passed!");
  $stop;
end

endmodule
