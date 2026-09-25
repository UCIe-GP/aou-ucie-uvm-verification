`ifndef APB_SEQ_ITEM_SV
    `define APB_SEQ_ITEM_SV

class apb_seq_item extends uvm_sequence_item;

    `uvm_object_utils(apb_seq_item)

    function new(string name = "apb_seq_item");
        super.new(name);
        `uvm_info("apb_seq_item", "apb sequence item constructor", UVM_HIGH) 
    endfunction

endclass

`endif