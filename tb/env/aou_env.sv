`ifndef AOU_ENV_SV
`define AOU_ENV_SV

class aou_env extends uvm_env;
    `uvm_component_utils(aou_env)

    apb_agent        apb_agent_tx;
    apb_agent        apb_agent_rx;

    axi_master_agent axi_agent_tx;
    axi_slave_agent  axi_agent_rx;

    link_agent       D2D_link_agent;

    v_sequencer      v_sqr;

    function new(string name = "aou_env", uvm_component parent = null);
        super.new(name, parent);
        `uvm_info("aou_env", "aou_env constructor", UVM_HIGH)
    endfunction

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        
        apb_agent_tx  = apb_agent::type_id::create("apb_agent_tx", this);
        apb_agent_rx  = apb_agent::type_id::create("apb_agent_rx", this);
        
        axi_agent_tx  = axi_master_agent::type_id::create("axi_agent_tx", this);
        axi_agent_rx  = axi_slave_agent::type_id::create("axi_agent_rx", this);
        
        D2D_link_agent = link_agent::type_id::create("D2D_link_agent", this);

        v_sqr = v_sequencer::type_id::create("v_sqr", this);

    endfunction

    virtual function void connect_phase(uvm_phase phase);
        super.connect_phase(phase);
        v_sqr.apb_sqr_tx = apb_agent_tx.apb_sqr;
        v_sqr.apb_sqr_rx = apb_agent_rx.apb_sqr;
        v_sqr.axi_m_sqr = axi_agent_tx.axi_m_sqr;
        v_sqr.axi_s_sqr = axi_agent_rx.axi_s_sqr;
        v_sqr.link_sqr = D2D_link_agent.link_sqr;

    endfunction

    virtual task run_phase(uvm_phase phase);
        super.run_phase(phase);
    endtask

endclass

`endif