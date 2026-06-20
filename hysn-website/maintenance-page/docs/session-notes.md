# Maintenance Page — Session Notes

**File:** `c:\hysn-main\maintenance-page\index.html`
**Last updated:** 2026-06-18
**Status:** Full w12 *Wartung & Support* copy pass applied to all 11 sections. No English placeholder or leftover installation copy in visible text. Custom HYSN sections from §4 still not built.

---

## 1. What this page is

The HYSN (RA Vision GmbH) **Wartung & Support** (maintenance) page, assembled from the **Bizox** HTML template
components (in `../bizox-html-package/Bizox/`) plus sibling HYSN pages (`installation-page/`, `homepage/`).
Sections were stitched **verbatim** from those sources — global CSS/JS is unchanged, so components behave exactly
as in the original demos.

The build methodology mirrors `../homepage/docs/wireframe.md`: **reuse existing template components where they
exist; leave HYSN-specific sections out entirely** (no placeholder gaps) until they are designed later.

### Authoritative references
- **Visual wireframe:** the tall wireframe **image** the user attached (the source of truth for layout/order).
- **Strategy + German copy:** `../Temp/Wireframes/w12_maintenance_v3.html` (text-only wireframe; has the real
  German strategy/copy for most sections, including the custom ones not yet built).
- **Methodology precedent:** `../homepage/docs/wireframe.md`.

---

## 2. Current section order (11 sections)

| Order | Section | Component (class) | Approx. line | Copy now (w12 source) |
|---|---|---|---|---|
| 1 | Hero | `breadcrumb bg_img hy-hero` (custom, inline `<style>`) | ~240 | DE ✅ — `#start` + right-card meta ← `trust-bar` |
| 2 | Stats strip — 4 h / Remote / Vor Ort | `funfact` | ~303 | DE ✅ — `#reaktionszeit` (xb-odm removed) |
| 3 | Im HYSN Support enthalten (3 service areas) | `service bg-linear` accordion | ~350 | DE ✅ — `#leistungen` (Remote/Content/Vor-Ort) |
| 4 | Remote Management flow (accordion, 5→4) | `hiring-process` career-faq | ~440 | DE ✅ — `#remote` (5th item deleted) |
| 5 | Support-Kanäle (4 channel cards) | `peocess` | ~526 | DE ✅ — `#kanaele` (Telefon/WA/E-Mail/Vor-Ort) |
| 6 | Project slider (Support-Szenarien) | `project project-section` | ~674 | DE ✅ — `#faelle` (4 cases) |
| 7 | Mid-page CTA strip | `cta` | ~975 | DE ✅ — `#cta-mitte` + marquee → Wartung & Support |
| 8 | Eskalationspfad — 3 cards | `peocess` | ~1013 | DE ✅ — `#eskalation` (4→3 steps) |
| 9 | Testimonials | `testimonial bg-linear` (`id="stimmen"`) | ~1107 | DE ✅ — `#stimmen` ×3 real + 3 marked `(Beispielwert)` |
| 10 | FAQ | `hiring-process pricing-faq` | ~1450 | DE ✅ — `#faq` (5 of 10 picked) |
| 11 | Final CTA band | `cta` | ~1561 | DE ✅ — `#kontakt` + marquee → Wartung & Support |

> ⚠️ **Comment markers are not renumbered.** The HTML still has `<!-- ===== Section 10/12/13 ===== -->`
> with gaps at 9 and 11 (where removed sections used to be). Order is correct; only the comment numbers
> have holes. Renumber them if it bothers you — purely cosmetic.

---

## 3. Changes made this session (2026-06-17)

1. **"Our services" reduced from 5 tabs → 3** (Section 3, `service bg-linear`).
   - Replaced the 5 German install-step items ("Fünf Schritte…") with the **template's 3 service tabs**:
     **Content marketing & strategy** (active) · **Email marketing campaigns** · **Pay-per-click advertising (PPC)**.
   - Heading `Fünf Schritte bis zum laufenden Bildschirm.` → **Our services**; sub-title `Ablauf` → `our main services`;
     button `Montage anfragen` → `View all services`. Comment marker → `Section 3: Our services (3 tabs)`.
   - Source of the tab markup: `bizox-html-package/Bizox/home-2.html` L474–604 (items 3–5).
2. **Removed "Market & competitor analysis" section** entirely (the old `service-details` section — intro,
   *Why it matters*, *Our approach* steps, *What you get*, and the *Need any help* sidebar). 351 lines deleted.
3. **Removed "Tools & technologies we use" section** entirely (`technology-section`). 172 lines deleted.

All deletions verified: `<section>` open/close balanced (11/11), zero dangling references, encoding preserved.

---

## 3b. Changes made this session (2026-06-18) — full w12 maintenance copy pass

The page had been carrying **installation** copy (montage, "Installations-Szenarien", install testimonials/FAQ),
not maintenance copy — several "German ✅" cells in the old §2 table were install German, not w12 maintenance German.
This session swapped **all visible copy** to the w12 *Wartung & Support* strategy. **No layout/CSS/JS changes**
beyond copy + one class removal; section count stays 11.

**w12 → layout mapping (pre-agreed via 3 questions):**
- Q1 → Section 3 hosts the **3 service areas** (`#leistungen`), not the Basic/Standard/Premium tiers.
- Q2 → Testimonials kept at **6 slides**: the 3 real `#stimmen` quotes + 3 new support-themed ones marked `(Beispielwert)`.
- Q3 → Homeless w12 sections **ignored for now** (see §4).

