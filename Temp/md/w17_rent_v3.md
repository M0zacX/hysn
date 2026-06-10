# HYSN Wireframe Brief — Display-Miete
# Page 17 of 17 — v3

## Context the AI must read first — non-negotiable

Before drafting a single line:

1. **Use your memory system.** Recall any prior HYSN context, conversations, project notes, brand decisions, or feedback. If memory references this project, load it.
2. **Read the existing v3 briefs.** All 15 in `md/w02_retail_v3.md` through `md/w16_faq_v3.md`. Absorb tone, structure, depth conventions, and the wireframe style rules. They are non-negotiable. Pay special attention to `md/w03_events_v3.md` — this rental page must be **clearly different** from the Events page (see "Differentiation" section below).
3. **Read the matching HTML wireframes.** At minimum: `w03_events_v3.html` (closest neighbor — your page must not duplicate it), `w07_home_v3.html` (strongest visual reference), `w11_installation_v3.html` (for the operational/scope pattern). Verify the design system: 900px page wrapper, grayscale palette, sticky annotations in the right margin, 2px solid #333 buttons, `[SECTION NAME]` eyebrow labels, `<aside class="annotation">` sticky-note boxes.
4. **Open `images/rent-page.png`.** This is the **previous version** of the rental page. Treat it as anti-pattern reference: it is generic ("Rent the perfect product for your event now"), the categories are listed without operational depth, there is no availability check, no pricing structure, no lead-time clarity, no scope split, no real proof. Your wireframe must clearly improve on it on every one of those dimensions.
5. **Cross-check brand context.** RA Vision GmbH is the legal entity. HYSN is the brand for digital signage solutions. hyads is the DOOH advertising network arm. Real anchors: Haus des Döners (laufender Menüboard-Betrieb seit Juni 2025), REWE/EDEKA Standortkontext, ~30 verwaltete Werbescreens im hyads-Netz, Rhein-Main als Schwerpunkt mit deutschlandweiter Projektabwicklung, Kontakt +49 6103 8315 032 / info@hysn.de.

If you skip these steps the wireframe will not match the rest of the site. Do not skip.

---

## What you are building

A complete HTML wireframe for the HYSN Display-Miete page (`/display-mieten`).

This is not a template-fill exercise. This is a strategic page design. Think first, then build.

---

## Think before you build

1. **Who lands on this page?** A transactional, time-pressed buyer — an Eventmanager der für nächste Woche eine LED-Wand braucht, ein Marketing-Manager für einen eintägigen Produkt-Launch, eine Produktion für ein Video-Shooting, ein Retail-Manager für einen 3-Tage-Pop-up, eine Agentur für ein Corporate Sommerfest. **This is NOT the same audience as the w03 Events page.** Events-Page-Besucher planen ein ganzes Event mit Beratungsbedarf. Diese Seite besuchen Käufer, die wissen, was sie wollen, und brauchen Verfügbarkeit, Preis und Liefertermin — schnell. Sie sind product-aware, nicht solution-aware.

2. **What is the one thought they need to have to inquire?** "Diese Leute haben, was ich brauche, können zu meinem Termin liefern, und der Preis ist nachvollziehbar. Ich kann den Verfügbarkeitscheck in zwei Minuten anfordern."

3. **What would actually make them inquire?** Sichtbare Produktkategorien mit echten Größenangaben. Eine schnelle Verfügbarkeitsprüfung als primärer CTA. Eine transparente Preisorientierung (auch ohne Festpreis): "ab X € pro Tag, Mengen- und Laufzeitrabatte möglich". Klarer Lieferzeit-Korridor (Idealvorlauf, machbar, kurzfristig). Was im Mietumfang enthalten ist (Lieferung, Aufbau, Konfiguration, Content-Loading, Vor-Ort-Support, Abbau). Geografische Abdeckung. Schadens- und Kautionsregelung sichtbar.

4. **What would stop them?** Vague "kontaktieren Sie uns für Preise". Keine sichtbaren Größen oder Specs. Kein Verfügbarkeitspfad — nur ein generisches Kontaktformular. Sorge, dass eine 1-Tages-Miete einen 3-Wochen-Vertriebsprozess auslöst. Kein Hinweis darauf, was passiert, wenn ein Gerät beschädigt wird oder das Event ausfällt.

Now design the page that answers (3) and removes (4).

---

## Mandatory baseline

