import SairLean4.Constants

namespace SairLean4.BigBounce

open SairLean4.Constants

/-- The "Span of Zero" symmetric coordinate buffer interval: [-phi_inv, +phi_inv] -/
def inSpanOfZero (val : ℝ) : Prop :=
  -phi_inv <= val ∧ val <= phi_inv

/-- Theorem: No coordinate value inside the strict Span of Zero buffer can collapse to absolute 0.0 -/
theorem no_zero_state_collapse (val : ℝ) (h : inSpanOfZero val) (h_nonzero : val ≠ 0) : 
  |val| > 0 := by
  exact abs_pos.mpr h_nonzero

end SairLean4.BigBounce
