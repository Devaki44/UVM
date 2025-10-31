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
    
    port_tx = new("port_tx",this);
    
    if(!uvm_config_db#(virtual interf)::get(this,"","vif",vintf))
      `uvm_fatal(get_type_name(),"config_db is not assigned");
    
    `uvm_info(get_type_name(),"build_phase from monitor",UVM_NONE)
  endfunction
       
  task run_phase(uvm_phase phase);
    super.run_phase(phase);
    
    forever begin
          `uvm_info(get_type_name(),"run_phase from monitor",UVM_NONE)

      tx = sequence_item :: type_id :: create("tx");

      @(negedge vintf.clk)begin
      tx.rst = vintf.rst ;
      tx.d   = vintf.d   ;
      tx.q   = vintf.q   ;
      port_tx.write(tx);
      end
    end
    
  endtask
endclass
         
                       
  
