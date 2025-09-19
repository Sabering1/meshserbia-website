---
title: MeshSerbia
layout: hextra-home
---
<meta charset="UTF-8">

<style>
:root{--accent:#06b6d4}

/* Headline entrance */
.hero-headline{opacity:1;transform:none;animation:none}
@keyframes fadeUp{from{opacity:0;transform:translateY(10px)}to{opacity:1;transform:translateY(0)}}

/* Button pop */
.hero-button{transform-origin:center;animation:pop .9s cubic-bezier(.2,.9,.3,1) both}
@keyframes pop{0%{transform:scale(.96)}60%{transform:scale(1.03)}100%{transform:scale(1)}}

/* Feature card hover lift + icon float */
.feature-card{transition:transform .28s ease,box-shadow .28s ease;will-change:transform}
.feature-card:hover{transform:translateY(-6px) scale(1.01);box-shadow:0 12px 30px rgba(2,6,23,.12)}
.feature-card .card-icon{transition:transform .45s cubic-bezier(.2,.9,.3,1)}
.feature-card:hover .card-icon{transform:translateY(-8px) rotate(-4deg)}

/* Staggered reveal for grid children */
.feature-grid > *{opacity:0;transform:translateY(8px);animation:cardIn .6s cubic-bezier(.2,.9,.3,1) forwards}
.feature-grid > *:nth-child(1){animation-delay:.06s}
.feature-grid > *:nth-child(2){animation-delay:.12s}
.feature-grid > *:nth-child(3){animation-delay:.18s}
.feature-grid > *:nth-child(4){animation-delay:.24s}
.feature-grid > *:nth-child(5){animation-delay:.30s}
.feature-grid > *:nth-child(6){animation-delay:.36s}
.feature-grid > *:nth-child(7){animation-delay:.42s}
@keyframes cardIn{to{opacity:1;transform:translateY(0)}}

/* Reduced motion preference */
@media (prefers-reduced-motion: reduce){
  .hero-badge .dot,.hero-headline,.hero-button,.feature-grid > *{animation:none;transition:none}
}
</style>

{{< hextra/hero-badge link="https://meshtastic.org" >}}
  <div class="hx:w-2 hx:h-2 hx:rounded-full hx:bg-primary-400 dot"></div>
  <span>Join the Medium_Fast channel</span>
  {{< icon name="arrow-circle-right" attributes="height=14" >}}
{{< /hextra/hero-badge >}}

<div class="hx:mt-4 hx:mb-4">
{{< hextra/hero-headline >}}
  <span class="hero-headline">Connect without the internet&nbsp;<br class="hx:sm:block hx:hidden" />with Serbia’s Meshtastic network</span>
{{< /hextra/hero-headline >}}
</div>

<div class="hx:mb-6">
{{< hextra/hero-subtitle >}}
  Community and guides for using Meshtastic in Serbian
{{< /hextra/hero-subtitle >}}
</div>

<div class="hx:mb-4">
{{< hextra/hero-button text="Get Started" link="docs" >}}
</div>

{{< hextra/feature-grid class="hx:gap-4 feature-grid" >}}

{{< hextra/feature-card
    link="https://meshtastic.org"
    title="What is Meshtastic?"
    subtitle="An open-source LoRa network enabling messaging without the internet. Perfect for hiking, emergencies, DIY projects, and more."
    class="hx:aspect-auto hx:md:aspect-[1/1] hx:max-md:min-h-[180px] hx:py-4 hx:px-4 feature-card"
    imageClass="hx:top-[40%] hx:left-[20px] hx:w-[110%] hx:dark:opacity-80 card-icon"
    style="background: radial-gradient(ellipse at 50% 80%, rgba(57, 255, 20, 0.18), hsla(0, 0%, 100%, 0));"
  >}}

{{< hextra/feature-card
    link="https://meshtastic.org"
    title="Guides & Tutorials"
    subtitle="From initial setup to advanced features like solar nodes, MQTT integration, and sensors."
    class="hx:aspect-auto hx:md:aspect-[1/1] hx:max-md:min-h-[180px] hx:py-4 hx:px-4 feature-card"
    imageClass="hx:top-[40%] hx:left-[28px] hx:w-[110%] hx:dark:opacity-80 card-icon"
    style="background: radial-gradient(ellipse at 50% 80%, rgba(255,255,0, 0.18), hsla(0,0%,100%,0));"
  >}}

{{< hextra/feature-card
    link="https://meshtastic.org"
    title="Solar Nodes & Coverage"
    subtitle="Build your own autonomous Meshtastic node with solar power for the mountains, countryside, or your cabin."
    class="hx:aspect-auto hx:md:aspect-[1/1] hx:max-md:min-h-[180px] hx:py-4 hx:px-4 feature-card"
    imageClass="hx:top-[36%] hx:left-[28px] hx:w-[100%] hx:dark:opacity-80 card-icon"
    style="background: radial-gradient(ellipse at 50% 80%, rgba(255,165,0,0.18), hsla(0,0%,100%,0));"
  >}}

{{< hextra/feature-card
    link="https://meshtastic.org"
    title="Serbian Community"
    subtitle="Connect with local users, share experiences, and join our Telegram chat or GitHub projects."
    class="feature-card"
    style="background: linear-gradient(to right, rgba(255, 0, 0, 0.40), rgba(0, 0, 255, 0.40), rgba(255, 255, 255, 0.40));"
  >}}

{{< hextra/feature-card
    link="https://meshtastic.org"
    title="Works Anywhere, Offline"
    subtitle="Send messages even without internet or signal, no SIM cards, no payments, just devices."
    class="feature-card"
  >}}

{{< hextra/feature-card
    link="https://meshtastic.org"
    title="Easy Integration"
    subtitle="Connect Meshtastic with your phone using the app; with internet you can message even far from nodes."
    class="feature-card"
  >}}

{{< /hextra/feature-grid >}}

