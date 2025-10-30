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
  
  interf sintf();
  fa dut(sintf.a,sintf.b,sintf.cin,sintf.sum,sintf.cout);
  
  initial begin
    uvm_config_db#(virtual interf)::set(null,"*","vif",sintf);
  end
  
  initial begin
    run_test("test");
  end
  
  initial begin
    $monitor("time=%0t,a=%0b,b=%0b,cin=%0b,sum=%0b,cout=%0b",$time,sintf.a,sintf.b,sintf.cin,sintf.sum,sintf.cout);
    $dumpfile("dump.vcd");
    $dumpvars;
  end
  
  initial begin
    #500;
    $finish;
  end
endmodule
