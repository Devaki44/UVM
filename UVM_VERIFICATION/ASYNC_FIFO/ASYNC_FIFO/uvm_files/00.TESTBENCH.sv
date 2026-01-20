//////////////////////////////////////////////////////////////
  
  localparam B  = 40;
  localparam Rf = 60_000_000;
  localparam Wf = 100_000_000;
  localparam Ri = 1;
  localparam Wi = 1;
  
`define DEPTH (int'(B * (1 - ((Rf*1.0*(1+Wi))/(Wf*1.0*(1+Ri))))))
  
  //////////////////////////////////////////////////////////////
`include "uvm_macros.svh"
import uvm_pkg::*;

`include "interface.sv"
`include "sequence_item.sv"
`include "seq.sv"
`include "sequencer.sv"
`include "driver.sv"
`include "monitor.sv"
`include "agent.sv"
`include "scoreboard.sv"
`include "environment.sv"
`include "test.sv"
 
module testbench;
  
  parameter DEPTH = `DEPTH ;
  parameter DATA_WIDTH = 16;
  
  reg w_clk,r_clk;
  reg w_rst,r_rst;
 
  interf sintf();
  
  top_module #(DEPTH,DATA_WIDTH) dut(sintf.w_clk,
                                     sintf.r_clk,sintf.w_en,
                                     sintf.r_en,
                                     sintf.w_rst,
                                     sintf.r_rst,
                                     sintf.data_in,
                                     sintf.data_out,
                                     sintf.full,
                                     sintf.empty);
  
  initial begin
    w_clk = 0;
    forever #5 w_clk = ~w_clk ;
  end
  initial begin
    r_clk = 0;
    forever #14 r_clk = ~r_clk ;
  end
 
  initial begin
    w_rst = 1;r_rst = 1;
    #40;
    w_rst = 0;
    #30;
    r_rst = 0;
  end
  
  //
  assign sintf.w_clk  = w_clk;
  assign sintf.r_clk  = r_clk;
  assign sintf.w_rst  = w_rst;
  assign sintf.r_rst  = r_rst;
  //
  
   initial begin
    uvm_config_db#(virtual interf)::set(null,"*","vif",sintf);
    run_test("test");
  end
  initial begin
    $monitor("DEPTH=%0D,no.of bits= %0D",DEPTH,$clog2(DEPTH));
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    #1000;
    $finish;
  end
endmodule
