class monitor extends uvm_monitor;
  `uvm_component_utils(monitor)
  
  virtual interf vintf;
  sequence_item tx;
  uvm_analysis_port#(sequence_item)port_tx;
  
  
  function new(string name = "monitor",uvm_component parent);
    super.new(name,parent);
  endfunction
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    `uvm_info(get_type_name(),"build_phase from monitor",UVM_HIGH)
    
    if(!(uvm_config_db#(virtual interf)::get(this,"","vif",vintf)))
      `uvm_fatal(get_type_name(),"NO_CONFIG_DB")
    
    port_tx = new("port_tx",this);
  endfunction
  
  task run_phase(uvm_phase phase);
    super.run_phase(phase);
    `uvm_info(get_type_name(),"run_phase from monitor",UVM_HIGH)
    
    forever begin
    
      @(posedge  vintf.clk)begin
        
       tx = sequence_item :: type_id :: create("tx");
      
      tx.rst     = vintf.rst;
      tx.en      = vintf.en;
      tx.data_in = vintf.data_in;
      #1;
      tx.data_out= vintf.data_out;
      tx.full    = vintf.full;
      tx.empty	 = vintf.empty;
        `uvm_info(get_type_name(),$sformatf("rst=%0b,en = %0b,data_in = %0h,data_out =%0h,full=%0b,empty=%0b",tx.rst,tx.en,tx.data_in,tx.data_out,tx.full,tx.empty),UVM_MEDIUM)
      port_tx.write(tx);
    end
    end
  endtask
  
endclass
