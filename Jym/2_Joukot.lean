import Mathlib.Data.Finset.Powerset
import Mathlib.Data.Finset.Sort

/-!
# Harjoitus 2, tehtävät 2(a), 2(d) ja 3(a)
-/

/-! ## Tehtävä 2: konkreettiset joukot

Perusjoukko X = {a, b, c, d, e}. Määritellään se uutena tyyppinä,
jossa on täsmälleen viisi alkiota. `DecidableEq` tarkoittaa, että
kone osaa tarkistaa, ovatko kaksi alkiota samat.
-/

inductive X
  | a | b | c | d | e
  deriving DecidableEq, Repr

open X

/-- A = {a, b, c} -/
def A : Finset X := {a, b, c}

/-- B = {b, c, d} -/
def B : Finset X := {b, c, d}

/-! ### Tehtävä 2(a)

Konkreettisille äärellisille joukoille kone voi yksinkertaisesti
*laskea* vastauksen: `decide` tarkistaa väitteen laskemalla.
-/

-- Lean voi myös näyttää tuloksen suoraan:
#eval A ∪ B

example : A ∪ B = {a, b, c, d}
:= by
  decide

example : A ∩ B = {b, c}
:= by
  decide

/-! ### Tehtävä 2(d)

Potenssijoukko P(B) = {C : C ⊆ B}. Mathlibissä se on `B.powerset`.
-/

#eval B.powerset

example :
  B.powerset
  = {∅, {b}, {c}, {d}, {b, c}, {b, d}, {c, d}, {b, c, d}}
:= by
  decide

/-! ## Tehtävä 3(a): absorptiolaki

Nyt A ja B ovat *mielivaltaisia* joukkoja, joten laskeminen ei auta:
tarvitaan todistus. Kuitenkin joukko-opin väite palautuu logiikkaan
  (x ∈ A) ∨ (x ∈ A ∧ x ∈ B) ↔ (x ∈ A),
joka on propositiologiikan tautologia. `grind` hoitaa sen.
-/
example {α : Type} (A B : Set α) : A ∪ (A ∩ B) = A
:= by
  grind
