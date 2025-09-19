---
date: '2025-04-13T20:10:24+02:00'
draft: false
title: 'Povezivanje na mrežu'
weight: 3
---
Pre nego što počneš sa konfiguracijom, važno je da uneseš sve parametre iz tri taba: LoRa, MQTT i Channel.
Klikni na svaki tab i unesi preporučene vrednosti u svom uređaju.
Ovo je neophodno da bi uređaj ispravno komunicirao sa mrežom


{{< tabs items="📶 LoRa,🌐 MQTT,📡 Channel" >}}

  {{< tab >}}
  

{{< callout type="important" >}} 
Isključi opciju **Ignore MQTT**, Uključi opciju **OK to MQTT**
{{< /callout >}}

| Opcija                   | Preporučena vrednost | Objašnjenje                                                                 |
|--------------------------|----------------------|------------------------------------------------------------------------------|
| Use modem preset         | ✅ (uključeno)       | Automatski primenjuje podešeni skup parametara za LoRa komunikaciju         |
| Modem preset             | MEDIUM_FAST          | Balans brzine i dometa.                                                    |
| Frequency offset (MHz)   | 0.0                  | Korekcija frekvencije (Ne diraj)  |
| Region (frequency plan)  | EU_868               | Obavezno za Evropu – koristi dozvoljene frekvencije                         |
| Hop limit                | 3                    | Koliko puta poruka može da se "prenese" između nodova                      |
| TX enabled               | ✅ (uključeno)       | Uređaj može da emituje (ne samo da sluša)                                   |
| TX power (dBm)           | 30                   | Snaga signala. 30 dBm je maksimum.                                           |
| Frequency slot           | 1                    | Ne diraj                                                                     |
| Override Duty Cycle      | ❌ (isključeno)      |  Prekoračuje pravila EU o dozvoljenom emitovanju                 |
| Ignore incoming          | ❌ (isključeno)      | Ako uključiš, uređaj ignoriše sve dolazne poruke (ne preporučuje se)        |

  {{< /tab >}}

  {{< tab >}}


{{< callout type="important" >}} 
Nakon podešavanja MQTT-a, obavezno **restartuj** uređaj. Postoji bug u firmware-u koji sprečava povezivanje bez restarta. Ako je MQTT offline, uređaj nece sacuvati MQTT podesavanja! 
{{< /callout >}}


| Opcija                  | Preporučena vrednost         | Objašnjenje                                                                 |
|-------------------------|------------------------------|------------------------------------------------------------------------------------------|
| MQTT enabled            | ✅ (uključeno)               | Uključuje MQTT integraciju za povezivanje sa internet mrežom                |
| Address                 | mesh.nemanja.top:1884        | IP ili domen MQTT servera + port                                            |
| Username                | meshserbia                   | Korisničko ime za autentifikaciju na MQTT server                            |
| Password                | meshserbia                   | Lozinka za autentifikaciju                                                  |
| Encryption enabled      | ✅ (uključeno)               | Šifruje podatke između uređaja i MQTT servera                               |
| JSON output enabled     | ❌ (isključeno)              | Ne diraj                                                                    |
| TLS enabled             | ❌ (isključeno)              | Ne diraj, koristi TLS port                                                |
| Root topic              | msh/EU_868                   | Osnovni MQTT topic koji uređaj koristi za razmenu podataka                 |
| Proxy to client enabled | ❓- Zavisi                   | Prosleđuje internet sa telefona ka uređaju, ako se povezujete preko bluetootha uključite ovo      |
| Map reporting           | ❓                           | Šalje GPS lokacije na mapu – može trošiti bateriju i narušiti privatnost    |
| Map reporting interval  | 0                            | Vreme između slanja lokacije u sekundama. 0 = isključeno                    |

> [!TIP]
> Ako koristiš bluetooth i MQTT, uključi **Proxy to client**, inače nećeš imati pristup MQTT mreži.

  {{< /tab >}}

  {{< tab >}}


- Omogući **downlink** i **uplink** na `MediumFast` kanalu  

| Parametar         | Vrednost     |
|-------------------|--------------|
| Channel Name      | MediumFast   |
| PSK               | AQ==         |
| Uplink Enabled    | ✅ Uključeno |
| Downlink Enabled  | ✅ Uključeno |

> [!WARNING]
> Isključi opciju **Ignore MQTT**, Uključi opciju **OK to MQTT** ako već nisi.

  {{< /tab >}}

{{< /tabs >}}

## Prvo korišćenje

Nakon sto ste podesili sve opcije, vreme je da se pridružite mreži, napišite jednu od dole navedenih komandi da testirate MQTT servis. Ako ne vidite poruke, možda je potrebno da proće 10 minuta pre nego što se povežete.

{{< callout emoji="🌐" >}}
MQTT može biti nedostupan ako je trenutno deaktiviran radi testiranja; u tom slučaju najbolje je raspitati se u Telegram grupi.
{{< /callout >}}

#### 🤖 Bot komande

- `ping` – Komanda za testiranja da li uredjaj povezan na MQTT mrežu.
- `nodeinfo` – Informacije o svim nodovima koji su bili online u poslednjih sat vremena, komada se moze upotrebiti samo jednom na deset minuta
- `weather` – Komanda za vremensku prognozu, npr: `weather novi sad`

#### 📊 Grafana

Za pristup koristite korisničko ime `meshserbia` i lozinku `meshserbia`.

{{< cards cols="1" >}}
{{< card link="https://stats.meshserbia.com/d/advjb2pz7wn40f/meshtastic?orgId=1" title="Otvori dashboard 📈" icon="arrow-circle-up" tag="Grafana" tagType="info" >}}
{{< /cards >}}

