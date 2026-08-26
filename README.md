# 🚀 Google Antigravity (AGY) SEO-GEO-AEO Skills Suite

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Google Antigravity](https://img.shields.io/badge/Google_Antigravity-Skills-blue.svg)](https://antigravity.google)
[![SEO-GEO-AEO](https://img.shields.io/badge/Optimization-SEO%20%7C%20GEO%20%7C%20AEO-green.svg)](https://github.com/arslan-36/antigravity-seo-geo-aeo-skills)

A curated suite of custom, production-grade skills designed to optimize websites and written content for traditional search engines (**SEO**), generative engine indexing (**GEO**), and answer engines (**AEO**). These skills work natively inside the **Google Antigravity / AGY IDE and CLI**.

---

## 📦 What's Included

| Skill Name | Purpose | Key Capabilities |
| :--- | :--- | :--- |
| **`seo-geo-aeo-optimizer`** | Complete Search Engine Optimization | Technical SEO audits, topic clustering, JSON-LD Schema (Article, FAQ, Product), XML sitemaps, robots.txt, and RAG-readiness. |
| **`be-human`** | Humanized Authentic Copywriting | Strips out AI cliché vocabulary (*delve*, *tapestry*, *landscape*), optimizes sentence rhythm, removes conversational preambles, and enforces active voice. |
| **`article-writing-skill`** | Search-Ranked Article Drafting | Guides creation of high-ranking, highly readable, structured articles and blog posts. |
| **`agent-browser`** | Automated Site Crawling & Testing | Automates browser interaction to inspect DOM, test live pages, check rendering errors, and audit links. |

---

## ⚡ Quick Installation

Choose the installation method that fits your workflow:

### Option 1: Direct in Antigravity Chat (Easiest — Prompt & Play)
Just open your Antigravity chat and tell the agent:
```text
Please install the custom skills from this repository to my global skills folder:
https://github.com/arslan-36/antigravity-seo-geo-aeo-skills
```
Antigravity will clone and install the skills to your global config directory (`~/.gemini/config/skills/`) automatically.

---

### Option 2: One-Line Terminal Command (Global Installation)
Install all skills machine-wide with a single command:

#### Windows (PowerShell)
```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12; iwr -useb https://raw.githubusercontent.com/arslan-36/antigravity-seo-geo-aeo-skills/main/install.ps1 | iex
```

#### macOS / Linux (Terminal)
```bash
curl -sSL https://raw.githubusercontent.com/arslan-36/antigravity-seo-geo-aeo-skills/main/install.sh | bash
```

---

### Option 3: Project-Level Installation (Recommended for Git Teams)
If you want these skills to be available automatically to anyone cloning your project repository:

1. Create an `.agents/skills` folder at your project root:
   ```bash
   mkdir -p .agents/skills
   ```
2. Copy the skills into your repository:
   ```bash
   cp -r skills/* .agents/skills/
   ```
3. Commit and push:
   ```bash
   git add .agents/skills
   git commit -m "feat: add Antigravity SEO-GEO-AEO skills suite"
   git push
   ```

---

## 💡 How to Use

Once installed, simply prompt Antigravity naturally:

### 1. Run a Full SEO / GEO Audit on an Article or Page:
> *"Audit this blog post for SEO, GEO, and AEO compliance. Check for any AI writing footprints, verify JSON-LD schema, and optimize headings."*

### 2. Write a Humanized, Search-Optimized Article:
> *"Write a 1,500-word pillar article about 'Best Practices for Cloud Deployment'. Make sure it has a direct BLUF opening, fact-rich standalone sentences for AI answer engines, and no robotic AI clichés."*

### 3. Plan a Content Cluster:
> *"Help me design a topic cluster strategy for an e-commerce store selling organic coffee. Group keywords by search intent and create a pillar-and-spoke content map."*

---

## 📂 Repository Structure

```text
antigravity-seo-geo-aeo-skills/
├── .gitignore
├── LICENSE                      # MIT License
├── README.md                    # Setup and usage guide
├── install.ps1                  # 1-click Windows installer
├── install.sh                   # 1-click macOS / Linux installer
└── skills/                      # Skill definition directories
    ├── agent-browser/
    │   └── SKILL.md
    ├── article-writing-skill/
    │   └── SKILL.md
    ├── be-human/
    │   └── SKILL.md
    └── seo-geo-aeo-optimizer/
        └── SKILL.md
```

---

## 📄 License

Distributed under the [MIT License](./LICENSE). Feel free to use, modify, and distribute these skills in your personal and commercial projects.
