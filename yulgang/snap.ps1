# Capture the whole screen to shot.png next to this script.
# Read-only: it only takes a picture, it never sends input to the game.
Add-Type -AssemblyName System.Windows.Forms, System.Drawing
$b = [System.Windows.Forms.SystemInformation]::VirtualScreen
$bmp = New-Object System.Drawing.Bitmap $b.Width, $b.Height
$g = [System.Drawing.Graphics]::FromImage($bmp)
$g.CopyFromScreen($b.Left, $b.Top, 0, 0, $bmp.Size)
$out = Join-Path $PSScriptRoot "shot.png"
$bmp.Save($out, [System.Drawing.Imaging.ImageFormat]::Png)
$g.Dispose(); $bmp.Dispose()
$p = Get-Process | Where-Object { $_.MainWindowTitle -like "*YGOnline*" }
if ($p) { "YGOnline running: " + ($p | ForEach-Object { "$($_.Id) responding=$($_.Responding)" }) -join ", " } else { "YGOnline NOT running" }
"saved: $out"
