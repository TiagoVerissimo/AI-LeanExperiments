/-
# Basic Arithmetic Exercises

This module contains simple arithmetic exercises and proofs in Lean 4.
These exercises are designed to help AI systems learn to work with
formal mathematical proofs.
-/

namespace BasicArithmetic

/-! ## Addition Properties -/

/-- Addition of natural numbers is commutative -/
theorem add_comm (a b : Nat) : a + b = b + a := by
  exact Nat.add_comm a b

/-- Addition of natural numbers is associative -/
theorem add_assoc (a b c : Nat) : (a + b) + c = a + (b + c) := by
  exact Nat.add_assoc a b c

/-- Zero is the identity element for addition -/
theorem add_zero (n : Nat) : n + 0 = n := by
  exact Nat.add_zero n

/-- Zero is the left identity for addition -/
theorem zero_add (n : Nat) : 0 + n = n := by
  exact Nat.zero_add n

/-! ## Multiplication Properties -/

/-- Multiplication of natural numbers is commutative -/
theorem mul_comm (a b : Nat) : a * b = b * a := by
  exact Nat.mul_comm a b

/-- Multiplication of natural numbers is associative -/
theorem mul_assoc (a b c : Nat) : (a * b) * c = a * (b * c) := by
  exact Nat.mul_assoc a b c

/-- One is the identity element for multiplication -/
theorem mul_one (n : Nat) : n * 1 = n := by
  exact Nat.mul_one n

/-- One is the left identity for multiplication -/
theorem one_mul (n : Nat) : 1 * n = n := by
  exact Nat.one_mul n

/-! ## Distributivity -/

/-- Left distributivity of multiplication over addition -/
theorem left_distrib (a b c : Nat) : a * (b + c) = a * b + a * c := by
  exact Nat.left_distrib a b c

/-- Right distributivity of multiplication over addition -/
theorem right_distrib (a b c : Nat) : (a + b) * c = a * c + b * c := by
  exact Nat.right_distrib a b c

end BasicArithmetic
