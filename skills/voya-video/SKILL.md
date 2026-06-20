---
name: voya-video
description: Animate an image (or text) into a short on-brand video with Seedance 2.0 Fast via the Higgsfield MCP. Use when the user wants a Reel, TikTok, Story, or ad video for Voya. Prefers image-to-video using a job_id from voya-image; engineers the motion prompt and calls generate_video.
---

# Voya Video Generator (Seedance 2.0 Fast)

Create a short on-brand video for Voya through the connected Higgsfield MCP, using the Seedance 2.0 Fast model.

## Prerequisite
Read `.agents/voya-brand-context.md` for visual style, pacing, and per-platform aspect ratios. If a finished image already exists from **voya-image**, get its `job_id` — image-to-video gives the most on-brand, consistent result.

## Step 1 — Choose the path
- **Image-to-video (preferred)** — the user has a `job_id` from `voya-image`. The image is the first frame; we add motion.
- **Text-to-video** — no image; generate the clip from a prompt directly.

## Step 2 — Select Seedance 2.0 Fast
"Fast" is **not a separate model** — it's the Seedance 2.0 model in fast mode:
- `model: "seedance_2_0"`
- `params.mode: "fast"` (cheaper and faster; does **not** support 1080p and requires a lower plan tier — fall back to `mode: "std"` if fast is unavailable).

Seedance is identity-consistent and supports native audio (`generate_audio` defaults to `true`; set `false` for a silent clip). Duration 4–15s per shot. Run `models_explore(action:'get', model_id:'seedance_2_0')` if you need to re-check current params, resolutions, or aspect ratios.

## Step 3 — Engineer the motion prompt
Describe, concisely:
- **Subject motion** — what moves and how (subtle product rotation, model gesture, fabric/liquid motion).
- **Camera** — push-in, slow pan, orbit, static — match brand mood.
- **Pacing** — calm and premium vs energetic.
- **Audio / sound** — ambient, music feel, or SFX, if the brand wants sound. For Seedance, audio references go in `medias[]` with role `audio`.
Keep motion believable; over-instructing causes artifacts.

## Step 4 — Set params and preflight cost
- `model: "seedance_2_0"`, `params.mode: "fast"`.
- `medias[]`: for image-to-video, add `{ role: "start_image", value: "<job_id from voya-image>" }`. Audio references use role `audio`. Never pass a raw URL — use the `job_id`, or `media_import_url`/`media_upload_widget` for new media.
- `duration`: per platform, 4–15s (Reels/TikTok hooks often 5–9s); model clamps to nearest allowed value.
- `aspect_ratio`: platform default — Seedance supports `9:16` (Reels/TikTok/Stories), `16:9`, `1:1`, `4:3`, `3:4`, `21:9`, `auto`.
- `generate_audio`: leave `true` for native sound, or `false` for silent.
- `count`: 1 unless options wanted. Note: `mode:"fast"` does not support 1080p.
- **Always call once with `get_cost: true` first**, show the credit cost, and proceed only on confirmation.

## Step 5 — Generate and report
Call `generate_video`. Return the result to the user.

## Optional refinements
- `reframe` — re-aspect an existing video for another platform (e.g. 16:9 → 9:16) without regenerating.
- `upscale_video` — enhance to 2K/4K for final delivery.
- `virality_predictor` — analyze hook strength / retention risk before posting.

## Handoff
> Video ready. Reframe it for other platforms with `reframe`, or run **voya-campaign** to assemble the full multi-platform post package.
