`ifndef TC15_LOW_POWER_TEST_SV
    `define TC15_LOW_POWER_TEST_SV

class tc15_low_power_test extends aou_base_test;

    `uvm_component_utils(tc15_low_power_test)

    function new(string name = "tc15_low_power_test", uvm_component parent = null);
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