# Installation Page Build — Session Summary

**Date:** 2026-06-15
**Goal:** Assemble the re-arranged **Installation & Montage** wireframe (`w11`) as a standalone page by reusing existing Bizox template components (sliced verbatim) wrapped in the HYSN homepage shell — same method as the homepage, about, contact and content-creation pages.

---

## 1. Context

- Project: **HYSN** website rebuild (operated by RA Vision GmbH), based on the **Bizox** HTML template in [`../../bizox-html-package/Bizox/`](../../bizox-html-package/Bizox/).
- Source brief: [`../../Temp/md/w11_installation_v3.md`](../../Temp/md/w11_installation_v3.md).
- Audience: problem-aware buyers + people who bought screens elsewhere and now need professional installation. The page must convince them HYSN does this work hundreds of times, professionally and on time, with zero coordination burden.
- Constraint: locate each wireframe section **in the Bizox template files**; the **footer/header shell** is reused from the homepage (same as the about, contact and content-creation pages).

---

## 2. Wireframe analysis — where each section came from

The image is a **composite** pulling sections from `about.html`, `index.html`, `home-2.html`,
`service-details.html` and `pricing.html`, plus 4 HYSN-specific sections that have **no template
markup yet** (inserted as labelled placeholder stubs in their wireframe positions).

### Sections located in the template (built into this page)

| # | Wireframe section | Source file | Source lines | Component |
|---|---|---|---|---|
| 1a | Page-title hero band (big header image) | about.html | 334–355 | `breadcrumb` |
| 1b | Brand / partner logo strip (asana, accenture…) | home-2.html | 1124–1176 | `brand` |
| 2 | "This is what a finished installation should look like" — image + cards | index.html | 400–485 | `about xb-about-section` |
| 3 | "Tools & technologies we use" (dark, node diagram) | home-2.html | 1180–1349 | `technology-section` |
| 4 | "Our services" — SEO / Social / Content / Email / PPC | home-2.html | 475–603 | `service` |
| 5 | "Impact & results" (image + progress bars) | home-2.html | 381–471 | `about` (dm-about) |
| 6 | "Our approach" — Market research / Customer insights / Recommendations | service-details.html | 482–570 | `xb-process-item` grid (wrapped in `section.peocess`) |
| 7 | "Not every wall is concrete…" preliminary-checks cards | index.html | 716–781 | `feature` |
| 8 | "Our successful cases" (slider) | home-2.html | 755–1120 | `project` |
| 9 | "Store-Eröffnung, Event…" mid-page CTA strip | home-2.html | 1557–1592 | `cta` |
| 10 | "Our services" — Business strategy / Market analysis / Project mgmt / Financial planning | index.html | 489–712 | `service` |
| 11 | "Happy clients observation" (testimonials) | index.html | 1384–1725 | `testimonial` |
| 12 | "Frequently asked questions" (accordion + image) | pricing.html | 806–914 | `hiring-process` / `pr-faq` |
| 13 | "Damit Ihr Screen nicht nur geliefert wird…" final CTA band | home-2.html | 1557–1592 | `cta` |
| — | **Footer + Newsletter** | **homepage/index.html** | 1955–2216 | `footer-style-one` (verbatim, + script stack) |

### Sections NOT in the template — inserted as placeholder stubs (design later)

These match the brief but have no clean Bizox component (confirmed by searching index/home-2/home-3/about/contact). Each is rendered as a dashed-border placeholder block (`section.hysn-custom-placeholder`) in its correct wireframe position, with a German heading + intent note:

- **Coverage-area map** — "Rhein-Main ist unser Kerngebiet. Deutschlandweite Montage auf Anfrage." (between sections 8 and 9)
- **Vorher / Nachher case study** — "Vom improvisierten Fernseher zum fertigen Menüboard-System." (between sections 9 and 10)
- **HYSN brings / The location provides** — "Gründliche Vorbereitung verhindert Verzögerungen am Montagetag." (between sections 11 and 12)
- **Technical-points spec table** — "Die wichtigsten technischen Punkte klären wir vor der Montage." (between sections 11 and 12)

