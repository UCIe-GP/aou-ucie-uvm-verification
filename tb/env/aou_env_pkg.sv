`ifndef AOU_ENV_PKG_SV
    `define AOU_ENV_PKG_SV

package aou_env_pkg;

    import uvm_pkg::*;
    `include "uvm_macros.svh"

    import apb_pkg::*;
    import axi_pkg::*;
    import link_pkg::*;
    `include "v_sequencer.sv"
    `include "aou_env.sv"

endpackage

`endif