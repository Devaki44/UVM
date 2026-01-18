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
 
module tb;
  
  reg clk;
  reg rst;
  
  interf sintf();
  
  fifo dut(sintf.clk,sintf.rst,sintf.en,sintf.data_in,sintf.data_out,sintf.full,sintf.empty);
  
  
  
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end
  initial begin
    rst = 1;
    @(posedge clk);
    @(posedge clk);
    rst = 0;
  end
  
  //
  assign sintf.clk = clk;
  assign sintf.rst = rst;
  //
  
  initial begin
    uvm_config_db#(virtual interf)::set(null,"*","vif",sintf);
    run_test("test");
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    #300;
    $finish;
  end
endmodule
  
  
