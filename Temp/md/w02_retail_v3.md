# HYSN Wireframe Brief — Handel & Supermärkte
# Page 02 of 16 — v3

## What you are building

A complete HTML wireframe for the HYSN Handel & Supermärkte page (`/loesungen/handel-supermarkt`).

This is not a template-fill exercise. This is a strategic page design. Think first, then build.

---

## Think before you build

1. **Who lands on this page?** A retail decision-maker — a Marktleiter at a REWE/EDEKA-style supermarket, a Filialmanager, a regional retail manager, a category manager looking at retail media options, or a smaller chain owner with 2–10 locations. They came from Google, a sales conversation, or industry research. They are solution-aware: they already know digital screens exist in retail. They are evaluating *who* the right partner is, not *whether* to do this.

2. **What is the one thought they need to have to inquire?** "These people already operate in supermarkets like ours. They handle the advertiser side. The screen pays for itself or earns money. There's no operational burden on my team."

3. **What would actually make them inquire?** Real REWE/EDEKA proof. A clear revenue model with realistic numbers. The ability to see what advertisers run, what content their store would show, and how much management effort it requires. A specific path: standortanalyse → vertrag → installation → erste werbeeinnahmen.

4. **What would stop them?** Vague claims about "retail media." No proof from real supermarkets. Hidden operational complexity. Fear that the screen will look cheap or annoying to customers. Worry that finding advertisers becomes their problem.

Now design the page that answers (3) and removes (4).

---

## Mandatory baseline — every section listed here must be present

1. **Nav bar** — sticky, primary CTA always reachable
2. **Hero** — solution-aware framing (start at the untapped potential, not the basic problem), primary + secondary CTA, objection killer
3. **Trust bar** — 4 stats heavy on retail proof: REWE/EDEKA active locations, screens operated, advertisers managed, recurring monthly revenue context
4. **"Für welche Handelsformate"** — self-qualification row: Supermarkt | Discounter | Drogerie | Fachmarkt | Einkaufszentrum | Tankstelle/Convenience — each with a one-line note on screen fit
5. **The two value paths** — clear visual showing the two ways HYSN works for retail: (A) you generate ad revenue from your screen, or (B) you use the screen for your own POS communication. Many retail decision-makers don't realize both options exist.
6. **Pain points** — 3 cards, framed as what the store loses without digital screens (revenue, attention, modernity)
7. **Use cases** — 4 specific retail scenarios fully reasoned through (see depth instruction)
8. **The HYSN plan** — the 3-step path: standort prüfen → screen + werbepartner → laufende einnahmen
9. **Revenue model section** — a clear honest explanation of how the financial side works for the retail partner, with a realistic example calculation marked as orientation not guarantee
10. **How it works** — 4 numbered steps from first contact to operating screen with first advertisers
11. **Mid-page CTA strip** — captures conviction at this point
12. **Relevant products** — 4 product cards (Digital Signage, Indoor Werbestelen, LCD Videowall, hyads DOOH-Netzwerk) with retail-specific 1-line benefit each
13. **Vorher/Nachher case study** — REWE/EDEKA installation: before (no ad revenue, static POS) → after (running advertisers, monthly income)
14. **Testimonials** — 3 dummy quotes with realistic specific detail (see depth instruction)
15. **What HYSN handles vs what the store handles** — explicit two-column comparison removing the fear of operational burden
16. **FAQ** — 6 real retail manager questions
17. **Stakes + final CTA** — competitor stores already running screens, unclaimed revenue compounds monthly
18. **Footer**

---

## Elevation permission

If you see additional sections that would strengthen this page, add them. Some that might fit:

- A **risk reversal** section (e.g. revenue-share means the store has no upfront risk)
- A **screen content example gallery** showing what actually plays on a retail screen during a typical day (own POS content + paid ads rotating)
- A **comparison table** of HYSN's hyads model vs. classic retail media networks vs. doing nothing — if you think the competitive context lands here
- A **standort-analyse teaser** — explaining what HYSN evaluates before recommending screens (footfall, sightlines, power, network) — this builds trust in the methodology
- A **monthly reporting visualization** — what the retail manager sees each month (impressions, advertisers, revenue) — kills the "I'll have no visibility" objection

Add only if it elevates. Drop or replace any baseline section if you have a stronger alternative — explain the reasoning in an HTML comment.

---

## Depth instructions

### Use cases section
Reason through these 4 retail scenarios with operational specificity:

- **Großer Supermarkt (REWE/EDEKA-Format):** Where does the screen go — entrance, kassenbereich, frischetheke? What plays during morning rush vs evening? How does the manager balance own promotions and paid advertisers? How is the revenue split typically structured?
- **Drogerie (DM/Rossmann-Format):** Different customer pace — slower browsing, more impulse buys. What screen format works? What advertiser mix makes sense (beauty brands, OTC pharma, lokale dienstleister)?
- **Tankstelle / Convenience:** Very high frequency, very short visit. Outdoor screen at the pump? Indoor near the kasse? What advertiser mix works for this channel?
- **Einkaufszentrum / Mall:** Multi-tenant environment. Who owns the screen — center management or HYSN? How does revenue flow back? What content makes sense vs single-store screens?

Each card: format label + scenario headline + 3–4 sentences with operational specificity.

### Testimonials section
Real operational specificity from retail voices:

- A Marktleiter talking about the realistic monthly revenue and what surprised him (e.g. "Im ersten Monat haben wir mit 200€ gerechnet, es waren am Ende 380€ weil wir die Lage am Eingang besser ist als gedacht")
- A regional manager talking about how easy the rollout was across multiple locations (e.g. "Wir haben mit einem Pilotmarkt in Frankfurt gestartet und sind jetzt bei vier Standorten — der Aufwand für mein Team ist null")
- A Drogerie or convenience operator with a specific operational truth (e.g. "Was ich nicht erwartet habe: die Stammkunden nehmen die Aktionen viel besser wahr als auf den gedruckten Plakaten")

All German, retail-manager voice, not marketing voice.

### Vorher/Nachher case study
Construct from HYSN's REWE/EDEKA project context. Vorher: no advertising revenue, static POS materials, modernization gap. Nachher: running advertisers, X € monthly recurring, modernized appearance. Real numbers where the project context allows.

### FAQ
Real retail decision-maker questions, not marketing-team questions. Things like: who controls what plays on the screen, can I block competitor ads, what if no advertisers want to book, what happens to the screen if I terminate, who pays for electricity, does it require a separate internet line, what's the contract minimum, do I get a monthly report.

---

## Wireframe style rules — non-negotiable

- Single self-contained HTML file. No external dependencies.
- Grayscale palette: `#ffffff`, `#f4f4f4`, `#d0d0d0`, `#333333`, `#111111`
- Body `#f0f0f0`, page wrapper `#ffffff`, max-width 900px centered, 250px right margin minimum
- Font: `system-ui, -apple-system, sans-serif`
- Section labels: `[SECTION NAME]` 10px uppercase gray top-left
- Image placeholders: gray rectangle with diagonal SVG cross + German caption
- Buttons: 2px solid #333, no fill, padding 12px 28px
- Annotations: sticky-note style boxes right margin (`left: calc(100% + 22px); width: 210px`) — every section gets one
- Sections separated by 1px #d0d0d0 border
- Desktop only

## Language

Visible page copy in German. Anrede: Sie. Real directional copy — no lorem ipsum, no English in the visible page. Annotations and HTML comments can be English.

## Output

Single complete HTML file with deeply reasoned use cases and testimonials.
