---
date: '2025-04-13T20:10:24+02:00'
draft: false
title: 'Kako se povezati na Srpsku meshtastic mrežu'
weight: 3
---



### Ažuriranje uređaja

Nakon što ste nabavili uređaj, važno je da ga ažurirate na najnoviju stabilnu verziju firmware-a. Način ažuriranja zavisi od vrste čipa. Pratite instrukcije na ekranu.




> [!TIP]
> Ako prvi put flešuješ uređaj, obavezno označi opciju za brisanje podešavanja – **"wipe settings"**. Opcija **"Bundle WebUI"** treba da bude isključena.

{{< callout emoji="🌐" >}}
Samo Microsoft Edge i Google Chrome su podržani web pregledači za ažuriranje uređaja.
{{< /callout >}}

{{< cards cols="1" >}}
{{< card link="https://flasher.meshtastic.org/" title="Ažuriraj Meshtastic" icon="arrow-circle-up" tag="Flasher" tagType="info" >}}
{{< /cards >}}

---

### ⚙️ Podešavanja

{{< tabs items="📶 LoRa,🌐 MQTT,📡 Channel" >}}

  {{< tab >}}
  
> [!WARNING]
> Isključi opciju **Ignore MQTT**, Uključi opciju **OK to MQTT**    

| Opcija                   | Preporučena vrednost | Uključeno? | Objašnjenje                                                                 |
|--------------------------|----------------------|------------|------------------------------------------------------------------------------|
| Use modem preset         | ✅ (uključeno)        | ✔️         | Automatski primenjuje podešeni skup parametara za LoRa komunikaciju         |
| Modem preset             | MEDIUM_FAST          | ✔️          | Balans brzine i dometa.                                                    |
| Frequency offset (MHz)   | 0.0                  | –          | Korekcija frekvencije (koristi se samo ako si primetio odstupanje signala)  |
| Region (frequency plan)  | EU_868               | ✔️          | Obavezno za Evropu – koristi dozvoljene frekvencije                         |
| Hop limit                | 3                    | –          | Koliko puta poruka može da se "prenese" između nodova                      |
| TX enabled               | ✅ (uključeno)        | ✔️         | Uređaj može da emituje (ne samo da sluša)                                   |
| TX power (dBm)           | 30                   | –          | Snaga signala. 30 dBm je maksimum.                                           |
| Frequency slot           | 1                    | –          | Ne diraj                                                                     |
| Override Duty Cycle      | ❌ (isključeno)       | -         |  Prekoračuje pravila EU o dozvoljenom emitovanju                 |
| Ignore incoming          | ❌ (isključeno)       | ❌         | Ako uključiš, uređaj ignoriše sve dolazne poruke (ne preporučuje se)        |

  {{< /tab >}}

  {{< tab >}}



> [!WARNING]
> 📌 *Nakon podešavanja MQTT-a, obavezno **restartuj** uređaj. Postoji bug u firmware-u koji sprečava povezivanje bez restarta.*


| Opcija                  | Preporučena vrednost         | Uključeno? | Objašnjenje                                                                 |
|-------------------------|------------------------------|------------|------------------------------------------------------------------------------|
| MQTT enabled            | ✅ (uključeno)                | ✔️         | Uključuje MQTT integraciju za povezivanje sa internet mrežom                |
| Address                 | mesh.nemanja.top:1884        | –          | IP ili domen MQTT servera + port                                            |
| Username                | meshserbia                   | –          | Korisničko ime za autentifikaciju na MQTT server                            |
| Password                | meshserbia                   | –          | Lozinka za autentifikaciju                                                  |
| Encryption enabled      | ✅ (uključeno)                | ✔️         | Šifruje podatke između uređaja i MQTT servera                               |
| JSON output enabled     | ❌ (isključeno)               | ❌         | Ne diraj                                                                    |
| TLS enabled             | ❌ (isključeno)               | ❌         | Ne diraj, koristi TLS port                                                |
| Root topic              | msh/EU_868                    | –          | Osnovni MQTT topic koji uređaj koristi za razmenu podataka                 |
| Proxy to client enabled | ❓- Zavisi                    | ❓         | Prosleđuje internet sa telefona ka uređaju, ako se povezujete preko bluetootha uključite ovo      |
| Map reporting           | ❓                            | -         | Šalje GPS lokacije na mapu – može trošiti bateriju i narušiti privatnost    |
| Map reporting interval  | 0                             | –          | Vreme između slanja lokacije u sekundama. 0 = isključeno                    |

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

#### 🤖 Bot komande

- `nodeinfo` – Informacije o svim nodovima koji su bili online u poslednjih sat vremena, preporučeno koristiti prilikom prvog povezivanja.
- `weather` – Komanda za vremensku prognozu, npr: `weather novi sad`

#### 📊 Grafana

Prati stanje mreže u realnom vremenu:

| Korisničko ime | Lozinka     |
|----------------|-------------|
| `meshserbia`   | `meshserbia` |

{{< cards cols="1" >}}
{{< card link="https://stats.nemanja.top/d/advjb2pz7wn40f/meshtastic?orgId=1" title="Otvori dashboard 📈" icon="arrow-circle-up" tag="Grafana" tagType="info" >}}
{{< /cards >}}

