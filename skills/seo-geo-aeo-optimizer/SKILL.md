---
name: seo-geo-aeo-optimizer
description: >-
  Use this skill when auditing websites, performing keyword research, designing content clusters,
  generating metadata or schema markup, analyzing site crawlability for search engine and AI crawlers,
  reviewing existing articles/content for SEO, GEO, and AEO optimization, and removing any signs
  of AI footprints or typical LLM generation styles to produce natural, human-written content.
---

# SEO-GEO-AEO Optimizer Skill (seo-geo-aeo-optimizer)

This skill provides a comprehensive, expert-level framework for executing and auditing Search Engine Optimization (SEO), Generative Engine Optimization (GEO), and Answer Engine Optimization (AEO). It integrates search visibility, machine crawlability, conversational answers, and authentic human content creation.

---

## 1. Technical SEO Audit & Site Setup

When building a website or performing a technical SEO audit, verify and implement the following checklist:

*   **URL Structure:** Ensure all URLs are clean, lowercase, descriptive, and use hyphens as separators (e.g., `/blog/seo-geo-aeo-ranking` instead of `/Blog/seo_geo_aeo_ranking?id=123`). Avoid trailing slash inconsistency.
*   **XML Sitemap:** Generate a valid XML sitemap at `/sitemap.xml` containing all indexable URLs, prioritized correctly, with appropriate lastmod tags.
*   **Robots.txt:** Keep `/robots.txt` clean. Block scratch folders, temp files, and admin routes, but explicitly allow search engines and AI user agents to crawl the indexable content.
*   **Canonical Tags:** Always use self-referential `<link rel="canonical" href="https://example.com/page">` tags to prevent duplicate content penalties.
*   **Redirects:** Verify that redirects use correct HTTP status codes (301 for permanent redirects, 302 for temporary). Avoid redirect chains.
*   **Mobile-Friendliness & Speed:** Verify mobile-responsive design and high Core Web Vitals performance (Largest Contentful Paint < 2.5s, First Input Delay < 100ms, Cumulative Layout Shift < 0.1).

---

## 2. Keyword Research & Content Clustering Strategy

Before creating or editing content, plan a structured content hierarchy:

*   **Search Intent Mapping:** Classify keywords into four intent categories:
    *   *Informational:* "how to optimize for Gemini" (use detailed articles or guides).
    *   *Navigational:* "Perplexity login" (ensure clean landing pages).
    *   *Commercial Investigation:* "best GEO optimization tools" (use comparison guides, tables).
    *   *Transactional:* "buy SEO audit tool" (use clean, fast landing pages with direct CTAs).
*   **Topical Clustering:** Design a "hub-and-spoke" model to build topical authority:
    *   *Pillar Page:* A comprehensive guide covering a broad topic (e.g., "The Complete Guide to Search Everywhere Optimization").
    *   *Cluster Content:* Supporting sub-topic pages (e.g., "How to write a sitemap for AI bots", "Schema markup for Perplexity answers") that link back to the Pillar Page using exact-match anchor text.
*   **Semantic Mapping:** Research secondary keywords, LSI (Latent Semantic Indexing) terms, and related entities that natural language processors expect to see alongside the main topic.

---

## 3. SEO-Required Metadata & Schema Markup Setup

To help search engines and answer engines index and display content correctly:

*   **Metadata Standards:** 
    *   *Title Tag:* Under 60 characters, with the primary keyword near the beginning.
    *   *Meta Description:* 120–150 characters, providing a clear summary and a call-to-action (CTA).
*   **JSON-LD Schema Markup:** Always output schema in JSON-LD format wrapped in `<script type="application/ld+json">`. Standard schemas include:
    *   `Article` or `BlogPosting` (author, datePublished, publisher, headline).
    *   `FAQPage` (questions and answers matching the page content exactly).
    *   `Product` (name, image, description, aggregateRating, offers).
    *   `Organization` (name, url, logo, contactPoint).

---

## 4. GEO & AEO Crawlability & Optimization Audit

