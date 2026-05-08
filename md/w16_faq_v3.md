# HYSN Wireframe Brief — FAQ
# Page 16 of 16 — v3

## What you are building

A complete HTML wireframe for the HYSN FAQ page (`/faq`).

This is not a template-fill exercise. This is a strategic page design. Think first, then build.

---

## Think before you build

1. **Who lands on this page?** Three visitor types: (A) a prospect who has a specific concern blocking them from inquiring, (B) a current client looking up specific information, and (C) a researcher comparing HYSN to other vendors. All three want fast, honest, complete answers.

2. **What is the one thought every visitor needs to have to convert (or stay loyal)?** "These people answer questions directly. They don't dance around price, contracts, or what's not covered. They actually understand the operational reality of running screens."

3. **What would actually help them?** Categorized navigation so they can jump to their concern fast. Real questions worded the way real customers ask them. Answers that are specific and complete, not deflective. Honest treatment of edge cases.

4. **What would stop them?** Long FAQ list with no structure. Vague answers that say "contact us for details." Marketing-language Q&A that feels designed by committee. No way to find the specific topic they care about.

Now design the page that answers (3) and removes (4).

---

## Mandatory baseline

This page is structurally simpler than the other pages — its job is comprehensive, organized, honest answers.

1. **Nav bar** — sticky
2. **Hero** — short, factual: "Antworten auf die wichtigsten Fragen rund um digitale Bildschirme von HYSN." Subline explaining what's covered.
3. **Search bar placeholder** — wireframe-style search input at the top of the FAQ section (suggesting a search-FAQ feature even if not built yet)
4. **Two-column FAQ layout:**
   - **Left column (sticky on scroll):** Category navigation pills/list:
     - Allgemein & Einstieg
     - Preise & Investition
     - Hardware & Technik
     - Installation & Montage
     - Content & Inhalte
     - Wartung & Support
     - DOOH & Werbeeinnahmen
     - Verträge & Kündigung
   - **Right column:** all FAQ content organized by category, each category as an anchored section
5. **For each category** — at least 4–6 real questions with complete answers (see depth instruction)
6. **CTA at bottom** — "Frage nicht dabei? Hier direkt fragen." with specific CTA button + WhatsApp option
7. **Footer**

---

## Elevation permission

Sections worth considering:

