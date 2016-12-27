`timescale 1ns/100ps
module tb;
reg [31:0] dividend;
reg [31:0] divider;
reg s;
wire [31:0] quotient;
wire [31:0] remainder;
wire error;

bit32_divider d1(dividend,divider,s,quotient,remainder,error);

initial
begin
  s = 0;dividend = 32'd183;divider = 32'd14;
  #10 dividend = 32'd1000;divider = 32'd100;
  #10 dividend = 32'd1003;divider = 32'd150;
  #10 dividend = 32'd467;divider = 32'd13;
  #10 dividend = 32'd0;divider = 32'd10;
  #10 dividend = 32'd1;divider = 32'd0;
  #10 s = 1;dividend = -32'd892;divider = 32'd67;
  #10 dividend = 32'd60000;divider = -32'd30;
  #10 dividend = -32'd9320634;divider = -32'd1274;
  #10 $stop;
end

initial
begin
  $dumpfile("test.vcd");
  $dumpvars;
end

initial
$monitor($time,"dividend = %d, divider = %d, quotient = %d, remainder = %d, error = %b",dividend,divider,quotient,remainder,error);

endmodule