import Mathlib

/-!
# Harjoitus 1, tehtävä 2

Osoita induktiolla, että jos n ∈ ℕ, niin n³ − n on jaollinen kuudella.

Huom: Laskemme kokonaisluvuissa ℤ. Luonnollisten lukujen vähennyslasku
"katkeaa" Leanissa nollaan (esim. 2 − 5 = 0), joten ℤ vastaa paremmin
paperilla käytettyä vähennyslaskua.

Jaollisuuden määritelmä:  a ∣ b  tarkoittaa, että on olemassa c, jolle b = a · c.
-/

/-- Aputulos: k(k+1) on parillinen. -/
lemma kaksi_jakaa (k : ℕ) : 2 ∣ k * (k + 1)
:= by
  sorry

/-- Tehtävä 2: 6 ∣ n³ − n kaikilla n ∈ ℕ. -/
example (n : ℕ) : 6 ∣ (n : ℤ) ^ 3 - n
:= by
  induction n with
  | zero =>
    -- Perustapaus: 0³ − 0 = 0 = 6 · 0
    simp
  | succ k ih =>
    -- Induktio-oletus: k³ − k = 6s jollakin s
    obtain ⟨s, hs⟩ := ih
    -- Aputuloksesta: k(k+1) = 2t jollakin t
    obtain ⟨t, ht⟩ := kaksi_jakaa k
    -- Valitaan kerroin s + t
    use s + t
    grind
