`ifndef axi_slave_driver_sv
    `define axi_slave_driver_sv

class axi_slave_driver extends uvm_driver #(axi_seq_item);

    `uvm_component_utils(axi_slave_driver)

    virtual axi_ifc #() axi_s_vif;
    axi_seq_item        axi_s_item_drv;

    function new(string name = "", uvm_component parent);
        super.new(name, parent);
        `uvm_info("axi_slave_driver", "axi_slave driver constructor", UVM_HIGH) 
    endfunction

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        axi_s_item_drv = axi_seq_item::type_id::create("axi_s_item_drv");
    endfunction

    virtual task run_phase(uvm_phase phase);
        super.run_phase(phase);
    endtask

endclass

`endif