# HYSN Wireframe Brief — Kontakt
# Page 09 of 16 — v3

## What you are building

A complete HTML wireframe for the HYSN Kontakt page (`/kontakt`).

This is not a template-fill exercise. This is a strategic page design. Think first, then build.

---

## Think before you build

1. **Who lands on this page?** Someone ready to talk — but not necessarily ready to commit. They've decided HYSN might be the right partner. Now they're at the moment of friction: filling out a form. They want to feel confident that submitting won't trigger a high-pressure sales call.

2. **What is the one thought they need to have to submit?** "If I send this form, I'll get a useful conversation — not a pushy salesperson on speed-dial. The response will be fast. There's no commitment from this single message."

3. **What would actually make them submit?** Clear "what happens next." Multiple contact channels (some prefer WhatsApp, some prefer email, some want to talk on the phone). Visible commitment-killer language: "no obligation, no sales pressure." Quick form — only the truly necessary fields. Trust signals visible right next to the form.

4. **What would stop them?** Long form with too many fields. No sense of response time. Generic "please contact us" framing. Hidden privacy concerns (will they spam me?). No alternative contact options. Cold corporate vibe.

Now design the page that answers (3) and removes (4).

---

## Mandatory baseline

1. **Nav bar** — sticky
2. **Hero** — inviting, low-pressure framing. NOT "Kontaktieren Sie uns" — instead something like "Lassen Sie uns über Ihr Projekt sprechen" or "Der erste Schritt zu Ihrem digitalen Bildschirm". Subline explains the visitor gets an honest consultation, not a sales pitch.
3. **Two-column layout: form left, trust signals right**
   - **Left column (form):**
     - Intro text (2–3 sentences) reducing hesitation
     - Visible commitment-killer line above form: "Keine Verpflichtung. Kein Verkaufsdruck. Nur ein ehrliches Gespräch über Ihr Projekt."
     - Form fields — only what's truly needed (see depth instruction)
     - Submit button: specific label like "Beratungsgespräch anfragen" — never just "Absenden"
     - Privacy note below button
   - **Right column (trust):**
     - 4 trust points (response time, no pressure, local presence, projects delivered)
     - Alternative contact channels with context for each
4. **What happens after you submit** — 3 clear steps explaining the post-submission experience
5. **Direct access alternatives** — phone, email, WhatsApp, address with begleittext for each
6. **FAQ for hesitant visitors** — 3–4 short answers to questions that stop people from submitting (e.g. "Wie schnell antworten Sie?", "Bin ich verpflichtet, etwas zu kaufen?", "Können wir auch ohne Termin sprechen?")
7. **Footer**

---

## Elevation permission

Sections worth considering:

- A **calendar booking link** — for people who want to skip the form and just pick a slot directly
- A **"prefer to write?" path** — direct WhatsApp / email link with QR code for mobile
- A **map embed placeholder** — for people who want to know where RA Vision GmbH is physically located (visit-the-office option)
- A **"who you'll talk to" section** — name and role of the person who actually handles inquiries (e.g. "Ihr Ansprechpartner für die Erstberatung: [Name], Geschäftsführer") — kills "who answers form submissions?" anxiety
- A **response time guarantee** — "Wir antworten innerhalb von X Stunden an Werktagen" — concrete reassurance

Add only if it elevates. Drop or replace baseline sections if stronger alternatives — explain in HTML comment.

---

## Depth instructions

### Form fields — minimum viable set
Don't ask for everything. The more fields, the lower the conversion. Reason through what HYSN actually needs to start a useful conversation:

Required:
- Name (combined first+last in one field, simpler than splitting)
- Email
- Wie können wir helfen? (textarea — open question)

Optional but useful:
- Unternehmen (helps qualify but not a blocker)
- Telefon (for those who want a callback)
- Branche (dropdown — helps route to the right person internally; options: Restaurant, Handel/Supermarkt, Event, Stadt/Kommune, Büro, Franchise, Sonstige)

Every field beyond these adds friction without adding meaningful value at the inquiry stage.

### What happens after you submit — the 3 steps
Each step must be specific and reassuring:

- **Step 1 (within X hours):** A confirmation email arrives with details about the next step
- **Step 2 (within 1 working day):** A short personal email or call from HYSN — not a sales pitch, a question-asking conversation about the project
- **Step 3 (when you're ready):** A more detailed proposal or video call to plan together, only if you decide to take the next step

Make step 3 explicitly non-committal. The visitor needs to know they can stop after step 2 with no awkwardness.

### Alternative contact channels — context for each
Don't just list channels. Explain when to use each:

- **Telefon (+49 6103 8315 032):** "Werktags 9–17 Uhr, ideal für schnelle Rückfragen oder akute Projektanfragen"
- **E-Mail (info@hysn.de):** "Für ausführliche Anfragen mit Anhängen oder wenn Sie ohne Zeitdruck schreiben möchten"
- **WhatsApp:** "Für kurze Fragen oder wenn Sie Bilder von Ihrem Standort schicken möchten — meist innerhalb weniger Stunden Antwort"
- **Adresse (RA Vision GmbH):** "Persönliches Treffen im Büro nach Vereinbarung — für Projekte mit größerem Umfang sinnvoll"

### FAQ for hesitant visitors
3–4 questions that prevent form submission:

- "Wie schnell bekomme ich eine Antwort?" (Answer with concrete time)
- "Verpflichtet mich die Anfrage zu etwas?" (Clear no — and explain why)
- "Was passiert, wenn HYSN nicht zu meinem Projekt passt?" (Honest: HYSN says so directly, no pressure)
- "Können wir das Gespräch auf Englisch führen?" (Yes — relevant for some clients)

---

## Wireframe style rules — non-negotiable

- Single self-contained HTML file. No external dependencies.
- Grayscale palette: `#ffffff`, `#f4f4f4`, `#d0d0d0`, `#333333`, `#111111`
- Body `#f0f0f0`, page wrapper `#ffffff`, max-width 900px centered, 250px right margin
- Font: `system-ui, -apple-system, sans-serif`
- Section labels: `[SECTION NAME]` 10px uppercase gray
- Image placeholders: gray rectangle with diagonal SVG cross + German caption
- Form field placeholders: outlined rectangles with labels above
- Buttons: 2px solid #333, no fill, padding 12px 28px
- Annotations: sticky-note boxes right margin, every section gets one
- Sections separated by 1px #d0d0d0 border
- Desktop only

## Language
Visible page in German. Sie. Real copy. Tone: warm, low-pressure, professional. Annotations English OK.

## Output
Single complete HTML file. The contact page exists to remove friction. Every element must reduce the visitor's hesitation, not add to it.
