# Google Antigravity (AGY) SEO-GEO-AEO Optimization Skills

A curated suite of custom, production-grade skills designed to optimize websites and written content for traditional search engines (SEO), generative engine indexing (GEO), and answer engines (AEO). These skills work natively inside the Google Antigravity / AGY IDE and CLI.

---

## What's Included

This repository contains four modular skills that you can load into your Antigravity assistant:

1.  **`seo-geo-aeo-optimizer`**: A unified framework for technical SEO audits, intent-mapped content clustering, structured JSON-LD schema generation, AI sitemap setup, and RAG-readiness verification.
2.  **`be-human`**: A strict humanized copywriting guide that strips out machine clichés (like *delve*, *tapestry*, *landscape*) and implements natural sentence cadence and active voice.
3.  **`article-writing-skill`**: An expert article writer skill for generating clear, high-ranking, and high-readability blogs or documentation.
4.  **`agent-browser`**: Integrates browser automation runbooks for page rendering checks, link crawling, and DOM audit verification.

---

## Installation Guide

You can install these skills globally (applies to all projects) or locally (scoped to a single project).

### Method 1: Global Installation (Machine-wide)
Installing globally makes the skills available in any workspace on your machine.

#### Windows (PowerShell)
Open PowerShell and run the following command to download and run the installer:
```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12; iwr -useb https://raw.githubusercontent.com/arslan-36/antigravity-seo-geo-aeo-skills/main/install.ps1 | iex
```

#### macOS / Linux (Shell)
Open your terminal and run:
```bash
curl -sSL https://raw.githubusercontent.com/arslan-36/antigravity-seo-geo-aeo-skills/main/install.sh | bash
```

---

### Method 2: Project-Specific Installation (Recommended for Teams)
To share these skills with other developers on a specific repository, you can check them directly into your project's workspace.

1.  Create an `.agents` folder at the root of your project:
    ```bash
    mkdir -p .agents/skills
    ```
2.  Clone this repository or copy the directories of the skills you need into `.agents/skills/`:
    ```bash
    cp -r skills/* .agents/skills/
    ```
3.  Commit the files to Git:
    ```bash
    git add .agents/skills
    git commit -m "add custom SEO-GEO-AEO skills"
    ```

Once committed, any team member launching the Antigravity IDE or CLI in that directory will automatically load the skills.

---

## License

This repository is licensed under the MIT License.