1. **Nav bar** — sticky, primary CTA always reachable
2. **Hero** — transactional and action-led. NOT "Mieten Sie das perfekte Produkt für Ihr Event" (that was the alte Seite und ist generisch). Stattdessen etwas wie "Display für Ihren Termin mieten — geliefert, aufgebaut, betreut." Visible image of a professionally mounted rental setup at a real event/exhibition. Primary CTA: "Verfügbarkeit für mein Datum prüfen". Secondary: "Mietpark ansehen". Objection killer about lead time and full-service delivery.
3. **Trust bar** — 4 stats focused on rental credibility (NOT duplicates of the home page or events page): m² LED-Inventar, durchgeführte Mietevents (Richtwert), kürzeste realistische Lieferzeit, Region/Reichweite
4. **Mieten vs kaufen** — 3 cards: kurzfristiger Bedarf ohne langfristige Bindung, Hardware-Lifecycle bei HYSN (Lager, Transport, Wartung), schneller Zugriff auf Profi-Hardware ohne Kapitalinvestition
5. **Mietpark — die zentrale Sektion der Seite.** 5 Produktkategorien als visuelle Karten:
   - Digital Signage Displays (43–98 Zoll)
   - LCD Videowalls (2×2 bis 4×4)
   - Indoor LED-Wände (2–20 m²)
   - Outdoor LED-Wände (3–30 m²+)
   - Touch Stelen (32–55 Zoll)
   Jede Karte: Bildplatzhalter, Größenrange, typischer Einsatz, indikativer Einstiegspreis im Format "ab X € / Tag" mit Klarstellung "Orientierung — exaktes Angebot nach Termin und Umfang".
6. **Use cases** — 4 specific rental scenarios fully reasoned (see depth instruction below)
7. **Was im Mietpaket enthalten ist** — explizite Checkliste: Lieferung & Transport, professionelle Montage, Konfiguration, Content-Loading, Funktionstest, Vor-Ort-Support nach Vereinbarung, Abbau und Rücktransport
8. **Lieferzeit-Klarheit** — drei Korridore: Ideal (3–6 Wochen), Machbar (7–14 Tage), Kurzfristig (24–72 Stunden, nach Verfügbarkeitsprüfung). Was beeinflusst den Korridor (LED-Größe, Indoor/Outdoor, Standortlage, Genehmigungen, Contentstatus)
9. **Mid-page CTA strip** — Verfügbarkeitscheck als spezifischer nächster Schritt
10. **Preisstruktur — explizit, auch ohne Festpreis.** Tagespreis pro Display ab X €, Mengenrabatte, Wochen- und Mehrtagesstaffel, optionale Add-ons (Content-Erstellung, Vor-Ort-Techniker, Auf-/Abbau außerhalb der Geschäftszeiten, Versicherung). Mark als Orientierungswert, nicht Garantie.
11. **Der HYSN Mietprozess** — 4 Schritte: Anfrage → Verfügbarkeitscheck → Angebot mit Lieferplan → Lieferung, Aufbau, Betrieb, Abbau
12. **Vorher/Nachher case study** — repräsentatives Mietszenario (z. B. ein Event mit improvisierten TVs vorher → professionell gelieferte LED-Wand nachher)
13. **Testimonials** — 3 dummy quotes specifically about rental execution (see depth instruction)
14. **Was HYSN bringt vs was der Standort/Veranstalter stellt** — explizite zwei-Spalten-Aufteilung
15. **Schadens-, Kautions- und Stornoregelung** — kurze klare Erläuterung. Was passiert bei Beschädigung, was bei Stornierung, gibt es Versicherung optional? Diese Sektion ist Pflicht, weil sie eine der größten still gehaltenen Sorgen löst.
16. **Geografische Abdeckung** — Rhein-Main direkt, deutschlandweit nach Termin und Größe, Reisekosten transparent
17. **Cross-link zu /events** — Hinweis: für vollständige Eventproduktion mit Beratung, Sponsorenintegration und Bühnenkonzept siehe Events & Messen
18. **FAQ** — 7 reale Mietfragen
19. **Stakes + Final CTA** — Veranstaltungsdatum ist fix und rückt näher; Mietinventar ist zu Spitzenzeiten endlich
20. **Footer** — Standard-HYSN-Footer mit 4 Spalten

---

## Elevation permission

Sektionen, die zusätzlich Sinn ergeben können:

