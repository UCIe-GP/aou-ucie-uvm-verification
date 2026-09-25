`ifndef LINK_IFC_SV
    `define LINK_IFC_SV

interface link_ifc #(
    parameter int FLIT_WIDTH = 256, 
    parameter int LANE_WIDTH = 8
) (
    input logic clk,
    input logic rst_n
);


endinterface

`endif