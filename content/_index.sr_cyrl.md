---
title: Meshtastic заједница Србије
layout: hextra-home
---
<meta charset="UTF-8">

<style>
:root{--accent:#06b6d4}
/* Hero badge pulse */
.hero-badge .dot{animation:pulse 1.8s ease-in-out infinite}
@keyframes pulse{0%{transform:scale(1);opacity:1}50%{transform:scale(1.25);opacity:.6}100%{transform:scale(1);opacity:1}}

/* Headline entrance */
.hero-headline{opacity:0;animation:fadeUp .72s cubic-bezier(.2,.9,.3,1) forwards}
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

{{< hextra/hero-badge >}}
  <div class="hx:w-2 hx:h-2 hx:rounded-full hx:bg-primary-400 dot"></div>
  <span>Придружи се на Medium_Fast каналу</span>
  {{< icon name="arrow-circle-right" attributes="height=14" >}}
{{< /hextra/hero-badge >}}

<div class="hx:mt-4 hx:mb-4">
{{< hextra/hero-headline >}}
  <span class="hero-headline">Повежи се без интернета&nbsp;<br class="hx:sm:block hx:hidden" />уз Meshtastic мрежу Србије</span>
{{< /hextra/hero-headline >}}
</div>

<div class="hx:mb-6">
{{< hextra/hero-subtitle >}}
  Заједница и упутства за коришћење Meshtastic-a на српском језику
{{< /hextra/hero-subtitle >}}
</div>

<div class="hx:mb-4">
{{< hextra/hero-button text="Почни одмах" link="docs" >}}
</div>

{{< hextra/feature-grid class="hx:gap-4 feature-grid" >}}

{{< hextra/feature-card
    title="Шта је Meshtastic?"
    subtitle="Open-Source LoRa мрежа која омогућава слање порука без интернета. Идеално за планинарење, ванредне ситуације, DIY пројекте и још много тога."
    class="hx:aspect-auto hx:md:aspect-[1/1] hx:max-md:min-h-[180px] hx:py-4 hx:px-4 feature-card"
    imageClass="hx:top-[40%] hx:left-[20px] hx:w-[110%] hx:dark:opacity-80 card-icon"
    style="background: radial-gradient(ellipse at 50% 80%, rgba(57, 255, 20, 0.18), hsla(0, 0%, 100%, 0));"
  >}}

{{< hextra/feature-card
    title="Водичи и туторијали"
    subtitle="Од првог подешавања до напредних опција као што су соларни нодови, MQTT интеграција и сензори."
    class="hx:aspect-auto hx:md:aspect-[1/1] hx:max-md:min-h-[180px] hx:py-4 hx:px-4 feature-card"
    imageClass="hx:top-[40%] hx:left-[28px] hx:w-[110%] hx:dark:opacity-80 card-icon"
    style="background: radial-gradient(ellipse at 50% 80%, rgba(255,255,0, 0.18), hsla(0,0%,100%,0));"
  >}}

{{< hextra/feature-card
    title="Соларни нодови и покривеност"
    subtitle="Направи сопствени аутономни Meshtastic нод са соларним напајањем за планину, село или викендицу."
    class="hx:aspect-auto hx:md:aspect-[1/1] hx:max-md:min-h-[180px] hx:py-4 hx:px-4 feature-card"
    imageClass="hx:top-[36%] hx:left-[28px] hx:w-[100%] hx:dark:opacity-80 card-icon"
    style="background: radial-gradient(ellipse at 50% 80%, rgba(255,165,0,0.18), hsla(0,0%,100%,0));"
  >}}

{{< hextra/feature-card
    title="Заједница из Србије"
    subtitle="Повежи се са домаћим корисницима, подели искуство и придружи се нашем Telegram чету или GitHub пројектима."
    class="feature-card"
    style="background: linear-gradient(to right, rgba(255, 0, 0, 0.40), rgba(0, 0, 255, 0.40), rgba(255, 255, 255, 0.40));"
  >}}

{{< hextra/feature-card
    title="Ради свуда, без мреже"
    subtitle="Шаљи поруке и кад нема интернета или сигнала, без SIM картица, без плаћања, само уз уређаје."
    class="feature-card"
  >}}

{{< hextra/feature-card
    title="Лака интеграција"
    subtitle="Повежи Meshtastic са телефоном помоћу апликације; уз интернет везу можеш слати поруке и кад си далеко од нодова."
    class="feature-card"
  >}}

{{< /hextra/feature-grid >}}


