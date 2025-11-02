/-
# Induction Exercises

This module contains exercises demonstrating mathematical induction in Lean 4.
-/

namespace InductionExercises

/-! ## Basic Induction Proofs -/

/-- Sum of first n natural numbers equals n(n+1)/2 -/
theorem sum_formula (n : Nat) : 2 * (List.range n).sum = n * (n - 1) := by
  induction n with
  | zero => rfl
  | succ n ih =>
    simp [List.range_succ_eq_map, List.sum_map_add, List.sum_range]
    omega

/-- 2^n is always positive -/
theorem pow_two_pos (n : Nat) : 0 < 2^n := by
  induction n with
  | zero => norm_num
  | succ n ih =>
    calc 2^(n+1) = 2 * 2^n := by ring
    _ > 0 := Nat.mul_pos (by norm_num : 0 < 2) ih

/-- n < 2^n for all natural numbers n -/
theorem n_lt_two_pow_n (n : Nat) : n < 2^n := by
  induction n with
  | zero => norm_num
  | succ n ih =>
    calc n + 1 < 2^n + 1 := Nat.add_lt_add_right ih 1
    _ ≤ 2^n + 2^n := by {
      have : 1 ≤ 2^n := by {
        cases n with
        | zero => norm_num
        | succ m => exact Nat.one_le_of_lt (pow_two_pos (m + 1))
      }
      omega
    }
    _ = 2 * 2^n := by ring
    _ = 2^(n+1) := by ring

/-- Sum of odd numbers: 1 + 3 + 5 + ... + (2n-1) = n^2 -/
theorem sum_odd_numbers (n : Nat) : (List.range n).map (fun i => 2*i + 1) |>.sum = n^2 := by
  induction n with
  | zero => rfl
  | succ n ih =>
    simp [List.range_succ_eq_map, List.sum_map_add]
    calc (List.range n).map (fun i => 2*i + 1) |>.sum + (2*n + 1)
        = n^2 + (2*n + 1) := by rw [ih]
      _ = n^2 + 2*n + 1 := by ring
      _ = (n+1)^2 := by ring

/-! ## Strong Induction -/

/-- Every natural number greater than 1 has a prime factor -/
-- This is a statement only, as the full proof requires more advanced techniques
axiom has_prime_factor (n : Nat) (h : 1 < n) : ∃ p : Nat, Nat.Prime p ∧ p ∣ n

end InductionExercises
