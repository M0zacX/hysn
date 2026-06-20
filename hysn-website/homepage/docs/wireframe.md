# Homepage Build — Session Summary

**Date:** 2026-06-13
**Goal:** Recreate the rearranged homepage wireframe as a working layout, reusing existing Bizox template components instead of building from scratch.

---

## 1. Context

- The project is the **HYSN** website rebuild (operated by RA Vision GmbH), based on the **Bizox** HTML template located in [`../bizox-html-package/Bizox/`](../bizox-html-package/Bizox/).
- A rearranged wireframe image (a composite homepage) was provided for analysis.
- Strategy briefs live in [`../Temp/md/`](../Temp/md/); the master briefing is [`../Temp/md/CLAUDE.md`](../Temp/md/CLAUDE.md).

---

## 2. Wireframe analysis — where each section came from

The wireframe is a **composite** pulling sections from three template home variants
(`index.html`, `home-2.html`, `home-3.html`) plus several HYSN-specific sections that
**do not yet exist** in the template.

### Sections located in the template (built into `index.html`)

| # | Wireframe section | Source file | Component / comment marker |
|---|---|---|---|
| 1 | Header + offcanvas sidebar | index.html | `header` / `offcanvas-sidebar` |
| 2 | Hero — *Business challenges solved smartly* + **BUSINESS** | index.html | `hero-one` |
| 3 | About + stats (80+, 10M, 82.4%, 9,700) | index.html | `xb-about-section` |
| 4 | *We're more than a marketing agency* + **Our results** bars | home-2.html | `dm-about-wrapper` |
| 5 | *Why industry leaders choose our firm* (dark) | index.html | `feature` |
| 6 | *Drive growth and strategy guided by our expertise* (dark band) | home-3.html | `cg-service-wrap` |
| 7 | *Our successful cases* (slider) | home-2.html | `xb-project-slider` |
| 8 | *Step-by-step workflow* (Audit → Results) | home-2.html | `peocess` |
| 9 | *Explore recent case studies* (sticky cards) | index.html | `xb-project-stricky` |
| 10 | *Our services* (4-item list) | index.html | `xb-service-wrapper` |
| 11 | *Happy clients observation* (dark) | index.html | `testimonial` |
| 12 | Footer + *Subscribe Newsletter* | index.html | `footer-style-one` |

### Sections NOT in the template — deliberately left out (to be designed later)

These come from the HYSN briefs and have no template markup yet:

- *The problem they faced*
- *Digital visibility works where people actually pass by* (diagram)
- *Before a static printed menu. After: three active digital menu surfaces*
- *A screen is easy to buy. Impact only comes from actually running it.*
- *Some locations can do more than inform* (advertising-surface comparison)
- *If your location keeps looking the same, the impact stays the same too*
- *Which screen fits your location?*

---

## 3. What was built

- New self-contained folder: **`homepage/`**
  - [`index.html`](index.html) — assembled homepage (~2,300 lines)
  - [`assets/`](assets/) — full copy of the template assets (css, js, img, fonts) so the page runs standalone
- Sections were extracted **verbatim** (including all inline SVGs) from the source files by line range and reordered to match the wireframe — **no components were rewritten**, so styling and JS behave exactly as in the original demos.

### Key build decisions

1. **`index.html` is the base** (`body class="business-consulting"`). The CSS is global — body classes only swap a few color variables — so home-2 sections graft in cleanly.
2. **One adaptation:** the home-3 *Drive growth* cards are hardcoded dark navy (`#081539`) with white text, designed for a fully dark page. That single section was wrapped in
   `<div class="start_Up_consulting" style="background-color:#020412">` so it renders as the dark band shown in the wireframe instead of floating on white. This is the only structural addition.
3. **Self-contained:** assets copied locally → relative `assets/...` paths resolve, page opens over `file://`.

### Verification done

- 10 `<section>` open/close pairs balanced; single `main` / `footer` / `html`; one `start_Up_consulting` wrapper.
- Section order confirmed to match the wireframe top-to-bottom.
- Spot-checked that all grafted home-2 / home-3 asset references exist in the copied folder.

---

## 4. How to review

- **Direct:** open `c:\hysn-main\homepage\index.html` in a browser (works over `file://`).
- **Local server (recommended for slider/scroll accuracy):**
  ```powershell
  cd c:\hysn-main\homepage
  python -m http.server 8080   # then visit http://localhost:8080
  ```

---

## 5. Known state / not-yet-done

- **Copy is still the template's English placeholder text** — the German HYSN copy (Sie-form, customer-as-hero framing per `CLAUDE.md`) is a separate pass.
- The 7 HYSN-specific sections above are **absent by design** (awaiting your preferred design).
- No DOOH revenue-model numbers appear here yet (the 10%/20% correction in `CLAUDE.md` applies to other pages, not this layout).

## 6. Suggested next steps

1. Review layout/section order and spacing.
2. Swap template copy → real HYSN German content.
3. Design + insert the 7 custom HYSN sections in their wireframe positions.
