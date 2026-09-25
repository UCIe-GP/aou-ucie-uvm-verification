`ifndef axi_slave_agent_cfg_sv
    `define axi_slave_agent_cfg_sv

class axi_slave_agent_cfg extends uvm_object;
    `uvm_object_utils(axi_slave_agent_cfg)

    uvm_active_passive_enum is_active;

    virtual axi_ifc #() axi_s_vif;

    function new(string name = "axi_slave_agent_cfg");
        super.new(name);
        `uvm_info("axi_slave_agent_cfg", "axi_slave config constructor", UVM_HIGH) 
    endfunction

endclass

`endif