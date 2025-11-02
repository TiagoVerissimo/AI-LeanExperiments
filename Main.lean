/-
# Main Entry Point

This is the main executable entry point for the AI Lean Experiments project.
-/

import AILeanExperiments

def main : IO Unit := do
  IO.println "AI Lean Experiments - Mathematical Exercises"
  IO.println "============================================="
  IO.println ""
  IO.println "This project contains various mathematical exercises in Lean 4:"
  IO.println "- BasicArithmetic: Addition, multiplication, and their properties"
  IO.println "- BasicAlgebra: Equality properties and simple algebraic proofs"
  IO.println "- LogicExercises: Propositional logic and proof techniques"
  IO.println ""
  IO.println "All theorems have been formally verified in Lean 4."
