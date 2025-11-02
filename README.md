# AI-LeanExperiments

Trying to use AI to leverage lean mathematically via using small mathematical exercises.

## Overview

This project contains a collection of small mathematical exercises implemented in Lean 4, designed to help AI systems learn and work with formal mathematical proofs. The exercises cover fundamental topics in mathematics including arithmetic, algebra, and logic.

## Project Structure

```
AI-LeanExperiments/
├── AILeanExperiments/           # Main library directory
│   ├── BasicArithmetic.lean     # Arithmetic properties (commutativity, associativity, etc.)
│   ├── BasicAlgebra.lean        # Algebraic properties (equality, natural number proofs)
│   └── LogicExercises.lean      # Propositional logic and proof techniques
├── AILeanExperiments.lean       # Main library import file
├── Main.lean                    # Executable entry point
├── lakefile.lean                # Lake build configuration
├── lean-toolchain               # Lean version specification
└── README.md                    # This file
```

## Mathematical Content

### BasicArithmetic
- Addition properties: commutativity, associativity, identity
- Multiplication properties: commutativity, associativity, identity
- Distributivity: left and right distribution of multiplication over addition

### BasicAlgebra
- Equality properties: reflexivity, symmetry, transitivity
- Natural number proofs: successor injection, addition equals zero
- Simple algebraic identities

### LogicExercises
- Propositional logic: modus ponens, conjunction, disjunction
- Implication properties: reflexivity, transitivity, contrapositive
- Quantifiers: universal instantiation, existential introduction

## Prerequisites

To build and run this project, you need:
- [elan](https://github.com/leanprover/elan) - Lean version manager
- Lean 4 (v4.3.0 or compatible, automatically managed by elan)

## Installation

1. Install elan (Lean version manager):
   ```bash
   curl https://raw.githubusercontent.com/leanprover/elan/master/elan-init.sh -sSf | sh
   ```

2. Clone this repository:
   ```bash
   git clone https://github.com/TiagoVerissimo/AI-LeanExperiments.git
   cd AI-LeanExperiments
   ```

3. Build the project:
   ```bash
   lake build
   ```

## Usage

### Building the Project

```bash
lake build
```

### Running the Main Program

```bash
lake exe ai-lean-experiments
```

### Checking Individual Files

To verify a specific module:
```bash
lean AILeanExperiments/BasicArithmetic.lean
```

### Working with the Project in VS Code

1. Install the [Lean 4 VS Code extension](https://marketplace.visualstudio.com/items?itemName=leanprover.lean4)
2. Open the project folder in VS Code
3. The extension will automatically check your Lean files and provide real-time feedback

## Contributing

This project is designed for educational purposes and experimentation with AI-driven mathematical proofs. Contributions are welcome! Here are some ideas:

- Add more mathematical exercises (number theory, set theory, analysis)
- Implement more complex proof techniques
- Add exercises with varying difficulty levels
- Improve documentation and examples

## License

This project is open source and available for educational and research purposes.

## Resources

- [Lean 4 Documentation](https://leanprover.github.io/lean4/doc/)
- [Theorem Proving in Lean 4](https://leanprover.github.io/theorem_proving_in_lean4/)
- [Lean Community](https://leanprover-community.github.io/)
