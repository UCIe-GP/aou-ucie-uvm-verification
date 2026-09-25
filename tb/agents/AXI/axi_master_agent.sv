`ifndef AXI_MASTER_AGENT_SV
`define AXI_MASTER_AGENT_SV

class axi_master_agent extends uvm_agent;

    axi_master_agent_cfg axi_m_cfg;

    axi_master_sequencer axi_m_sqr;
    axi_master_driver    axi_m_drv;
    axi_master_monitor   axi_m_mon;

    `uvm_component_utils(axi_master_agent)

    function new(string name = "axi_master_agent", uvm_component parent = null);
        super.new(name, parent);
        `uvm_info("axi_master_agent", "axi_master agent constructor", UVM_HIGH) 
    endfunction

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        
        if (!uvm_config_db#(axi_master_agent_cfg)::get(this, "", "axi_master_configuration", axi_m_cfg)) begin
            `uvm_fatal("AXI_MASTER_AGENT", "Failed to get cfg from uvm_config_db")
        end

        axi_m_mon = axi_master_monitor::type_id::create("axi_m_mon", this);
        axi_m_mon.axi_m_vif = axi_m_cfg.axi_m_vif;

        if (axi_m_cfg.is_active == UVM_ACTIVE) begin
            axi_m_sqr = axi_master_sequencer::type_id::create("axi_m_sqr", this);
            axi_m_drv = axi_master_driver::type_id::create("axi_m_drv", this);
            axi_m_drv.axi_m_vif = axi_m_cfg.axi_m_vif;
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