- A **most-asked questions** highlighted block at the top — the 5 questions that probably matter most across all visitors (price, install timeline, contract, what's included, response time)
- A **expandable Q&A accordions** instead of all-open layout — cleaner visual, better for long pages
- A **related links inside answers** — when a question has a fuller answer on a dedicated page (e.g. installation), link to that page within the answer
- A **last updated** date — signals that the FAQ is maintained, not a one-time setup
- A **video answer placeholder** for the most complex questions — some answers benefit from a 60-second video walkthrough

Add only if it elevates. Drop or replace baseline sections if stronger alternatives — explain in HTML comment.

---

## Depth instructions

### Categories and questions — write real questions and complete answers

The questions must sound like a real customer asked them. Not "What benefits does HYSN offer?" — that's a marketing question. Real customers ask things like "Was kostet das ungefähr?" and "Wie lange dauert die Installation?"

Below is the structure with example real questions per category. Write at least the listed questions with full honest answers, and add 1–2 more per category if natural.

#### Allgemein & Einstieg
- Was genau bietet HYSN an?
- Für welche Unternehmen ist HYSN geeignet?
- Wie startet man ein Projekt mit HYSN?
- Wie lange dauert es vom ersten Gespräch bis zum laufenden Bildschirm?

#### Preise & Investition
- Was kostet ein digitaler Bildschirm bei HYSN ungefähr?
- Gibt es eine Mindestinvestition?
- Welche Finanzierungsmodelle gibt es?
- Was ist im Preis enthalten und was ist optional?
- Sind die Bildschirme zu kaufen oder zu mieten?

#### Hardware & Technik
- Welche Bildschirmgröße empfehlen Sie für meine Situation?
- Was ist der Unterschied zwischen LED und LCD?
- Funktionieren die Bildschirme auch im Außenbereich?
- Wie hell sind die Bildschirme — sind sie auch bei Sonneneinstrahlung sichtbar?
- Wie lange hält die Hardware?
- Welche Mediaplayer / Software wird verwendet?

#### Installation & Montage
- Wer installiert die Bildschirme?
- Wie lange dauert eine typische Installation?
- Brauche ich einen Elektriker?
- Was passiert wenn meine Wand nicht geeignet ist?
- Können Sie auch außerhalb der Geschäftszeiten installieren?

#### Content & Inhalte
- Müssen wir die Inhalte selbst erstellen?
- Können wir unsere eigenen Fotos und Videos verwenden?
- Wie schnell können Inhalte aktualisiert werden?
- Können wir Inhalte selbst ändern, ohne HYSN zu kontaktieren?
- Welche Dateiformate werden unterstützt?

#### Wartung & Support
- Was passiert wenn der Bildschirm nicht funktioniert?
- Wie schnell antworten Sie bei einem Support-Problem?
- Bieten Sie 24/7 Support an?
- Was ist von der Garantie abgedeckt?
- Können Sie Probleme aus der Ferne beheben?

#### DOOH & Werbeeinnahmen
- Wie hoch ist die realistische monatliche Einnahme von einem Werbebildschirm?
- Wer findet die Werbepartner?
- Kann ich bestimmte Werbepartner ablehnen?
- Was passiert wenn keine Werbepartner für meinen Standort gefunden werden?
- Wie wird die Einnahme ausgezahlt?

#### Verträge & Kündigung
- Was ist die typische Vertragslaufzeit?
- Was passiert am Ende des Vertrags?
- Kann ich vorzeitig kündigen?
- Was passiert mit dem Bildschirm wenn der Vertrag endet?

### Answer style — direct and complete
Each answer should be:
- 2–4 sentences (long enough to be complete, short enough to scan)
- Specific (avoid "es kommt darauf an" without explaining what)
- Honest about edge cases (what's NOT covered, what costs extra)
- Free of marketing language

Example of a good answer style:

**Q: Was kostet ein digitaler Bildschirm bei HYSN ungefähr?**

**A:** "Der Preis hängt von Bildschirmtyp, Größe und Anzahl ab. Ein Restaurant-Menüboard-Paket mit drei Bildschirmen, Inhaltsdesign und Wandhalterungen liegt typischerweise im Bereich um 2.400 € — inklusive professioneller Inhaltsgestaltung. Größere LED-Wände, Outdoor-Stelen oder Multi-Standort-Rollouts werden individuell kalkuliert. Wir geben in der ersten Beratung gerne eine konkrete Preisspanne für Ihre Situation."

This is the level of directness expected throughout.

---

## Wireframe style rules — non-negotiable

- Single self-contained HTML file. No external dependencies.
- Grayscale palette: `#ffffff`, `#f4f4f4`, `#d0d0d0`, `#333333`, `#111111`
- Body `#f0f0f0`, page wrapper `#ffffff`, max-width 900px centered, 250px right margin
- Font: `system-ui, -apple-system, sans-serif`
- Section labels: `[SECTION NAME]` 10px uppercase gray
- Two-column layout for FAQ: sticky left category nav, scrollable right content
- Each FAQ row: question in bold, answer in regular weight, subtle bottom border
- Each category section has clear heading and anchor (#kategorie-name)
- Search bar: outlined input wireframe style at top
- Buttons: 2px solid #333, no fill, padding 12px 28px
- Annotations: sticky-note boxes right margin
- Sections separated by 1px #d0d0d0 border
- Desktop only

## Language
Visible page in German. Sie. Real copy. Tone: direct, honest, complete. No marketing language. Annotations English OK.

## Output
Single complete HTML file. The FAQ page is the trust-building page where prospects validate that HYSN gives straight answers. Every answer must be specific and complete. The two-column layout with sticky category nav must be visible in the wireframe.
