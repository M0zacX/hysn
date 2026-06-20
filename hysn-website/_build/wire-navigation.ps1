# Wire navigation across the 9 HYSN pages.
# Strategy: read/write every file as ISO-8859-1 (byte-transparent) so untouched
# bytes are preserved regardless of the file's real encoding (UTF-8 BOM / no-BOM).
# All inserted markup is pure ASCII (German chars as HTML entities).

$ErrorActionPreference = 'Stop'
# All 9 source files are UTF-8 (3 with BOM, 6 without). Read from pristine SOURCE as
# UTF-8 (BOM auto-stripped), apply ASCII-only edits, write to DEST as UTF-8 preserving
# the original BOM state. This avoids the Latin1 round-trip that corrupts non-Latin1
# characters (em-dashes, curly quotes) and mis-stores umlauts.
$srcRoot = 'c:\hysn-main'
$site = 'c:\hysn-main\hysn-website'

$pages = 'homepage','aboutpage','contactpage','content-creation-page','installation-page',
         'maintenance-page','dooh-hyades-page','partner-program-page','case-studies-page'

# ---- New DESKTOP nav inner markup (between <nav ...> and </nav>) ----
$deskNav = @'

                                <ul>
                                    <li><a href="../homepage/index.html"><span>Start</span></a></li>
                                    <li><a href="../aboutpage/index.html"><span>&Uuml;ber uns</span></a></li>
                                    <li class="menu-item-has-children">
                                        <a href="#!"><span>Leistungen</span></a>
                                        <ul class="submenu">
                                            <li><a href="../content-creation-page/index.html"><span>Content Creation</span></a></li>
                                            <li><a href="../installation-page/index.html"><span>Installation &amp; Montage</span></a></li>
                                            <li><a href="../maintenance-page/index.html"><span>Wartung &amp; Betrieb</span></a></li>
                                            <li><a href="../dooh-hyades-page/index.html"><span>DOOH &amp; hyads</span></a></li>
                                        </ul>
                                    </li>
                                    <li><a href="../case-studies-page/index.html"><span>Referenzen</span></a></li>
                                    <li><a href="../partner-program-page/index.html"><span>Partnerprogramm</span></a></li>
                                    <li><a href="../contactpage/index.html"><span data-text="Kontakt">Kontakt</span></a></li>
                                </ul>

'@

# ---- New MOBILE nav inner markup (between <nav class="xb-header-nav"> and </nav>) ----
$mobNav = @'

                                <ul class="xb-menu-primary clearfix">
                                    <li class="menu-item"><a href="../homepage/index.html"><span>Start</span></a></li>
                                    <li class="menu-item"><a href="../aboutpage/index.html"><span>&Uuml;ber uns</span></a></li>
                                    <li class="menu-item menu-item-has-children">
                                        <a href="#!"><span>Leistungen</span></a>
                                        <ul class="sub-menu">
                                            <li><a href="../content-creation-page/index.html"><span>Content Creation</span></a></li>
                                            <li><a href="../installation-page/index.html"><span>Installation &amp; Montage</span></a></li>
                                            <li><a href="../maintenance-page/index.html"><span>Wartung &amp; Betrieb</span></a></li>
                                            <li><a href="../dooh-hyades-page/index.html"><span>DOOH &amp; hyads</span></a></li>
                                        </ul>
                                    </li>
                                    <li class="menu-item"><a href="../case-studies-page/index.html"><span>Referenzen</span></a></li>
                                    <li class="menu-item"><a href="../partner-program-page/index.html"><span>Partnerprogramm</span></a></li>
                                    <li class="menu-item"><a href="../contactpage/index.html"><span>Kontakt</span></a></li>
                                </ul>

'@

# ---- New FOOTER link columns (replaces the two Loesungen/Branchen widgets) ----
$footerCols = @'
<div class="xb-footer_widget">
                    <span class="xb-widget-title">Leistungen</span>
                    <ul class="xb-list list-unstyled">
                        <li><a href="../content-creation-page/index.html">Content Creation</a></li>
                        <li><a href="../installation-page/index.html">Installation &amp; Montage</a></li>
                        <li><a href="../maintenance-page/index.html">Wartung &amp; Betrieb</a></li>
                        <li><a href="../dooh-hyades-page/index.html">DOOH &amp; hyads</a></li>
                    </ul>
                </div>
                <div class="xb-footer_widget">
                    <span class="xb-widget-title">Unternehmen</span>
                    <ul class="xb-list list-unstyled">
                        <li><a href="../homepage/index.html">Start</a></li>
                        <li><a href="../aboutpage/index.html">&Uuml;ber uns</a></li>
                        <li><a href="../case-studies-page/index.html">Referenzen</a></li>
                        <li><a href="../partner-program-page/index.html">Partnerprogramm</a></li>
                        <li><a href="../contactpage/index.html">Kontakt</a></li>
                    </ul>
                </div>

