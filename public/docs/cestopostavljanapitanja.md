# Često postavljanja pitanja

### 🔰 Osnovna pitanja

1. Koji je svrha MeshSerbia meshtastica? Da li je poenta da mogu da kontaktiram bilo koga iz Srbije pouzdano, ili je poenta da u vreme protesta imamo nezavisno sredstvo komunikacije?
> Komunikacija u bilo kom kriznom vremenu je prioritet ali i generalna komunikacija.

2. Koja je svrha rutera, ako ruter ponovi poruku, da li onda i node-ovi posle toga ponove, ili samo čuju da je router ponovio i oni ne ponavljaju?
> Razlikuje se samo algoritam koliko brzo ponovi poruku, nakon sto je dobije i logika za retry

3. Zašto smo mi na medium_fast, a sve zemlje u okruženju i Evropa je na long_fast? Šta propuštam?
> LongFast je previse spor za kada mreza poraste. Najvece mreze se ubrzavaju, kod nas je doneta odluka da se odmah koristi medium_fast, da ne bi neko morao da ide po planinama, da podesava sve nodove...

4. Koliko poruka se čuva na uređaju? 
> Trenutno je broj nepoznat, ali dosta.

5. Koje delove da kupim za solar nod ili repetitor, jel postoji vodič?
> Da, postoji videti sekciju [solar nod](/docs/solarnode)

6. Kako da povežem svoj nod na WIFI?
> Videti sekciju o [naprednim podešavanjima](/docs/naprednapodesavanja)

7. Koliko je privatna komunikacija?
> Ako šaljete DM ili napravite privatni kanal, niko neće moći da čita vaše poruke.

8. Zašto bih koristio Meshtastic umesto običnog interneta ili telefona?
>  Radi tamo gde nema signala ili interneta.

9. Da li je Meshtastic besplatan?
>  Da, softver je libre otvorenog koda i besplatan.

10. Da li mi treba internet za korišćenje Meshtastica?
>  Ne, radi potpuno offline. Internet je opcionalan.

### 📦 Hardver i komponente

1. Šta je LoRa i zašto je važan za Meshtastic?
>  LoRa je radio tehnologija sa velikim dometom i malom potrošnjom.

2. Koliko košta jedan Meshtastic uređaj?
>  Od 10 do 70 evra, zavisi od modela.

3. Da li mogu da koristim Meshtastic bez baterije, preko USB-a?
>  Da, može se napajati direktno preko USB-a.

4. Kako da povežem više uređaja u mrežu?
>  Automatski se povezuju kad su na istom kanalu.

5. Da li mi treba antena, i ako da – koja?
>  Da, za dobar domet. Obična LoRa antena za 868 MHz (u EU).

### ⚙️ Povezivanje i podešavanje

1. Kako se povezuje Meshtastic na kompjuter?
> Preko USB kabla i Web client-a

2. Šta je firmware i kako se flešuje?
> Softver koji uređaj pokreće. Flešuje se preko Meshtastic Flasher-a.

3. Da li treba da znam programiranje da bih koristio Meshtastic?
> Ne, sve se podešava kroz aplikaciju.

### 💬 Korišćenje

1. Da li mogu da šaljem slike, video, fajlove?
> Ne, samo tekstualne poruke.

2. Koliko poruke mogu da budu duge?
> Do 200 karaktera.

3. Šta se dešava ako sam van dometa drugih uređaja?
> Poruka neće biti poslata dok se ne približiš mreži ili povezes na MQTT.

4. Kako funkcioniše slanje poruka kroz mrežu drugih ljudi (mesh)?
> Uređaji prosleđuju poruke jedni drugima.

5. Da li Meshtastic ima podršku za GPS i praćenje lokacije?
> Da

### 🔋 Napajanje i prenosivost

1. Koliko traje baterija?
> Od 1 do 7+ dana, zavisi od podešavanja i baterije.

2. Mogu li da koristim solarni panel?
> Da, podržava solarno napajanje.

3. Da li mogu da ostavim uređaj napolju (otpornost na vremenske uslove)?
> Da, ali treba vodootporno kućište.

### 📶 Tehnička pitanja

1. Šta je node ID i zašto je bitan?
> Jedinstveni ID svakog uređaja. Koristi se za identifikaciju.

3. Šta je channel i kako da se priključim?
> Kanal je deo mreže. Podesi isti kanal ID kao i ostali.

4. Šta je "hop limit"?
> Maksimalan broj uređaja kroz koje poruka može da prođe.

5. Kako da testiram da li moj uređaj radi ispravno?
> Pošalji poruku i proveri LED svetlo ili log.

6. Nigde nisam našao da li svaki node ponovi poruku koju dobije ili samo prvi koji je dobije (a koji ima najmanji snr)? Može li potvrda da je svaki ponovi, pošto tako razumem?
> Svaki node, dok god preostali broj hopova ne padne na nulu. Pod uslovom da ima programiran taj kanal.

### 🌐 Naprednija pitanja

1. Mogu li da ga integrišem sa Home Assistant, MQTT ili NodeRED?
> Da, ima podršku za sve to.

2. Da li mogu da napravim sopstveni server za Meshtastic poruke?
> Možeš preko MQTT brokera i sopstvenog backend-a.

