import Mathlib

/-!
# Harjoitus 4, tehtävä 2(c) (variaatio)
-/

/-
Mathlibissä `Fin 3` on valmis kolmen alkion joukko {0, 1, 2}.
Tehtäväpaperin joukko Y = {1, 2, 3} saadaan siitä siirtämällä:
alkio k vastaa lukua k + 1.
-/
abbrev Y := Fin 3

/-- Kuvaus nuolikuviona: kaikki nuolet osoittavat alkioon 0. -/
def f : Y → Y
  | 0 => 0
  | 1 => 0
  | 2 => 0

/-- Tehtävä 2(c). -/
example : ¬ Function.Surjective f ∧ ¬ Function.Injective f
:= by
  decide
