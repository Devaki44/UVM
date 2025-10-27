class test extends uvm_test;
  `uvm_component_utils(test)
  
  environment env;
  seq se;
  
  function new(string name = "test",uvm_component parent);
    super.new(name,parent);
  endfunction 
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    env = environment::type_id::create("env",this);
    se  = seq::type_id::create("se",this);
    `uvm_info(get_type_name(),"build-phase from test",UVM_NONE)
  endfunction
  
  function void end_of_elaboration_phase(uvm_phase phase);
    `uvm_info(get_type_name(),"end_of_elaboration-phase from test",UVM_NONE)
    print();
  endfunction
  
  task run_phase(uvm_phase phase);
    `uvm_info(get_type_name(),"run-phase from test",UVM_NONE)
    
    phase.raise_objection(this);
    se.start(env.agnt.seqr);
    phase.drop_objection(this);
  endtask
  
endclass
