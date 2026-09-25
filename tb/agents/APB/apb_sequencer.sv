`ifndef APB_SEQUENCER_SV
    `define APB_SEQUENCER_SV

class apb_sequencer extends uvm_sequencer #(apb_seq_item);

    `uvm_component_utils(apb_sequencer)

    function new(string name = "apb_sequencer", uvm_component parent = null);
        super.new(name, parent);
        `uvm_info("apb_sequencer", "apb sequencer constructor", UVM_HIGH) 
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