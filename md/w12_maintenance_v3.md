# HYSN Wireframe Brief — Wartung & Support
# Page 12 of 16 — v3

## What you are building

A complete HTML wireframe for the HYSN Wartung & Support page (`/services/wartung-support`).

This is not a template-fill exercise. This is a strategic page design. Think first, then build.

---

## Think before you build

1. **Who lands on this page?** Two visitors: (A) a prospect who already has HYSN screens or is buying them, evaluating the support side before signing, and (B) someone whose existing screen vendor disappeared after install — they're now looking for a support partner. Both fear the same thing: a screen failing in front of customers with nobody reachable.

2. **What is the one thought they need to have to inquire?** "If something goes wrong, I have one number to call. Someone reachable. The fix is fast. I don't need to become a digital signage expert myself."

3. **What would actually make them inquire?** A specific response time guarantee. Multiple support channels (phone, WhatsApp, email, on-site). Visible remote management capabilities (most issues fixable without a site visit). A clear maintenance package structure. Realistic about what's covered and what's not.

4. **What would stop them?** Vague "we provide great support" claims. No response time commitment. No mention of remote support. Worry that "support" means a ticket system that takes 5 days. Fear that small issues become big bills.

Now design the page that answers (3) and removes (4).

---

## Mandatory baseline

1. **Nav bar** — sticky
2. **Hero** — reliability-focused: Bildschirme laufen zuverlässig, HYSN ist da wenn etwas ist. Visible image of remote support / monitoring or technician at work. Primary CTA: "Support-Paket anfragen". Secondary: "Wartungs-Optionen ansehen". Objection killer about response time and remote support coverage.
3. **What happens without reliable support** — pain-away framing: screen fails during peak hours, no reachable contact, hours of revenue / customer attention lost
4. **What's included in HYSN support** — checklist: 24/7 monitoring (where applicable), remote troubleshooting, content updates, on-site service when needed, regular maintenance visits
5. **Support channels** — visual cards for each: Telefon, E-Mail, WhatsApp, Vor-Ort-Service — with availability and reaction time per channel
6. **Remote management capability** — visualized: most fixes happen without anyone visiting your site (content updates, restarts, schedule changes, troubleshooting)
7. **Use cases** — 4 specific support scenarios fully reasoned (see depth instruction)
8. **Maintenance package tiers** — 2–3 tier comparison (basic/standard/premium or equivalent) without exact prices, showing what each includes
9. **Mid-page CTA strip**
10. **Response time commitment** — concrete: "Werktags reagieren wir innerhalb von [X] Stunden auf Support-Anfragen"
11. **Testimonials** — 3 dummy quotes about support reliability (see depth instruction)
12. **What's covered vs not covered** — explicit, builds trust through honesty (e.g. covered: hardware failures, content updates, software issues; not covered: physical damage from external causes)
13. **FAQ** — 6 real support-related questions
14. **Final CTA** — specific, with objection killer and trust points
15. **Footer**

---

## Elevation permission

Sections worth considering:

- A **monitoring dashboard visualization** — placeholder showing the kind of system status view HYSN's team uses to detect issues before clients do
- A **typical issues & resolution time** table — common problems (screen frozen, content stuck, no signal, brightness issue) with typical resolution time per channel
- A **escalation path** — what happens when a remote fix doesn't work: technician dispatch process and timeline
- A **for multi-location clients** section — different support model for chains/franchises with central account management
- A **proactive maintenance** schedule — quarterly check-ins, firmware updates, screen calibration

Add only if it elevates. Drop or replace if you have stronger alternatives — explain in HTML comment.

---

## Depth instructions

### Use cases section
4 support scenarios with operational specificity:

- **Content stuck during peak hours:** A restaurant manager calls at 12:30 because the menu board froze. Remote diagnosis and fix in under 10 minutes. The customer never even noticed the issue.
- **Screen failure replacement:** A retail screen has a hardware failure. HYSN ships replacement, schedules technician within 48 hours, swaps the unit, content restored from backup configuration. No data lost, minimal downtime.
- **Quarterly maintenance visit:** Routine on-site check for an outdoor stele — cleaning, brightness recalibration, weather seal inspection, firmware update. Scheduled in advance, completed during low-traffic hours.
- **Multi-location chain weekly content update:** Central content team pushes new campaign to 18 locations on Sunday evening. HYSN monitors deployment, addresses any branch where deployment failed, all locations live by Monday opening.

Each card: scenario label + 3–4 sentences with operational specificity.

### Testimonials section
Three voices specifically about support reliability:

- A restaurant manager about fast response (e.g. "Samstagabend, Bildschirm hängt. Ich rufe an, nach 15 Minuten läuft alles wieder. Ohne dass jemand vorbeikommen musste.")
- A facility manager about unobtrusive support (e.g. "Ich merke meistens nicht, dass HYSN gerade eingegriffen hat. Updates laufen nachts, Probleme werden behoben bevor wir sie bemerken.")
- A retail or chain manager about consistency across locations (e.g. "Wir haben Standorte in vier Städten. Egal welche Filiale anruft — derselbe Ansprechpartner, dieselbe Reaktionszeit, derselbe Service-Standard.")

German, support-experienced voice — practical, specific.

### What's covered vs not covered
Two-column layout. Honesty builds trust:

**Covered:**
- Hardware-Defekte innerhalb der Garantiezeit
- Software- und Konfigurationsprobleme
- Inhaltsupdates und Anpassungen
- Fern-Wartung und Remote-Support
- Regelmäßige Maintenance-Visits laut Paket

**Nicht abgedeckt (transparent listed):**
- Schäden durch externe Einwirkung (Vandalismus, Wasser, etc.)
- Drittpartei-Hardware außerhalb des HYSN-Systems
- Größere Standortänderungen (z.B. Umzug des Bildschirms)
- Inhaltsänderungen außerhalb des vereinbarten Volumens

### FAQ
Real support questions: how do I report an issue, what's your response time, do you offer 24/7 support, what happens if a screen breaks, do you have replacement screens on standby, can I do basic content updates myself, what's the difference between maintenance tiers, do you support screens we bought from other vendors, what if I need urgent on-site support, what's the warranty length on hardware.

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
Visible page in German. Sie. Real copy. Tone: reliable, calm, like an operations partner who's seen everything before. Annotations English OK.

## Output
Single complete HTML file. The support page must convince visitors that HYSN is the partner they can call when something breaks — and that something breaking is rare in the first place.
