# HYSN Wireframe Brief — Installation & Montage
# Page 11 of 16 — v3

## What you are building

A complete HTML wireframe for the HYSN Installation & Montage page (`/services/installation`).

This is not a template-fill exercise. This is a strategic page design. Think first, then build.

---

## Think before you build

1. **Who lands on this page?** Two visitor types: (A) someone planning a HYSN purchase wanting to understand who actually installs the screens, and (B) someone who already bought screens elsewhere and is now stuck — they need installation but the original vendor doesn't deliver in their region. Both want professional execution and zero project-management burden.

2. **What is the one thought they need to have to inquire?** "These people will turn up on time, do clean professional work, and hand me a working screen — I won't have to coordinate cables, mounts, electricians, or networking myself."

3. **What would actually make them inquire?** Visible installation examples (clean wall mounts, professional cabling). A clear scope statement (what HYSN handles vs what the building owner provides). Geographic coverage clarity. A typical installation timeline. Reassurance about damage protection and clean execution.

4. **What would stop them?** No installation photos. Vague "we install everything" claims. Worry that HYSN's installation team is subcontractors of unknown quality. No clarity on what's included vs extra cost. Concern about scheduling — installation often has a hard deadline (store opening, event date).

Now design the page that answers (3) and removes (4).

---

## Mandatory baseline

1. **Nav bar** — sticky
2. **Hero** — problem-led: professional mounting, zero effort for the client. Visible image of clean professional screen installation. Primary CTA: "Montage für mein Projekt anfragen". Secondary: "Installations-Beispiele". Objection killer about no coordination effort and full responsibility.
3. **What goes wrong with bad installation** — section addressing the real fears: loose cables, crooked alignment, drywall damage, unsecured mounts, installer no-shows. Pain-away framing.
4. **What HYSN's installation includes** — checklist of inclusions: site survey, mounting hardware, professional installation team, cable management, configuration, content loading, handover & briefing
5. **Installation process** — 5 steps: Site-Survey → Planung & Hardware-Beschaffung → Anlieferung → Montage & Konfiguration → Übergabe
6. **Mounting options** — visual cards: Wandmontage | Deckenmontage | Stelen-Aufstellung | Outdoor-Installation | Multi-Screen-Anordnung — each with when-it-fits 1-line note
7. **Use cases** — 4 specific installation scenarios fully reasoned (see depth instruction)
8. **Coverage area** — explicit: Rhein-Main primary service area, Germany-wide on request with travel cost note
9. **Mid-page CTA strip**
10. **Vorher/Nachher case study** — a DIY-attempted installation vs HYSN-completed clean installation
11. **Testimonials** — 3 dummy quotes specifically about installation execution (see depth instruction)
12. **What HYSN provides vs what the location provides** — explicit two-column: HYSN brings (mounts, screens, cables, tools, expertise). Location provides (power outlet, wall access, network connection if needed).
13. **FAQ** — 6 real installation-related questions
14. **Final CTA** — specific, with objection killer and trust points
15. **Footer**

---

## Elevation permission

Sections worth considering:

- A **photo gallery of completed installations** — clean professional execution as visual proof
- A **technical scope sheet** — for IT / facility managers who want to know exactly: load-bearing requirements, power consumption, network bandwidth, ventilation
- A **emergency / urgent installation** call-out — for store openings or events with hard deadlines
- A **"what if my situation is unusual"** section — drywall vs concrete, listed buildings, unusual ceiling heights, outdoor weather considerations
- A **post-installation handover** — what the client receives at the end (config docs, login credentials, support contact, warranty card)

Add only if it elevates. Drop or replace if you have stronger alternatives — explain in HTML comment.

---

## Depth instructions

### Use cases section
4 installation scenarios with operational specificity:

- **Restaurant counter (3 menu boards above the kitchen pass-through):** Wall load assessment, food-service environment considerations (heat, grease, cleaning chemicals), cable routing in a working restaurant, scheduling around opening hours, typical install duration.
- **Supermarket entrance stele:** Floor-mount or freestanding, foot-traffic safety considerations, electrical connection, network connectivity to HYSN content management, scheduling around store hours.
- **Outdoor city stele in pedestrian zone:** Permits (handled by HYSN), foundation requirements, weatherproofing, electrical connection from city infrastructure, vandal protection considerations, timeline including permit lead time.
- **Office reception large LCD video wall (multi-screen array):** Wall structural assessment, precision alignment, cable management aesthetics, integration with corporate network, off-hours installation typical.

Each card: scenario label + operational specificity (3–4 sentences).

### Testimonials section
Three voices specifically about installation execution:

- A restaurant owner about scheduling and cleanliness (e.g. "Wir hatten 4 Stunden zwischen Mittagsschluss und Abendöffnung. Das HYSN-Team kam pünktlich, alles war gemountet und konfiguriert vor 17 Uhr — nicht ein Bohrloch zu viel.")
- A facility manager about clean execution (e.g. "Saubere Kabelführung, alle Mounts richtig dimensioniert, beim Abschluss waren keine Späne, keine Pakete, keine Verpackung mehr da. Wie soll Installation auch sonst aussehen.")
- A retail/event manager about meeting a hard deadline (e.g. "Store-Eröffnung war Donnerstag 10 Uhr. Mittwoch 16 Uhr lief der Bildschirm. Genau wie geplant.")

German, voice of the operationally-experienced manager — practical, specific.

### Vorher/Nachher case study
A DIY or amateur installation (loose cables, crooked alignment, generic TV mounted at wrong height) vs HYSN's clean professional execution at the same location.

### FAQ
Real installation questions: how long does typical installation take, do you handle electrical work, what about network setup, can you install outside business hours, what if my wall isn't suitable, who handles permits for outdoor installations, do you bring all the tools, what if there's damage during installation (insurance), what's the warranty on the installation work itself, can you install screens we bought elsewhere.

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
Visible page in German. Sie. Real copy. Tone: practical, professional, like a skilled installer who also understands the business side. Annotations English OK.

## Output
Single complete HTML file. The installation page must convince visitors that HYSN does this kind of work hundreds of times, professionally, on time.
