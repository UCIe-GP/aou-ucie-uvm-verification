`ifndef link_agent_cfg_sv
    `define link_agent_cfg_sv

class link_agent_cfg extends uvm_object;
    `uvm_object_utils(link_agent_cfg)

    uvm_active_passive_enum is_active;

    virtual link_ifc #() link_vif;

    function new(string name = "link_agent_cfg");
        super.new(name);
        `uvm_info("link_agent_cfg", "link config constructor", UVM_HIGH) 
    endfunction
  
endclass

`endif