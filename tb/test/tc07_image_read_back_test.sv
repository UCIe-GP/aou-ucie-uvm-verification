`ifndef TC07_IMAGE_READ_BACK_TEST_SV
    `define TC07_IMAGE_READ_BACK_TEST_SV

class tc07_image_read_back_test extends aou_base_test;

    `uvm_component_utils(tc07_image_read_back_test)

    function new(string name = "tc07_image_read_back_test", uvm_component parent = null);
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