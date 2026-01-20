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
  fork

    // Write monitor
    begin
      forever @(posedge vintf.w_clk) begin
        if (vintf.w_en ) begin
          sequence_item tx = sequence_item::type_id::create("tx");
          tx.w_rst   = vintf.w_rst;
          tx.w_en    = vintf.w_en;
          tx.data_in = vintf.data_in;
          #1;
          tx.full	 = vintf.full;

          `uvm_info(get_type_name(), 
                    $sformatf("MON: WRITE tx.full = %0b,w_en=%0b data_in=%0h",tx.full, tx.w_en, tx.data_in),
                    UVM_LOW)

          port_tx.write(tx);  
        end
      end
    end

    // Read monitor
    begin
      forever @(posedge vintf.r_clk) begin
        
        if (vintf.r_en && !vintf.empty) begin
         
          sequence_item tx = sequence_item::type_id::create("tx");
          
          tx.r_rst    = vintf.r_rst;
          tx.r_en     = vintf.r_en;
          #1;
          tx.empty	  = vintf.empty;
          tx.data_out = vintf.data_out;
          

          `uvm_info(get_type_name(),
                    $sformatf("MON: READ r_en=%0b data_out=%0h tx.full=%0b", tx.r_en, tx.data_out,tx.full),
                    UVM_MEDIUM)
          port_tx.write(tx);  
        end
      end
    end

  join_none
endtask


        
endclass
    
  
    
    
    
    