**Per-section edits:** see the §2 table "Copy now" column. Notable structural touches:
- **Funfact:** removed the `xb-odm` class from the 3rd stat (odometer would choke on the non-numeric "Vor Ort").
- **Section 4:** deleted the 5th accordion `<li>` (`_You're hired!`) → now a clean 4-step remote flow.
- **Section 5:** the `peocess` step labels (`step - 0X`) repurposed as channel tags (Akut/Visuell/Planbar/Hardware).
- **Both CTA marquees** ("Montage & Installation" / "Installation & Montage") → **"Wartung & Support"**.
- **Comment markers** for sections 3/4/5/6/8 relabelled to match new content (numbers still have the historic 9/11 holes).

**Verification:** no English sentence copy remains (only CSS class names `business-consulting`/`consulting-btn`/`career-faq`);
remaining "Installation" occurrences are intentional ("nach der Installation", "bestehender Installation");
file still UTF-8 **no BOM**, **LF**, umlauts intact.

> **w12 sections used:** `#start`, `#reaktionszeit`, `#leistungen`, `#remote`, `#kanaele`, `#faelle`,
> `#cta-mitte`, `#eskalation`, `#stimmen`, `#faq`, `#kontakt`.
> **w12 sections ignored (no layout component):** `#risiko`, `#monitoring`, `#loesungszeiten`, `#pakete`,
> `#multi-location`, `#proaktiv`, `#abdeckung` — candidates for the custom-section build in §4.

---

## 4. Deliberately NOT in the page (custom HYSN sections, build later)

These appear in the wireframe image / w12 strategy but have **no template component** and are intentionally
absent — **no gaps**, per the user. Build them in their wireframe positions later, using w12 copy:

| Custom section (wireframe / w12 id) | Where it goes (between…) |
|---|---|
| "Everything that ensures continued operation…" checklist (w12 `#leistungen`) | after Our services — **user explicitly dropped this one** |
| "Problems should be identified…" monitoring dashboard (w12 `#monitoring`) | after Step-by-step workflow |
| "The problem they faced" narrative | around the project slider |
| "The right support depends…" packages table (w12 `#pakete`) | before the mid CTA |
| "Clear feedback instead of an open ticket" — 4h commitment (w12 `#reaktionszeit`) | before Our approach |
| German "Wartung ist günstiger als ein sichtbarer Ausfall" (w12 `#proaktiv`) | before Testimonials |

Other w12 sections also not built yet: `#risiko`, `#kanaele` (support channels), `#remote`, `#faelle`,
`#loesungszeiten`, `#eskalation`, `#multi-location`, `#abdeckung` (covered/not-covered). Decide which the final
page needs.

---

## 5. Conventions & gotchas

- **Encoding:** UTF-8 **no BOM**, **LF** line endings. Preserve this — German umlauts (ü/ä/ö) live in the file.
  When deleting large blocks via PowerShell, write back with `New-Object System.Text.UTF8Encoding($false)` and
  join lines with `` "`n" `` (not `Set-Content`, which adds CRLF/BOM on PS 5.1).
- **Footer:** taken from `homepage/index.html` (the user wants it identical to the homepage footer). **Do not change it.**
- **`<title>`:** `HYSN - Wartung & Betrieb`.
- **Body class:** `business-consulting` (same as all HYSN pages).
- **Possibly-missing images** referenced verbatim from source components (e.g. `assets/img/project/process-img.png`)
  may 404 — acceptable at this stage.
- **No CSS/JS edits** — all behavior comes from the shared `assets/`.

---

## 6. Suggested next steps

1. **Swap remaining English placeholder copy → German HYSN copy.** w12 has text for most reused sections
   (services, workflow, approach, testimonials, stats). Sections still in English: Stats, Our services, Hiring,
   Step-by-step workflow, Our approach, Testimonials, Final CTA.
2. **Decide on the "Our services" tabs.** They currently hold generic marketing copy (Content marketing / Email / PPC).
   For a maintenance page these likely should become real maintenance services — replace text when doing the copy pass.
3. **Design + insert the custom HYSN sections** from §4 in their wireframe positions.
4. (Optional) Renumber the `<!-- Section N -->` comment markers to be contiguous.

---

## 7. History (original assembly — for reference)

The page was first assembled by stitching 13 sections verbatim in wireframe order. Two have since been removed
(Tools & frameworks, Market & competitor analysis) and Our services was trimmed 5→3. Original source line ranges:

| Original # | Section | Source File | Lines |
|---|---|---|---|
| Head/header/sidebar/scripts | — | installation-page/index.html | L1–27, 31–51, 55–234, 236, scripts L2291–2321 |
| 1 | Hero (hy-hero) | installation-page/index.html | L241–302 |
| 2 | Stats (funfact) | bizox home-3.html | L372–414 |
| 3 | Service accordion | installation-page/index.html | L473–603 |
| 4 | Hiring process | bizox career.html | L378–459 |
| 5 | Step-by-step workflow | bizox home-2.html | L607–751 |
| 6 | Project slider | installation-page/index.html | L864–1164 |
| 7 | Mid-page CTA | installation-page/index.html | L1213–1249 |
| 8 | Our approach | installation-page/index.html | L697–789 |
| 9 | Tools & frameworks | bizox home-2.html | L1179–1349 — **REMOVED 2026-06-17** |
| 10 | Testimonials | installation-page/index.html | L1509–1851 |
| 11 | Market & competitor analysis | bizox service-details.html | L358–706 — **REMOVED 2026-06-17** |
| 12 | FAQ (pricing-faq) | installation-page/index.html | L1918–2027 |
| 13 | Final CTA | installation-page/index.html | L2028–2064 |
| Footer | — | **homepage/index.html** L1958–2176 |

---

## 8. How to review

Open `c:\hysn-main\maintenance-page\index.html` in a browser (works over `file://`). For slider/scroll accuracy:

```powershell
cd c:\hysn-main\maintenance-page
python -m http.server 8080   # then visit http://localhost:8080
```
