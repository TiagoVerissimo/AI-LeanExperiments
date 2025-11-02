# Quick Start Guide

This guide will help you get started with AI-LeanExperiments quickly.

## Prerequisites

You need to have [elan](https://github.com/leanprover/elan) installed on your system. Elan is the Lean version manager and will automatically install the correct version of Lean 4 for this project.

### Installing Elan

**Linux/macOS:**
```bash
curl https://raw.githubusercontent.com/leanprover/elan/master/elan-init.sh -sSf | sh
```

**Windows:**
Download and run the installer from the [elan releases page](https://github.com/leanprover/elan/releases).

After installation, restart your terminal or run:
```bash
source ~/.elan/env
```

## Getting the Project

```bash
# Clone the repository
git clone https://github.com/TiagoVerissimo/AI-LeanExperiments.git
cd AI-LeanExperiments

# Build the project (this will download dependencies)
lake build
```

## Running the Project

```bash
# Run the main executable
lake exe ai-lean-experiments
```

You should see output listing all the mathematical exercise modules available.

## Exploring the Exercises

### In VS Code (Recommended)

1. Install [VS Code](https://code.visualstudio.com/)
2. Install the [Lean 4 extension](https://marketplace.visualstudio.com/items?itemName=leanprover.lean4)
3. Open the project folder in VS Code
4. Open any `.lean` file in the `AILeanExperiments/` directory
5. The extension will show you:
   - Real-time error checking
   - Proof state at any point
   - Hover documentation for theorems

### From the Command Line

```bash
# Check a specific file
lean AILeanExperiments/BasicArithmetic.lean

# Check all files
lake build
```

## What's Included

The project contains several modules with mathematical exercises:

| Module | Description | Difficulty |
|--------|-------------|------------|
| **BasicArithmetic** | Properties of addition and multiplication | Beginner |
| **BasicAlgebra** | Equality and natural number proofs | Beginner |
| **LogicExercises** | Propositional logic and implications | Beginner |
| **SetTheoryExercises** | Set operations and De Morgan's laws | Intermediate |
| **InductionExercises** | Mathematical induction proofs | Intermediate |
| **Examples** | Combining multiple theorems | All Levels |

## Next Steps

### Learn Lean

- Read [Theorem Proving in Lean 4](https://leanprover.github.io/theorem_proving_in_lean4/)
- Check out the [Lean 4 documentation](https://leanprover.github.io/lean4/doc/)
- Join the [Lean Community](https://leanprover-community.github.io/)

### Practice

1. Open `AILeanExperiments/BasicArithmetic.lean`
2. Try to understand each theorem
3. Look at how the proofs work
4. Try modifying proofs or adding your own theorems

### Contribute

See [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines on adding new exercises.

## Common Issues

### "lake: command not found"

Make sure elan is installed and in your PATH. Restart your terminal after installation.

### "elaboration function for '...' has not been implemented"

This usually means there's a syntax error. Check the error message carefully and ensure you're using Lean 4 syntax.

### Build is slow

The first build downloads dependencies and can take a while. Subsequent builds should be much faster.

## Getting Help

- Check existing [issues](https://github.com/TiagoVerissimo/AI-LeanExperiments/issues)
- Open a new issue if you're stuck
- Ask questions in the Lean community

Happy proving! 🎓
