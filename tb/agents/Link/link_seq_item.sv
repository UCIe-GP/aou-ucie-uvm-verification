`ifndef LINK_SEQ_ITEM_SV
    `define LINK_SEQ_ITEM_SV

class link_seq_item extends uvm_sequence_item;

    `uvm_object_utils(link_seq_item)

    function new(string name = "link_seq_item");
        super.new(name);
        `uvm_info("link_seq_item", "link sequence item constructor", UVM_HIGH) 
    endfunction

endclass

`endif