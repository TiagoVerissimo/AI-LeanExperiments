/-
# Set Theory Exercises

This module contains basic set theory exercises and proofs in Lean 4.
-/

namespace SetTheoryExercises

/-! ## Set Operations -/

/-- The empty set is a subset of every set -/
theorem empty_subset {α : Type _} (s : Set α) : ∅ ⊆ s := by
  intro x
  intro h
  exact False.elim h

/-- Every set is a subset of itself -/
theorem subset_refl {α : Type _} (s : Set α) : s ⊆ s := by
  intro x
  intro h
  exact h

/-- Subset relation is transitive -/
theorem subset_trans {α : Type _} {s t u : Set α} (hst : s ⊆ t) (htu : t ⊆ u) : s ⊆ u := by
  intro x hx
  exact htu (hst hx)

/-- Union is commutative -/
theorem union_comm {α : Type _} (s t : Set α) : s ∪ t = t ∪ s := by
  ext x
  constructor
  · intro h
    cases h with
    | inl hs => exact Or.inr hs
    | inr ht => exact Or.inl ht
  · intro h
    cases h with
    | inl ht => exact Or.inr ht
    | inr hs => exact Or.inl hs

/-- Intersection is commutative -/
theorem inter_comm {α : Type _} (s t : Set α) : s ∩ t = t ∩ s := by
  ext x
  constructor
  · intro ⟨hs, ht⟩
    exact ⟨ht, hs⟩
  · intro ⟨ht, hs⟩
    exact ⟨hs, ht⟩

/-- De Morgan's law: complement of union -/
theorem compl_union {α : Type _} (s t : Set α) : (s ∪ t)ᶜ = sᶜ ∩ tᶜ := by
  ext x
  constructor
  · intro h
    constructor
    · intro hs
      exact h (Or.inl hs)
    · intro ht
      exact h (Or.inr ht)
  · intro ⟨hsc, htc⟩ hst
    cases hst with
    | inl hs => exact hsc hs
    | inr ht => exact htc ht

/-- De Morgan's law: complement of intersection -/
theorem compl_inter {α : Type _} (s t : Set α) : (s ∩ t)ᶜ = sᶜ ∪ tᶜ := by
  ext x
  constructor
  · intro h
    by_cases hs : x ∈ s
    · right
      intro ht
      exact h ⟨hs, ht⟩
    · left
      exact hs
  · intro h ⟨hs, ht⟩
    cases h with
    | inl hsc => exact hsc hs
    | inr htc => exact htc ht

end SetTheoryExercises
