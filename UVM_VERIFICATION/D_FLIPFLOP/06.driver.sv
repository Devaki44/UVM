class driver extends uvm_driver#(sequence_item);
  `uvm_component_utils(driver)
  
  virtual interf vintf;
  sequence_item tx;
  
  function new(string name = "driver",uvm_component parent);
    super.new(name,parent);
  endfunction
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    
    if(!uvm_config_db#(virtual interf)::get(this,"","vif",vintf))
       `uvm_fatal(get_type_name(),"config_db is not assigned")
    
       `uvm_info(get_type_name(),"build_phase from driver",UVM_NONE)
  endfunction
         
    task run_phase(uvm_phase phase);
    super.run_phase(phase);
    
    forever begin
    `uvm_info(get_type_name(),"run_phase from driver",UVM_NONE)
    
      seq_item_port.get_next_item(tx);

      @(posedge vintf.clk)begin
      vintf.rst	= tx.rst;
      vintf.d = tx.d 	;
      
      seq_item_port.item_done();
    end
    end
    
    endtask
       
endclass
         
