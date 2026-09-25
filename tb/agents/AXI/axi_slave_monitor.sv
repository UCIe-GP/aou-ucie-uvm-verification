`ifndef AXI_SLAVE_MONITOR_SV
    `define AXI_SLAVE_MONITOR_SV

class axi_slave_monitor extends uvm_monitor;

    `uvm_component_utils(axi_slave_monitor)

    virtual axi_ifc #() axi_s_vif;
    axi_seq_item        axi_s_item_mon;

    function new(string name = "axi_slave_monitor", uvm_component parent = null);
        super.new(name, parent);
        `uvm_info("axi_slave_monitor", "axi_slave monitor constructor", UVM_HIGH) 
    endfunction

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        axi_s_item_mon = axi_seq_item::type_id::create("axi_s_item_mon");
    endfunction

    virtual function void connect_phase(uvm_phase phase);
        super.connect_phase(phase);
    endfunction

    virtual task run_phase(uvm_phase phase);
        super.run_phase(phase);
    endtask

endclass

`endif