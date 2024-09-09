`timescale 1ns / 1ps

module controller_tb;

  reg clk_tb;
  reg [3:0] opcode_tb;

  wire [13:0] control_bus;

  controller controller_DUT (
    .clk(clk_tb),
    .opcode(opcode_tb),
    .cw_bus(control_bus)
  );

  always begin
    #1;
    clk_tb <= ~clk_tb;
  end

  initial begin
   

    clk_tb = 1'b0; 
    opcode_tb = 4'b0000;

    #10;
    opcode_tb = 4'b0001;
  
    #10;
    opcode_tb = 4'b0010;
#10;
    opcode_tb = 4'b0011;
    #10;
    opcode_tb = 4'b0100;
    #10;
    opcode_tb = 4'b0101;
    #10;
    opcode_tb = 4'b0110;
    #10;
    opcode_tb = 4'b0111;
    #10;
    opcode_tb = 4'b1000;
    
    opcode_tb = 4'b1110;

    #100;
    $finish;

  end

endmodule
