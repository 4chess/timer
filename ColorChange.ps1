# Define how long to show each color and how many times to alternate
$displayDurationSeconds = 1
$iterations = 10

# Loop to alternate colors
for ($i = 0; $i -lt $iterations; $i++) {
    # Change to the first color (e.g., Red)
    $Host.UI.RawUI.BackgroundColor = "Red"
    $Host.UI.RawUI.FlushInputBuffer()
    Clear-Host

    Start-Sleep -Seconds $displayDurationSeconds

    # Change to the second color (e.g., Blue)
    $Host.UI.RawUI.BackgroundColor = "Blue"
    $Host.UI.RawUI.FlushInputBuffer()
    Clear-Host

    Start-Sleep -Seconds $displayDurationSeconds
}

# Revert to default color (optional, e.g., Black)
$Host.UI.RawUI.BackgroundColor = "Black"
$Host.UI.RawUI.FlushInputBuffer()
Clear-Host
