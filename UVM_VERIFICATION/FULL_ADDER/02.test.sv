class test extends uvm_test;
  `uvm_component_utils(test)
  
  environment env;
  seq se;
  
  function new(string name = "test",uvm_component parent);
    super.new(name,parent);
    `uvm_info("TEST_CLASS","constructor",UVM_HIGH)
  endfunction
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    
    env = environment :: type_id :: create("env",this);
    se  = seq		  :: type_id :: create("se",this);
    
    `uvm_info("TEST_CLASS","build_phase from test",UVM_LOW)
  endfunction
  
  function void end_of_elaboration_phase(uvm_phase phase);
    super.end_of_elaboration_phase(phase);
    
    `uvm_info("TEST_CLASS","end_of_elaboration_phase from test",UVM_LOW)
    print();
  endfunction
  
  task run_phase(uvm_phase phase);
    super.run_phase(phase);
    
    phase.raise_objection(this);
    se.start(env.agnt.seqr);
    phase.drop_objection(this);
    `uvm_info("TEST_CLASS","run_phase from test",UVM_LOW)
    `uvm_info("TEST_CLASS","------------------------",UVM_LOW)


  endtask
  
endclass
    
  
  
