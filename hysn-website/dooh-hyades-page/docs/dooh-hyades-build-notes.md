# DOOH & hyads — Page Build Notes
**Date:** 2026-06-18
**Folder:** `dooh-hyades-page/` (self-contained: `index.html`, own `assets/` copy, `docs/`)

---

## 1. Sources
- **Layout (order of sections):** the attached wireframe image (`w13` rendered).
- **Copy:** `w13_dooh-hyads_v3.html` (German DOOH/hyads wireframe).
- **Tone/rules:** `aboutpage/docs/about-page-copy-guide.md` (honest framing, no invented numbers, "keine Garantie" kept).
- **Markup:** Bizox template blocks, reusing already-Germanised HYSN blocks from `homepage/` and `aboutpage/` where they existed.

The shell (head, header, offcanvas sidebar, footer, script includes) was cloned verbatim from `homepage/index.html`, then only the `<main>` region was replaced. So nav/footer/branding stay consistent with the rest of the site.

## 2. Template sections assembled (in wireframe order)
1. **Hero / intro** — heading + lead + 2 CTAs + 4-stat strip + portrait image (adapted from home-2 intro).
2. **Two ways** — 2 route cards ("Ich möchte Werbung schalten." / "Ich habe einen Standort.") → anchor to the two audience sections. (`ab-feature-item` 2-col.)
3. **Brand band (advertiser context)** — logo marquee, sub-title reworded for DOOH.
4. **For advertisers — "What you get"** — 3 cards (Standortgenaue Sichtbarkeit / Physische Präsenz / Schneller als Plakate). `id="werbetreibende"`.
5. **Booking process** — 3 steps (Region & Ziel klären / Motiv vorbereiten / Kampagne live).
6. **Brand band (partner context)** — repeat, sub-title reworded.
7. **For partners — "What you get"** — 3 cards (Passive Zusatzeinnahmen / Kein operativer Aufwand / Kontrolliertes Werbeumfeld). `id="standort-partner"`.
8. **Successful cases** — referenzen slider (Gastronomie / Franchise / Kommune), reused from homepage.
9. **Our approach** — 3-step location check (Standortdaten senden / Potenzial prüfen / Pilot starten), maps to w13's partner-check process.
10. **FAQ** — 6-item accordion, 3 advertiser + 3 partner questions (from w13).
11. **Final CTA** — dark band, 2 mailto buttons (`info@hysn.de`). `id="starten"`.
+ Footer (homepage footer, unchanged).

Both the brand band and the "What you get" 3-card block appear **twice** (once per audience) — confirmed with the client; mirrors the wireframe.

## 3. Custom German sections deliberately DROPPED (revisit later)
These were in w13 but are bespoke, not template blocks — left out per instruction:
- Region map ("Plan by region, location type…")
- DOOH vs. poster vs. social comparison table
- "ab X €" pricing box / "Kein fertiges Motiv?" two-column
- "Sie haben keinen Werbebedarf…" perspective-switch divider band
- "Das Partner-Modell ist transparent" — 20 % / 35 % / 50-50 revenue cards + example box
- "Der Screen soll Einnahmen bringen…" — screen-playlist mock + content-control bullets

## 4. Open items
- **Hero stat strip** uses inline styles for a clean 4-cell row (figures from w13: 30+, lokal, digital, 1 Partner). Swap for a template counter component if preferred.
- **Hero / sidebar imagery** still uses Bizox placeholders (`about/img02.jpg`, brand logos, faq/img01.png). Replace with real hyads screen photos.
- **Transparent sticky header** sits over the white hero — same behaviour as the homepage; verify contrast at page top in browser.
- The dropped custom sections need to be designed and slotted back into their wireframe positions.

## 5. Notes
- Encoding: file written/spliced via .NET `UTF8Encoding($false)` (no BOM). German chars are literal UTF-8 — do **not** rewrite via PowerShell `Set-Content` without `-Encoding utf8` or they will double-encode (see about-page guide §6).
- Review by opening `dooh-hyades-page/index.html` over `file://`, or `python -m http.server` from the folder.
