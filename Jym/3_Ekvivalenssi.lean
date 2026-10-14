import Mathlib.Algebra.Field.Rat

/-!
# Harjoitus 3, tehtävä 4 (variaatio)

Määritellään nollasta eroavien rationaalilukujen joukossa ℚ \ {0} relaatio
  x ∼ y  ⇔  x / y = y / x.
Osoita, että ∼ on ekvivalenssirelaatio.
-/

/-- Joukko ℚ \ {0}: rationaaliluvut x yhdessä todistuksen x ≠ 0 kanssa. -/
abbrev Q0 := {x : ℚ // x ≠ 0}

/-- Relaatio x ∼ y ⇔ x/y = y/x. -/
def r (x y : Q0) : Prop :=
  (x : ℚ) / y = (y : ℚ) / x

/-- Avainhavainto: x ∼ y  ⇔  x² = y². -/
lemma r_joss (x y : Q0) : r x y ↔ (x : ℚ) ^ 2 = y ^ 2
:= by
  unfold r
  grind

/-- Tehtävä 4: ∼ on ekvivalenssirelaatio. -/
example : Equivalence r where
  -- Refleksiivisyys: x/x = x/x
  refl := by
    intro x
    unfold r
    simp
  -- Symmetrisyys: jos x/y = y/x, niin y/x = x/y
  symm := by
    intro x y h
    unfold r at *
    exact h.symm
  -- Transitiivisuus: jos x² = y² ja y² = z², niin x² = z²
  trans := by
    intro x y z hxy hyz
    rw [r_joss] at *
    grind
