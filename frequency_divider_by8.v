
`timescale 1ns / 1ps
module frquency_divider_by2(
  input      rst,
  input      clk,
  output reg clkout,
  output reg clkbar
 
  ) ;
  wire clkin;

initial begin
 clkout = 0;
 end
 always @(posedge clk or negedge rst) begin
 if (!rst) begin
 clkout <= 0;
 clkbar<=1;
 end else begin
 clkout <= ~clkout;
 clkbar<=clkout;
 end
 end

endmodule


module devider_8(input wire reset, input wire clkin,output wire outa,output wire outb,output wire outc,output wire outd,output wire oute,output wire outf,output wire outg,output wire outh);


frquency_divider_by2 f1(reset,clkin,q,qbar);
frquency_divider_by2 f2(reset,q,out1,out2);
frquency_divider_by2 f3(reset,qbar,out3,out4);
frquency_divider_by2 f4(reset,out1,outa,outb);
frquency_divider_by2 f5(reset,out2,outc,outd);
frquency_divider_by2 f6(reset,out3,oute,outf);
frquency_divider_by2 f7(reset,out4,outg,outh);


endmodule
