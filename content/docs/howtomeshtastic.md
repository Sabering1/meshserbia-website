---
date: '2025-04-13T20:08:16+02:00'
draft: false
title: 'Korišćenje aplikacije'
weight: 4
---
Sada kada ste postavili svoj uređaj, možda se pitate kako da koristite Meshtastic aplikaciju. Ne brinite, jer ovaj vodič će vas provesti kroz sve tri opcije za korišćenje aplikacije: na Android-u, iPhone-u i Web klijentu. Samo izaberite sekciju ispod da biste započeli.


{{< tabs items="📱🤖 Android,🍎📱 Apple ,🌐 Web klient" >}}

  {{< tab >}}

Meshtastic Android aplikacija se koristi za komunikaciju i može prikazati lokaciju svih članova vaše grupe. Svaki član vaše grupe može videti ako dozvoli lokaciju i udaljenost drugih članova, kao i poruke poslate u vaš grupni chat.

Možete napraviti i privatni enkriptovani kanal gde samo vi i izabrani članovi mogu videti sadržaj poruka.

<img src="/images/android-tutorial/1.0nema-povezanog.webp" width="300" loading="lazy">


Otvorite aplikaciju i treba da vidite karticu "Podešavanja" kao na ekranu iznad. Obratite pažnju na oblak sa crtom kroz njega u gornjem desnom uglu, što označava da uređajaj nije povezan sa telefonom. Možete prelaziti kroz kartice, ali ništa mnogo neće biti vidljivo dok ne povežete vaš meshtastic uređaj.

## Povezivanje

Biće vam potreban uređaj sa instaliranim Meshtastic-om da biste nastavili dalje. Pogledajte odsek za [početak korišćenja](/docs/howtousemeshtastic/) za informacije o tome kako to da uradite.

<img src="/images/android-tutorial/1.1klik-na-dugme.webp" width="300" loading="lazy">

Da biste pronašli uređaje za povezivanje putem Bluetooth-a, kliknite na "+" dugme u donjem desnom uglu. Uređaji povezani putem Wi-Fi-a koji koriste istu mrežu kao vaš telefon trebalo bi da budu automatski prepoznati, ili ih možete ručno odabrati unosom njihove IP adrese. Ako povežete uređaj putem USB-a na vaš telefon, uređaj biće automatski prepoznat.

<img src="/images/android-tutorial/1.2.webp" width="300" loading="lazy">

1. Odaberite uređaj, `Meshtastic_769d` u ovom primeru. (Videćete sve uređaje u dometu, pa pazite da odaberete pravi.)
2. Pre nego što se povežete prvi put, potrebno je da "uparite" uređaje kako bi omogućili komunikaciju između njih. Neki uređaji su bez PIN-a, dok drugi zahtevaju unos PIN-a prikazanog na ekranu uređaja.

> [!tip]
>    Ako je uređaj bez povezanog ekrana, automatski će koristiti podrazumevani PIN '123456'. Ako je uređaj ima ekran, podesavanja će biti postavljena da koriste nasumičan PIN. Ako nakon toga uklonite ekran,uređaj ostaje na ovom PIN-u.

3. Ovo pokreće komunikaciju sa uređajem. Ikona oblaka na statusnoj traci trebalo bi da se promeni i pokaže checkmark.

<img src="/images/android-tutorial/1.3.webp" width="300" loading="lazy">

Ikona oblaka u gornjem desnom uglu pokazuje da li ste povezani sa uređajem. Trenutno ima tri stanja:

<img src="/images/android-tutorial/1.4spojeno-bez-teksta.webp" width="300" loading="lazy">

- Oblak sa checkmarkom: Uređaj je povezan sa aplikacijom.

- Oblak sa crtom kroz njega: Nema povezanog uređaja sa aplikacijom.

- Oblak sa strelicom nagore: Uređaj je povezan, ali je trenutno u režimu spavanja ili van dometa.


## Uobičajena podešavanja

### Promenite svoje korisničko ime

Izmenite polje "Your Name", na primer u "Mike Bird". Ovo je ime koje će drugi ljudi videti, zato ga učinite jedinstvenim. Inicijali, npr. "MB", takođe treba da budu jedinstveni i koristiće se za identifikaciju u porukama i na ekranima uređaja. Inicijali se mogu prilagoditi u podešavanjima radio uređaja, pod sekcijom korisnička podešavanja. Četiri karaktera prikazana posle vaših inicijala ne mogu se promeniti. Uređaji bez podešenog imena prikazivaće tih četiri karaktera kao inicijale uređaja.

<img src="/images/android-tutorial/1.5promeni-ime.webp" width="300" loading="lazy">

### Napravite novi kanal

