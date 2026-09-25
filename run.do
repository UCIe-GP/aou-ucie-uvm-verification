vlog -work work -vopt -sv -stats=none tb/agents/APB/apb_ifc.sv 
vlog -work work -vopt -sv -stats=none tb/agents/AXI/axi_ifc.sv 
vlog -work work -vopt -sv -stats=none tb/agents/Link/link_ifc.sv

vlog -work work -vopt -sv -stats=none tb/agents/APB/apb_pkg.sv 
vlog -work work -vopt -sv -stats=none tb/agents/AXI/axi_pkg.sv 
vlog -work work -vopt -sv -stats=none tb/agents/Link/link_pkg.sv 
vlog -work work -vopt -sv -stats=none tb/env/aou_env_pkg.sv 
vlog -work work -vopt -sv -stats=none tb/test/aou_test_pkg.sv

vlog -work work -vopt -sv -stats=none tb/top/tb_top.sv

vsim work.tb_top "+UVM_TESTNAME=aou_base_test" "+UVM_VERBOSITY=UVM_HIGH"

run -all
