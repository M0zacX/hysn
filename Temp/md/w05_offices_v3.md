# HYSN Wireframe Brief — Büro & Unternehmen
# Page 05 of 16 — v3

## What you are building

A complete HTML wireframe for the HYSN Büro & Unternehmen page (`/loesungen/buero-unternehmen`).

This is not a template-fill exercise. This is a strategic page design. Think first, then build.

---

## Think before you build

1. **Who lands on this page?** An office decision-maker — a Geschäftsführer, an Office Manager, a Marketing Director, a Head of Internal Communications, an HR-Leiter handling employer branding, or an IT-Leiter who got tasked with "we need a screen in the lobby." They are problem-aware: they know their reception or meeting rooms look outdated. Their concern isn't whether to do something — it's keeping the project simple, low-effort, and not turning into an IT nightmare.

2. **What is the one thought they need to have to inquire?** "This won't drag on for months. HYSN handles the install, the IT integration is minimal, and we get a polished result that makes the office look modern. The price is reasonable for the visible upgrade."

3. **What would actually make them inquire?** Real corporate examples (reception, meeting rooms, internal communication walls). Clear IT integration story (does it need our network? our content management? a separate system?). A predictable installation timeline. Visible "what's included" so they can pre-justify internally.

4. **What would stop them?** IT complexity worry. Vague timeline. Sense that this becomes a long internal coordination project. Worry that the screen looks out of place with the existing office design. No clarity on who manages the content after install.

Now design the page that answers (3) and removes (4).

---

## Mandatory baseline

1. **Nav bar** — sticky
2. **Hero** — problem-led for problem-aware audience: outdated reception or meeting rooms. Visible image of modern corporate reception with HYSN screen. Primary CTA: "Beratung für unser Büro anfragen". Secondary: "Office-Beispiele ansehen". Objection killer about IT effort and full-service installation.
3. **Trust bar** — 4 stats focused on corporate credibility: corporate clients served, screens installed in office environments, integration projects completed, average install time
4. **"Für welche Unternehmensbereiche"** — self-qualification row: Empfangsbereich | Meetingräume | Mitarbeiterkommunikation | Schulungsräume | Showroom & Verkaufsraum | Kantine & Aufenthaltsraum
5. **Pain points** — 3 cards: outdated first impression, fragmented internal communication, unprofessional meeting rooms
6. **Use cases** — 4 specific corporate scenarios fully reasoned (see depth instruction)
7. **The HYSN office solution** — what's actually involved: hardware + content + installation + central management dashboard + ongoing support
8. **IT integration clarity** — explicit section: standard internet connection sufficient, no special infrastructure required, content management is web-based, optional integration with company SSO
9. **How it works** — 4 numbered steps: Bedarfsanalyse → Hardware-Konfiguration → Installation → Schulung & Übergabe
10. **Mid-page CTA strip**
11. **Relevant products** — 4 cards (Digital Signage Displays, Interactive Whiteboards, Touch Displays, LCD-Videowalls) with office-specific 1-line benefit
12. **Vorher/Nachher case study** — corporate environment transformation (e.g. outdated reception with printed signage → modern digital screen with rotating brand content)
13. **Testimonials** — 3 dummy quotes from corporate voices (see depth instruction)
14. **Content management — who does what after install** — addresses the "what happens once it's up" question that office managers always have
15. **FAQ** — 6 real corporate decision-maker questions
16. **Stakes + final CTA** — first impression decides, outdated meeting rooms cost productivity and external image
17. **Footer**

---

## Elevation permission

Sections worth considering:

- A **central content management visualization** — screenshot-style placeholder showing the dashboard a marketing manager would use, removes the "who runs this thing" anxiety
- A **multi-screen / multi-floor** scaling story — many offices start with one screen, this section shows the path to network-wide deployment
- A **employer branding / culture** angle — modern screens in office = signal to candidates and clients about the company's modernity
- A **visual examples gallery** of HYSN screens in different office environments (tech startup, law firm, manufacturing HQ, healthcare admin) — visual self-identification
- A **content templates pack** — "we provide pre-designed templates for common office content (welcome screens, meeting room status, news ticker, KPI dashboards)" — removes content creation anxiety

Add only if it elevates. Drop or replace if you have a stronger alternative — explain in HTML comment.

---

## Depth instructions

### Use cases section
Reason through these 4 corporate scenarios with operational specificity:

- **Empfangsbereich (Reception):** What plays during business hours vs after-hours? Welcome screen with visitor name, current company news, brand reel? Single screen or video wall? How is content managed by reception staff?
- **Meetingraum:** Display for presentations + room status + integration with calendar systems? Touch capability for collaboration? Single shared screen or per-room? How is the booking system handled?
- **Mitarbeiterkommunikation (Internal Comms):** Where placed — kantine, flur, aufzug-vorraum? What content — KPIs, news, birthday shoutouts, safety reminders? Who manages content — HR, marketing, internal comms team? Update frequency?
- **Schulungs- / Showroom:** Different content needs — interactive product demonstrations, training material, customer-facing brand storytelling. How does HYSN configure the screen for this specific use?

Each card: office area label + scenario headline + 3–4 sentences with operational specificity.

### Testimonials section
Specific corporate voice. Right register:

- A Geschäftsführer of a mid-sized company talking about the polish factor (e.g. "Unser Empfang sah aus wie 2010. Mit dem neuen Screen sieht es aus, als wären wir gerade umgezogen — und das von einem Standort, der seit 15 Jahren existiert.")
- An Office Manager talking about how easy the operational side is (e.g. "Ich dachte, das wird wieder ein IT-Projekt. Es war ein Termin für Beratung, ein Termin für Installation, fertig. Inhalte ändere ich selbst über das Web-Interface.")
- A Marketing Director talking about employer branding impact (e.g. "Bei Vorstellungsgesprächen läuft auf dem Empfangs-Screen unser aktuelles Mitarbeitervideo. Bewerber haben das mehrfach erwähnt — kleines Detail mit großer Wirkung.")

German, corporate register — practical, no fluff.

### Vorher/Nachher case study
Pick a representative corporate transformation. Vorher: print signage, fragmented info channels, dated reception. Nachher: integrated digital communication, modern first impression, central management. Real or representative numbers (e.g. visitors per week, screens deployed across floors).

### FAQ
Real office decision-maker questions: do we need a separate internet connection, who controls what plays, can we integrate with our calendar / Microsoft 365 / SSO, what's the install time, how loud is the screen, what happens with the screen content during off-hours, can different floors show different content, do we need a license per screen, what about GDPR / Datenschutz with cameras, what's the warranty.

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
Visible page in German. Sie. Real copy. Annotations English OK.

## Output
Single complete HTML file with deeply reasoned use cases and testimonials.
