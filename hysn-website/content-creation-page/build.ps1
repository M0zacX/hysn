$ErrorActionPreference = 'Stop'
$src   = 'c:\hysn-main'
$bizox = "$src\bizox-html-package\Bizox"

$shell   = Get-Content "$src\homepage\index.html" -Encoding UTF8
$about   = Get-Content "$bizox\about.html"   -Encoding UTF8
$index   = Get-Content "$bizox\index.html"   -Encoding UTF8
$home2   = Get-Content "$bizox\home-2.html"  -Encoding UTF8
$pricing = Get-Content "$bizox\pricing.html" -Encoding UTF8

function Slice($arr, $a, $b) { ,$arr[($a-1)..($b-1)] }

$out = New-Object System.Collections.Generic.List[string]
function Add-Lines($lines) { foreach ($l in $lines) { $out.Add($l) } }
function Add-Marker($text)  { $out.Add('        <!-- ===== ' + $text + ' ===== -->') }

# Shell head + header + offcanvas + <main>
Add-Lines (Slice $shell 1 239)

# 1a. Breadcrumb header "About Us"  (about.html)
Add-Marker 'Section 1a: Breadcrumb header (about.html)'
Add-Lines (Slice $about 334 355)

# 1b. About + stat cards  (index.html xb-about-section)
Add-Marker 'Section 1b: About + stats (index.html)'
Add-Lines (Slice $index 400 485)

# 3. Our successful cases - slider  (home-2.html)
Add-Marker 'Section 3: Our successful cases / slider (home-2.html)'
Add-Lines (Slice $home2 755 1120)

# 5. Our services  (index.html xb-service-wrapper)
Add-Marker 'Section 5: Our services (index.html)'
Add-Lines (Slice $index 489 712)

# 6. Step-by-step workflow  (home-2.html peocess)
Add-Marker 'Section 6: Step-by-step workflow (home-2.html)'
Add-Lines (Slice $home2 607 751)

# 7. Explore stunning moments - gallery  (about.html)
Add-Marker 'Section 7: Explore stunning moments / gallery (about.html)'
Add-Lines (Slice $about 1152 1203)

# 8. Impact & results  (home-2.html dm-about / Our results)
Add-Marker 'Section 8: Impact & results / Our results (home-2.html)'
Add-Lines (Slice $home2 381 471)

# 12. Testimonials  (index.html)
Add-Marker 'Section 12: Testimonials (index.html)'
Add-Lines (Slice $index 1384 1725)

# 13. FAQ  (pricing.html)
Add-Marker 'Section 13: FAQ (pricing.html)'
Add-Lines (Slice $pricing 806 914)

# 14. Get more traffic - cta band  (home-2.html)
Add-Marker 'Section 14: Get more traffic / CTA band (home-2.html)'
Add-Lines (Slice $home2 1557 1592)

# Footer + scripts  (homepage/index.html, verbatim)
Add-Lines (Slice $shell 1955 2216)

# Set page title
for ($i = 0; $i -lt $out.Count; $i++) {
  if ($out[$i] -match '<title>') { $out[$i] = '    <title>HYSN - Content Creation</title>' ; break }
}

$enc = New-Object System.Text.UTF8Encoding($false)
[System.IO.File]::WriteAllLines("$src\content-creation-page\index.html", $out, $enc)

Write-Output ("Wrote index.html : {0} lines" -f $out.Count)
$txt = [System.IO.File]::ReadAllText("$src\content-creation-page\index.html")
$openS  = ([regex]::Matches($txt, '<section')).Count
$closeS = ([regex]::Matches($txt, '</section>')).Count
$openM  = ([regex]::Matches($txt, '<main')).Count
$closeM = ([regex]::Matches($txt, '</main>')).Count
$footer = ([regex]::Matches($txt, '<footer')).Count
Write-Output ("<section>={0}  </section>={1}  <main>={2}  </main>={3}  <footer>={4}" -f $openS,$closeS,$openM,$closeM,$footer)