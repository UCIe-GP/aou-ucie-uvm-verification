`ifndef AXI_IFC_SV
`define AXI_IFC_SV

interface axi_ifc #(
    parameter int ADDR_WIDTH = 32,
    parameter int DATA_WIDTH = 32,
    parameter int ID_WIDTH   = 4
) (
    input logic clk,
    input logic rst_n
);


endinterface

`endif