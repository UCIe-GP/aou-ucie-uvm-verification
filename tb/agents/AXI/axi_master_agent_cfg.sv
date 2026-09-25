`ifndef axi_master_agent_cfg_sv
    `define axi_master_agent_cfg_sv

class axi_master_agent_cfg extends uvm_object;
    `uvm_object_utils(axi_master_agent_cfg)

    uvm_active_passive_enum is_active;

    virtual axi_ifc #() axi_m_vif;

    function new(string name = "axi_master_agent_cfg");
        super.new(name);
        `uvm_info("axi_master_agent_cfg", "axi_master config constructor", UVM_HIGH) 
    endfunction
  
endclass

`endif