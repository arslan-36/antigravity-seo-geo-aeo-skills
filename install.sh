#!/bin/bash
# Antigravity Skills Installer for macOS/Linux (Bash)
# Installs custom SEO-GEO-AEO skills to global ~/.gemini/config/skills/

set -e

DEST_DIR="$HOME/.gemini/config/skills"
TEMP_ZIP="/tmp/skills-repo.zip"
TEMP_EXTRACT_DIR="/tmp/skills-repo-extracted"

echo "🔍 Target directory: $DEST_DIR"
mkdir -p "$DEST_DIR"

cleanup() {
    echo "🧹 Cleaning up temporary files..."
    rm -f "$TEMP_ZIP"
    rm -rf "$TEMP_EXTRACT_DIR"
}
trap cleanup EXIT

# 1. Download ZIP from GitHub
echo "📥 Downloading skills package from GitHub..."
URL="https://github.com/arslan-36/antigravity-seo-geo-aeo-skills/archive/refs/heads/main.zip"

if command -v curl >/dev/null 2>&1; then
    curl -sSL "$URL" -o "$TEMP_ZIP"
elif command -v wget >/dev/null 2>&1; then
    wget -qO "$TEMP_ZIP" "$URL"
else
    echo "❌ Error: Neither curl nor wget was found on this system."
    exit 1
fi

# 2. Clean temporary extraction dir if exists
rm -rf "$TEMP_EXTRACT_DIR"
mkdir -p "$TEMP_EXTRACT_DIR"

# 3. Extract the ZIP
echo "📦 Extracting files..."
if command -v unzip >/dev/null 2>&1; then
    unzip -q "$TEMP_ZIP" -d "$TEMP_EXTRACT_DIR"
else
    echo "❌ Error: unzip command is required but was not found."
    exit 1
fi

# 4. Locate skills folder inside extracted package
EXTRACTED_FOLDER=$(ls -d "$TEMP_EXTRACT_DIR"/* | head -n 1)
SKILLS_SOURCE="$EXTRACTED_FOLDER/skills"

if [ -d "$SKILLS_SOURCE" ]; then
    # 5. Copy each skill to destination
    for skill_path in "$SKILLS_SOURCE"/*; do
        if [ -d "$skill_path" ]; then
            skill_name=$(basename "$skill_path")
            skill_dest="$DEST_DIR/$skill_name"
            echo "✨ Installing skill: $skill_name..."
            
            rm -rf "$skill_dest"
            cp -r "$skill_path" "$skill_dest"
        fi
    done
    echo "✅ Installation completed successfully!"
else
    echo "❌ Error: Could not find skills directory in the package."
    exit 1
fi
