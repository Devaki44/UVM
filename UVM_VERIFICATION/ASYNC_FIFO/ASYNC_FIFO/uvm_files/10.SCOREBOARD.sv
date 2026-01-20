class scoreboard extends uvm_scoreboard;
  `uvm_component_utils(scoreboard)

  uvm_analysis_imp #(sequence_item, scoreboard) port_rx;

  // internal storage
  reg [15:0] queue[$];
  reg [15:0] expected_out;
  reg f,e;

  function new(string name = "scoreboard", uvm_component parent);
    super.new(name, parent);
  endfunction

  function void build_phase(uvm_phase phase);
    super.build_phase(phase);

    port_rx = new("port_rx", this);


    // clear queue
    foreach (queue[i]) queue[i] = '0;
  endfunction

  function void write(sequence_item tx);

    `uvm_info(get_type_name(),
              $sformatf("SB RX: w_en=%0b r_en=%0b din=%0h dout=%0h",
                        tx.w_en, tx.r_en, tx.data_in, tx.data_out),
              UVM_MEDIUM)

    // ---- WRITE RESET ----
    if (tx.w_rst) begin
      queue.delete();

      `uvm_info(get_type_name(), "Scoreboard Write Reset", UVM_MEDIUM)
      return;
    end

    // ---- WRITE TRANSACTION ----
    if (tx.w_en) begin
      
      if (queue.size() < `DEPTH) begin
        queue.push_back(tx.data_in);
        `uvm_info(get_type_name(),
                  $sformatf("WRITE stored => %0h (Queue size = %0d)",
                            tx.data_in, queue.size()),
                  UVM_MEDIUM)
      end
     
      return;
    end

    // ---- READ RESET ----
    if (tx.r_rst) begin
      expected_out = 0;

      `uvm_info(get_type_name(), "Scoreboard Read Reset", UVM_MEDIUM)
      return;
    end

    // ---- READ TRANSACTION ----
    if (tx.r_en) begin
      if (queue.size() > 0) begin
        expected_out = queue.pop_front();
        `uvm_info(get_type_name(),
                  $sformatf("EXPECTED OUT = %0h", expected_out),
                  UVM_LOW) 
      end
    
    end
    
     // ---- FLAG DERIVATION (ONLY PLACE) ----
  f = (queue.size() == `DEPTH);
  e = (queue.size() == 0);

    
    if (expected_out == tx.data_out && f == tx.full && e == tx.empty)
          `uvm_info(get_type_name(),
                    $sformatf("*********************===== PASS ===== : %0h == %0h,f = %0b,tx.full = %0b,e = %0b,tx.empty = %0b **************************",
                              expected_out, tx.data_out,f,tx.full,e,tx.empty),
                    UVM_LOW)
        else
          `uvm_error(get_type_name(),
                     $sformatf("*********************===== FAIL ===== : %0h == %0h,f = %0b,tx.full = %0b,e = %0b,tx.empty = %0b ****************************",
                               expected_out, tx.data_out,f,tx.full,e,tx.empty))


  endfunction


endclass
