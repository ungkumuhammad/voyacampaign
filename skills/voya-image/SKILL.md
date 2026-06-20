---
name: voya-image
description: Turn a content idea into a finished on-brand image using the Higgsfield MCP. Use when the user wants a photo, ad visual, product shot, or social post image for Voya. Engineers the prompt from brand context, generates with generate_image, and returns a reusable job_id (which voya-video can animate).
---

# Voya Image Generator

Generate an on-brand image for Voya through the connected Higgsfield MCP.

## Prerequisite
Read `.agents/voya-brand-context.md`. If it does not exist, stop and run **voya-brand-context** first — every prompt should reflect the brand palette, lighting, style, and per-platform aspect ratios saved there.

## Step 1 — Understand the brief
Confirm with the user: the subject (product / scene / character), the platform it's for (sets the aspect ratio), and the message. If the brief is one line, infer the rest from brand context and state your assumptions.

## Step 2 — Engineer the prompt
Write a single, dense prompt covering:
- **Subject** — what is in frame, doing what.
- **Composition** — framing, angle, focal point, negative space for any later text overlay.
- **Lighting & mood** — pulled from the brand `Visual identity` section.
- **Palette** — the brand colors.
- **Style** — photographic / editorial / UGC / illustrated, per brand.
- **Avoid** — the brand `Don't` list (e.g. no baked-in text, no clutter).

Keep it concrete and visual. Do not include platform names or instructions in the prompt itself.

## Step 3 — Pick the model
Use the Higgsfield MCP `generate_image` tool. Choose `model`:
- **`marketing_studio_image`** — default for product, ads, and commercial visuals. (Voya's primary.)
- **`soul_2`** — when a recurring person/character must look consistent across assets (portraits, fashion, UGC). If the brand context names a trained Soul, pass it.
- **`nano_banana_pro`** — when you need 4K, crisp text in-image, or a diagram-like layout.

When unsure, call `models_explore(action:'recommend', query:<the brief>, type:'image')` first.

## Step 4 — Set params and preflight cost
- `aspect_ratio`: the platform default from brand context (e.g. `4:5` IG feed, `9:16` Reels/TikTok/Stories, `16:9` landscape, `1:1` square).
- `count`: 1 unless the user wants options (max 4).
- **Always call once with `get_cost: true` first**, show the user the credit cost, and proceed only on confirmation.
- For web reference images, call `media_import_url` and pass the returned `media_id` in `medias[]`. For local files, use `media_upload_widget`. Never put a raw URL in `medias[].value`.

## Step 5 — Generate and report
Call `generate_image`. When it returns, give the user the result and the **`job_id`** — this is what `voya-video` uses as the `start_image` to animate the image.

## Optional refinements
- `upscale_image` — enhance to 2K/4K for final delivery.
- `remove_background` — clean cutout for compositing.
- `outpaint_image` — extend the frame / change crop.

## Handoff
> Image ready (job_id: `<id>`). Run **voya-video** to animate it into a Seedance 2.0 Fast clip, or **voya-campaign** to continue the full post.
