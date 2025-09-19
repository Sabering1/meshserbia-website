---
title: Primeri
description: "Neki od primera meshtastic nodova u Srbiji"
toc: false
layout: wide
---

<div class="hx:mt-4"></div>

<p class="hx:mb-12 hx:text-center hx:text-lg hx:text-gray-500 hx:dark:text-gray-400">
  Neki od primera aktivnih meshtastic nodova u Srbiji
</p>

<style>
#examples-grid {
  display: grid;
  grid-template-columns: repeat(1, minmax(0, 1fr));
  gap: 1.25rem;
}
@media (min-width: 768px) { #examples-grid { grid-template-columns: repeat(2, 1fr); } }
@media (min-width: 1024px) { #examples-grid { grid-template-columns: repeat(3, 1fr); } }

.example-card {
  position: relative;
  background: color-mix(in srgb, var(--color-card, #ffffff) 98%, transparent);
  border-radius: 1rem;
  overflow: hidden;
  padding: 0;
  box-shadow: 0 6px 18px rgba(0,0,0,0.08);
  transform-origin: center;
  transition: transform .35s cubic-bezier(.2,.9,.25,1), box-shadow .35s;
  cursor: pointer;
}

.card-media {
  position: relative;
  height: 0;
  padding-bottom: 56.25%;
  overflow: hidden;
  perspective: 1200px;
}
.card-media img {
  position: absolute;
  inset: 0;
  width: 100%;
  height: 100%;
  object-fit: cover;
  transform-origin: center;
  transition: transform .6s cubic-bezier(.2,.9,.25,1);
}

.card-body {
  padding: 0.9rem 1rem;
  display: flex;
  align-items: center;
  justify-content: space-between;
  gap: .5rem;
}
.card-title {
  font-weight: 700;
  font-size: 1rem;
  line-height: 1.2;
}

.example-card:hover {
  transform: translateY(-8px) scale(1.02);
  box-shadow: 0 18px 40px rgba(0,0,0,0.14);
}

.reveal {
  opacity: 0;
  transform: translateY(18px) scale(.995);
  transition: opacity .55s ease, transform .55s cubic-bezier(.2,.9,.25,1);
}
.reveal.in-view {
  opacity: 1;
  transform: translateY(0) scale(1);
}

.card-meta { font-size: .85rem; color: #6b7280; }
</style>

<div id="examples-grid">
  <article class="example-card reveal" data-index="0" data-lat="44.8176" data-lon="20.4569">
    <div class="card-media"><img src="/images/showcase/primer1.webp" alt="Beograd" loading="lazy"></div>
    <div class="card-body"><h3 class="card-title">Beograd</h3><div class="card-meta">Urbana mreža</div></div>
  </article>

  <article class="example-card reveal" data-index="1" data-lat="44.0947" data-lon="20.1022">
    <div class="card-media"><img src="/images/showcase/primer2.webp" alt="Divčibare" loading="lazy"></div>
    <div class="card-body"><h3 class="card-title">Divčibare</h3><div class="card-meta">Planinski čvor</div></div>
  </article>

  <article class="example-card reveal" data-index="2" data-lat="43.2761" data-lon="21.3342">
    <div class="card-media"><img src="/images/showcase/primer3.webp" alt="Kuršumlija" loading="lazy"></div>
    <div class="card-body"><h3 class="card-title">Kuršumlija</h3><div class="card-meta">Ruralni čvor</div></div>
  </article>

  <article class="example-card reveal" data-index="3" data-lat="45.3342" data-lon="21.2833">
    <div class="card-media"><img src="/images/showcase/primer4.webp" alt="Vršac" loading="lazy"></div>
    <div class="card-body"><h3 class="card-title">Vršac</h3><div class="card-meta">Regionalni čvor</div></div>
  </article>

  <article class="example-card reveal" data-index="4" data-lat="45.4167" data-lon="20.3833">
    <div class="card-media"><img src="/images/showcase/primer5.webp" alt="Banatsko Novo Selo" loading="lazy"></div>
    <div class="card-body"><h3 class="card-title">Banatsko Novo Selo</h3><div class="card-meta">Poljoprivredni nod</div></div>
  </article>

  <article class="example-card reveal" data-index="5" data-lat="44.8694" data-lon="20.6500">
    <div class="card-media"><img src="/images/showcase/primer6.webp" alt="Pančevo" loading="lazy"></div>
    <div class="card-body"><h3 class="card-title">Pančevo</h3><div class="card-meta">Industrijski čvor</div></div>
  </article>

  <article class="example-card reveal" data-index="6" data-lat="45.3342" data-lon="21.2833">
    <div class="card-media"><img src="/images/showcase/primer7.webp" alt="Vršac 2" loading="lazy"></div>
    <div class="card-body"><h3 class="card-title">Vršac</h3><div class="card-meta">Ojačani signal</div></div>
  </article>

  <article class="example-card reveal" data-index="7" data-lat="44.8678" data-lon="20.5330">
    <div class="card-media"><img src="/images/showcase/primer8.webp" alt="Borča" loading="lazy"></div>
    <div class="card-body"><h3 class="card-title">Borča</h3><div class="card-meta">Suburbani nod</div></div>
  </article>
</div>

<script>
(function(){
  const cards = Array.from(document.querySelectorAll('.example-card.reveal'));
  const obs = new IntersectionObserver((entries, o) => {
    entries.forEach(entry => {
      if (entry.isIntersecting) {
        const el = entry.target;
        const i = Number(el.dataset.index || 0);
        setTimeout(()=> el.classList.add('in-view'), i * 70);
        o.unobserve(el);
      }
    });
  }, { threshold: 0.12 });

  cards.forEach(c => obs.observe(c));
})();

(function(){
  document.querySelectorAll('.example-card').forEach(card => {
    const media = card.querySelector('.card-media img');
    let rect, w, h;
    function updateRect(){ rect = card.getBoundingClientRect(); w = rect.width; h = rect.height; }

    card.addEventListener('mousemove', e => {
      updateRect();
      const x = (e.clientX - rect.left) - w/2;
      const y = (e.clientY - rect.top) - h/2;
      const rx = (y / h) * -6;
      const ry = (x / w) * 8;
      card.style.transform = `perspective(900px) rotateX(${rx}deg) rotateY(${ry}deg) translateZ(6px)`;
      const imgTx = (x / w) * -8;
      const imgTy = (y / h) * -6;
      media.style.transform = `translate3d(${imgTx}px, ${imgTy}px, 20px) scale(1.03)`;
    });

    card.addEventListener('mouseleave', () => {
      card.style.transform = '';
      media.style.transform = '';
    });

    card.addEventListener('click', () => {
      const lat = card.dataset.lat;
      const lon = card.dataset.lon;
      const url = `https://www.openstreetmap.org/?mlat=${lat}&mlon=${lon}#map=15/${lat}/${lon}`;
      window.open(url, '_blank');
    });
  });
})();
</script>

