# Variables
TOP = dut_101_tb
FILES = dut_101.sv dut_101_tb.sv

# Clean the output files
clean: 
	@rm -rf xsim.dir *.log *.pb *.jou *.vcd

# Vivado simulatiom
vivado:
	xvlog -sv $(FILES)
	xelab $(TOP) -s top
	xsim top -runall 
# Iverilog simulation
iverilog:

	iverilog -o ${TOP}.vvp -g2012 ${FILES}
	vvp $(TOP).vvp

.PHONY: clean vivado iverilog

