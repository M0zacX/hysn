# HYSN Website

Cohesive static site assembled from the 9 individual HYSN page exports (Bizox template).
HYSN is the Digital Signage brand of **RA Vision GmbH**; **hyads** is its DOOH advertising arm.

## Open the site

Open [`index.html`](index.html) in a browser — it redirects to the homepage. Every page is
plain static HTML/CSS/JS, so no build step or server is required (open files directly, or
serve the folder with any static web server).

## Structure

```
hysn-website/
├── index.html                  → entry point (redirects to homepage/)
├── homepage/                   Start
├── aboutpage/                  Über uns
├── contactpage/                Kontakt
├── content-creation-page/      Content Creation        ┐
├── installation-page/          Installation & Montage  │ Leistungen
├── maintenance-page/           Wartung & Betrieb        │ (services)
├── dooh-hyades-page/           DOOH & hyads            ┘
├── partner-program-page/       Partnerprogramm
├── case-studies-page/          Referenzen
└── _build/                     build script used to wire navigation
```

Each page folder is self-contained: `index.html` plus its own `assets/` (css, js, fonts,
img, scss) and `docs/` (page build notes). Asset references inside a page stay relative to
that page (`assets/...`), so the folders are independently portable.

## Navigation

A single, consistent navbar (desktop + mobile off-canvas) links all 9 pages on every page:

`Start · Über uns · Leistungen ▾ (Content Creation, Installation & Montage, Wartung &
Betrieb, DOOH & hyads) · Referenzen · Partnerprogramm · Kontakt`

The footer mirrors this navigation (Leistungen / Unternehmen columns) plus contact details.
Cross-page links use relative paths (`../<folder>/index.html`) so the whole `hysn-website/`
folder can be moved or deployed anywhere as a unit.

## Notes

- **Responsive:** the Bizox template is fully responsive (Bootstrap grid + ~1000 media-query
  blocks in `assets/css/main.css`); the mobile off-canvas menu is preserved on every page.
- **Encoding:** pages are UTF-8; original byte/BOM state is preserved per file.
- **Placeholder links** that have no dedicated page (search box, newsletter, social icons,
  Datenschutz/Impressum) intentionally remain inert (`#` / `#!`).
- Per-page `assets/` folders are duplicated copies of the template (~27 MB each). They could
  later be consolidated into one shared `assets/` folder to cut size; kept separate here so
  every page stays self-contained and no asset path can break.
