`timescale 1ns / 1ps

module alu_tb;

  reg enable_tb;
  reg [2:0]su_tb;
  reg [7:0] a_tb;
  reg [7:0] b_tb;
  wire [7:0] w_bus;

  alu alu_DUT (
    .enable(enable_tb),
    .su(su_tb),
    .a(a_tb),
    .b(b_tb),
    .w_bus(w_bus)
  );

  initial begin

  

    enable_tb = 1'b0;
    su_tb = 1'b000;
    a_tb = 8'b00000000;
    b_tb = 8'b00000000;

    #10
    enable_tb = 1'b1;

    #10;
    enable_tb = 1'b0;

    #10;
    a_tb = 8'b00000011;
    b_tb = 8'b00000001;

    #10;
    enable_tb = 1'b1;

    #10;
    enable_tb = 1'b0;

    #10;
    enable_tb = 1'b1;
    
    #10;
    su_tb = 1'b001;

    #10;
    su_tb = 1'b010;
  #10;
    su_tb = 1'b011;
    #10;
      #10;
    su_tb = 1'b100;
      #10;
    su_tb = 1'b101;
      #10;
    su_tb = 1'b110;
      #10;
    su_tb = 1'b111;
    
    
    enable_tb = 1'b1;

    #10;
    enable_tb = 1'b0;

    #100;
    $finish;

  end

endmodule // alu_tb
