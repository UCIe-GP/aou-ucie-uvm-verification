`ifndef APB_MONITOR_SV
    `define APB_MONITOR_SV

class apb_monitor extends uvm_monitor;

    `uvm_component_utils(apb_monitor)

    virtual apb_ifc #() apb_vif; 
    apb_seq_item apb_item_mon;

    function new(string name = "apb_monitor", uvm_component parent = null);
        super.new(name, parent);
        `uvm_info("apb_monitor", "apb monitor constructor", UVM_HIGH) 
    endfunction

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        apb_item_mon = apb_seq_item::type_id::create("apb_item_mon");
    endfunction

    virtual function void connect_phase(uvm_phase phase);
        super.connect_phase(phase);
    endfunction

    virtual task run_phase(uvm_phase phase);
        super.run_phase(phase);
    endtask

endclass

`endif