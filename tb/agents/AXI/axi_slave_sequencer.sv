`ifndef AXI_SLAVE_SEQUENCER_SV
`define AXI_SLAVE_SEQUENCER_SV

class axi_slave_sequencer extends uvm_sequencer #(axi_seq_item);
    
    `uvm_component_utils(axi_slave_sequencer)

    function new(string name = "axi_slave_sequencer", uvm_component parent = null);
        super.new(name, parent);
        `uvm_info("axi_slave_sequencer", "axi_slave sequencer constructor", UVM_HIGH) 
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