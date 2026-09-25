`ifndef AOU_ENV_SV
`define AOU_ENV_SV

class aou_env extends uvm_env;
    `uvm_component_utils(aou_env)

    apb_agent        apb_agent_tx;
    apb_agent        apb_agent_rx;

    axi_master_agent axi_agent_tx;
    axi_slave_agent  axi_agent_rx;

    link_agent       D2D_link_agent;

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
    endfunction

    virtual function void connect_phase(uvm_phase phase);
        super.connect_phase(phase);
    endfunction

    virtual task run_phase(uvm_phase phase);
        super.run_phase(phase);
    endtask

endclass

`endif