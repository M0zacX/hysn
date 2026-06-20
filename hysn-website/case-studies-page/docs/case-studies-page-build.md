# Case Studies Page Build — Session Summary

**Date:** 2026-06-19
**Goal:** Assemble a standalone **Referenzen & Projekte (Case Studies)** page by reusing existing Bizox template components + already-adapted HYSN blocks, applying copy from the `w15` wireframe.

---

## 1. Method (per project build pattern)

- Cloned the **aboutpage shell** (head + transparent sticky header + offcanvas sidebar + footer + full script stack, already German). The aboutpage shell already includes every plugin this page needs: `isotope` (filter), `scrollspy` (featured-case nav), `odometer` (counters), `marquee` (logo strip).
- Carried a full per-page **`assets/`** copy (26.6 MB) from aboutpage so the page runs standalone over `file://`.
- Replaced only the `<main>` region with assembled section blocks.
- Encoding: assembled with .NET `UTF8Encoding($false)` (no BOM); German chars written literally. Verified 0 mojibake.

---

## 2. Section selection — wireframe → template

The wireframe **image** was the authority for *which* sections and their *order*; the **w15 HTML** was the copy source. Sections with no template-section equivalent were dropped (per the rule: *if not in the template/folders, do not add custom*).

| # | Wireframe section | Decision | Source |
|---|---|---|---|
| 1 | Hero | **KEEP** | aboutpage `section.breadcrumb` (required: same as aboutpage hero) |
| 2 | Aggregate proof — stats | **KEEP** | aboutpage `section.about` (counters + video) |
| 2 | Aggregate proof — logo strip | **KEEP** | aboutpage `section.brand` (marquee) |
| 3 | Filter & sorting | **KEEP (filter only)** | Bizox `project.html` `.xb-project-menu` |
| 3 | — sort dropdown | **DROP** | no template equivalent |
| 4 | Project grid | **KEEP** | Bizox `project.html` `.project` isotope grid |
| 5 | Impact & results | **KEEP** | Bizox `project-details.html` `.xb-result-wrap` (item4) |
| 6 | Featured case study | **KEEP** | Bizox `project-details.html` deep-dive (item1–4) |
| 7 | Before/after gallery | **DROP** | no template gallery section |
| 8 | Video showcase | **DROP** | `.xb-video` exists only as an embedded element, no section |
| 9 | Locations map | **DROP** | no template equivalent (same call as aboutpage) |
| 10 | CTA | **KEEP** | aboutpage `section.contact` (`xb-contact-top` band) |
| — | Footer + newsletter | **KEEP** | aboutpage `footer-style-one` (already German; carries its own CTA band) |

**Final `<main>` order:** breadcrumb → about/counters → brand marquee → project filter+grid → impact → featured case → contact band. (7 `<section>` blocks, balanced.)

---

## 3. Copy applied (w15, Sie-form, customer-as-hero)

- **Hero:** title `Referenzen & Projekte`; lead = w15 hero ("HYSN in der Praxis: …").
- **Stats/proof:** sub `Referenzen im Überblick`, heading `Der schnelle Vertrauenscheck.`, w15 intro. Counters reworked to **30+ / 6 / 4 / 2025** (Werbescreens / Branchen / Standorttypen / laufende Referenz Haus des Döners). All `data-count` remain integers.
- **Brand marquee:** sub-title → "Projekt- und Standortkontexte, in denen HYSN bereits sichtbar ist". Logos still Bizox placeholders (asset decision pending — same as aboutpage).
- **Filter + grid:** filter pills Alle / Restaurants / Handel / Events / Kommunen / Büro / Franchise (`cat1`–`cat6`). 6 project cards (Haus des Döners, REWE, EDEKA, Firmenevent, Kommunales Pilotkonzept, Büro/HYTOUCH) — every filter category has ≥1 card. Cards use the 3-column template card (title + before/after summary, Branche/Installiert lists, image).
- **Impact & results:** heading "Was sich an echten Standorten verändert."; 4 outcome items (Ohne Neudruck / Aus einer Hand / Seit 06/25 / Skalierbar).
- **Featured case (Haus des Döners):** scrollspy nav Germanised (Einführung / Die Ausgangslage / Plan & Umsetzung / Das Ergebnis); item1 intro, item2 4-point problem checklist, item3 three **Vorher/Nachher** cards (repurposed challenge/solution structure), item4 result metrics (3 / 1 / 06/25 / 0 €). **Item5 "Tools & frameworks" (jira/Asana/Scrum…) removed** — off-brand, mirroring the aboutpage §9 decision.
- **CTA band:** "Planen Sie ein ähnliches Projekt? …".

---

## 4. Verification done

- 7 `<section>` open/close pairs balanced; single `<main>`/`<footer>`.
- `<div>` balance 254/254; running depth returns to 0 at `</body>`, never negative.
- No residual English template copy; 0 mojibake (UTF-8 no BOM).
- Counters all integer `data-count`; all 6 filter categories covered by cards; no dangling `#item5`.
- All in-content asset references resolve. (3 refs missing — `hero-video.mp4`, `parallax.min.js`, `parallaxie.js` — are pre-existing template-baseline gaps, also absent/referenced in aboutpage; non-critical, degrade gracefully.)

---

## 5. Known open items

| Item | Type | Notes |
|---|---|---|
| Project images | Assets | Cards use Bizox `project/img01–06.jpg` + `logo01–06.png`; featured uses `service/img07,10,11`. Replace with real installation photos. |
| Brand/logo strip | Assets | Still Bizox placeholder brand logos. Real context logos (REWE/EDEKA/hyads…) needed. |
| Detail links | Links | Card "Details ansehen" + featured CTA point to `#!`/`contact.html` (no per-project detail pages yet). |
| Dropped sections | Design | Before/after gallery, video showcase, locations map intentionally omitted (no template). Build later if custom design approved. |

---

## 6. How to review

- Open `c:\hysn-main\case-studies-page\index.html` directly in a browser (`file://`).
- Or `cd c:\hysn-main\case-studies-page; python -m http.server 8080` (recommended for isotope filter / scrollspy / odometer accuracy).
