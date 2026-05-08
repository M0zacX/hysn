# HYSN Wireframe Brief — Über uns
# Page 08 of 16 — v3

## What you are building

A complete HTML wireframe for the HYSN Über uns page (`/ueber-uns`).

This is not a template-fill exercise. This is a strategic page design. Think first, then build.

---

## Think before you build

1. **Who lands on this page?** A visitor doing due diligence. They might be in the middle of a decision, came from a sales conversation, or want to know who's behind the company before sending a 5-figure inquiry. They're not here to learn about HYSN's products — they're here to learn whether HYSN is *real*.

2. **What is the one thought they need to have to inquire?** "These people are credible. They're not a one-person operation. They have a real story, real values, real operations. I can trust them with my project."

3. **What would actually make them inquire?** A real founding story (not corporate fluff). Specific authority signals (years operating, projects delivered, partners). Real human faces or at least real role names. The values feel lived, not posted.

4. **What would stop them?** Generic "we are passionate about innovation" copy. No founder voice. No specifics about who runs the company. Vague history. Stock-photo-feel "team" sections. No customer-as-hero perspective — instead HYSN as the hero of its own story.

Now design the page that answers (3) and removes (4).

---

## Mandatory baseline

1. **Nav bar** — sticky
2. **Hero** — NOT "Wir sind HYSN" — instead what HYSN means for clients. Honest positioning as a guide, not a hero. Hero image of team, office, or strong installation.
3. **We understand your problem (empathy first)** — 3–4 sentences from the customer's perspective: outdated screens, technical complexity, no reliable partner. HYSN earns trust by showing it understands the customer before talking about itself.
4. **Why HYSN exists (the origin story)** — the founding moment. RA Vision GmbH, what was the trigger, what gap did HYSN see in the market. Authentic, not marketing speak.
5. **The StoryBrand One-Liner** — somewhere on the page, the formula clearly: "Wir helfen [Zielgruppen] [Wunschergebnis] ohne [größtes Hindernis]"
6. **Why we are the right guide (authority after empathy)** — 4 proof blocks. NOT claims — backed by specific facts. Years operating, projects delivered, hardware partner relationships, recurring revenue clients, regional presence.
7. **Our values (lived, not listed)** — 3–4 values with concrete day-to-day explanation. Not "Innovation, Reliability, Quality" — but what those words actually mean at HYSN in practice.
8. **Numbers & facts** — 4 real stats with full proof sentences. Makes HYSN tangible.
9. **Behind the brand — RA Vision GmbH and the HYSN/hyads relationship** — section explaining the corporate structure clearly. Many visitors are confused: is HYSN a brand, a product, a company? Clarify: RA Vision GmbH is the company, HYSN is the brand for digital signage solutions, hyads is the DOOH advertising network arm.
10. **Final CTA** — inviting (not pressuring). Specific (e.g. "Kostenloses Erstgespräch vereinbaren"). Objection killer about no commitment.
11. **Footer**

---

## Elevation permission

Sections worth considering:

- A **founder voice block** — a short statement from the founder/MD with a real photo placeholder. The most powerful trust-builder if available.
- A **timeline / milestone strip** — visual timeline of HYSN's evolution: founded → first project → REWE/EDEKA partnership → hyads launch → current state
- A **partner & supplier logos** — Samsung, LG, hardware partners — manufacturer credibility
- A **regional presence / coverage map** — where HYSN operates (Rhein-Main primary, Germany-wide on request)
- A **press / case mentions section** — if any media coverage exists
- A **team or capabilities snapshot** — team size, roles covered (consultation, design, installation, support) — even without naming individuals

Add only if it elevates. Drop or replace baseline sections if you have stronger alternatives — explain in HTML comment.

---

## Depth instructions

### Origin story
Don't write "HYSN was founded with the vision to..." — that's the corporate fluff version. Reason through what actually triggers the founding of a company like HYSN:

- The founder was probably in retail tech, advertising, or AV/installation industry
- He probably saw multiple clients struggle with the same fragmented experience: hardware vendor, content agency, installation company, support contract — four different vendors, four different invoices, no one accountable
- The insight was probably: nobody was offering the *full-service* experience that small-to-mid businesses actually wanted
- Write the origin story from this angle. Authentic, specific, like a founder telling the story to a curious investor.

### The One-Liner
This is the StoryBrand formula clearly placed on the page. Format: "Wir helfen [audience] [outcome] ohne [obstacle]". Example structure (rewrite to fit):

"Wir helfen Restaurants, Einzelhändlern und Kommunen ihre Standorte zu modernisieren und Werbeeinnahmen zu generieren — ohne dass sie selbst Hardware, Content oder Werbepartner managen müssen."

Make it specific. Not abstract.

### Authority proof blocks
4 blocks. Each: short title + 2 sentences with concrete evidence. Real:
- Years in the digital signage and DOOH market
- Projects delivered across industries (with specifics — e.g. REWE/EDEKA locations, restaurant rollouts, municipal pilots)
- Hardware partnerships and technical capability
- Recurring revenue clients (proof of long-term relationships)

No "we are passionate about quality" type blocks. Only specific evidence.

### Values — lived not listed
For each value, write what it means at HYSN in concrete daily practice. Examples of the right register:

- "Verlässlichkeit" → "Wir installieren keinen Bildschirm, den wir nicht auch warten könnten. Jedes Projekt hat einen festen Ansprechpartner, auch nach der Inbetriebnahme."
- "Komplettverantwortung" → "Wir liefern nicht nur Hardware. Wir kümmern uns um Inhalte, Installation, laufenden Betrieb — der Kunde hat einen Ansprechpartner für alles."
- "Lokale Nähe" → "Unser Schwerpunkt ist Rhein-Main. Wir sehen unsere Kunden persönlich und nicht nur per E-Mail."

Each value has a concrete behavioral expression. Not abstract claims.

### Numbers & facts
4 stats with proof sentences:
- Active screens / DOOH locations operated
- Years in the market
- Restaurant or retail clients served
- Recurring revenue context (e.g. "monatliche Werbeeinnahmen für Standortpartner seit 2025")

Real proof sentences, not just bare numbers.

---

## Wireframe style rules — non-negotiable

- Single self-contained HTML file. No external dependencies.
- Grayscale palette: `#ffffff`, `#f4f4f4`, `#d0d0d0`, `#333333`, `#111111`
- Body `#f0f0f0`, page wrapper `#ffffff`, max-width 900px centered, 250px right margin
- Font: `system-ui, -apple-system, sans-serif`
- Section labels: `[SECTION NAME]` 10px uppercase gray
- Image placeholders: gray rectangle with diagonal SVG cross + German caption
- Buttons: 2px solid #333, no fill, padding 12px 28px
- Annotations: sticky-note boxes right margin, every section gets one
- Sections separated by 1px #d0d0d0 border
- Desktop only

## Language
Visible page in German. Sie. Real copy. Authentic founder/company voice — not marketing voice. Annotations English OK.

## Output
Single complete HTML file. The Über uns page exists to build trust. Every section must serve that goal — no filler, no corporate fluff.
