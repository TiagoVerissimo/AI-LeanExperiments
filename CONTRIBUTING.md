# Contributing to AI-LeanExperiments

Thank you for your interest in contributing to AI-LeanExperiments! This project aims to provide small mathematical exercises in Lean 4 to help AI systems learn formal mathematics.

## Getting Started

1. **Install Lean 4**
   - Install [elan](https://github.com/leanprover/elan), the Lean version manager
   - The project will automatically use the version specified in `lean-toolchain`

2. **Clone and Build**
   ```bash
   git clone https://github.com/TiagoVerissimo/AI-LeanExperiments.git
   cd AI-LeanExperiments
   lake build
   ```

3. **Set Up Your Editor**
   - We recommend VS Code with the [Lean 4 extension](https://marketplace.visualstudio.com/items?itemName=leanprover.lean4)
   - The extension provides syntax highlighting, error checking, and proof assistance

## How to Contribute

### Adding New Exercises

1. **Choose a Topic**
   - Look for gaps in existing coverage
   - Consider fundamental concepts that AI systems should understand
   - Keep exercises focused and self-contained

2. **Create a New Module**
   - Add a new `.lean` file in the `AILeanExperiments/` directory
   - Follow the naming convention: `TopicNameExercises.lean`
   - Use the existing files as templates

3. **Structure Your Module**
   ```lean
   /-
   # Topic Name Exercises
   
   Brief description of what this module covers.
   -/
   
   namespace TopicNameExercises
   
   /-! ## Section Name -/
   
   /-- Theorem documentation -/
   theorem theorem_name (params : Type) : statement := by
     proof
   
   end TopicNameExercises
   ```

4. **Documentation**
   - Add doc comments (`/-- ... -/`) for all theorems
   - Use section headers (`/-! ## ... -/`) to organize content
   - Include comments explaining proof techniques when helpful

5. **Update Imports**
   - Add your module to `AILeanExperiments.lean`
   - Update `README.md` with a description of your exercises

### Guidelines

- **Keep it Simple**: Exercises should be accessible to learners
- **Use Standard Library**: Prefer built-in Lean functions and theorems
- **Document Well**: Every theorem should have clear documentation
- **Test Your Code**: Ensure all proofs compile without errors
- **Follow Style**: Match the existing code style and conventions

### Topics We're Looking For

- Number theory basics
- More induction examples
- Graph theory fundamentals
- Elementary combinatorics
- Basic analysis concepts
- Group theory basics
- More set theory
- Divisibility and modular arithmetic

## Pull Request Process

1. Fork the repository
2. Create a feature branch: `git checkout -b feature/your-topic-name`
3. Make your changes
4. Test compilation: `lake build`
5. Update documentation as needed
6. Commit your changes with clear messages
7. Push to your fork
8. Open a pull request with a description of your additions

## Code Review

All submissions require review. We'll look for:
- Correctness of proofs
- Clear documentation
- Appropriate difficulty level
- Consistency with existing code
- Value for AI learning

## Questions?

If you have questions or ideas, feel free to:
- Open an issue for discussion
- Ask in your pull request
- Check existing issues for similar topics

## License

By contributing, you agree that your contributions will be licensed under the same terms as the project.

Thank you for helping make formal mathematics more accessible!
