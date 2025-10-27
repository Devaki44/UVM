class driver extends uvm_driver#(sequence_item);
  `uvm_component_utils(driver)
  
  virtual intf vintf;
  sequence_item tx;
  
  
  function new(string name = "driver",uvm_component parent);
    super.new(name,parent);
  endfunction
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    `uvm_info(get_type_name(),"build-phase from driver",UVM_NONE)
    
    if(!uvm_config_db#(virtual intf)::get(this, "", "vif", vintf))
      `uvm_fatal("no_inif in driver","virtual interface get failed from config db");
    
  endfunction
  
  task run_phase(uvm_phase phase);
    super.run_phase(phase);

    repeat(10) begin
      #1;
    `uvm_info(get_type_name(),"run-phase from driver",UVM_NONE);

    seq_item_port.get_next_item(tx);
    	vintf.a = tx.a ;
    	vintf.b = tx.b ;
    seq_item_port.item_done();
     
   end
  endtask
  
endclass
