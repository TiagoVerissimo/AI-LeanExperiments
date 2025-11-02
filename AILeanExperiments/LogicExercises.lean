/-
# Logic Exercises

This module contains basic logical exercises and proofs in Lean 4.
These exercises demonstrate propositional logic and basic proof techniques.
-/

namespace LogicExercises

/-! ## Propositional Logic -/

/-- Modus ponens: If P implies Q and P is true, then Q is true -/
theorem modus_ponens {P Q : Prop} (hpq : P → Q) (hp : P) : Q := by
  exact hpq hp

/-- Double negation elimination for decidable propositions -/
theorem double_neg {P : Prop} [Decidable P] (hnnp : ¬¬P) : P := by
  by_contra h
  exact hnnp h

/-- Conjunction elimination (left) -/
theorem and_elim_left {P Q : Prop} (h : P ∧ Q) : P := by
  exact h.left

/-- Conjunction elimination (right) -/
theorem and_elim_right {P Q : Prop} (h : P ∧ Q) : Q := by
  exact h.right

/-- Conjunction introduction -/
theorem and_intro {P Q : Prop} (hp : P) (hq : Q) : P ∧ Q := by
  exact ⟨hp, hq⟩

/-- Disjunction introduction (left) -/
theorem or_intro_left {P Q : Prop} (hp : P) : P ∨ Q := by
  exact Or.inl hp

/-- Disjunction introduction (right) -/
theorem or_intro_right {P Q : Prop} (hq : Q) : P ∨ Q := by
  exact Or.inr hq

/-! ## Basic Implications -/

/-- Identity: P implies P -/
theorem impl_refl {P : Prop} : P → P := by
  intro hp
  exact hp

/-- Transitivity of implication -/
theorem impl_trans {P Q R : Prop} (hpq : P → Q) (hqr : Q → R) : P → R := by
  intro hp
  exact hqr (hpq hp)

/-- Contrapositive -/
theorem contrapositive {P Q : Prop} (hpq : P → Q) : ¬Q → ¬P := by
  intro hnq hp
  exact hnq (hpq hp)

/-! ## Quantifiers -/

/-- Universal instantiation -/
theorem forall_elim {α : Type _} {P : α → Prop} (h : ∀ x, P x) (a : α) : P a := by
  exact h a

/-- Existential introduction -/
theorem exists_intro {α : Type _} {P : α → Prop} (a : α) (ha : P a) : ∃ x, P x := by
  exact ⟨a, ha⟩

end LogicExercises
