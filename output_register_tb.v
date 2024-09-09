`timescale 1ns / 1ps

module output_register_tb;

  reg clk_tb;
  reg reset_tb;
  reg load_tb;

  wire [7:0] out_tb;
  reg [7:0] w_bus;

  output_register output_register_DUT (
    .clk(clk_tb),
    .reset(reset_tb),
    .load(load_tb),
    .w_bus(w_bus),
    .o(out_tb)
  );

  always begin
    #1;
    clk_tb <= ~clk_tb;
  end

  initial begin
w_bus = 8'b00001111;

    clk_tb = 1'b1;
    reset_tb = 1'b0;
    load_tb = 1'b1;

    #10;
    load_tb = 1'b0;

    #10;
    load_tb = 1'b1;

    #10;
    reset_tb = 1'b1;

    #10;
    reset_tb = 1'b0;

    #100;
    $finish;

  end

 // assign 

endmodule
