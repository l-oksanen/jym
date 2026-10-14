# Lean-esimerkkejä Helsingin yliopiston JYM-kurssille

Tämä repositorio sisältää kurssin harjoitustehtäviin liittyviä esimerkkejä
[Lean](https://lean-lang.org)-todistusavustajalla ja
[Mathlib](https://github.com/leanprover-community/mathlib4)-kirjastolla.
Osa todistuksista on jätetty kesken (`sorry`).

## Esimerkit

| Tiedosto | Aihe | Lean-selainversio |
|---|---|---|
| [`1_Induktio.lean`](Jym/1_Induktio.lean) | Harjoitus 1: induktio | [Avaa selaimessa](https://live.lean-lang.org/#url=https%3A%2F%2Fraw.githubusercontent.com%2Fl-oksanen%2Fjym%2Fmain%2FJym%2F1_Induktio.lean) |
| [`2_Joukot.lean`](Jym/2_Joukot.lean) | Harjoitus 2: joukot | [Avaa selaimessa](https://live.lean-lang.org/#url=https%3A%2F%2Fraw.githubusercontent.com%2Fl-oksanen%2Fjym%2Fmain%2FJym%2F2_Joukot.lean) |
| [`3_Ekvivalenssi.lean`](Jym/3_Ekvivalenssi.lean) | Harjoitus 3: ekvivalenssirelaatio | [Avaa selaimessa](https://live.lean-lang.org/#url=https%3A%2F%2Fraw.githubusercontent.com%2Fl-oksanen%2Fjym%2Fmain%2FJym%2F3_Ekvivalenssi.lean) |
| [`4_Kuvaukset.lean`](Jym/4_Kuvaukset.lean) | Harjoitus 4: kuvaukset | [Avaa selaimessa](https://live.lean-lang.org/#url=https%3A%2F%2Fraw.githubusercontent.com%2Fl-oksanen%2Fjym%2Fmain%2FJym%2F4_Kuvaukset.lean) |
| [`5_Cantor.lean`](Jym/5_Cantor.lean) | Harjoitus 5: Cantorin diagonaaliargumentti | [Avaa selaimessa](https://live.lean-lang.org/#url=https%3A%2F%2Fraw.githubusercontent.com%2Fl-oksanen%2Fjym%2Fmain%2FJym%2F5_Cantor.lean) |

## Esimerkkien ajaminen selaimessa

Helpoin tapa kokeilla esimerkkejä on [Lean 4 Web](https://live.lean-lang.org).
Se ei vaadi asennuksia.

1. Avaa haluamasi esimerkki yllä olevan taulukon *Avaa selaimessa* -linkistä.
   Tiedoston sisältö latautuu suoraan GitHubista editoriin.
2. Odota hetki, kunnes Lean on käsitellyt tiedoston. Oikeanpuoleinen
   *Lean Infoview* -paneeli näyttää todistuksen tilan sen kohdan kohdalla,
   jossa kursori on.
3. Muokkaa koodia vapaasti, esimerkiksi korvaa `sorry` omalla todistuksellasi.
   Muutokset tarkistetaan saman tien.

Huomaa, että muutoksia ei tallenneta palvelimelle. Selaimen osoiterivi
päivittyy muokatessa, joten voit tallentaa tai jakaa työsi kopioimalla
osoitteen. Pidemmät työt kannattaa tallentaa myös omalle koneelle.

## Leanin asentaminen omalle koneelle (VS Code)

Jos haluat käyttää Leania omalla koneellasi, asenna se
[Visual Studio Code](https://code.visualstudio.com) -editoriin:

- Leanin virallinen asennusohje: <https://lean-lang.org/install/>.
  Lyhyesti: asenna VS Code, asenna siihen *Lean 4* -laajennus ja seuraa
  laajennuksen asennusopasta.
- Mathlib-yhteisön ohjeet eri käyttöjärjestelmille:
  <https://leanprover-community.github.io/get_started.html>.

Asennuksen jälkeen saat tämän projektin käyttöösi näin:

1. Kloonaa repositorio:
   ```
   git clone https://github.com/l-oksanen/jym.git
   ```
   Vaihtoehtoisesti VS Codessa: ∀-valikko → *Open Project* → *Project: Download Project*,
   ja anna osoitteeksi `https://github.com/l-oksanen/jym`.
2. Lataa Mathlibin valmiiksi käännetyt tiedostot projektikansiossa
   (muuten Mathlibin kääntäminen kestää tunteja):
   ```
   lake exe cache get
   ```
3. Avaa projektikansio VS Codessa (*File* → *Open Folder*) ja avaa jokin
   `Jym`-kansion tiedostoista.
