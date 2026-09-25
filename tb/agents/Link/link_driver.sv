`ifndef link_driver_sv
    `define link_driver_sv

class link_driver extends uvm_driver #(link_seq_item);
    `uvm_component_utils(link_driver)

    virtual link_ifc #() link_vif;
    link_seq_item link_item_drv;

    function new(string name = "", uvm_component parent);
        super.new(name, parent);
        `uvm_info("link_driver", "link driver constructor", UVM_HIGH) 
    endfunction

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        link_item_drv = link_seq_item::type_id::create("link_item_drv");
    endfunction

    virtual function void connect_phase(uvm_phase phase);
        super.connect_phase(phase);
    endfunction

    virtual task run_phase(uvm_phase phase);
        super.run_phase(phase);
    endtask
  
endclass

`endif