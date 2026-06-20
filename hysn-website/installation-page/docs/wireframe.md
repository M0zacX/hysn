# Installationpage Build — Wireframe Section Map

**Date:** 2026-06-15
**Goal:** Map every section in the installationpage wireframe to its source file in the project. Custom sections with no template equivalent are marked **DISMISS** (to be designed later).

---

## 1. Context

- Page: **HYSN Installationpage** (`installationpage/index.html`)
- Template base: **Bizox** HTML package at [`../bizox-html-package/Bizox/`](../bizox-html-package/Bizox/)
- Methodology mirrors [`../homepage/docs/wireframe.md`](../homepage/docs/wireframe.md) — sections extracted verbatim from source files, reordered to match the wireframe.

---

## 2. Wireframe section analysis

### Sections located in the template or already built into `installationpage/index.html`

| # | Wireframe section | Source file | Component / comment marker | Status in installationpage |
|---|---|---|---|---|
| 1 | Header + offcanvas sidebar | `installationpage/index.html` | `header-style` / `offcanvas-sidebar` | **Built** L55–234 |
| 2 | Hero — *Digitale Screens sauber montiert* | `installationpage/index.html` | `hy-hero` (custom breadcrumb-style) | **Built** L241–302 |
| 3 | Stats strip — *100K+, TOP 10, 120+* | `bizox-html-package/Bizox/home-3.html` L371–415 | `funfact` / `cg-funfact-wrap` | **Not yet in page** |
| 4 | *Our serv...* — services accordion (Email marketing, PPC, etc.) | `bizox-html-package/Bizox/home-2.html` L474–603 | `service__blockchain` | **Built** (HYSN variant) L473–603 |
| 6 | *Our hiring process* — numbered steps | `bizox-html-package/Bizox/career.html` L377–460 | `hiring-process` | **Not yet in page** |
| 7 | *Step-by-step act...* — accordion workflow | `bizox-html-package/Bizox/home-2.html` L607–752 | `peocess` / "Step-by-step workflow" | **Built** (HYSN variant, "Fünf Schritte") L473–603 |
| 9 | *Our successful cas...* — project slider | `installationpage/index.html` | `xb-project-slider` (from `home-2.html`) | **Built** L864–1164 |
| 12 | Large CTA image — *749X775* | `installationpage/index.html` | `xb-cta-wrap` / `cta` (from `home-2.html`) | **Built** L1213–1249 |
| 14 | *Our approach* — 3 process cards | `installationpage/index.html` | `sd-process-item` (from `service-details.html` L482) | **Built** L697–789 |
| 15 | *Tools & frameworks used* — logo grid | `bizox-html-package/Bizox/home-2.html` L1180–1349 | `technology-section` / `xb-technology-wrapper` | **Not yet in page** |
| 17 | *Happy clients observation* (dark) | `installationpage/index.html` | `testimonial` (from `index.html`) | **Built** L1509–1851 |
| 18 | *What is market & competitor analysis?* | `bizox-html-package/Bizox/service-details.html` L365–620 | `xb-details-analysis` / `xb-details-title` | **Not yet in page** |
| 19 | *Frequently asked questions* — accordion | `installationpage/index.html` | `hiring-process` / `pricing-faq` (from `pricing.html`) | **Built** L1918–2027 |
| 21 | *Plan for support before a failure becomes apparent* — final CTA | `installationpage/index.html` | `cta` (from `home-2.html`) | **Built** L2028–2064 |
| 22 | Footer + Subscribe Newsletter | `installationpage/index.html` | `footer-style-one` (from `index.html`) | **Built** L2068–2286 |

### Sections NOT in the template — deliberately dismissed (to be designed later)

These wireframe sections have no matching Bizox component and are custom HYSN copy:

- **#5** — *Everything that ensures the continued operation of your displays* (bullet-list feature block)
- **#8** — *Problems should be identified before they become apparent in day-to-day operations* (card grid)
- **#10** — *The problem they faced* (case-study detail narrative)
- **#11** — *The right support depends on how important the screen is to your business* (support-tier comparison grid)
- **#13** — *Clear feedback instead of an open ticket* + **4h** response metric
- **#16** — *Wartung ist günstiger als ein sichtbarer Ausfall Betriebs* (German value-prop text block)
- **#20** — Full-width image placeholder (*949X69*)

---

## 3. Sections already built vs. still needed

### Already in `installationpage/index.html`

| Section | Lines |
|---|---|
| Header + sidebar | 55–234 |
| Hero (`hy-hero`) | 241–302 |
| Brand logo strip | 303–356 |
| VS comparison / technology section (custom) | 357–471 |
| Service accordion — *Fünf Schritte* | 473–603 |
| About / results — *dm-about-wrapper* | 604–695 |
| Our approach — 3 cards | 697–789 |
| Feature — *Montagearten* | 790–863 |
| Project slider | 864–1164 |
| Servicegebiet (custom) | 1165–1212 |
| Mid-page CTA strip | 1213–1249 |
| Vorher / Nachher (custom) | 1250–1283 |
| Service list — *Nicht jede Wand ist Beton* | 1284–1508 |
| Testimonials | 1509–1851 |
| Wer bringt was mit? (custom) | 1852–1883 |
| Technisches Scope-Sheet (custom) | 1884–1917 |
| FAQ | 1918–2027 |
| Final CTA | 2028–2064 |
| Footer | 2068–2286 |

### Template components to graft in (not yet in page)

| Wireframe # | Section | Source | Component |
|---|---|---|---|
| 3 | Stats strip — 100K+, TOP 10, 120+ | `home-3.html` L371–415 | `funfact` / `cg-funfact-wrap` |
| 6 | *Our hiring process* steps | `career.html` L377–460 | `hiring-process` |
| 15 | *Tools & frameworks used* logo grid | `home-2.html` L1180–1349 | `technology-section` / `xb-technology-wrapper` |
| 18 | *What is market & competitor analysis?* | `service-details.html` L365–620 | `xb-details-analysis` |

---

## 4. Suggested next steps

1. Graft the 4 missing template components into the page at their wireframe positions.
2. Swap placeholder copy → real HYSN German content for grafted sections.
3. Design + insert the 7 custom HYSN sections in their wireframe positions.
