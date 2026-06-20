# About Page Build — Session Summary

**Date:** 2026-06-14
**Goal:** Re-create the re-arranged wireframe as a standalone **About page** by reusing existing Bizox template components (modifying, not rebuilding) and the HYSN homepage shell.

---

## 1. Context

- Project: **HYSN** website rebuild (operated by RA Vision GmbH), based on the **Bizox** HTML template in [`../../bizox-html-package/Bizox/`](../../bizox-html-package/Bizox/).
- A re-arranged composite wireframe image was provided for analysis.
- Constraint: locate each wireframe section **in the Bizox template files** — *not* from the existing [`../../homepage/`](../../homepage/) folder or its content.
- Exception: the **footer** was explicitly reused from the homepage.

---

## 2. Wireframe analysis — where each section came from

The wireframe is a **composite** pulling sections from `index.html`, `home-2.html`,
`about.html`, `contact.html`, and `career.html`, plus several HYSN-specific sections
that have **no template markup yet**.

### Sections located in the template

| # | Wireframe section | Source file | Source lines | Component |
|---|---|---|---|---|
| 1 | "About Us" breadcrumb header | about.html | 333–356 | `section.breadcrumb` |
| 2 | Partner logo marquee (busha, access, Gate.io, Huobi, alphaex) | index.html | 784–826 | `section.brand` |
| 3 | "Every successful strategy starts with a chat" + form | index.html | 1211–1381 | `section.contact` |
| 4 | Our mission / vision / history (3 cards) | about.html | 358–514 | `section.feature` |
| 5 | "You can reach out … respond within 24 hours" band | contact.html | 462–469 | `xb-contact-top` (trimmed) |
| 6 | "Why industry leaders choose our firm" (dark) | index.html | 715–782 | `section.feature` |
| 7 | "Why people work with us" | career.html | 706–787 | `section.feature` |
| 8 | "Award-winning … since 1994" + stats (82.4%, 9,700) | index.html | 399–486 | `section.about` (`xb-about-section`) |
| 9 | "Tools & technologies we use" (dark) | home-2.html | 1179–1349 | `section.technology-section` |
| 10 | "Step-by-step workflow" (Audit → Results) | home-2.html | 606–752 | `section.peocess` |
| 11 | "Ready to transform your business?" + form | home-2.html | 1351–1464 | `section.contact` |
| — | Footer + Newsletter | **homepage/index.html** | 1959–2177 | `footer-style-one` |

### Sections NOT in the template — dismissed by design (HYSN-specific, to design later)

- Testimonial quote — *"Many customers don't come to us … buy a screen"* (Ranjeeb Khan / RA Vision GmbH)
- *"RA Vision GmbH, HYSN, and hyads — clearly separated, but strategically connected"* (3-column brand explainer)
- *"HYSN doesn't plan brand-blind — it plans project-specifically"* (Samsung / LG / LED hardware / CMS)
- *"Personal project support in the Rhein-Main area"* (map placeholder, nationwide execution)

---

## 3. What was built

- New self-contained folder: **`aboutpage/`**
  - [`../index.html`](../index.html) — assembled About page (~1,588 lines)
  - [`../assets/`](../assets/) — full copy of the template assets (css, js, img, fonts), 26.6 MB, so the page runs standalone over `file://`
  - [`docs/`](.) — this summary

### Assembly method

The page was built by **slicing the located sections verbatim** (including all inline SVGs)
from their source files by line range and concatenating them between the homepage shell:

- **Shell head + header + offcanvas sidebar:** homepage/index.html lines 1–239 (German nav, `<title>` changed to *HYSN — About Us*).
- **Sections 1–11:** spliced in wireframe top-to-bottom order.
- **Shell footer + scripts:** homepage/index.html lines 1955–end (the homepage `footer-style-one` + all plugin scripts).

No components were rewritten — styling and JS behave exactly as in the original demos.

### Key build decisions

