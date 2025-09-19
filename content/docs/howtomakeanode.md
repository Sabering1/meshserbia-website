---
date: '2025-04-13T20:10:06+02:00'
draft: false
title: 'Šta treba znati pre kupovine.'
weight: 2
toc: true
---
{{% steps %}}

### 1. Tip uređaja


1. **Uređaji bazirani na nRF52 čipovima**  
Uređaji koji koriste nRF52 čipove koriste manje energije u poređenju sa ESP32 uređajima, što ih čini idealnim za solarne aplikacije i mobilne uređaje. nRF52 mogu izdržati na jednom punjenju do mesec dana za razliku od ESP32. Ako planirate da ih nosite sa sobom ili pravite solarni repetitor onda izaberite uređaj sa ovim čipom. 

{{< callout type="info" >}}
**nRF52 se ne može povezati na WIFI mrežu, već samo preko bluetooth ili USB-a.**
{{< /callout >}}

2. **Uređaji bazirani na ESP32 čipovima**  
Uređaji sa ESP32 čipom zahtevaju više energije za rad, ali su obično jeftiniji od nRF52 i treba ih koristiti sa USB napajanjem, posebno ako planirate da ih povežete na WiFi mrežu. Ako planirate da povežete uređaj na WIFI i da koristi USB napajanje onda je ovo naša preporuka.

3. **Uređaji sa novijim Semtech SX126x ili LR11xx serijama**  
Preporučujemo uređaje sa novim Semtech SX126x ili LR11xx LoRa modulima.

{{< callout type="error" >}}
  Uređaji sa **SX127x** čipom izbegavati
{{< /callout >}}

## Preporučeni uređaji

Meshtastic može biti instaliran na širok broj uređaja. Iako mnogo više uređaja nego sa ove liste mogu pokretati Meshtastic i međusobno komunicirati, neki uređaji su posebno popularni u Srpskoj zajednici. Evo uređaja koje Srpska zajednica preporučuje:

> [!TIP]
> Meshtastic mreža u Srbiji koristi 868 MHz. Obratite pažnju kad kupujete.


| Uređaj                                                                                                                   | Čipset           | Potrošnja energije   | Cena        | Prednosti                                                                 |
|--------------------------------------------------------------------------------------------------------------------------|------------------|----------------------|-------------|---------------------------------------------------------------------------|
| [**RAK Meshtastic Start Kit: RAK19007+RAK4631**](https://store.rakwireless.com/products/wisblock-meshtastic-starter-kit) | nRF52 + SX1262   | 🔋 Niska             | 30$         | Pouzdan, odličan za solar                                                 |
| [**Seeed Card Tracker T1000-E**](https://www.seeedstudio.com/SenseCAP-Card-Tracker-T1000-E-for-Meshtastic-p-5913.html)   | nRF52 + LR1120   | 🔋 Veoma niska       | 40$         | Ultra-niska potrošnja, malen tracker format, staje u novcanik             |
| **T-Echo T114 V2**                                                                                                       | nRF52 + SX1262   | 🔋 Veoma niska       | 30-50$      | Vibracija, ekran, baterija, GPS, direktno za teren                        | 
| [**XIAO ESP32S3 & Wio-SX1262 Kit**](https://www.seeedstudio.com/Wio-SX1262-with-XIAO-ESP32S3-p-5982.html)                | ESP32-S3 + SX1262| 🔌 Viša              | 10$         | Veoma jeftin, Wi-Fi, pogodno za razvoj                                    | 
| [**XIAO nRF52840 + Wio SX1262 Kit**](https://www.seeedstudio.com/XIAO-nRF52840-Wio-SX1262-Kit-for-Meshtastic-p-6400.html)| nRF52 + SX1262   | 🔋 Veoma niska       | 14$         | Ultra-mali, Najjeftiniji nRF52 chip                                       |


## Preporučene antene

Većina antena koje dolaze uz uređaje nisu dovoljno snažne za komunikaciju na većim razdaljinama, pa je za značajno poboljšanje dometa često potrebno nabaviti posebnu, jaču antenu. Mnogi uređaji koriste različite vrste konektora, najčešće SMA ili njegove varijante, pa je u tim slučajevima potreban odgovarajući adapter kako bi se antena mogla povezati. U većini situacija dovoljna je kvalitetna mobilna antena, ali ako pravite repetitor ili planirate pokrivanje većeg područja, preporučuje se upotreba većih, namenski pravljenih antena koje su optimizovane za takvu vrstu rada.
Tabela ispod sadrži antene koje preporučuje naša zajednica.

> [!TIP]
> Meshtastic mreža u Srbiji koristi 868 MHz. Obratite pažnju kad kupujete.

| Model                                                                           | Cena       | Vrsta konektora – potreban adapter | Mobilni ili Fiksni |
|---------------------------------------------------------------------------------|------------|-------------------------------------|---------------------|
| [NB-IoT/LoRa Soft Antenna](https://a.aliexpress.com/_EvpEZC4)                   |  5$        | SMA male – potreban adapter                                                             | Mobilni             |
| [TX868-BLG-40 868MHz](https://www.aliexpress.com/item/1005007301116616.html)    | 20$        | N   male – potreban [adapter](https://www.aliexpress.com/item/4001038164458.html)       | Fiksni              |

## Ažurinje
Nakon što ste nabavili uređaj, važno je da ga **ažurirate** na najnoviju stabilnu verziju firmware-a. Način ažuriranja zavisi od vrste čipa. Kliknite na [link za ažuiranje](https://flasher.meshtastic.org/) i pratite instrukcije na ekranu.


{{< callout emoji="🌐" >}}
Ako prvi put flešuješ uređaj, obavezno označi opciju za brisanje podešavanja – **"wipe settings"**. Samo Microsoft Edge i Google Chrome su podržani web pregledači za ažuriranje uređaja.
{{< /callout >}}

{{% /steps %}}
