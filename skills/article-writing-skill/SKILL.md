---
name: article-writing-skill
description: >-
  Use this skill when drafting, editing, or optimizing articles, blog posts, copywriting, landing pages, or documentation
  to ensure high visibility on traditional search engines (SEO), optimization for AI search engines like Google AI Overviews and Perplexity (GEO/AEO),
  and a natural, humanized, and highly readable writing style.
---

# Article Writing Skill (article-writing-skill)

This skill combines Search Engine Optimization (SEO), Generative Engine Optimization (GEO), Answer Engine Optimization (AEO), and humanized copywriting techniques to produce high-ranking, AI-crawlable, and engaging content.

This skill works in conjunction with the [be-human style guide](../be-human/SKILL.md) to ensure all text remains highly authentic, readable, and free of typical AI writing patterns.

---

## 1. Long-Form Content Strategy (1,000–2,000 Words)

To maintain high density and readability across long articles without generating AI fluff, follow these guidelines:
*   **Structure by Depth, Not Padding:** Expand the article by introducing subtopics, concrete examples, technical details, case studies, historical context, or counter-arguments. Never repeat the same point in different words to fill space.
*   **Detailed Multi-Section Outline:** Before drafting, map out 5–8 main sections (`H2` headings), each subdivided into focused subtopics (`H3` headings). Allocate a target word count to each section (e.g., 150–300 words) to ensure balanced coverage.
*   **Vary the Layout:** Do not rely solely on standard paragraphs. Break up long articles with:
    *   **Tables:** For comparisons, data, or feature lists.
    *   **Callouts/Quotes:** To highlight expert opinions or critical takeaways.
    *   **Numbered Procedures:** For step-by-step guides.
    *   **Bullet Points:** Simple, un-bolded lists for scanning.
*   **Natural Transition Words:** Avoid robotic transition terms like *Furthermore, Moreover, In addition, Consequently, Crucially,* or *Lastly*. Instead, transition by linking concepts naturally between paragraphs.

---

## 2. Intent-Specific Structural Frameworks

Classify content intent (Informational or Commercial) before writing, and apply the corresponding structure:

### Informational / Educational Guides
*   **Focus:** Answering "how-to", "what is", or "why" questions with technical precision and workflows.
*   **Required Layout:**
    *   **Definition Callout:** Clear, italicized or blockquoted explanation at the top.
    *   **Visual Step-by-Step:** Ordered list of steps with code snippets, equations, or configurations where applicable.
    *   **Practical Example:** A realistic case study or scenario demonstrating the topic in action.

### Commercial / Transactional Articles (Listicles, Reviews, Comparisons)
*   **Focus:** Aiding purchase decisions (e.g., "best tools for X", "X vs Y").
*   **Required Layout:**
    *   **Comparison Table:** A high-level table at the top comparing price, pros/cons, and best-use cases.
    *   **Individual Reviews:** For each product/service, include a brief description, **Key Features**, **Pros**, and **Cons** (as clean lists, not bolded paragraphs).
    *   **Buying Guide / Verdict:** Clear, authoritative final recommendation based on specific user types.

---

## 3. GEO & AEO Optimization (AI Search & Citations)

AI engines (Perplexity, ChatGPT, Google AI Overviews) parse, summarize, and cite web pages. Optimize for their search algorithms with these three techniques:

*   **Bottom Line Up Front (BLUF):** Start pages and sections with a direct, clear answer to the user's core query (within the first 30–50 words). AI models weigh the beginning of passages heavily.
*   **Factual Extractability:** Write self-contained, fact-rich sentences. If an LLM quotes a single sentence from your article, it should make complete sense and contain specific numbers, dates, or concepts without relying on context.
*   **GEO Authority Modifiers:** Academic studies show that attributing claims directly to reputable institutions or studies increases AI citation probability by up to 40%. Frame statistics and claims using source attribution (e.g., "A study by Stanford University indicates...", "According to official documentation from Apple...").
*   **Optimal Sentence Length:** Use clean, declarative sentences (average 10–20 words). Long, complex sentences confuse tokenizers and summary-compression algorithms.
*   **Entity Mapping:** Connect your main topics and entities clearly (e.g., "Company X provides Service Y") so search models map relationships accurately.

---

## 4. Real FAQ & Q&A Optimization (AEO/SEO Powerhouse)

Every long-form article should conclude with a dedicated FAQ section to target high-intent search queries and voice search.

*   **Researching Real Questions:** Do not invent generic questions. Pull actual questions from search engine "People Also Ask" (PAA) boxes, online communities (Quora, Reddit), or target search keywords.
*   **Formatting Structure:**
    *   Use a clear `H2` header: `## Frequently asked questions` (Sentence Case).
    *   Format each question as an `H3` header: `### [Question text here]?`
    *   Begin the answer immediately below the header with a direct, conversational statement (30–60 words max).

---

## 5. SEO Best Practices & Semantic (LSI) Clustering

