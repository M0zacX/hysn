$path = "c:\hysn-main\partner-program-page\index.html"
$content = [System.IO.File]::ReadAllText($path, [System.Text.Encoding]::UTF8)

function RemoveBlock($text, $startMarker, $endMarker) {
    $si = $text.IndexOf($startMarker)
    if ($si -lt 0) { Write-Host "START not found: $startMarker"; return $text }
    # Walk back to include preceding blank line
    $cut = $si
    if ($cut -ge 2 -and $text[$cut-1] -eq "`n" -and $text[$cut-2] -eq "`n") { $cut -= 2 }
    elseif ($cut -ge 1 -and $text[$cut-1] -eq "`n") { $cut -= 1 }
    $ei = $text.IndexOf($endMarker, $si)
    if ($ei -lt 0) { Write-Host "END not found: $endMarker"; return $text }
    $removeEnd = $ei + $endMarker.Length
    Write-Host "Removing chars $cut to $removeEnd  (end=$endMarker)"
    return $text.Remove($cut, $removeEnd - $cut)
}

$content = RemoveBlock $content "<!-- WF1b " "stat strip end -->"
$content = RemoveBlock $content "<!-- WF4 " "Umsatzbeispiele end -->"
$content = RemoveBlock $content "<!-- WF8 " "Pilot CTA band end -->"

[System.IO.File]::WriteAllText($path, $content, (New-Object System.Text.UTF8Encoding($false)))
Write-Host "Done."