> [!tip]
> Ako ste dobili QR kod ili link za Meshtastic grupu, preskočite direktno na odeljak [Pridruži se kanalu](#pridruži-se-kanalu).

Možete kreirati novi kanal i podeliti detalje sa svojom grupom. Grupa je privatna i samo oni koji imaju te informacije mogu se pridružiti i videti poruke. Ovo je potrebno uraditi samo jednom na početku, i zatim svaki put kada želite da promenite ili napravite novu mesh mrežu.

Kartica „Channel“ omogućava vam da napravite novu privatnu mesh mrežu. Ovaj ekran je prvobitno zaključan kako biste izbegli slučajne izmene. Pritisnite ikonu katanca kako biste omogućili izmenu. Prvo izaberite opcije kanala, kao što je prikazano ovde, i odaberite najprikladniju opciju:

<img src="/images/android-tutorial/1.6zameni-me-kako-se-pravi-kanal.webp" width="300" loading="lazy">

> [!tip]
> Kako bih ste mogli da komunicirate sa ostalima u Srpskoj Mrezi, **morate** koristiti Medium-Fast opciju.


Ovde smo izabrali `Long Range / Fast`, a zatim napravili ime kanala. Ovo identifikuje vašu grupu, u ovom slucaju "Owl Team".

<img src="/images/android-tutorial/1.7owl-team.webp" width="300" loading="lazy">

Videćete upozorenje jer promena kanala prekida komunikaciju sa vašom grupom, tj. ako promenite podešavanja bez deljenja novih detalja sa grupom.

<img src="/images/android-tutorial/1.8savechannel.webp" width="300" loading="lazy">

Aplikacija će generisati novi QR kod na ekranu. On sadrži detalje o kanalu i nasumični 256-bitni ključ za deljenje sa novom grupom. QR kod možete podeliti sa drugim Meshtastic korisnicima ili koristiti dugme Share i podeliti link putem poruke, SMS-a ili email-a. Link će izgledati ovako: `https://www.meshtastic.org/d/#CgUYAyIBAQ`

### Pridruži se kanalu

1. Ako drugi korisnik podeli QR kod, moći ćete da ga skenirate direktno kamerom pomoću dugmeta `Scan`.

<img src="/images/android-tutorial/1.9qrscan.webp" width="300" loading="lazy">

2. Ako je kanal podeljen iz fajla ili linka pomoću dugmeta `Share`, možete kliknuti na fajl ili link i treba da izaberete "Otvori pomoću Meshtastic".

> [!NOTE]
> Ako se QR kod ili URL otvori kao veb stranica umesto aplikacije ili opcija "Otvori pomoću Meshtastic" nije dostupna:

1. Idi na Podešavanja Androida > Aplikacije > Podrazumevane aplikacije > Meshtastic > Otvaranje linkova
2. Uveri se da u opciji "linkovi/web adrese" stoji: www.meshtastic.org
3. Ako vidiš opciju "Otvori podržane linkove", uveri se da je omogućena.

<img src="/images/android-tutorial/2.0novi-kanal.webp" width="300" loading="lazy">

Nastavite i trebalo bi da vidite poruku kao što je "Želite li da pređete na kanal 'Owl Team'?". Prihvatite ovo, i aplikacija će preći na ovaj novi kanal. Izgubićete trenutno podešeno podešavanje kanala!

> [!NOTE]
> Podešavanje istog imena i opcija direktno na uredjaju ne funkcioniše i necete moci da mecusobno komunicirate, jer postoje druga podešavanja na uređaju (kao što je Enkripcioni Kljuc) kodirana direktno u QR kodu ili linku.

### Podešavanje kanala

Možete promeniti sledeća podešavanja tapkanjem na ime postojećeg kanala:

1. MQTT Uplink
2. MQTT Downlink
3. Pozicija omogućena
4. Precizna lokacija (ako je pozicija omogućena)
5. Preciznost pozicije (ako je precizna lokacija onemogućena)

#### Preciznost pozicije

Nivoi preciznosti u aplikaciji predstavljaju udaljenost unutar koje se možete nalaziti u odnosu na neku tačku (ali ne vašu trenutnu lokaciju). Možete to zamisliti kao kružnicu oko te tačke, gde što je veći krug, manje je precizno određeno vaše mesto unutar njega. Ovo je koristno ako zelite da podelite gde se nalazi vas uređaj ali ne preciznu lokaciju, (npr, samo grad ili deo grada, ali ne preciznu lokaciju)

### Slanje poruka

<img src="/images/android-tutorial/2.1dopisivanje.webp" width="300" loading="lazy">

Prozor za poruke funkcioniše kao u većini aplikacija za dopisivanje. Imajte na umu da je vaš primarni kanal, tj. kontakt `LongFast`, uvek prikazan i funkcioniše kao grupni chat. Ostali kontakti su za direktne poruke ili privatne grupne chatove.

- Dugim pritiskom na kontakte ili poruke možete odabrati opcije, kao što je brisanje.
- Pritisnite nod sa sekcije NODES za slanje Direktnih Poruka (DM) .

Sa LoRa (ili bilo kojim radijem) postoji određena nesigurnost u vezi sa tim da li je poruka primljena, pa postoji potvrda ugrađena u protokol (Funkcionise slicno kao `seen` funkcija na whatsapp-u ili Viber-u ). Male ikonice su prikazane desno od poruka koje šaljete:

<img src="/images/android-tutorial/2.2ikonice.webp" width="300" loading="lazy">

- Oblak sa strelicom nagore: poruka čeka da bude poslata preko uređaja.

- Samo oblak: uređaj je primio poruku iz aplikacije i poslao je putem LoRa mreze.

- Oblak sa znakom potvrde: Bar jedan nod je primio poruku, slicno seen statusu. Potvrda može doći sa bilo kog uređaja.

- Osoba sa znakom potvrde: ciljni nod za vašu DM (direktnu poruku) je potvrdio prijem poruke.

- Precrtan oblak: Nijedan uređaj nije poslao potvrdu da je primio vasu poruku.

Podrazumevano ne postoji dugoročno čuvanje i prosleđivanje poruka, tako da poruke koje nisu primljene tokom prenosa – gube se.

### Mreža

<img src="/images/android-tutorial/2.5nod-lista.webp" width="300" loading="lazy">

Tab nodova prikazuje sve korisnike (uređaje) koji su se povezali na isti kanal. Za svaki nod prikazuje se vreme poslednje aktivnosti, lokaciju i udaljenost (kada su dostupne), kao i poslednje poznato stanje baterije. U gornjem primeru, Monkey je lokalni korisnik, Rabbit je poslednji put primećen pre 10 minuta i udaljen je 50m, a Panda je poslednji put primećena pre 11 minuta i udaljena je 5m.

- Tapnite na nod na listi da biste prikazali više detalja o njemu.
- Tapnite na obojeni deo noda da biste započeli Direktnu Poruku, zatražili ažuriranje pozicije, i slicno.
- Tapnite na koordinate lokacije čvora da biste ih otvorili u svojoj aplikaciji za mape, a duže zadržavanje kopira koordinate u vaš clipboard.  
- Ako imate omogućen [Admin Kanal](https://meshtastic.org/docs/configuration/remote-admin) na svojim uređajima, tapkanje na obojeni deo čvora takođe prikazuje opciju za daljinsko konfigurisanje nod-a.

### Prikaži mapu

<img src="/images/android-tutorial/2.3mapa.webp" width="300" loading="lazy">

Sekcija mape prikazuje lokalnu mapu sa ikonicom za svaki aktivni mesh nod koji ima podeljenu lokaciju sa drugima. Imena korisnika su prikazana iznad ikonica.

### Offline mape

<img src="/images/android-tutorial/2.4skinimapu.webp" width="300" loading="lazy">

- Neki tipovi mapa omogućavaju preuzimanje za korišćenje kada nema interneta. Ako su offline mape dostupne za izabrani tip mape, ikonica za preuzimanje će se pojaviti u donjem desnom uglu mape. Tapnite na ovu ikonicu i izaberite opciju **Preuzmi region**, zatim označite oblast koju želite da preuzmete.


  {{< /tab >}}

  {{< tab >}}

Aplikacija je dostupna na [Apple Store](https://apps.apple.com/in/app/meshtastic/id1586432531)

> [!NOTE]
> Aplikacija je dostupna samo za IOS >17 verzije.



  {{< /tab >}}

  {{< tab >}}

Meshtastic Web je klijent koji radi direktno u vašem internet pretrazivacu. Postoje tri načina za pristupanje web aplikaciji:

1. Hostovana verzija dostupna na client.meshtastic.org. (**Preporučeno**)
2. Direktno sa ESP32 nod-a putem meshtastic.local ili IP adrese uređaja. (**nije** preporučeno)
3. Hosting na sopstvenom serveru. (Za napredne korisnike)

<img src="/images/web-tutorial/1.0pregled.webp" width="600" loading="lazy">

> [!TIP]
> Ako više Meshtastic uređaja pruža web klijent na istoj lokalnoj mreži, ovi uređaji mogu biti dostupni dodavanjem sufiksa "-2" (ili viših brojeva ako ima dodatnih uređaja) na lokalni URL. Na primer, meshtastic-2.local ili meshtastic-3.local.

  {{< /tab >}}

{{< /tabs >}}

