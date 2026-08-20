# Antigravity Skills Installer for Windows (PowerShell)
# Installs custom SEO-GEO-AEO skills to global ~/.gemini/config/skills/

$ErrorActionPreference = "Stop"

$destDir = Join-Path $Home ".gemini\config\skills"
$tempZip = Join-Path [System.IO.Path]::GetTempPath() "skills-repo.zip"
$tempExtractDir = Join-Path [System.IO.Path]::GetTempPath() "skills-repo-extracted"

Write-Host "🔍 Target directory: $destDir"
if (-not (Test-Path $destDir)) {
    New-Item -ItemType Directory -Path $destDir -Force | Out-Null
    Write-Host "Created target skills folder."
}

try {
    # 1. Download zip from GitHub
    Write-Host "📥 Downloading skills package from GitHub..."
    $url = "https://github.com/arslan-36/antigravity-seo-geo-aeo-skills/archive/refs/heads/main.zip"
    Invoke-WebRequest -Uri $url -OutFile $tempZip -UseBasicParsing

    # 2. Clean temporary extraction dir if exists
    if (Test-Path $tempExtractDir) {
        Remove-Item -Path $tempExtractDir -Recurse -Force | Out-Null
    }

    # 3. Extract the ZIP
    Write-Host "📦 Extracting files..."
    Expand-Archive -Path $tempZip -DestinationPath $tempExtractDir -Force

    # 4. Locate skills folder inside extracted package
    $extractedFolder = Get-ChildItem -Path $tempExtractDir | Select-Object -First 1
    $skillsSource = Join-Path $extractedFolder.FullName "skills"

    if (Test-Path $skillsSource) {
        # 5. Copy each skill to destination
        Get-ChildItem -Path $skillsSource -Directory | ForEach-Object {
            $skillName = $_.Name
            $skillDest = Join-Path $destDir $skillName
            Write-Host "✨ Installing skill: $skillName..."
            
            if (Test-Path $skillDest) {
                Remove-Item -Path $skillDest -Recurse -Force | Out-Null
            }
            Copy-Item -Path $_.FullName -Destination $skillDest -Recurse -Force
        }
        Write-Host "✅ Installation completed successfully!"
    } else {
        Write-Error "Could not find skills directory in the package."
    }

} catch {
    Write-Error "Failed to install skills: $_"
} finally {
    # Cleanup
    if (Test-Path $tempZip) { Remove-Item -Path $tempZip -Force }
    if (Test-Path $tempExtractDir) { Remove-Item -Path $tempExtractDir -Recurse -Force }
}
