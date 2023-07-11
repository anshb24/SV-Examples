module barrel_shifter(
    input logic [7:0] in,
    input logic [2:0] shift,
    input logic cs, // to select the direction of rotation
    output logic [7:0] out
    );
    
    logic [7:0] s0,s1;
    
   
     always_comb
     begin
     
     if(cs==1'b1) //Rotate right
     begin
      s0 = shift[0] ? {in[0],in[7:1]} : in;
      s1 = shift[1] ? {s0[1:0],s0[7:2]} : s0;
      out = shift[2] ? {s1[3:0],s1[7:4]} : s1; 
     end
     
     else if(cs==1'b0) //Rotate Left
     begin
      s0 = shift[0] ? {in[6:0],in[7]} : in;
      s1 = shift[1] ? {s0[5:0],s0[7:6]} : s0;
      out = shift[2] ? {s1[3:0],s1[7:4]} : s1; 
     end
     
     else
      out = in;
     
     end
    
endmodule