- **Größen-Visualisierung** — Personensilhouette neben typischen LED-Größen (gibt es bereits auf w03_events_v3.html — kann adaptiert übernommen werden, sollte aber rental-spezifisch sein)
- **Spec-Tabelle pro Kategorie** — Helligkeit, Pixelpitch, typischer Sichtabstand, Gewicht, Stromaufnahme — für technische Eventplaner
- **Content-Support-Upsell** — viele Mieter haben keinen screen-fertigen Content; HYSN kann Inhalte für die Mietdauer vorbereiten
- **Mehrtages-/Wochenrabatt-Indikator** — sichtbare Staffel "ab 1 Tag / ab 3 Tagen / ab 1 Woche / ab 1 Monat"
- **Logistik-Übersicht** — Lieferfenster, Aufbauzeit, Abbauzeit, Rücktransport in einer kompakten Timeline
- **Versicherungsbaustein** — optionaler Add-on, sichtbar erwähnt, nimmt Schadensangst
- **Express-/Kurzfristanfrage-Kanal** — separater Pfad für Notfälle (24–72h), klar abgegrenzt vom regulären Anfrageweg

Add only if it elevates. Drop or replace baseline sections if you have a stronger alternative — explain in HTML comment.

---

## Depth instructions

### Use cases section

4 rental scenarios with operational specificity. Avoid copying the w03 Events use cases — these are rental-specific:

- **Produktlaunch / Pressetermin (1 Tag, indoor):** Indoor LED-Wand oder LCD-Videowall als Bühnenrückwand, Markeninhalte vorab eingespielt, Vor-Ort-Techniker für die Veranstaltungsdauer, Abbau noch am gleichen Abend. Wie sieht der Lieferpfad in einem Hotel-Ballsaal oder einem Studio aus? Wie wird Strom, Zugang und Aufbauzeit mit dem Venue abgestimmt? Was kostet Vor-Ort-Bereitschaft typischerweise zusätzlich?
- **Messestand-Kurzeinsatz (3–5 Tage):** Kleinere LED- oder LCD-Lösung für Messestand, Helligkeit für Hallenbeleuchtung, saubere Kabelführung, tägliche Content-Rotation. Wie werden Aufbau- und Abbautage mit der Messeordnung koordiniert? Was bringt HYSN, was bringt der Messebau?
- **Konzert / Festival (1–3 Tage outdoor):** Outdoor-LED-Wand, wetterresistent, Backup-Power, Truss- oder Bühnenmontage. Was übernimmt HYSN, was die Produktion oder das Venue (Strom, Tragwerk, Sicherheitsfreigabe)? Wie wird mit Wetter umgegangen?
- **Pop-up Retail / Promo-Aktion (1–4 Wochen):** Touch-Stele oder Digital Signage für kurzfristige Retail-Aktivierung, Content-Updates während der Laufzeit, tägliche Betriebssicherheit. Was ist das Preislogik-Argument für längere Mieten (Wochen-/Monatsstaffel)?

Jede Karte: Szenario-Label + 3–4 Sätze mit operativer Spezifität (was wann passiert, was enthalten ist, was schiefgehen könnte und wie HYSN das handhabt).

### Testimonials section

Three voices specifically about rental execution. Right register sounds operationally specific, not generic praise:

- An Eventmanager about delivery reliability ("Drei Tage vor dem Event hat ein anderer Anbieter abgesagt. HYSN hat in 24 Stunden Lieferung, Aufbau und einen Techniker organisiert. Am Veranstaltungstag lief alles wie geplant.")
- A Marketing Manager about polish and team load ("Die Wand hat den Launch professionell gemacht. Mein Team musste die Technik nicht betreuen — ein Ansprechpartner, der weiß, was zu tun ist.")
- A producer about logistics precision ("Lieferung 8 Uhr, Aufbau in zwei Stunden, Abbau direkt nach der Show. Keine Diskussion, keine Nachläufer.")

All German, rental-customer voice, no marketing voice.

### Vorher/Nachher case study

Pick a representative rental transformation. Vorher: improvisierter Aufbau / geliehene TVs / verwacklige Lösung beim letzten Event. Nachher: HYSN-gelieferte LED-Wand mit professioneller Montage, Helligkeit und Content-Loading. Reale oder repräsentative Zahlen (Publikumsgröße, Screen-m², Lieferfenster, Aufbauzeit, Abbauzeit). Klar markieren, ob real oder repräsentativ.

### FAQ

