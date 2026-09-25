`ifndef LINK_SEQUENCER_SV
    `define LINK_SEQUENCER_SV

class link_sequencer extends uvm_sequencer #(link_seq_item);

    `uvm_component_utils(link_sequencer)

    function new(string name = "link_sequencer", uvm_component parent = null);
        super.new(name, parent);
        `uvm_info("link_sequencer", "link sequencer constructor", UVM_HIGH) 
    endfunction

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
    endfunction

    virtual function void connect_phase(uvm_phase phase);
        super.connect_phase(phase);
    endfunction

    virtual task run_phase(uvm_phase phase);
        super.run_phase(phase);
    endtask

endclass

`endif