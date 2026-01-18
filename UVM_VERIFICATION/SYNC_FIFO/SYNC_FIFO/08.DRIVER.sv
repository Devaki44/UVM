class driver extends uvm_driver#(sequence_item);
  `uvm_component_utils(driver)
  
  virtual interf vintf;
  sequence_item tx;
  
  function new(string name = "driver" ,uvm_component parent);
    super.new(name,parent);
  endfunction
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    `uvm_info(get_type_name(),"build_phase from driver",UVM_HIGH)
    
    if(!(uvm_config_db#(virtual interf)::get(this,"","vif",vintf)))
      `uvm_fatal(get_type_name(),"NO_CONFIG_DB")
  endfunction
  
  task run_phase(uvm_phase phase);
    super.run_phase(phase);
    `uvm_info(get_type_name(),"run_phase from driver",UVM_HIGH)
    
    forever begin
  
    seq_item_port.get_next_item(tx);
    
      @(negedge vintf.clk)begin
   		   vintf.en 		= tx.en;
   		   vintf.data_in = tx.data_in;
   	  end
      
    seq_item_port.item_done();
      
    `uvm_info(get_type_name(),$sformatf("en = %0b,data_in = %0h",tx.en,tx.data_in),UVM_MEDIUM)
    end
  endtask
  
endclass
      
    
    
