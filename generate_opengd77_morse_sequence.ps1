$dah = "38,6,"
$di = "38,2,"
$inpause = "0,2,"
$intcharpause = "0,6,"

$outputfile = Read-Host "Where do you want to save the string? If the file already exists, it will be overwritten. [generated.txt]"
if ([string]::IsNullOrWhiteSpace($outputfile)) {
    $outputfile = "generated.txt"
}

$string = Read-Host "String you want to convert: [QRV]"
if ([string]::IsNullOrWhiteSpace($string)) {
    $string = "QRV"
}
$string = $string.ToUpper()

Remove-Item -Path $outputfile -ErrorAction SilentlyContinue

for ($i = 0; $i -lt $string.Length; $i++) {
    $convert = $string.Substring($i, 1)

    switch ($convert) {
        "A" { Add-Content -Path $outputfile -Value "$di$inpause$dah$intcharpause" }
        "B" { Add-Content -Path $outputfile -Value "$dah$inpause$di$inpause$di$inpause$di$intcharpause" }
        "C" { Add-Content -Path $outputfile -Value "$dah$inpause$di$inpause$dah$inpause$di$intcharpause" }
        "D" { Add-Content -Path $outputfile -Value "$dah$inpause$di$inpause$di$intcharpause" }
        "E" { Add-Content -Path $outputfile -Value "$di$intcharpause" }
        "F" { Add-Content -Path $outputfile -Value "$di$inpause$di$inpause$dah$inpause$di$intcharpause" }
        "G" { Add-Content -Path $outputfile -Value "$dah$inpause$dah$inpause$di$intcharpause" }
        "H" { Add-Content -Path $outputfile -Value "$di$inpause$di$inpause$di$inpause$di$intcharpause" }
        "I" { Add-Content -Path $outputfile -Value "$di$inpause$di$intcharpause" }
        "J" { Add-Content -Path $outputfile -Value "$di$inpause$dah$inpause$dah$inpause$dah$intcharpause" }
        "K" { Add-Content -Path $outputfile -Value "$dah$inpause$di$inpause$dah$intcharpause" }
        "L" { Add-Content -Path $outputfile -Value "$di$inpause$dah$inpause$di$inpause$di$intcharpause" }
        "M" { Add-Content -Path $outputfile -Value "$dah$inpause$dah$intcharpause" }
        "N" { Add-Content -Path $outputfile -Value "$dah$inpause$di$intcharpause" }
        "O" { Add-Content -Path $outputfile -Value "$dah$inpause$dah$inpause$dah$intcharpause" }
        "P" { Add-Content -Path $outputfile -Value "$di$inpause$dah$inpause$dah$inpause$di$intcharpause" }
        "Q" { Add-Content -Path $outputfile -Value "$dah$inpause$dah$inpause$di$inpause$dah$intcharpause" }
        "R" { Add-Content -Path $outputfile -Value "$di$inpause$dah$inpause$di$intcharpause" }
        "S" { Add-Content -Path $outputfile -Value "$di$inpause$di$inpause$di$intcharpause" }
        "T" { Add-Content -Path $outputfile -Value "$dah$intcharpause" }
        "U" { Add-Content -Path $outputfile -Value "$di$inpause$di$inpause$dah$intcharpause" }
        "V" { Add-Content -Path $outputfile -Value "$di$inpause$di$inpause$di$inpause$dah$intcharpause" }
        "W" { Add-Content -Path $outputfile -Value "$di$inpause$dah$inpause$dah$intcharpause" }
        "X" { Add-Content -Path $outputfile -Value "$dah$inpause$di$inpause$di$inpause$dah$intcharpause" }
        "Y" { Add-Content -Path $outputfile -Value "$dah$inpause$di$inpause$dah$inpause$dah$intcharpause" }
        "Z" { Add-Content -Path $outputfile -Value "$dah$inpause$dah$inpause$di$inpause$di$intcharpause" }
        "1" { Add-Content -Path $outputfile -Value "$di$inpause$dah$inpause$dah$inpause$dah$inpause$dah$intcharpause" }
        "2" { Add-Content -Path $outputfile -Value "$di$inpause$di$inpause$dah$inpause$dah$inpause$dah$intcharpause" }
        "3" { Add-Content -Path $outputfile -Value "$di$inpause$di$inpause$di$inpause$dah$inpause$dah$intcharpause" }
        "4" { Add-Content -Path $outputfile -Value "$di$inpause$di$inpause$di$inpause$di$inpause$dah$intcharpause" }
        "5" { Add-Content -Path $outputfile -Value "$di$inpause$di$inpause$di$inpause$di$inpause$di$intcharpause" }
        "6" { Add-Content -Path $outputfile -Value "$dah$inpause$di$inpause$di$inpause$di$inpause$di$intcharpause" }
        "7" { Add-Content -Path $outputfile -Value "$dah$inpause$dah$inpause$di$inpause$di$inpause$di$intcharpause" }
        "8" { Add-Content -Path $outputfile -Value "$dah$inpause$dah$inpause$dah$inpause$di$inpause$di$intcharpause" }
        "9" { Add-Content -Path $outputfile -Value "$dah$inpause$dah$inpause$dah$inpause$dah$inpause$di$intcharpause" }
        "0" { Add-Content -Path $outputfile -Value "$dah$inpause$dah$inpause$dah$inpause$dah$inpause$dah$intcharpause" }
    }
}

(Get-Content -Path $outputfile)