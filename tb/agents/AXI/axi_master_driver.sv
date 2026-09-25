`ifndef axi_master_driver_sv
    `define axi_master_driver_sv

class axi_master_driver extends uvm_driver #(axi_seq_item);
    `uvm_component_utils(axi_master_driver)

    virtual axi_ifc #() axi_m_vif;
    axi_seq_item axi_m_item_drv;

    function new(string name = "", uvm_component parent);
        super.new(name, parent);
        `uvm_info("axi_master_driver", "axi_master driver constructor", UVM_HIGH) 
    endfunction

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        axi_m_item_drv = axi_seq_item::type_id::create("axi_m_item_drv");
    endfunction

    virtual task run_phase(uvm_phase phase);
        super.run_phase(phase);
    endtask
  
endclass

`endif