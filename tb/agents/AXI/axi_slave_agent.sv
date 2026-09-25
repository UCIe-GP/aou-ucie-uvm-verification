`ifndef AXI_SLAVE_AGENT_SV
  `define AXI_SLAVE_AGENT_SV

class axi_slave_agent extends uvm_agent;

    axi_slave_agent_cfg axi_s_cfg;

    axi_slave_sequencer axi_s_sqr;
    axi_slave_driver    axi_s_drv;
    axi_slave_monitor   axi_s_mon;

    `uvm_component_utils(axi_slave_agent)

    function new(string name = "axi_slave_agent", uvm_component parent = null);
        super.new(name, parent);
        `uvm_info("axi_slave_agent", "axi_slave agent constructor", UVM_HIGH) 
    endfunction

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        
        if (!uvm_config_db#(axi_slave_agent_cfg)::get(this, "", "axi_slave_configuration", axi_s_cfg)) begin
            `uvm_fatal("AXI_SLAVE_AGENT", "Failed to get cfg from uvm_config_db")
        end

        axi_s_mon = axi_slave_monitor::type_id::create("axi_s_mon", this);
        axi_s_mon.axi_s_vif = axi_s_cfg.axi_s_vif;

        if (axi_s_cfg.is_active == UVM_ACTIVE) begin
            axi_s_sqr = axi_slave_sequencer::type_id::create("axi_s_sqr", this);
            axi_s_drv = axi_slave_driver::type_id::create("axi_s_drv", this);
            axi_s_drv.axi_s_vif = axi_s_cfg.axi_s_vif;
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