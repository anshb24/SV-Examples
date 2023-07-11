module barrel_shifter_tb();

     logic [7:0] in_t;
     logic [2:0] shift_t;
     logic cs_t;
     logic [7:0] out_t;
 
     logic [7:0] in_file;
     logic [2:0] shift_file;
     logic cs_file;
     logic [7:0] out_file;
     
     int fp;
     
     barrel_shifter b2(
     .in(in_t),
     .shift(shift_t),
     .cs(cs_t),
     .out(out_t)
     );
      
     initial 
     begin
     
     fp = $fopen("rotate_combined.txt","r");
     if(fp==0) 
     begin
     $display("No file found!");
     $finish;
     end
     
    while(! $feof (fp)) 
    begin
    
    $fscanf(fp,"%b %b %b %b\n" ,in_file,shift_file,cs_file,out_file);
    in_t = in_file;
    shift_t = shift_file;
    cs_t = cs_file;
    #50
    if(out_t!=out_file) 
    begin
    $display("Wrong Output, %h",out_file);
    $finish;
    end
    
    end
    
    $display("All test cases passed!!");
    $finish;
     
     end

endmodule
