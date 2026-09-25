`ifndef APB_DRIVER_SV
    `define APB_DRIVER_SV

class apb_driver extends uvm_driver #(apb_seq_item);

    `uvm_component_utils(apb_driver)

    virtual apb_ifc #() apb_vif; 
    apb_seq_item apb_item_drv;

    function new(string name = "apb_driver", uvm_component parent = null);
        super.new(name, parent);
        `uvm_info("apb_driver", "apb driver constructor", UVM_HIGH) 
    endfunction

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        apb_item_drv = apb_seq_item::type_id::create("apb_item_drv");
    endfunction

    virtual function void connect_phase(uvm_phase phase);
        super.connect_phase(phase);
    endfunction

    virtual task run_phase(uvm_phase phase);
        super.run_phase(phase);
    endtask

endclass

`endif