'@

# context map for homepage service cards (keyword -> target)
$ctxMap = @(
  @('Content','../content-creation-page/index.html'),
  @('Montage','../installation-page/index.html'),
  @('Installation','../installation-page/index.html'),
  @('Betrieb','../maintenance-page/index.html'),
  @('Support','../maintenance-page/index.html'),
  @('Standortberatung','../aboutpage/index.html'),
  @('Planung','../aboutpage/index.html'),
  @('Standort','../aboutpage/index.html')
)

foreach($p in $pages){
  $srcFile = Join-Path $srcRoot "$p\index.html"
  $f = Join-Path $site "$p\index.html"
  $bytes = [System.IO.File]::ReadAllBytes($srcFile)
  $hadBom = ($bytes.Length -ge 3 -and $bytes[0] -eq 0xEF -and $bytes[1] -eq 0xBB -and $bytes[2] -eq 0xBF)
  $c = [System.IO.File]::ReadAllText($srcFile, [System.Text.Encoding]::UTF8)  # BOM stripped if present
  $report = [ordered]@{}

  # 1. desktop nav
  $rx = [regex]'(?s)(<nav class="main-menu collapse navbar-collapse">).*?(</nav>)'
  $report.desktopNav = $rx.Matches($c).Count
  $c = $rx.Replace($c, ('$1' + ($deskNav -replace '\$','$$$$') + '$2'), 1)

  # 2. mobile nav
  $rx = [regex]'(?s)(<nav class="xb-header-nav">).*?(</nav>)'
  $report.mobileNav = $rx.Matches($c).Count
  $c = $rx.Replace($c, ('$1' + ($mobNav -replace '\$','$$$$') + '$2'), 1)

  # 3. footer link columns
  $rx = [regex]'(?s)<div class="xb-footer_widget">.*?(?=<div class="xb-footer_widget xb-footer-contact_info">)'
  $report.footerCols = $rx.Matches($c).Count
  $c = $rx.Replace($c, ($footerCols -replace '\$','$$$$'), 1)

  # 4. service-details.html
  if($p -eq 'homepage'){
    # Each card's titled link names the service; its empty overlay/icon/img links
    # share the card and always follow the titled link, so carry the last title forward.
    $script:work = $c
    $script:lastTarget = '../homepage/index.html'
    $eval = [System.Text.RegularExpressions.MatchEvaluator]{
      param($m)
      $pos = $m.Index + $m.Length
      $len = [Math]::Min(220, $script:work.Length - $pos)
      $after = $script:work.Substring($pos, $len)
      $txt = ''
      if($after -match '^[^>]*>([^<]*)<'){ $txt = $matches[1] }
      $target = $null
      if($txt -match 'Content'){ $target = '../content-creation-page/index.html' }
      elseif($txt -match 'Montage|Installation'){ $target = '../installation-page/index.html' }
      elseif($txt -match 'Betrieb|Support'){ $target = '../maintenance-page/index.html' }
      elseif($txt -match 'Standortberatung|Planung|Standort'){ $target = '../aboutpage/index.html' }
      if($target){ $script:lastTarget = $target } else { $target = $script:lastTarget }
      return ('href="' + $target + '"')
    }
    $rxsd = [regex]'href="service-details\.html"'
    $report.serviceDetailsCtx = $rxsd.Matches($c).Count
    $c = $rxsd.Replace($c, $eval)
  } else {
    # service pages: point detail links back to the page itself (no detail pages exist)
    $self = "../$p/index.html"
    $cnt = ([regex]'href="service-details\.html"').Matches($c).Count
    $report.serviceDetailsSelf = $cnt
    $c = $c.Replace('href="service-details.html"', ('href="' + $self + '"'))
  }

  # 5. global stock-link remaps (exact literals)
  $globals = @(
    @('href="about.html"',           'href="../aboutpage/index.html"'),
    @('href="contact.html"',         'href="../contactpage/index.html"'),
    @('href="project-details.html"', 'href="../case-studies-page/index.html"'),
    @('href="project.html"',         'href="../case-studies-page/index.html"'),
    @('href="service.html"',         'href="../homepage/index.html"'),
    @('href="index.html"',           'href="../homepage/index.html"')
  )
  foreach($g in $globals){
    $n = ([regex]::Escape($g[0]) | ForEach-Object { ([regex]$_).Matches($c).Count })
    $report["repl "+$g[0]] = $n
    $c = $c.Replace($g[0], $g[1])
  }

  $outEnc = New-Object System.Text.UTF8Encoding($hadBom)   # preserve original BOM state
  [System.IO.File]::WriteAllText($f, $c, $outEnc)

  Write-Output "=== $p ==="
  foreach($k in $report.Keys){ Write-Output ("   {0,-32} {1}" -f $k, $report[$k]) }
}
Write-Output 'DONE'
