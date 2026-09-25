`ifndef TC11_OUTSTANDING_AND_IDS_TEST_SV
    `define TC11_OUTSTANDING_AND_IDS_TEST_SV

class tc11_outstanding_and_ids_test extends aou_base_test;

    `uvm_component_utils(tc11_outstanding_and_ids_test)

    function new(string name = "tc11_outstanding_and_ids_test", uvm_component parent = null);
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