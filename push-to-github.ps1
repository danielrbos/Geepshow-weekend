# Push deze map naar een bestaande lege GitHub-repo (HTTPS).
# Gebruik: .\push-to-github.ps1 -RemoteUrl "https://github.com/JOUWUSER/JOUWREPO.git"
param(
    [Parameter(Mandatory = $true)]
    [string]$RemoteUrl
)

Set-Location $PSScriptRoot

if (-not (git rev-parse --is-inside-work-tree 2>$null)) {
    Write-Error "Geen git-repository hier. Run eerst: git init -b main"
    exit 1
}

git remote remove origin 2>$null
git remote add origin $RemoteUrl

Write-Host "Pushing naar $RemoteUrl ..."
git push -u origin main
if ($LASTEXITCODE -ne 0) {
    Write-Host ""
    Write-Host "Als authenticatie faalt: log in via GitHub (browser of Personal Access Token)." -ForegroundColor Yellow
    Write-Host "Repo moet leeg zijn (geen README bij aanmaak), of gebruik: git pull origin main --allow-unrelated-histories"
    exit $LASTEXITCODE
}

Write-Host ""
Write-Host "Klaar. Zet nu GitHub Pages aan: Repo → Settings → Pages → Branch main / root." -ForegroundColor Green
