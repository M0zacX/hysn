$ErrorActionPreference = 'Stop'
$src   = 'c:\hysn-main'
$bizox = "$src\bizox-html-package\Bizox"

$shell    = Get-Content "$src\homepage\index.html"          -Encoding UTF8
$about    = Get-Content "$bizox\about.html"                 -Encoding UTF8
$index    = Get-Content "$bizox\index.html"                 -Encoding UTF8
$home2    = Get-Content "$bizox\home-2.html"                -Encoding UTF8
$svcDet   = Get-Content "$bizox\service-details.html"       -Encoding UTF8
$pricing  = Get-Content "$bizox\pricing.html"              -Encoding UTF8

function Slice($arr, $a, $b) { ,$arr[($a-1)..($b-1)] }

$out = New-Object System.Collections.Generic.List[string]
function Add-Lines($lines) { foreach ($l in $lines) { $out.Add($l) } }
function Add-Marker($text)  { $out.Add('        <!-- ===== ' + $text + ' ===== -->') }

# Placeholder stub for the HYSN-specific sections that have NO Bizox markup yet.
function Add-Placeholder($label, $heading, $subtext) {
    Add-Marker ('CUSTOM Section: ' + $label + ' (no template markup - design later)')
    $out.Add('        <section class="hysn-custom-placeholder pt-140 pb-150" style="border-top:1px solid #ececec;">')
    $out.Add('            <div class="container">')
    $out.Add('                <div style="border:2px dashed #cccccc; border-radius:14px; padding:72px 40px; text-align:center; background:#fafafa;">')
    $out.Add('                    <span style="display:inline-block; font-size:11px; letter-spacing:2px; text-transform:uppercase; color:#9a9a9a; margin-bottom:18px;">[ HYSN-spezifische Sektion - noch zu gestalten ]</span>')
    $out.Add('                    <h2 style="font-size:34px; line-height:1.25; margin:0 auto 18px; max-width:780px; color:#141519;">' + $heading + '</h2>')
    $out.Add('                    <p style="font-size:17px; color:#666; max-width:700px; margin:0 auto;">' + $subtext + '</p>')
    $out.Add('                </div>')
    $out.Add('            </div>')
    $out.Add('        </section>')
}

# ---- Shell head + header + offcanvas + <main> ----
Add-Lines (Slice $shell 1 239)

# 1a. Page-title hero band  (about.html breadcrumb)
Add-Marker 'Section 1a: Page-title hero band (about.html breadcrumb)'
Add-Lines (Slice $about 334 355)

# 1b. Brand / partner logo strip  (home-2.html brand)
Add-Marker 'Section 1b: Brand / partner logo strip (home-2.html)'
Add-Lines (Slice $home2 1124 1176)

# 2. "Finished installation" - big image + cards  (index.html xb-about-section)
Add-Marker 'Section 2: Finished installation / about + image + cards (index.html)'
Add-Lines (Slice $index 400 485)

# 3. Tools & technologies we use  (home-2.html technology-section)
Add-Marker 'Section 3: Tools & technologies we use (home-2.html)'
Add-Lines (Slice $home2 1180 1349)

# 4. Our services - SEO / Social / Content / Email / PPC  (home-2.html service)
Add-Marker 'Section 4: Our services - marketing list (home-2.html)'
Add-Lines (Slice $home2 475 603)

# 5. Impact & results  (home-2.html dm-about / Our results)
Add-Marker 'Section 5: Impact & results / Our results (home-2.html)'
Add-Lines (Slice $home2 381 471)

# 6. Our approach - 3 cards  (service-details.html, wrapped in section/container)
Add-Marker 'Section 6: Our approach - 3 cards (service-details.html, wrapped)'
$out.Add('        <section class="peocess pt-140 pb-150">')
$out.Add('            <div class="container">')
Add-Lines (Slice $svcDet 482 570)
$out.Add('            </div>')
$out.Add('        </section>')

