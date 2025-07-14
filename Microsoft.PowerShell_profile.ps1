function get-time { 
get-date -format HH:MM
} 

new-alias  -name webr -value wget


# ========================
# PowerShell Profile - DP Edition 😎
# ========================

Write-Host "Welcome back, DP. Terminal ready." -ForegroundColor Cyan

# --- Safe Custom Aliases ---
Set-Alias dpc Start-Coding     # dp-coding
Set-Alias dpp Git-Push         # dp-push

# --- Functions ---

function Start-Coding {
    Write-Host "Launching coding mode... stay sharp!" -ForegroundColor Green
    Start-Sleep -Seconds 1
    code .
}

function Git-Push {
    git add .
    git commit -m "Update from DP's PowerShell profile"
    git push
    Write-Host "Code pushed to GitHub successfully!" -ForegroundColor Yellow
}

function Intune-Prep {
    Write-Host "Loading Intune study setup..." -ForegroundColor Blue
    Start-Process "https://learn.microsoft.com/en-us/mem/intune/"
}

# --- Customize Prompt ---
function prompt {
    "PS [$env:USERNAME] > "
}
