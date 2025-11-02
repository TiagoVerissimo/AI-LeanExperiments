/-
# Examples of Using the Mathematical Exercises

This file demonstrates how to use and compose the various theorems
from the AI Lean Experiments library.
-/

import AILeanExperiments.BasicArithmetic
import AILeanExperiments.BasicAlgebra
import AILeanExperiments.LogicExercises
import AILeanExperiments.SetTheoryExercises

namespace Examples

open BasicArithmetic
open BasicAlgebra
open LogicExercises
open SetTheoryExercises

/-! ## Composing Arithmetic Theorems -/

/-- Example: Using commutativity and associativity together -/
example (a b c : Nat) : a + (b + c) = c + (b + a) := by
  rw [add_comm b c]        -- b + c = c + b
  rw [add_assoc]           -- a + (c + b) = (a + c) + b
  rw [add_comm a c]        -- (c + a) + b
  rw [← add_assoc]         -- c + (a + b)
  rw [add_comm a b]        -- c + (b + a)

/-- Example: Multiplying both sides of an equation -/
example (a b : Nat) (h : a = b) : a * 2 = b * 2 := by
  rw [h]

/-! ## Logic Examples -/

/-- Example: Chain of implications -/
example (P Q R : Prop) (hpq : P → Q) (hqr : Q → R) (hp : P) : R := by
  have hq : Q := modus_ponens hpq hp
  exact modus_ponens hqr hq

/-- Example: Using conjunction -/
example (P Q R : Prop) (hpq : P ∧ Q) (hqr : Q → R) : P ∧ R := by
  have hp : P := and_elim_left hpq
  have hq : Q := and_elim_right hpq
  have hr : R := hqr hq
  exact and_intro hp hr

/-! ## Set Theory Examples -/

/-- Example: Subset transitivity chain -/
example {α : Type _} (s t u : Set α) (hst : s ⊆ t) (htu : t ⊆ u) : s ⊆ u := by
  exact subset_trans hst htu

/-- Example: Union and intersection with empty set -/
example {α : Type _} (s : Set α) : s ∪ ∅ = s := by
  ext x
  constructor
  · intro h
    cases h with
    | inl hs => exact hs
    | inr he => exact False.elim he
  · intro hs
    exact Or.inl hs

/-! ## Combining Multiple Concepts -/

/-- Example: Using reflexivity and symmetry -/
example {α : Type _} (a b : α) (h : a = b) : b = a := by
  have : a = a := eq_refl a
  exact eq_symm h

/-- Example: Proof by cases using or_intro -/
example (P Q : Prop) (hp : P) : P ∨ Q := by
  exact or_intro_left hp

end Examples
