`ifndef AXI_PKG_SV
    `define AXI_PKG_SV

package axi_pkg;

    import uvm_pkg::*;
    `include "uvm_macros.svh"

    `include "axi_seq_item.sv"
    
    `include "axi_master_monitor.sv"
    `include "axi_master_sequencer.sv"
    `include "axi_master_driver.sv"
    `include "axi_master_agent_cfg.sv"
    `include "axi_master_agent.sv"
    
    `include "axi_slave_monitor.sv"
    `include "axi_slave_sequencer.sv"
    `include "axi_slave_driver.sv"
    `include "axi_slave_agent_cfg.sv"
    `include "axi_slave_agent.sv"

endpackage

`endif