# Contact Page Build — Session Summary

**Date:** 2026-06-15
**Goal:** Re-create the re-arranged **Contact page** wireframe as a standalone page by reusing existing Bizox template components (slicing, not rebuilding) and the HYSN page shell — the same method documented in [`../../aboutpage/docs/about-page-build.md`](../../aboutpage/docs/about-page-build.md).

---

## 1. Context

- Project: **HYSN** website rebuild (operated by RA Vision GmbH), based on the **Bizox** HTML template in [`../../bizox-html-package/Bizox/`](../../bizox-html-package/Bizox/).
- A re-arranged composite wireframe image for the Contact page was provided.
- Constraint: locate each wireframe section **in the Bizox template files** and assemble the layout from those.
- Per the user's instruction, the **custom HYSN-specific sections** in the wireframe (no template markup) are **kept out of this layout for now**.
- Shell (head / header / offcanvas / footer / scripts) reused from the already-assembled **aboutpage** so the Contact page shares the same German header, sidebar, footer, and script stack.

---

## 2. Wireframe analysis — where each section came from

The wireframe is a **composite** pulling sections from `contact.html`, `index.html`,
`service-details.html`, `home-2.html`, and `career.html`, plus two HYSN-specific
sections that have **no template markup yet**.

### Sections located in the template (included in the layout)

| # | Wireframe section | Source file | Source lines | Component |
|---|---|---|---|---|
| 1 | Breadcrumb header ("Contact us") | contact.html | 334–355 | `section.breadcrumb` |
| 2 | "Briefly describe what you're working on." form + "What you can expect" info panel | index.html | 1212–1380 | `section.contact` (form + `xb-contact-ser_list`/`xb-contact-method`) |
| 3 | "Our approach" — 3 steps (Market research / Customer insights / Recommendations) | service-details.html | 482–570 | `xb-process-item` grid (wrapped in a new `section.peocess`) |
| 4 | "Our successful cases" — case-study slider | home-2.html | 755–1120 | `section.project` (Swiper slider) |
| 5 | "Frequently asked questions" — accordion | career.html | 378–459 | `section.hiring-process` (`xb-faq` accordion) |
| 6 | Final CTA | home-2.html | 1557–1592 | `section.cta` |
| — | Shell (head + header + offcanvas + footer + scripts) | **aboutpage/index.html** | 1–239, 1133–end | HYSN German shell |

### Sections NOT in the template — kept out by design (HYSN-specific, to design later)

These match the placeholder boxes in the wireframe and the dismissed sections noted in the about-page build:

