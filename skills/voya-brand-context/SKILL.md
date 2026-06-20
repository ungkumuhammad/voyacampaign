---
name: voya-brand-context
description: Define or update the Voya brand & visual identity in a single persistent file (.agents/voya-brand-context.md). Use this FIRST, before generating any image or video, and any time the brand, product, audience, or visual style changes. Every other voya skill reads this file.
---

# Voya Brand Context Setup

I'm ready to help you define your brand identity and create a persistent context file that guides all image and video generation.

## What this skill does

Creates or updates `.agents/voya-brand-context.md` — a single reference document capturing your brand, product, audience, **visual identity**, and campaign goals. Every other Voya skill (`voya-image`, `voya-video`, `voya-campaign`) reads from this file, so you only define yourself once.

## What happens next

First, I check if `.agents/voya-brand-context.md` already exists.
- **If it exists**, I show you what's saved and ask what to add or change.
- **If it's new**, I offer two paths:
  - **Quick setup** — you give me a brain-dump (a paragraph, bullets, an existing bio, a link) and I draft the full file, then ask follow-up questions to fill gaps.
  - **Walkthrough** — I ask diagnostic questions one section at a time.

## Sections to capture

Write the file with these sections. Keep it concrete — concrete details produce better images and videos.

1. **Brand & product** — what Voya is, what it sells, the one-line value proposition.
2. **Audience** — who the content is for, their context and pain points, the feeling we want them to have.
3. **Visual identity** — this is the most important section for generation:
   - **Palette** — exact brand colors (hex if known) and accent colors.
   - **Lighting & mood** — e.g. soft natural light, high-key, moody, cinematic, warm vs cool.
   - **Style references** — photographic vs illustrated, editorial, UGC, product-on-seamless, lifestyle.
   - **Composition defaults** — typical framing, negative space for text overlays.
   - **Do / Don't** — must-haves and hard bans (e.g. "no text baked into the image", "never clutter the background").
4. **Aspect-ratio defaults per platform** — record the targets you actually post to, e.g.:
   - Instagram feed `4:5`, Stories/Reels & TikTok `9:16`, YouTube/landscape `16:9`, square `1:1`.
5. **Tone & voice** — for captions and on-screen copy.
6. **Campaign goals** — what you're driving (awareness, launch, conversion) and any recurring product/character that should stay consistent across assets.

## Output

After drafting, save the file to `.agents/voya-brand-context.md`, show the user a summary, and confirm. Then point them to the next step:

> Brand context saved. Run **voya-image** to create an image, or **voya-campaign** to build a full image + video post in one go.

## Notes
- If a recurring face/character must stay consistent across many assets, note it here — `voya-image` will use a Soul reference model for it.
- Keep the file short and scannable; it is loaded into context every time another skill runs.
