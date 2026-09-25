`ifndef LINK_AGENT_SV
    `define LINK_AGENT_SV

class link_agent extends uvm_agent;

    link_agent_cfg link_cfg;

    link_sequencer link_sqr;
    link_driver    link_drv;
    link_monitor   link_mon;

    `uvm_component_utils(link_agent)

    function new(string name = "link_agent", uvm_component parent = null);
        super.new(name, parent);
        `uvm_info("link_agent", "link agent constructor", UVM_HIGH) 
    endfunction

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        
        if (!uvm_config_db#(link_agent_cfg)::get(this, "", "link_configuration", link_cfg)) begin
            `uvm_fatal("LINK_AGENT", "Failed to get cfg from uvm_config_db")
        end

        link_mon = link_monitor::type_id::create("link_mon", this);
        link_mon.link_vif = link_cfg.link_vif;

        if (link_cfg.is_active == UVM_ACTIVE) begin
            link_sqr = link_sequencer::type_id::create("link_sqr", this);
            link_drv = link_driver::type_id::create("link_drv", this);
            link_drv.link_vif = link_cfg.link_vif;
        end
    endfunction

    virtual function void connect_phase(uvm_phase phase);
        super.connect_phase(phase);
    endfunction

    virtual task run_phase(uvm_phase phase);
        super.run_phase(phase);
    endtask

endclass

`endif