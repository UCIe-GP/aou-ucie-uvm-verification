`ifndef TB_TOP_SV
    `define TB_TOP_SV

import uvm_pkg::*;
`include "uvm_macros.svh"
import aou_test_pkg::*;
`include "d2d_adapter_model"
`include "dut_wrapper.svh"

module tb_top;

    logic clk;
    logic rst_n;

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        rst_n = 0;
        #20;
        rst_n = 1;
    end

    link_ifc #() link_if(clk, rst_n);
    apb_ifc #() apb_if(clk, rst_n);
    axi_ifc #() axi_m_if(clk, rst_n);
    axi_ifc #() axi_s_if(clk, rst_n);


    initial begin
        uvm_config_db#(virtual link_ifc#())::set(null, "uvm_test_top", "link_interface", link_if);
        uvm_config_db#(virtual apb_ifc#())::set(null, "uvm_test_top", "apb_interface", apb_if);
        uvm_config_db#(virtual axi_ifc#())::set(null, "uvm_test_top", "axi_master_interface", axi_m_if);
        uvm_config_db#(virtual axi_ifc#())::set(null, "uvm_test_top", "axi_slave_interface", axi_s_if);

        `uvm_info("tb_top", "Starting UVM Test...", UVM_LOW)
        run_test(); 
    end


endmodule

`endif