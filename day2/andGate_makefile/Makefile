# Variables
MODULES = andGate.v andGate_tb.v
OUTPUT = andGate_tb.vvp

# Default target
all: $(OUTPUT)

# Compile the Verilog files
$(OUTPUT): $(MODULES)
	iverilog -o $(OUTPUT) $(MODULES)

# Run the simulation
run: $(OUTPUT)
	vvp $(OUTPUT)

# Clean the output files
clean:
	rm -f $(OUTPUT)

.PHONY: all run clean
