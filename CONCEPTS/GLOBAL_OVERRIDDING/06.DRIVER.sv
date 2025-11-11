class driver extends uvm_driver#(sequence_item);
  `uvm_component_utils(driver)
  
  sequence_item tx;
  virtual interf vintf;
  
  function new(string name = "driver",uvm_component parent);
    super.new(name,parent);
    `uvm_info("DRI_CLASS","constructor",UVM_HIGH)
  endfunction
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    `uvm_info("DRI_CLASS","build_phase from driver",UVM_LOW)
    
    if(!uvm_config_db#(virtual interf)::get(this,"","vif",vintf))
           `uvm_fatal(get_type_name(),"config_db operation get failed")  
  endfunction
           
  task run_phase(uvm_phase phase);
    super.run_phase(phase);
    
    repeat(10)begin
      #1;
    seq_item_port.get_next_item(tx);
    	vintf.a = tx.a ;
    	vintf.b = tx.b ;
        vintf.cin = tx.cin;
    seq_item_port.item_done();
    `uvm_info("DRI_CLASS","run_phase from driver",UVM_LOW)
      
    end
  endtask
     
endclass
           
