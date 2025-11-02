.PHONY: build clean run check help

help:
	@echo "AI-LeanExperiments Makefile"
	@echo "============================"
	@echo ""
	@echo "Available targets:"
	@echo "  make build  - Build the project"
	@echo "  make run    - Run the main executable"
	@echo "  make check  - Check all Lean files compile"
	@echo "  make clean  - Clean build artifacts"
	@echo "  make help   - Show this help message"

build:
	lake build

run: build
	lake exe ai-lean-experiments

check:
	lake build

clean:
	lake clean
	rm -rf .lake/build
