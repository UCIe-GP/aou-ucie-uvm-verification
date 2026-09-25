`ifndef TC08_IMAGE_SIZES_TEST_SV
    `define TC08_IMAGE_SIZES_TEST_SV

class tc08_image_sizes_test extends aou_base_test;

    `uvm_component_utils(tc08_image_sizes_test)

    function new(string name = "tc08_image_sizes_test", uvm_component parent = null);
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