---

## 3. What was built

- New self-contained folder: **`installationpage/`**
  - [`../index.html`](../index.html) — assembled page (2,377 lines)
  - [`../assets/`](../assets/) — full copy of the template assets (css, js, img, fonts), 460 files, so the page runs standalone over `file://`
  - [`../build.ps1`](../build.ps1) — the slice/concatenate script used to assemble the page (kept for reproducibility)
  - [`./`](.) — this summary

### Assembly method

Built by **slicing the located sections verbatim** (including all inline SVGs) from their
source files by line range and concatenating them between the homepage shell:

- **Shell head + header + offcanvas + `<main>`:** homepage/index.html lines 1–239 (German nav, `<title>` → *HYSN - Installation & Montage*).
- **Sections 1a–13:** spliced in wireframe top-to-bottom order, each preceded by an `<!-- ===== Section … ===== -->` marker; the 4 custom blocks preceded by `<!-- ===== CUSTOM Section … ===== -->`.
- **`</main>` + footer + scripts:** homepage/index.html lines 1955–2216 (the homepage `footer-style-one` + full plugin script stack), verbatim.

One adaptation: the **"Our approach"** block in `service-details.html` is a nested `div.row` (not a full section), so it was wrapped in `<section class="peocess pt-140 pb-150"><div class="container">…</div></section>` to slice cleanly.

### Verification done

- 18 `<section>` open/close pairs balanced; single `main` / `footer`.
- Every section marker is immediately followed by a clean `<section …>` open tag (no partial/leaked tags at slice boundaries).
- Section order confirmed to match the wireframe top-to-bottom.
- Output is UTF-8 **no-BOM**; 0 `Ã/Â` mojibake; German shell chars intact (e.g. "Lösungen", "Machen wir Ihren Standort sichtbar."); `<title>` set.

---

## 4. How to review

- **Direct:** open `c:\hysn-main\installationpage\index.html` in a browser (works over `file://`).
- **Local server (recommended for slider/scroll accuracy):**
  ```powershell
  cd c:\hysn-main\installationpage
  python -m http.server 8080   # then visit http://localhost:8080
  ```

---

## 5. Known state / not-yet-done

- **Copy is still the template's English placeholder text** in the grafted sections — German HYSN copy (Sie-form) from `w11_installation_v3.md` is a separate pass.
- The 4 HYSN-specific sections are **placeholder stubs** (awaiting preferred design): coverage map, Vorher/Nachher, HYSN-brings/location-provides, technical-points table.
- Template default links/images remain (breadcrumb bg, slider/FAQ/testimonial images) — asset/link swap is a later pass.
- **Two CTA bands reuse the same `cta` component** (sections 9 and 13). Section 13 also stacks directly above the homepage footer's own top CTA ("Machen wir Ihren Standort sichtbar.") — same double-CTA situation flagged on the content-creation page; resolve in review.

## 6. Suggested next steps

1. Review layout / section order and the double-CTA footer.
2. Swap template copy → real HYSN German content from `w11_installation_v3.md`.
3. Design + insert the 4 placeholder sections in their wireframe positions.

---

## 7. Copy pass + layout changes — Session log (2026-06-15)

**Goal:** Apply the full HYSN German copy from `w11_installation_v3.html` and restructure several sections per the client's direction. Method: Edit tool for German copy (UTF-8 safe); two large/duplicate-slide blocks (project slider, testimonial quotes) replaced via a UTF-8 fragment written with the Write tool then spliced in with PowerShell (avoids PS string-literal mojibake); Section 2 removed by precise line deletion.

### Section-by-section mapping (final state)

