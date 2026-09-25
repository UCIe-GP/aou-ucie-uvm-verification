`ifndef APB_MASTER_IFC_SV
    `define APB_MASTER_IFC_SV

interface apb_ifc #(
    parameter int ADDR_WIDTH = 32,
    parameter int DATA_WIDTH = 32
) 
(
    input logic clk,
    input logic rst_n
);


endinterface

`endif