1. **Homepage shell reused** so the About page shares the same German header, offcanvas sidebar, footer, and script stack as the homepage — only the `<main>` content differs.
2. **One component modification (section 5):** the source `contact.html` block carried a 4-up location-card grid (San Francisco / London / Toronto) that is **not** in the wireframe. Kept the existing `xb-contact-top` heading band and **trimmed** the card grid. This is the only structural change; everything else is verbatim.
3. **Self-contained assets:** copied locally (identical 26.6 MB set to homepage) → relative `assets/...` paths resolve; the page opens over `file://`.
4. **Dark sections verified:** `section.feature` (`bg-linear`) and `section.technology-section` (`::before` overlay `rgba(25,27,33,0.85)`) carry their dark backgrounds via CSS — they render dark, not white-on-white.

### Verification done

- 11 `<section>` open/close pairs balanced; single `main` / `footer` / `body` / `html`.
- Section order confirmed to match the wireframe top-to-bottom.
- Slice boundaries spot-checked clean (no partial/leaked tags).
- Breadcrumb confirmed to render the "About Us" title.

---

## 4. How to review

- **Direct:** open `c:\hysn-main\aboutpage\index.html` in a browser (works over `file://`).
- **Local server (recommended for slider/scroll accuracy):**
  ```powershell
  cd c:\hysn-main\aboutpage
  python -m http.server 8080   # then visit http://localhost:8080
  ```

---

## 5. Known state / not-yet-done

- **Copy is still the template's English placeholder text** in the grafted sections — German HYSN copy (Sie-form) is a separate pass. (The header/footer shell is already German, matching the homepage's current mixed state.)
- The 4 HYSN-specific sections above are **absent by design** (awaiting preferred design).
- Template default links remain (e.g. breadcrumb "bizox" → `index.html`); to be pointed at real targets later.

## 6. Suggested next steps (pre-copy-pass)

1. Review layout / section order and spacing.
2. Swap template copy → real HYSN German content.
3. Design + insert the 4 dismissed HYSN-specific sections in their wireframe positions.

---

## 7. Copy pass — Session log (2026-06-14)

**Goal:** Replace all visible template English with HYSN German (Sie-form).
**Copy sources:** `homepage/docs/homepage-copy.md` (brand facts, voice rules) + wireframe `w08_about_v3.html` (section-by-section copy blocks).
**Voice rule:** Customer-as-hero. HYSN is the guide. No "Wir sind HYSN"-style openers.

### Section mapping (all 11 modifiable sections)

| # | Section (line) | Template copy | HYSN copy source | Layout change? |
|---|---|---|---|---|
| 1 | Breadcrumb [L242] | "About Us" + consulting blurb | w08 hero lead + "Über uns" | No |
| 2 | Brand marquee [L267] | "Trusted by the best" | Trust sub-title only (logos = asset decision) | No |
| 3 | Contact + form [L311] | "Every successful strategy…" + 6 checks | w08 Final CTA + value checklist + Rhein-Main contact | No |
| 4 | Feature 3-card [L483] | Mission / Vision / History | w08 Origin story (Ursprung) | **Yes — 3→2 cards, header added** |
| 5 | Contact band [L641] | "You can reach out…" band | w08 StoryBrand One-Liner | No |
| 6 | Feature 4-card "Why Choose Us" [L653] | 4 generic USPs | w08 Belege / Authority (4 proof cards) | No |
| 7 | Feature 6-card "Why work with us" [L722] | Employer-branding (career, offices) | w08 Werte im Alltag (4 values) | **Yes — 6→4 cards** |
| 8 | About + 4 counters [L805] | "since 1994 / 80+ countries" | w08 Zahlen & Fakten (30, 3, 2025, 6) | No (counter swap only) |
| 9 | Technology grid [L894] | "Tools & technologies" | w08 Technik & Beschaffung | No |
| 10 | Process 4-step [L1066] | Audit / Strategy / Execution / Results | HYSN 4-step flow from homepage §3.8 | No |
| 11 | Contact + form [L1214] | "Ready to transform your business?" | w08 Erstgespräch CTA + "What happens next" | No |

