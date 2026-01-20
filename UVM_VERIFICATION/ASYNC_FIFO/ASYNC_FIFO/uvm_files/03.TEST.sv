class test extends uvm_test;
  `uvm_component_utils(test)
  
  seq se;
  environment env;
  
  function new(string name = "test",uvm_component parent);
    super.new(name,parent);
  endfunction
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    `uvm_info(get_type_name(),"build_phase from test",UVM_HIGH)
    
    se  = seq          :: type_id :: create("se");
    env = environment  :: type_id :: create("env",this);
  endfunction
  
  function void end_of_elaboration_phase(uvm_phase phase);
    super.end_of_elaboration_phase(phase);
    `uvm_info(get_type_name(),"end_of_elaboration_phase from test",UVM_HIGH)
    
  endfunction
  
  task run_phase(uvm_phase phase);
    super.run_phase(phase);
    `uvm_info(get_type_name(),"run_phase from test",UVM_HIGH)
    
    phase.raise_objection(this);
    se.start(env.agnt.seqr);
    phase.drop_objection(this);
    
  endtask
endclass
    
  
  
  
