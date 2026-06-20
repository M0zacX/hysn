# Partner-Program Page — Build Notes

**Date:** 2026-06-18
**Page:** `/partner-program-page/index.html`
**Source wireframe:** `Temp/Wireframes/w14_partner-program_v3.html` (copy) + attached wireframe image (layout/order)
**Copy guide:** `aboutpage/docs/about-page-copy-guide.md`

## Rule applied
Assemble **only existing template/folder sections** in the wireframe's order. Do **not** create custom sections — any wireframe block without an existing section match is **dismissed** (left as an in-place HTML comment) for a later custom design pass. Hero = aboutpage `breadcrumb` banner (per user).

## Build method
1. Cloned `aboutpage/index.html` → page shell (head/header/sidebar/footer/scripts, already HYSN-German, correct UTF-8).
2. Copied full `homepage/assets` (26.6 MB) → `partner-program-page/assets`.
3. Authored assembled `<main>` in `docs/main-content.html` (Write tool = correct UTF-8), then spliced into the shell between `<main>…</main>` via .NET `UTF8Encoding($false)` (no BOM). German chars literal; **0 mojibake**.
4. Title → `HYSN — Partnerprogramm`.

## Section map (wireframe order)
| WF | Block | Existing source | w14 copy |
|----|-------|-----------------|----------|
| 1 | Breadcrumb hero | aboutpage `breadcrumb` | Hero headline + lead |
| 1b | Stat strip | homepage dark `about` odometer band | Trust strip (0€ / 1 / 100% / 35%) |
| 2 | Pain (3 cards) | `feature` `cp-feature-item` (3-col) | Ungenutztes Potenzial |
| 3 | Standorte (5 image rows) | homepage `service` alt-image list | Passende Standorte |
| 4 | Umsatzbeispiele (4 cards) | Bizox `pricing` cards | Umsatzbeispiele |
| **5** | **Leistung/Nutzen checklist** | — | **DISMISSED (custom)** |
| **6** | **Umsatzmodell A/B + calc** | — | **DISMISSED (custom)** |
| 7 | Ablauf (4 steps) | homepage `peocess` | Ablauf |
| 8 | Pilot CTA band | aboutpage `contact` band | Pilot-Standort |
| 9 | Vorher/Nachher | aboutpage `technology-section` | Partnerbeispiel |
| 10 | Partnerstimmen | homepage `testimonial` slider | 3 Partnerstimmen |
| **11** | **70/20/10 Rotation** | — | **DISMISSED (custom)** |
| 12 | FAQ (6 items) | Bizox `pricing` accordion | FAQ |
| 13 | Final CTA + footer | Bizox `cta` marquee + German footer | Nächster Schritt |

## Status
- 11 sections assembled, divs balanced (330/330), `<main>` balanced.
- CTAs point to `mailto:info@hysn.de`.
- **Copy = first w14 application.** Pending: copywriter polish pass (heading lengths/fit) once layout is approved.

## Known / open
- **Dismissed sections 5, 6, 11** await custom design (placeholders in HTML).
- Pre-existing template gaps (missing in homepage/aboutpage too, harmless): `hero/hero-video.mp4`, `technology/technology_video.mov`, `js/parallax.min.js`, `js/parallaxie.js` → posters/static show instead.
- `contact.html` links in shell nav/footer resolve only in the full Bizox tree (same as sibling pages).
- Testimonial right-column author-slider class may need JS-init class check (images display regardless).