- **"You'll speak with someone who can properly assess your project"** — point-of-contact, two-column with an *image placeholder* ("point of contact / office / project meeting") + "Briefly describe your project" box.
- **"RA Vision GmbH — in-person meetings by appointment"** — location section with a *map placeholder* + address + "Send a meeting request" (same as the about-build's dismissed "Personal project support in the Rhein-Main area" map section).

---

## 3. What was built

- New self-contained folder: **`contactpage/`**
  - [`../index.html`](../index.html) — assembled Contact page (1,278 lines)
  - [`../assets/`](../assets/) — full copy of the template assets (css, js, img, fonts), identical to the aboutpage set, so the page runs standalone over `file://`
  - [`docs/`](.) — this summary

### Assembly method

The page was built by **slicing the located sections verbatim** (including all inline SVGs)
from their source files by line range and concatenating them between the HYSN page shell:

- **Shell head + header + offcanvas sidebar:** aboutpage/index.html lines 1–239 (German nav, `<title>` changed to *HYSN — Kontakt*).
- **Sections 1–6:** spliced in wireframe top-to-bottom order.
- **Shell `</main>` + footer + scripts:** aboutpage/index.html lines 1133–end (HYSN `footer-style-one` + all plugin scripts).

No components were rewritten — styling and JS behave exactly as in the original demos.

### Key build decisions

1. **Shell reused from aboutpage** so Contact shares the exact same German header, offcanvas sidebar, footer, and script stack — only the `<main>` content differs.
2. **One component modification (section 3):** the "Our approach" 3-step block lives **inside** the service-details column layout in the template (it is an `<h2>` + a `row` of `xb-process-item` cards, not its own `<section>`). It was **wrapped in a standalone `section.peocess`** (container-fluid + `mlr-70`) so it stands alone on the page. The cards themselves are verbatim.
3. **Self-contained assets:** copied locally (identical set to aboutpage) → relative `assets/...` paths resolve; the page opens over `file://`.
4. **Custom sections omitted:** the two HYSN-specific sections (point-of-contact, in-person-meetings map) are absent by design, per the user's instruction to keep them out for now.

### Verification done

- 6 `<section>` open/close pairs balanced; single `main` / `footer` / `body` / `html`.
- Section order confirmed to match the wireframe top-to-bottom (breadcrumb → form → approach → cases → FAQ → CTA).
- Slice boundaries spot-checked clean (no partial/leaked tags); approach wrapper join verified.
- Title renders *HYSN — Kontakt*; German footer chars (Lösungen, ©, ·) verified correctly UTF-8 encoded (no mojibake).

---

## 4. How to review

- **Direct:** open `c:\hysn-main\contactpage\index.html` in a browser (works over `file://`).
- **Local server (recommended for slider/scroll accuracy):**
  ```powershell
  cd c:\hysn-main\contactpage
  python -m http.server 8080   # then visit http://localhost:8080
  ```

---

## 5. Known state / not-yet-done

- **Copy is still the template's English placeholder text** in the grafted sections — German HYSN copy (Sie-form) is a separate pass, exactly as the aboutpage was handled. (The header/footer shell is already German.)
- The 2 HYSN-specific sections above are **absent by design** (awaiting preferred design).
- **Final CTA (section 6)** uses the template's `section.cta` (marquee + single button + image). The wireframe's lighter two-button band ("Discuss your display project" / "Start by email") is a copy/refinement-pass item.
- Template default links remain (e.g. breadcrumb "bizox" → `index.html`, case-study buttons → `project-details.html`); to be pointed at real targets later.

## 7. Revision — Session 2 (2026-06-15)

Per user request, three sections were removed and the FAQ was swapped for the real
template FAQ that matches the wireframe:

- **Removed** section 2 "Every successful strategy starts with a chat" (index.html contact form).
- **Removed** the "Our hiring process" accordion (career.html `hiring-process`) that had been used as a FAQ stand-in.
- **Removed** the "Get more traffic" CTA (home-2.html `section.cta`), and **in its place** located the actual FAQ from the template.
- **Added** the real "Frequently asked questions" section from **pricing.html (806–914)** — `section.hiring-process` with the `Faq's` sub-title, heading, faq image, and the 5-item accordion (choose the right plan / upgrade-downgrade / long-term contract / consulting hours roll over / payment methods) that matches the wireframe.

The approach and cases sections were left byte-identical (not touched).

### Current layout (4 sections)

| # | Section | Source | Lines |
|---|---|---|---|
| 1 | Breadcrumb header | contact.html | 334–355 |
| 2 | "Our approach" (3 steps) | service-details.html | 482–570 (wrapped) |
| 3 | "Our successful cases" slider | home-2.html | 755–1120 |
| 4 | FAQ "Frequently asked questions" | pricing.html | 806–914 |

Verified: 4 `<section>` pairs balanced; single `main`/`footer`/`body`/`html`; removed sections return 0 matches; FAQ present. File is now 1,098 lines.

---

## 8. Revision — Session 3 (2026-06-15): re-aligned to `w09_contact_v3.html` + German copy pass

A detailed HTML wireframe (`w09_contact_v3.html`) with finished German copy was provided.
It is a **different, more developed layout** than the earlier image wireframe, so the page
was rebuilt to match it (custom sections + final CTA excluded per user decision) and the
**w09 German copy was applied** (Sie-form, customer-as-hero, low-pressure — per the
[about-page-copy-guide.md](../../aboutpage/docs/about-page-copy-guide.md) conventions).

### Decisions (user-confirmed)
- **Hero:** breadcrumb band + stat card, restructured to follow the w09 two-column hero look (title/lead/2 buttons left, stat card right).
- **Cases slider:** dropped (not in w09); slot filled with the best-fit w09 sections.
- **Final CTA:** skipped for now (no clean Bizox two-button equivalent); page ends on FAQ.
- **Custom sections** (Ansprechpartner image-placeholder, Standort map) left out by design.

### Current layout (5 sections, w09 order)

| # | Section (w09) | Template base | Source | Notes |
|---|---|---|---|---|
| 1 | Hero (two-col + stat card) | `section.breadcrumb` | contact.html 334–355 | Restructured to two-column; scoped `<style>` (`hy-hero`) for the stat card + buttons |
| 2 | Contact form + trust + channels | `section.contact` | index.html 1212–1380 | Checklist → 4 "Was Sie erwarten können" items; contact-method → Standort + direkt erreichbar; form Germanised; `id="formular"` |
| 3 | "Nach dem Absenden" 3-step | `xb-process-item` grid | service-details.html 482–570 | Re-copied (Bestätigung / Persönliche Rückmeldung / Planung); section header added |
| 4 | "Direkter Kontakt" 4 cards | rebuilt on `section.contact` | contact.html 463–643 | Location cards replaced with 4 channel cards (Telefon/E-Mail/WhatsApp/Termin); scoped `<style>` (`hy-direct`); `id="direktkontakt"` |
| 5 | FAQ | `section.hiring-process` | pricing.html 806–914 | 5 plan questions → 4 w09 questions; bullet lists removed |

### Notes / open items
- **Scoped custom CSS:** the hero and "Direkter Kontakt" cards use small inline `<style>` blocks (prefixed `hy-`) so they follow the w09 look within the Bizox shell. This is the only departure from the "template-verbatim" rule, and it was authorised for the hero.
- **Anchors:** hero buttons link to `#formular` (form) and `#direktkontakt` (channels).
- **Skipped by design:** final CTA + the 2 custom sections (Ansprechpartner, Standort).
- Verified: 5 `<section>` pairs + 2 `<style>` blocks balanced; single `main`/`footer`/`html`; **zero residual English template text**; German chars correctly UTF-8 encoded. File is 984 lines.

---

## 6. Suggested next steps

1. Review in browser (esp. hero stat-card on the dark band + "Direkter Kontakt" card heights).
2. Design + insert the 2 custom HYSN sections (Ansprechpartner, Standort/map) in their w09 positions (between Direkter Kontakt and FAQ).
3. Decide on the final two-button CTA (w09 [ABSCHLUSS-CTA]) once a CTA component is chosen.
4. Swap remaining Bizox placeholder assets (breadcrumb bg image, faq image) for HYSN visuals.
