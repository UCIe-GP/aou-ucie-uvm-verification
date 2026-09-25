`ifndef LINK_MONITOR_SV
    `define LINK_MONITOR_SV

class link_monitor extends uvm_monitor;

    `uvm_component_utils(link_monitor)

    virtual link_ifc #() link_vif;
    link_seq_item link_item_mon;

    function new(string name = "link_monitor", uvm_component parent = null);
        super.new(name, parent);
    endfunction

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        link_item_mon = link_seq_item::type_id::create("link_item_mon");
    endfunction

    virtual function void connect_phase(uvm_phase phase);
        super.connect_phase(phase);
    endfunction

    virtual task run_phase(uvm_phase phase);
        super.run_phase(phase);
    endtask

endclass

`endif