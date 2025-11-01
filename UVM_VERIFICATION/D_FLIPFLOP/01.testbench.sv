`timescale 1ns/1ps

`include "uvm_macros.svh"

import uvm_pkg::*;

`include "interface.sv"
`include "sequence_item.sv"
`include "sequence.sv"
`include "sequencer.sv"
`include "driver.sv"
`include "monitor.sv"
`include "agent.sv"
`include "scoreboard.sv"
`include "environment.sv"
`include "test.sv"

module testbench;
  
  bit clk;
  
  interf sintf();
  dff dut(sintf.clk,sintf.rst,sintf.d,sintf.q);
  
  assign sintf.clk = clk ;
  
  initial begin
    clk=0 ;
    forever #5 clk = ~clk ;
  end
  
  initial begin
    run_test("test");
  end
  initial begin
    uvm_config_db#(virtual interf)::set(null,"*","vif",sintf);
  end

  initial begin
    $monitor("clk = %0d, rst = %0b ,d=%0b ,q=%0b",sintf.clk,sintf.rst,sintf.d,sintf.q);
    $dumpfile("dump.vcd");
    $dumpvars;
    #1000;
    $finish;
  end
  
endmodule
