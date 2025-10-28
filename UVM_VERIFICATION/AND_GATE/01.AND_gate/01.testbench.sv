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
  		
  		intf sintf(); 

        and_g inst1(
          .a  (sintf.a       )  ,
          .b  (sintf.b       )  ,
          .out(sintf.out	 )
          
        );
  
  
      initial begin 
        uvm_config_db#(virtual intf)::set(null,"*","vif",sintf);
 	  end    
  
      initial begin        
        $dumpfile("dump.vcd");        
        $dumpvars;       
      end
       
    
    initial begin 
        run_test("test");
    end


    initial begin
       #500;
        $display("clock ended");
        $finish;
    end

endmodule
