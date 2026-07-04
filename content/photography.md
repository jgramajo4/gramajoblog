---
title: "Photography"
url: "/photography/"
summary: "Photos I've taken"
showToc: false
---

I've wanted a real camera since 2016 — I said I'd buy a Sony A7ii, then took my sweet time actually doing it. These days I mostly shoot to remember rather than to perform. My kids, the Bay Area, whatever a bike ride turns up, the odd trip. No system, no genre, just good light and something I care about pointing at.

It's the same instinct as the writing: time moves fast, kids move faster, and a photo is a cheap way to hold onto a version of a day I'd otherwise lose. Montreal in the fall, San Sebastián, an ordinary afternoon at the playground — I'd rather have the frame than the memory of trying to remember.

This page is a stub for now. It'll fill in as I go back through the roll and pull the ones worth keeping.

<!--
  To add photos: drop files in static/images/photos/ and list them below as
  ![description](/images/photos/filename.jpg)
  They'll flow into the grid automatically.
-->

<div class="photo-grid">
</div>

<style>
.photo-grid {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
  gap: 16px;
  margin: 2em 0;
}
.photo-grid img {
  width: 100%;
  height: 280px;
  object-fit: cover;
  border-radius: 12px;
  box-shadow: var(--shadow-sm);
  transition: transform 0.2s ease, box-shadow 0.2s ease;
}
.photo-grid img:hover {
  transform: scale(1.02);
  box-shadow: var(--shadow-md);
}
</style>
