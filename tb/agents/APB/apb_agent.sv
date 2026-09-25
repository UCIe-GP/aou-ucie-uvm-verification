`ifndef APB_AGENT_SV
    `define APB_AGENT_SV

class apb_agent extends uvm_agent;

    `uvm_component_utils(apb_agent)

    apb_agent_cfg apb_cfg;

    apb_sequencer apb_sqr;
    apb_driver    apb_drv;
    apb_monitor   apb_mon;


    function new(string name = "apb_agent", uvm_component parent = null);
        super.new(name, parent);
        `uvm_info("apb_agent", "apb agent constructor", UVM_HIGH) 
    endfunction

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        
        if (!uvm_config_db#(apb_agent_cfg)::get(this, "", "apb_configuration", apb_cfg)) begin
            `uvm_fatal("APB_AGENT", "Failed to get cfg from uvm_config_db")
        end

        apb_mon = apb_monitor::type_id::create("apb_mon", this);
        apb_mon.apb_vif = apb_cfg.apb_vif;

        if (apb_cfg.is_active == UVM_ACTIVE) begin
            apb_sqr = apb_sequencer::type_id::create("apb_sqr", this);
            apb_drv = apb_driver::type_id::create("apb_drv", this);
            apb_drv.apb_vif = apb_cfg.apb_vif;
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