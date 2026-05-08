# HYSN Wireframe Brief — Events & Messen
# Page 03 of 16 — v3

## What you are building

A complete HTML wireframe for the HYSN Events & Messen page (`/loesungen/events-messen`).

This is not a template-fill exercise. This is a strategic page design. Think first, then build.

---

## Think before you build

1. **Who lands on this page?** An event organizer, a Messeplaner, a Veranstaltungsleiter at an agency, a marketing manager planning a corporate event, a trade fair exhibitor, or a producer looking for last-minute LED rental for a concert or product launch. They are problem-aware: they know they need professional screens. They are time-pressured: events have fixed dates and very limited margin for error.

2. **What is the one thought they need to have to inquire?** "These people deliver, set up and tear down without me having to babysit. They've done events of this scale. The price will be reasonable for what I get. They're available for my date."

3. **What would actually make them inquire?** Screen sizes and types clearly visible. A range of past event examples. A clear lead time expectation. The ability to ask for a date check immediately. On-site support reassurance. Transport/setup/teardown logistics handled.

4. **What would stop them?** No visible event references. Vague delivery process. Worry about technical failure on event day. Concern about lead time being too short. No clear point of contact during the event itself.

Now design the page that answers (3) and removes (4).

---

## Mandatory baseline

1. **Nav bar** — sticky
2. **Hero** — problem-led for time-pressured event manager. Visible image of LED wall at a real event. Primary CTA: "Verfügbarkeit für mein Event prüfen". Secondary CTA: "Event-Beispiele ansehen". Objection killer about lead time and full-service delivery.
3. **Trust bar** — 4 stats focused on event credibility: events delivered, screens available for rental, square meters of LED inventory, regions covered
4. **"Für welche Events"** — self-qualification row: Messen | Konferenzen | Konzerte & Festivals | Produkt-Launches | Sport-Events | Corporate Events
5. **Pain points** — 3 cards: visual impact gap without professional screens, technical risk on event day, last-minute coordination chaos
6. **Use cases** — 4 specific event scenarios fully reasoned (see depth instruction)
7. **Available equipment** — visual product overview: Outdoor LED Walls | Indoor LED Walls | LCD Video Walls | Digital Signage Displays | Touch Stelen — each with size ranges and typical use
8. **The HYSN process** — 4 steps from first inquiry to event day
9. **Lead time clarity section** — explicit: typical lead time, last-minute possibilities, what affects the timeline
10. **Mid-page CTA strip** — date check
11. **Vorher/Nachher case study** — an event transformation (e.g. trade fair stand without LED wall vs with HYSN-installed LED wall, audience reaction)
12. **Testimonials** — 3 dummy quotes from event organizers (see depth instruction)
13. **What's included in event rental** — full list: delivery, mounting, configuration, content loading, on-site support, teardown
14. **On-site support reassurance** — explicit section about who is on-site during the event and what they handle
15. **FAQ** — 6 real event manager questions
16. **Stakes + final CTA** — competing events have stronger visual presence, your event date is fixed and approaching
17. **Footer**

---

## Elevation permission

Sections worth considering:

- A **scale visualization** showing screen sizes (a person silhouette next to typical LED wall sizes) so visitors can mentally place the rental in their venue
- A **last-minute / short-notice** call-out — events frequently happen with tight timelines, and addressing this directly converts urgent visitors
- A **content support upsell** — many event managers don't have content for the screen, mentioning this prevents the post-inquiry "oh no I need to make videos" moment
- A **technical specs sheet teaser** — for the more technical organizer who wants brightness, pixel pitch, viewing distance details
- A **insurance / contingency** note — what happens if a screen fails on event day, what backup HYSN brings

Add only if it strengthens. Drop or replace baseline sections if you have something better — explain in HTML comment.

---

## Depth instructions

### Use cases section
Reason through these 4 event scenarios with real specificity:

- **Messe / Trade Fair (3-day event):** Stand size considerations, brightness for trade fair lighting, content rotation strategy, when does HYSN arrive for setup, what happens during the event, teardown timing
- **Outdoor Festival / Konzert:** Weather resilience, brightness for outdoor daylight, sound consideration (LED wall placement vs sound system), backup power, what HYSN handles vs what the venue handles
- **Corporate Event / Produkt-Launch:** Smaller scale but higher polish requirements, brand-specific content loading, presenter integration (camera, slides, backup), VIP audience expectations
- **Sport-Event / Stadium:** Live data integration, scoreboard considerations, large-format LED, viewing distance from stands

Each card: event type label + scenario headline + 3–4 sentences with operational specificity.

### Testimonials section
Specific event-organizer voice. Examples of the right register:

- "Drei Tage vor der Messe hat uns ein anderer Anbieter abgesagt. HYSN hat in 24 Stunden Lieferung, Aufbau und einen Techniker vor Ort organisiert. Der Stand sah am Tag eins genauso aus wie geplant."
- "Wir hatten einen Outdoor-Event im Oktober — Regenschauer, kein Stress, die LED-Wand lief durch."
- "Was den Unterschied gemacht hat: der HYSN-Techniker war den ganzen Event-Tag vor Ort. Bei einem 4-stündigen Programm konnte ich mich darauf verlassen, dass die Technik nicht mein Problem ist."

All German, event-organizer voice, not marketing voice.

### Vorher/Nachher case study
Pick a representative event transformation. Vorher: borrowed TVs / weak visual / amateur setup. Nachher: professional LED wall, audience reaction, smooth delivery. Real or representative numbers (audience size, screen size, delivery window).

### FAQ
Real event manager questions: minimum rental duration, last-minute booking possibility, what happens if my event date changes, who pays for the truck, do you handle permits for outdoor events, what's the no-show / weather cancellation policy, can I get a technician on-site, what file formats does the screen support, can you load my video content in advance, what brightness do I need for outdoor daylight.

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
