---
title: "Photography"
url: "/photography/"
summary: "Photos I've taken"
showToc: false
---

I shoot occasionally — mostly my kids, Bay Area landscapes, and whatever catches my eye on bike rides. No particular system, just a phone and good light.

<div class="photo-grid">

*Drop your photos into `static/images/photos/` and add them here as:*

```
![description](/images/photos/filename.jpg)
```

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
