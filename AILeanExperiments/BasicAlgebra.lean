/-
# Basic Algebra Exercises

This module contains basic algebraic exercises and proofs in Lean 4.
-/

namespace BasicAlgebra

/-! ## Equality Properties -/

/-- Reflexivity: Every element equals itself -/
theorem eq_refl {α : Type _} (a : α) : a = a := by
  rfl

/-- Symmetry: If a = b, then b = a -/
theorem eq_symm {α : Type _} {a b : α} (h : a = b) : b = a := by
  exact h.symm

/-- Transitivity: If a = b and b = c, then a = c -/
theorem eq_trans {α : Type _} {a b c : α} (hab : a = b) (hbc : b = c) : a = c := by
  exact hab.trans hbc

/-! ## Simple Proofs with Natural Numbers -/

/-- If n + 1 = m + 1, then n = m -/
theorem succ_inj {n m : Nat} (h : n + 1 = m + 1) : n = m := by
  exact Nat.succ_inj h

/-- The sum of two natural numbers equals zero only if both are zero -/
theorem add_eq_zero {n m : Nat} (h : n + m = 0) : n = 0 ∧ m = 0 := by
  cases n with
  | zero => 
    simp at h
    exact ⟨rfl, h⟩
  | succ n' => 
    simp [Nat.add_succ] at h

/-- A natural number equals itself plus zero -/
theorem self_eq_add_zero (n : Nat) : n = n + 0 := by
  rw [Nat.add_zero]

end BasicAlgebra
