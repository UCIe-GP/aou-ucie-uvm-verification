`ifndef AXI_SEQ_ITEM_SV
`define AXI_SEQ_ITEM_SV

class axi_seq_item extends uvm_sequence_item;

    `uvm_object_utils(axi_seq_item)

    function new(string name = "axi_seq_item");
        super.new(name);
        `uvm_info("axi_seq_item", "axi sequence item constructor", UVM_HIGH) 
    endfunction

endclass

`endif