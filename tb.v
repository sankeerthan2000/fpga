`timescale 1ns / 1ps
module tb;
  reg  clkin;
  reg  reset;
  
  devider_8 dut(
    .reset  ( reset   ),
    .clkin ( clkin ),
    .outa(outa),
    .outb(outb),
    .outc(outc),
    .outd(outd),
    .oute(oute),
    .outf(outf),
    .outg(outg),
    .outh(outh)
    
  );
  initial begin
    reset = 1'b0;
     #20 reset = 1'b1;
   
    
    repeat(20)
       @(posedge clkin);
    
    $finish;
  end

  initial begin
    clkin = 1'b1;
    forever begin
      #2.5 clkin = ~clkin ;
    end
  end
endmodule