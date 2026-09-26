`ifndef V_SEQUENCER_SV
`define V_SEQUENCER_SV

class v_sequencer extends uvm_sequencer;
    `uvm_component_utils(v_sequencer)

    apb_sequencer          apb_sqr_tx;
    apb_sequencer          apb_sqr_rx;
    
    axi_master_sequencer   axi_m_sqr;  // Tx
    axi_slave_sequencer    axi_s_sqr;  // Rx
    
    link_sequencer         link_sqr;

    function new(string name = "v_sequencer", uvm_component parent = null);
        super.new(name, parent);
        `uvm_info("v_sequencer", "Constructing virtual sequencer", UVM_HIGH) 
    endfunction
  
    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
    endfunction
  
endclass

`endif