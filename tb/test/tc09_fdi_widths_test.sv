`ifndef TC09_FDI_WIDTHS_TEST_SV
    `define TC09_FDI_WIDTHS_TEST_SV

class tc09_fdi_widths_test extends aou_base_test;

    `uvm_component_utils(tc09_fdi_widths_test)

    function new(string name = "tc09_fdi_widths_test", uvm_component parent = null);
        super.new(name, parent);
    endfunction

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
    endfunction

    virtual function void connect_phase(uvm_phase phase);
        super.connect_phase(phase);
    endfunction

    virtual task run_phase(uvm_phase phase);
        super.run_phase(phase);
    endtask

endclass

`endif