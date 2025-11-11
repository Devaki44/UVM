class monitor extends uvm_monitor;
  `uvm_component_utils(monitor)
  
  virtual interf vintf;
  sequence_item tx;
  
  uvm_analysis_port#(sequence_item)port_tx;
  
  function new(string name= "monitor",uvm_component parent);
    super.new(name,parent);
    tx = new();
    `uvm_info("MON_CLASS","constructor",UVM_HIGH)
  endfunction
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    
    port_tx = new("port_tx",this);
    
    `uvm_info("MON_CLASS","build_phase fron monitor",UVM_LOW)
    
    if(!uvm_config_db#(virtual interf)::get(this,"","vif",vintf))
           `uvm_fatal(get_type_name(),"build_phase from monitor");
  endfunction
           
  task run_phase(uvm_phase phase);
    super.run_phase(phase);
    
    repeat(10)begin
      #1;
    tx = sequence_item ::type_id::create("tx",this);
    tx.a 	= vintf.a ;
    tx.b 	= vintf.b ;
    tx.cin 	= vintf.cin;
    tx.sum 	= vintf.sum;
    tx.cout = vintf.cout;
    port_tx.write(tx);
    `uvm_info("MON_CLASS","run_phase from monitor",UVM_LOW)
    end
  endtask
endclass
           
  