### Decisions locked in this session

1. **Section 4 layout:** 3 cards → **2 cards** (col-lg-6 each) with a new section header above. Origin story framing: "Der Auslöser war nicht ein Bildschirm."
2. **Section 7 layout:** 6 cards → **4 cards** (col-lg-6, 2×2 grid). Employer-branding removed; replaced with customer-facing Werte.
3. **4th odometer stat:** "DACH" (non-numeric) → **6** (Branchen abgedeckt). All four counters remain numeric.
4. **Sections with no template home (dismissed):** Problem/empathy two-col · Founder voice · Timeline/Entwicklung · Region map. Awaiting custom design.

### What was implemented (this session)

| Section | Status | Notes |
|---|---|---|
| Section 4 — Origin Story | **Done** | 2 cards + header. `ab-feature-item` vibe preserved. Bullet lists removed. |
| Section 7 — Werte im Alltag | **Done** | 4 cards (col-lg-6 2×2). `cp-feature-item` structure preserved. Icons 01–04 kept. |

### Copy pass complete — session log (2026-06-14, session 3)

All 11 sections now carry HYSN German (Sie-form) copy. No English template text remains.

| Section | Status | Notes |
|---|---|---|
| Section 1 — Breadcrumb | **Done** | "Über uns"; hero lead; breadcrumb link → HYSN |
| Section 2 — Brand marquee | **Done** | Sub-title updated; logos remain template placeholders |
| Section 3 — Contact + form (top) | **Done** | HYSN heading, 6-item checklist, Rhein-Main contact, Germanised form fields + dropdown |
| Section 5 — Contact band | **Done** | StoryBrand one-liner: "Standorte, die sichtbar wirken…" |
| Section 6 — Feature "Why Choose Us" | **Done** | Reused 4 homepage USPs verbatim (Alles aus einer Hand / Erprobt / Werbeeinnahmen / Pilot vor Rollout) |
| Section 8 — About + counters | **Done** | New heading + body; counters → 30, 3, 2025, 6 with German labels; CTA → contact.html |
| Section 9 — Technology (restructured) | **Done** | **Layout changed:** left = 4 VORHER items (before HYSN); right = 4 NACHHER items (after HYSN). 16-logo grid removed. Middle badge element preserved. |
| Section 10 — Process 4-step | **Done** | HYSN 4-step flow from homepage §3.8 |
| Section 11 — Contact + form (bottom) | **Done** | Erstgespräch CTA, "Wie geht es weiter?" steps, HYSN contact details, Germanised form labels |

### Known visual to-do (next review pass)

- **Section 9 CSS:** the `.xb-technology-item-right` container was designed for a 4×4 logo grid; now holds 4 stacked items. May need CSS tweaks to match the proportions of the left column visually.
- **Section 9 icons:** both VORHER and NACHHER sides reuse `technology-icon01–04.gif` (Bizox placeholders). Custom display-product icons or photos needed later.
- **Brand logos (Section 2) and tool logos:** still Bizox placeholder images — asset swap is a separate pass.

### Technical notes (carry forward)

- **Encoding:** write PS scripts to a `.ps1` file via the Write tool, then run with `powershell -ExecutionPolicy Bypass -File`. Do NOT write German chars inline in PowerShell commands — PS 5.1 reads UTF-8 PS1 files as Windows-1252, double-encoding every umlaut. Workaround: use `[char]0xFC` etc. notation, or run a global char-fix pass (patch3 approach: replace garbled 2-char sequences with correct Unicode).
- **Odometer JS:** four `data-count` attributes in section 8 are now `30`, `3`, `2025`, `6` — all plain integers.
- **Verified:** 11 section open/close pairs balanced; no residual English template text; all German special chars correctly encoded in UTF-8.