# 7. Not every wall is concrete - preliminary checks  (index.html feature)
Add-Marker 'Section 7: Not every wall is concrete / feature (index.html)'
Add-Lines (Slice $index 716 781)

# 8. Our successful cases - slider  (home-2.html project)
Add-Marker 'Section 8: Our successful cases / slider (home-2.html)'
Add-Lines (Slice $home2 755 1120)

# CUSTOM. Coverage-area map  (no template markup)
Add-Placeholder 'Coverage area / Rhein-Main map' 'Rhein-Main ist unser Kerngebiet. Deutschlandweite Montage auf Anfrage.' 'Karten-Grafik mit Kerngebiet Rhein-Main und Hinweis auf deutschlandweite Montage je nach Projekt - hier zu gestalten.'

# 9. Mid-page CTA strip  (home-2.html cta)
Add-Marker 'Section 9: Mid-page CTA strip (home-2.html cta)'
Add-Lines (Slice $home2 1557 1592)

# CUSTOM. Vorher / Nachher case study  (no template markup)
Add-Placeholder 'Vorher / Nachher case study' 'Vom improvisierten Fernseher zum fertigen Menueboard-System.' 'Vorher/Nachher-Vergleich: Amateurhafte Eigenmontage gegenueber sauberer HYSN-Installation am selben Standort - hier zu gestalten.'

# 10. Our services - consulting list  (index.html service)
Add-Marker 'Section 10: Our services - consulting list (index.html)'
Add-Lines (Slice $index 489 712)

# 11. Testimonials  (index.html testimonial)
Add-Marker 'Section 11: Happy clients observation / testimonials (index.html)'
Add-Lines (Slice $index 1384 1725)

# CUSTOM. HYSN brings / location provides  (no template markup)
Add-Placeholder 'HYSN brings / location provides' 'Gruendliche Vorbereitung verhindert Verzoegerungen am Montagetag.' 'Zwei-Spalten-Uebersicht: Was HYSN mitbringt (Halterungen, Screens, Kabel, Werkzeug, Expertise) gegenueber Was der Standort bereitstellt (Stromanschluss, Wandzugang, Netzwerk) - hier zu gestalten.'

# CUSTOM. Technical-points spec table  (no template markup)
Add-Placeholder 'Technical-points spec table' 'Die wichtigsten technischen Punkte klaeren wir vor der Montage.' 'Technische Spezifikationstabelle: Traglast, Strom, Internet, Belueftung, Zugaenglichkeit - hier zu gestalten.'

# 12. FAQ  (pricing.html pr-faq)
Add-Marker 'Section 12: FAQ (pricing.html)'
Add-Lines (Slice $pricing 806 914)

# 13. Final CTA band  (home-2.html cta)
Add-Marker 'Section 13: Final CTA band (home-2.html cta)'
Add-Lines (Slice $home2 1557 1592)

# ---- </main> + footer + scripts  (homepage/index.html, verbatim) ----
Add-Lines (Slice $shell 1955 2216)

# Set page title
for ($i = 0; $i -lt $out.Count; $i++) {
  if ($out[$i] -match '<title>') { $out[$i] = '    <title>HYSN - Installation & Montage</title>' ; break }
}

$enc = New-Object System.Text.UTF8Encoding($false)
[System.IO.File]::WriteAllLines("$src\installationpage\index.html", $out, $enc)

Write-Output ("Wrote index.html : {0} lines" -f $out.Count)
$txt = [System.IO.File]::ReadAllText("$src\installationpage\index.html")
$openS  = ([regex]::Matches($txt, '<section')).Count
$closeS = ([regex]::Matches($txt, '</section>')).Count
$openM  = ([regex]::Matches($txt, '<main')).Count
$closeM = ([regex]::Matches($txt, '</main>')).Count
$footer = ([regex]::Matches($txt, '<footer')).Count
Write-Output ("<section>={0}  </section>={1}  <main>={2}  </main>={3}  <footer>={4}" -f $openS,$closeS,$openM,$closeM,$footer)