Generative engines (Perplexity, Gemini, ChatGPT) and answer engines parse content to extract synthesizable snippets. Audit websites for LLM accessibility and structure:

*   **Agent Access Check:** Ensure `/robots.txt` does not block AI crawlers (e.g., `GPTBot`, `ChatGPT-User`, `Google-Extended`, `PerplexityBot`, `ClaudeBot`, `Claude-Web`).
*   **`/llms.txt` and `/llms-full.txt` Setup:** Create a text sitemap at `/llms.txt` (a brief overview of the site for AI models) and `/llms-full.txt` (full markdown documentation of indexable pages) to facilitate high-accuracy retrieval for LLM crawlers.
*   **RAG-Readiness & Factual Extractability:**
    *   **Bottom Line Up Front (BLUF):** Start pages and sections with a direct, standalone answer to the core user query (first 30–50 words). AI models weight the beginning of passages heavily.
    *   **Factual Independence:** Write sentences that are fact-rich and make complete sense on their own. Avoid relative pronouns referring back to paragraphs above (e.g., write "The SEO-GEO-AEO skill helps writers..." instead of "This skill helps them...").
    *   **Entity Mapping:** Clearly declare relationships between key entities (e.g., "Company X uses technology Y to solve Z") so NLP models can map knowledge graphs correctly.

---

## 5. Content Review, Alt Text, & Image Optimization Workflow

When analyzing existing articles and images for optimization:

*   **HTML Hierarchy Check:** Ensure a logical heading nesting: exactly one `H1`, followed by `H2` for main points and `H3` for nested subpoints. Never skip heading levels.
*   **Internal & External Linking:** Check that all links are active, relevant, and use descriptive anchor text (never use "click here" or "read more").
*   **Image File Audit:**
    *   *Filenames:* Descriptive, lowercase, separated by hyphens (e.g., `seo-audit-checklist.webp` instead of `IMG_10928.JPG`).
    *   *Formats:* Prefer modern, optimized formats like WebP or AVIF.
    *   *Alt Text:* Write context-rich, descriptive alt text that explains what is in the image to search engines and screen readers (e.g., `alt="Flowchart diagram showcasing the hub-and-spoke content clustering model for SEO"`).
    *   *Captions:* Include captions under complex charts to provide contextual anchor points for visual AI models.
    *   *Clean Metadata:* Strip EXIF data (location, camera type, authoring software footprints) from images to ensure a clean, professional, privacy-respecting asset.

---

## 6. Humanizing Content & AI Footprint Elimination

All written and edited content must read naturally, authentically, and show no indicators of machine generation. Integrate the guidelines of the [`be-human`](file:///C:/Users/arsla/.gemini/config/skills/be-human/SKILL.md) skill:

*   **Vary Sentence Cadence:** Mix sentence lengths. Place very short, punchy sentences next to longer, explanatory ones to establish a natural human rhythm.
*   **Strictly Banned AI Vocabulary:**
    *   *Banned:* Delve, tapestry, landscape, elevate, empower, unlock, navigate, testament, beacon, quietly, not only... but also, key takeaways, in conclusion, revolutionized, furthermore, moreover.
    *   *Replacement:* Look into, context, industry, improve, help, guide, manage, sign, steadily, and simple conjunctions like "and," "but," "also."
*   **Active Voice:** Write in the active voice ("We audited the sitemap...") rather than the passive voice ("The sitemap was audited by our team...").
*   **Strip Conversational Preambles:** Do not start articles or sections with introductory fluff (e.g., "In the fast-paced world of technology..."). Start directly with the core point.
*   **Proof and EEAT:** Ground all claims in specific, concrete data, actual case studies, and expert quotes to demonstrate Experience, Expertise, Authoritativeness, and Trustworthiness.
*   **Remove Image Footprints:** Avoid generic, sterile stock photos or standard AI-generated images that display floating artifacts, anatomy errors, or typical synthetic visual textures. Replace them with clean custom diagrams, screenshots, or authentic photography.