Traditional SEO remains the foundation of visibility; if your page does not rank, AI crawlers will not discover it.

*   **Semantic (LSI) Keyword Mapping:**
    *   Identify a Primary Keyword and 3–5 Latent Semantic Indexing (LSI) keywords (synonyms and highly related terms).
    *   Weave LSI keywords naturally throughout body copy and headings instead of repeating the primary keyword (to avoid keyword stuffing).
*   **The H1 Title:** 
    *   Exactly one `H1` per page (typically the main article title).
    *   Limit to under 70 characters.
    *   Place the primary target keyword near the beginning.
    *   Use Sentence Case (e.g., "How to write optimized meta descriptions" instead of "How to Write Optimized Meta Descriptions") for a cleaner look.
*   **Headings (H2 & H3):**
    *   Use `H2` for major sections and `H3` for supporting points.
    *   Integrate secondary keywords and long-tail variations naturally.
    *   Keep headings descriptive and action-oriented. Do not write generic single-word headings like "Introduction" or "Conclusion."
*   **Outbound Links & E-E-A-T:**
    *   Include 2–4 outbound links to high-authority domains (`.gov`, `.edu`, official documentation, or top industry research publications).
    *   Avoid using generic anchor text (like "click here" or "source"). Use descriptive, keyword-rich anchor text (e.g., "[Stanford University AI Index Report](url)").
*   **Search Metadata:** Every article must include an optimization block at the top with:
    *   **SEO Title:** 50–60 characters. Primary keyword first, followed by a separator and the brand name (e.g., `Primary Keyword - Brand Name`).
    *   **Meta Description:** 120–150 characters. Accurately summarize the page, include the primary keyword, and end with an active Call to Action (CTA) (e.g., "Read the guide to start optimizing today.").
    *   **Target Primary Keyword:** The main search term optimized for.
    *   **Secondary Keywords:** 3–5 related terms used within subheadings.

---

## 6. Advanced Schema Markups

Provide corresponding JSON-LD schema templates at the end of the markdown, mapping the article elements exactly so developers can copy-paste them directly into the page header.

### FAQPage Schema
Include this whenever an FAQ section is present (refer to section 4).

### Article & Author Schema (E-E-A-T Booster)
Ensure every article links to a verified author to build trust with Google's Quality Raters:
```json
{
  "@context": "https://schema.org",
  "@type": "NewsArticle",
  "headline": "[Article Title]",
  "author": {
    "@type": "Person",
    "name": "[Author Name]",
    "jobTitle": "[e.g., Senior Systems Architect]",
    "sameAs": "[Link to Author LinkedIn/Bio page]"
  },
  "publisher": {
    "@type": "Organization",
    "name": "[Brand Name]",
    "logo": {
      "@type": "ImageObject",
      "url": "[Logo URL]"
    }
  }
}
```

### Product Schema (For Reviews)
Include this for commercial reviews to show rating stars in search results:
```json
{
  "@context": "https://schema.org",
  "@type": "Product",
  "name": "[Product Name]",
  "review": {
    "@type": "Review",
    "reviewRating": {
      "@type": "Rating",
      "ratingValue": "4.8",
      "bestRating": "5"
    },
    "author": {
      "@type": "Person",
      "name": "[Author Name]"
    }
  }
}
```

---

## 7. Humanized Writing Guidelines (be-human integration)

To make content read naturally, follow the styling rules outlined in [be-human](../be-human/SKILL.md):

*   **Vary Sentence Cadence:** Break up the text rhythm. Place very short, punchy sentences next to longer, explanatory ones.
*   **Strictly Banned AI Vocabulary:**
    *   *Do not use:* Delve, tapestry, landscape, elevate, empower, unlock, navigate, testament, beacon, quietly, not only... but also.
    *   *Instead use:* Look into, context, industry, improve, help, guide, manage, sign, steadily, and simple conjunctions.
*   **Active Voice:** Prefer active voice ("We designed the app to...") over passive voice ("The app was designed by us to...").
*   **Concrete Details & Proof:** Replace vague fluff and buzzwords with specific data, expert quotes, case studies, and references.
*   **No Conversational Preambles:** Do not start articles or sections with introductory fluff (e.g., "In the fast-paced world of..."). Start directly with the core point.

---

## 8. Execution & Optimization Checklist

Before publishing or finalizing content, run this checklist:

1.  **Direct Answer:** Does the first paragraph answer the title's query directly?
2.  **Sentence Length:** Are sentences simple and easy for an AI to parse?
3.  **Banned Words:** Did you strip out words like *delve*, *landscape*, *tapestry*, *elevate*, and *navigate*? (See [be-human](../be-human/SKILL.md) for full details).
4.  **Citations & EEAT:** Are there statistics, links, or quotes to demonstrate Experience, Expertise, Authoritativeness, and Trustworthiness?
5.  **Schema Markup:** Is there JSON-LD markup ready for the webpage header?
