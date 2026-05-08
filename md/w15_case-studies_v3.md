# HYSN Wireframe Brief — Referenzen & Projekte
# Page 15 of 16 — v3

## What you are building

A complete HTML wireframe for the HYSN Referenzen & Projekte page (`/referenzen`).

This is not a template-fill exercise. This is a strategic page design. Think first, then build.

---

## Think before you build

1. **Who lands on this page?** A serious prospect doing due diligence. They've decided HYSN is interesting. Now they want to verify: are these people actually doing real work? They came from another page on the site, an ad they clicked twice, or directly from a referral conversation.

2. **What is the one thought they need to have to inquire?** "These people work with companies like mine. They've delivered real projects. The before/after transformations are credible. I can imagine my own project on this page."

3. **What would actually make them inquire?** Multiple real projects across different industries. Visible vorher/nachher contrast on every project. Realistic numbers (screens deployed, monthly revenue, install timelines). Photos that look like actual installations, not stock photos. Industry filtering so they can find their type.

4. **What would stop them?** Few projects. Vague "a leading retailer" without details. No before/after structure. Stock-photo aesthetic. Generic case study language. No way to filter by industry or scale.

Now design the page that answers (3) and removes (4).

---

## Mandatory baseline

This page is structurally different — it's a project showcase, not a sales page. The structure serves browsing and credibility.

1. **Nav bar** — sticky
2. **Hero** — short, factual: "Echte Projekte. Installierte Bildschirme. Messbare Ergebnisse." Subline: HYSN in der Praxis, von der Beratung bis zum laufenden Betrieb.
3. **Aggregate proof bar** — 4 stats summarizing across all projects: total active screens, total clients served, industries covered, total monthly DOOH locations operated
4. **Filter bar** — pill buttons: Alle | Restaurants | Handel | Events | Kommunen | Büro | Franchise — with click affordance (wireframe outlined pills)
5. **Project grid** — 2-column grid of project cards, each card:
   - Project image placeholder labeled by project type
   - Industry tag (pill)
   - Project title (descriptive, not generic)
   - City / Region
   - VORHER (1 sentence — the pain or starting situation)
   - NACHHER (1 sentence — concrete result, numbers where possible)
   - What was installed (1 line — type and quantity of screens)
   - Running since: [month/year]
   - "Details ansehen →" link

   Include every known HYSN project (REWE, EDEKA, Haus des Döners, restaurants, events, municipal pilots) AND construct 4–6 representative projects to fill out the grid showing range across industries. Mark constructed examples with a small note in the HTML comment so the team knows which are real vs representative.

6. **Featured case study (deeper dive)** — pick the strongest single project and feature it as a longer block: project image, full vorher/nachher narrative, specific numbers, optional client quote. This is the proof-point that converts skeptics.
7. **CTA section** — "Ähnliches Projekt besprechen" with specific button label
8. **Footer**

---

## Elevation permission

Sections worth considering:

- A **video showcase** placeholder section — even one video of real installations is worth multiple text case studies
- A **client logos strip** — if any logos can be shown (REWE, EDEKA, etc.), this is high-value visual proof
- A **map of project locations** — Germany or Rhein-Main map with markers showing every project location
- A **sortable / filterable views** — "Sortieren nach: neuestes / größtes / Branche" — gives serious prospects more browsing power
- A **scale indicators** — small/medium/large project tags so prospects can find similar-scale projects to theirs
- A **before/after gallery slider** — visual-only browsable gallery in addition to the text-heavy project cards

Add only if it elevates. Drop or replace baseline sections if stronger alternatives — explain in HTML comment.

---

## Depth instructions

### Project cards — every card needs vorher/nachher
For each project, the vorher/nachher contrast is what makes it credible. Without it, a project card is just a feature description. Examples of the right register:

**Project: Haus des Döners — 3-Screen Menüboard**
- VORHER: "Gedruckte Menütafeln, Preisänderungen dauerten Tage, kein animierter Content — die Theke sah aus wie tausend andere Imbisse."
- NACHHER: "Drei animierte Menüboards, Preisupdates innerhalb von Minuten, eigene Food-Visuals — laufende Werbeeinnahmen seit Juni 2025."

**Project: REWE Frankfurt — Indoor-Werbestele**
- VORHER: "Statisches POS-Material, keine Werbeeinnahmen, Eingangsbereich nutzte den Publikumsverkehr nicht."
- NACHHER: "Indoor-Werbestele mit 4 lokalen Werbepartnern, Werbeeinnahmen seit dem ersten Monat, modernerer Auftritt."

This level of specificity for every project. Real numbers from HYSN's project context wherever possible. Representative numbers clearly marked when constructed.

### The featured case study (deeper dive)
Pick the strongest available project — likely one of the REWE/EDEKA installations or Haus des Döners — and write it as a full case study block:

- Project image placeholder (large, prominent)
- Industry + city + project type
- The pain (3–4 sentences) — what was the situation before
- The plan (3–4 sentences) — what HYSN proposed and why
- The execution (3–4 sentences) — what was installed, how long it took, what was included
- The result (3–4 sentences) — what changed, with numbers where possible
- Optional client quote (1–2 sentences in client voice)

This featured block is the conversion moment of the page.

### Filter pills
The filter pills are wireframe-styled outlined buttons. They don't actually need to function in the wireframe — they signal the intended UX. Each pill: industry name. The "Alle" pill is selected by default (filled or thicker outline to indicate active state).

### Numbers and metrics
Wherever a project mentions a number, the number must feel real. Examples:
- "3 Screens, 45 Tage Lieferzeit, laufender Betrieb seit März 2024"
- "4 Werbepartner aktiv, monatlicher Umsatzanteil im Schnitt zwischen X € und Y €"
- "18 Standorte ausgerollt in 6 Monaten"

Generic phrases like "increased engagement" or "successful project" are not allowed.

---

## Wireframe style rules — non-negotiable

- Single self-contained HTML file. No external dependencies.
- Grayscale palette: `#ffffff`, `#f4f4f4`, `#d0d0d0`, `#333333`, `#111111`
- Body `#f0f0f0`, page wrapper `#ffffff`, max-width 900px centered, 250px right margin
- Font: `system-ui, -apple-system, sans-serif`
- Section labels: `[SECTION NAME]` 10px uppercase gray
- Image placeholders: gray rectangle with diagonal SVG cross + German caption identifying the project
- Filter pills: outlined buttons in wireframe style with clear "active" state for the selected pill
- Project cards: bordered cards with consistent internal structure
- Annotations: sticky-note boxes right margin, every section gets one
- Sections separated by 1px #d0d0d0 border
- Desktop only

## Language
Visible page in German. Sie. Real copy. Project descriptions specific and factual. Annotations English OK. HTML comments noting which projects are real vs representative are fine in English.

## Output
Single complete HTML file. The references page must feel like a portfolio of real work. Every project card must earn its place through specificity. The featured case study is the conversion moment.
