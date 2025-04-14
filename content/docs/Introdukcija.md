---
date: '2025-04-13T20:06:28+02:00'
draft: false
title: 'Introdukcija'
cascade:
  type: docs
weight: 1
---

## 1. Šta je Meshtastic?

**Meshtastic** je open-source platforma koja omogućava korisnicima da komuniciraju preko uređaja sa malom potrošnjom energije, koristeći **LoRa** (Long Range) tehnologiju za bežičnu komunikaciju na velikim udaljenostima (Kilometrima na otvorenom), bez potrebe za mobilnim ili Wi-Fi mrežama. Ovaj sistem omogućava lakše povezivanje u udaljenim područjima, van dometa tradicionalnih komunikacionih sistema.

### Tehnologija
Meshtastic koristi **LoRa** modulaciju, koja omogućava bežičnu komunikaciju na udaljenostima od nekoliko kilometara, zavisno od terena. Uređaji koji koriste ovu tehnologiju mogu međusobno razmenjivati poruke, deliti lokaciju putem GPS-a, i biti povezani u mrežu koja ne zavisi od centralizovanih infrastruktura.

### Upotreba
Meshtastic je idealan za:
- Komunikaciju u **vanrednim situacijama** gde tradicionalne mreže nisu dostupne.
- **Planinarenje i kampovanje**, gde mobilna signalna pokrivenost nije garantovana.
- **Udaljene oblasti** sa malim pristupom internet mrežama.

### Sta mi je potrebno da pocnem?

Da biste započeli korišćenje Meshtastic mreže, prvo je potrebno da nabavite uređaj koji je kompatibilan sa Meshtastic-om. Na sledećoj stranici nalaze se naše preporuke za uređaje koje možete koristiti. Takođe, preporučujemo da pažljivo pročitate ova uputstva do kraja.

Neki uređaji su veoma jednostavni za upotrebu i dolaze u formi "sve-u-jednom" paketa — poput SEED Trackera — koji je potrebno samo uključiti i spreman je za rad. Drugi uređaji zahtevaju kompleksniju konfiguraciju i više tehničkog znanja.

Biće vam potrebna i odgovarajuća antena. Antene koje dolaze uz uređaje često nisu dovoljne za postizanje velikog dometa, pa se preporučuje korišćenje kvalitetnijih, namenski pravljenih antena koje značajno poboljšavaju performanse.

Izgled i konstrukcija vašeg nod-a zavisiće od njegove namene:

- **Stacionarni nod kod kuće**: Ako uređaj planirate da koristite kod kuće, preporučuje se ESP32 modul povezan na internet (kao klijent) sa boljom antenom za povećan domet.
- **Solarni repetitor**: Za ovu svrhu je ključna niska potrošnja energije i jaka antena. Preporučuje se korišćenje nRF52 čipa sa velikom antenom.
- **Mobilni nodovi**: Ako pravite prenosive uređaje koje ćete nositi sa sobom ili davati prijateljima koji nisu tehnički potkovani, birajte diskretne, elegantne i jednostavne za korišćenje nodove.

Kao što se vidi iz navedenih primera, oblik i funkcionalnost uređaja zavise od konkretnog scenarija upotrebe. Ne postoji univerzalno rešenje koje je idealno za sve situacije, zato je važno da pažljivo izaberete uređaj koji najbolje odgovara vašim potrebama.

