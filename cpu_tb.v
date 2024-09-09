`timescale 1ns / 1ps

module cpu_tb;

  reg clk_tb;
  reg inv_clk_tb;
  reg reset_tb;

 cpu cpu_DUT(
   .clk_tb(clk_tb),
   .inv_clk_tb(inv_clk_tb),
  .reset_tb(reset_tb)
  
);

  // Clocks
  always begin
    #1;
    clk_tb <= ~clk_tb;
    inv_clk_tb <= ~inv_clk_tb;
  end

 

  initial begin

    
    $display("CPU running...");
    reset_tb = 1'b1;
    #10;
    reset_tb = 1'b0;
    #10;

    inv_clk_tb = 1'b0;
    clk_tb = 1'b1;

    #1000;
    $finish;

  end

endmodule