Reale Mietkundenfragen, nicht Marketing-Fragen:

- Gibt es eine Mindestmietdauer? (Antwort konkret: 1 Tag plus Auf-/Abbau ist häufig der Einstieg, je nach Technik)
- Was passiert, wenn mein Eventdatum sich verschiebt? (Verschiebung möglich nach Verfügbarkeitsprüfung; entstandene Planungs-/Reservierungskosten projektabhängig)
- Wer zahlt Lieferung und Aufbau? (Im Angebot ausgewiesen, Reisekosten nach Region und Umfang)
- Was passiert bei Beschädigung? (Schadensregelung im Vertrag, Versicherung optional, Verschleiß durch normale Nutzung nicht inbegriffen)
- Brauche ich einen Techniker vor Ort? (Empfehlung je nach Eventart und Dauer; bei Live-Zuspielung oder mehrstündigem Programm sinnvoll)
- Können Sie auch international liefern? (Projektbezogen; Standardgebiet ist Deutschland mit Schwerpunkt Rhein-Main)
- Welche Inhalte kann ich liefern und in welchen Formaten? (Übliche MP4/MOV/JPG/PNG, vorab geprüft auf Format, Auflösung, Seitenverhältnis)
- Was kostet eine Stornierung? (Stornostaffel je nach Vorlauf, transparent vorab im Angebot)

---

## Differentiation from w03 Events page — read carefully

Die Events-Page (`w03_events_v3.html`) bedient Eventmanager, die ein **vollständiges Event** planen — mit Beratung, Sponsorenintegration, Bühnenkonzept, kreativen Inhalten, technischer Vor-Ort-Begleitung. Lange Sales-Zyklen, hohe Beratungstiefe.

Die Display-Miete-Page (diese hier) bedient transaktionale Mieter — **product-aware, time-pressed**, die wissen, was sie wollen und einen schnellen Verfügbarkeitscheck brauchen.

**Konkrete Unterschiede in der Umsetzung:**

- **Hero CTA:** Events = "Verfügbarkeit für mein Event prüfen" (Beratungsanfrage). Miete = "Verfügbarkeit für mein Datum prüfen" (Mietabfrage)
- **Zentrale Sektion:** Events = Use Cases nach Eventtyp. Miete = Mietpark mit Produktkategorien, Größen, indikativen Preisen
- **Pricing:** Events = keine Preise (Beratungsprodukt). Miete = sichtbare "ab X € / Tag" Orientierung
- **Tonalität:** Events = beratend, partnerschaftlich. Miete = klar, transaktional, schnell
- **Cross-Link:** Diese Seite muss am Schluss klar auf /events verweisen für vollständige Eventproduktion. Die Events-Seite kann umgekehrt auf /display-mieten verweisen für reine Hardware-Miete.

Wenn die Wireframe-Seite sich am Ende wie eine zweite Variante der Events-Seite anfühlt, ist sie falsch.

---

## Wireframe style rules — non-negotiable

- Single self-contained HTML file. No external dependencies.
- Grayscale palette: `#ffffff`, `#f4f4f4`, `#d0d0d0`, `#333333`, `#111111`
- Body `#f0f0f0`, page wrapper `#ffffff`, max-width 900px centered, ~250px right margin for annotations
- Font: `system-ui, -apple-system, sans-serif`
- Section labels: `[SECTION NAME]` 10px uppercase gray top-left
- Image placeholders: gray rectangle with diagonal SVG cross + German caption
- Buttons: 2px solid #333, no fill, padding 12px 28px
- Annotations: sticky-note style boxes right margin (`left: calc(100% + 22px); width: 210px` or equivalent — match the pattern in existing v3 HTMLs); every section gets one explaining strategy
- Sections separated by 1px #d0d0d0 border
- Desktop only

## Language

Visible page copy in German. Anrede: Sie. Real directional copy — no lorem ipsum, no English in the visible page. Annotations and HTML comments can be English. Tone: praktisch, transaktional, mit Eventmanager-Sprache (nicht Beratungs-Sprache).

## Output

A single complete HTML file named `w17_rent_v3.html`, saved next to the existing v3 wireframes. The rental page exists to convert transactional, time-pressed buyers — every section should reduce friction toward an availability check, not lengthen the sales cycle. The Mietpark, Lieferzeit-Klarheit, Preisstruktur, Schadens-/Stornoregelung and Differentiation from /events are the five sections that earn or lose this page.
