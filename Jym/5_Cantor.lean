module

import Mathlib

/-!
# Harjoitus 5, tehtävä 1

Osoita, että äärettömien bittijonojen joukko on ylinumeroituva.

Ääretön bittijono on funktio f : ℕ → Bool. Jonon n:s bitti on f(n).
Bool = {true, false} vastaa bittejä 1 ja 0.
-/

/-- Cantorin diagonaaliargumentti: jos bittijonot luetellaan
f(0), f(1), f(2), ..., niin jokin jono jää aina luettelon ulkopuolelle. -/
lemma diagonaali (f : ℕ → (ℕ → Bool)) : ¬ Function.Surjective f := by
  -- Oletetaan vastoin väitettä, että luettelossa on kaikki jonot.
  by_contra h
  -- Diagonaalijono: käännetään n:nnen jonon n:s bitti.
  let g : ℕ → Bool := fun n => !(f n n)
  -- Oletuksen mukaan g on luettelossa jollakin paikalla m.
  obtain ⟨m, hm⟩ := h g
  -- Verrataan m:ttä bittiä: f(m)(m) = g(m) = ¬ f(m)(m).
  have h2 : f m m = !(f m m) := congrFun hm m
  -- Bitti ei voi olla oma vastakohtansa
  grind

lemma numeroituva_joss_on_numerointi {α : Type} [Nonempty α]
  : Countable α ↔ ∃ f : ℕ → α, Function.Surjective f
:= by
  sorry

/-- Tehtävä 1: äärettömien bittijonojen joukko ei ole numeroituva. -/
example : ¬ Countable (ℕ → Bool) := by
  -- Oletetaan vastoin väitettä, että joukko on numeroituva.
  by_contra hc
  -- Silloin sen alkiot voidaan numeroida.
  rw [numeroituva_joss_on_numerointi] at hc
  obtain ⟨f, hf⟩ := hc
  -- Tämä on ristiriidassa diagonaaliargumentin kanssa.
  exact diagonaali f hf