| Layout section | w11 content applied | Change type |
|---|---|---|
| 1a Hero | Hero (H1, lead, 2 CTAs, objection, 4 trust items) | **Replaced** plain breadcrumb with the contact page's `hy-hero` 2-column layout (left text/CTAs, right info card) |
| 1b Brand strip | German trust line | Copy only (logos still placeholders) |
| ~~2 "Who we are"~~ | — | **Removed** (per client; custom layout to come later) |
| 3 Tools & technologies | **Was bei schlechter Montage schiefgeht** (left, 5) + **Was HYSN übernimmt** (right, 8) | **Restructured** into a problem→solution transition (scoped CSS, kept the wireframe's left/middle/right + badge) |
| 4 Services (accordion) | **Ablauf** — 5 process steps | Copy into the 5 accordion blocks |
| 5 Impact & results | **Nach der Montage** (after-assembly handover) | Copy; 3 progress bars relabelled as handover guarantees (all 100 %) |
| 6 Our approach | — | **Left untouched (still English)** per client instruction — custom content later |
| 7 Feature (dark) | **Montagearten** — 5 mounting types | Expanded 4→5 cards + intro lead |
| 8 Project slider | **Typische Installations-Szenarien** — 4 use cases | Slider rebuilt from 5 (incl. dupes) to 4 clean slides via fragment-splice |
| Coverage (custom) | **Servicegebiet** + map | **Built** (was placeholder); shared `.hy-sec` CSS lives here |
| 9 Mid CTA | **Nächster Schritt** mid-CTA | Copy (split headline + button + lead) |
| Before/After (custom) | **Vorher/Nachher** case study | **Built** — 2-column before/after with bullet lists |
| 10 Services (consulting) | **Wenn der Standort nicht Standard ist** — 4 cards | Copy (titles + bullet lists) |
| 11 Testimonials | **Stimmen** — 6 quotes (3 from w11 + 3 example) | Rebuilt 6 quote slides via fragment-splice; `id="stimmen"` added (hero anchor) |
| HYSN brings/provides (custom) | **Verantwortung** — 2-column | **Built** — HYSN brings (6) vs location provides (6) |
| Technical table (custom) | **Technikblatt** — 6-row spec sheet | **Built** — Tragfähigkeit / Strom / Netzwerk / Belüftung / Schutz & Reinigung / Content-Format |
| 12 FAQ | **FAQ** — 5 of the 10 questions | Copy into 5 accordion items |
| 13 Final CTA | **Final CTA** ("Damit Ihr Screen … sauber läuft") | Copy (split headline + button + lead) |

### Verification done
- 17 `<section>` pairs balanced; single `main`/`footer`; UTF-8 no-BOM; 0 `Ã/Â` mojibake.
- No residual visible English template copy (only HTML comments, the `business-consulting` body class, and the intentionally-untouched Section 6).
- 0 `hysn-custom-placeholder` blocks left (all 4 built).

### Known open items / decisions to revisit
1. **Section 6 "Our approach"** is still the English Bizox 3-card block — left in place per instruction, awaiting custom content/design.
2. **Section 5 progress bars** carry handover guarantees at 100 % (no real percentages exist for handover) — same "soft indicator" pattern flagged on the about page; consider converting bars to a plain 4-item list.
3. **Two `cta` bands** (Section 9 mid + Section 13 final) reuse the same component, and Section 13 stacks above the homepage footer's own CTA — confirm in browser, drop one if redundant.
4. **3 example testimonials** (slides 4–6) marked `(Beispielwert)` — replace with real installation quotes when available.
5. **w11 "Installations-Beispiele" proof gallery** has no home in the current layout (Section 2 was removed) — the hero "Installations-Beispiele" button currently points to `#stimmen`. Add a real photo gallery later if wanted.
6. **Assets** still Bizox placeholders (hero bg, slider/FAQ/testimonial images, coverage map, before/after images) — asset swap is a later pass.
7. **Slider metric tokens** (e.g. "IP65", "Multi", "Off") render in the large number style — review visually; refine if they read awkwardly.
