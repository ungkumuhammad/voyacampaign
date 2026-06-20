---
name: voya-campaign
description: End-to-end campaign builder for Voya — turns one content idea into a finished per-platform post package (image + Seedance video + caption) via the Higgsfield MCP. Use when the user asks to "make a post", "make a campaign", "create content", or "launch X" and wants both visuals and copy.
---

# Voya Campaign Builder

The single entry point that runs the full pipeline: brand context → concept → image → video → per-platform package.

## Step 0 — Load context
Read `.agents/voya-brand-context.md`. If missing, run **voya-brand-context** first.

## Step 1 — Define the brief
Ask (or infer from the user's one-liner): the goal (awareness / launch / conversion), the subject/product, and which platforms to target. Default platforms from brand context.

## Step 2 — Propose concepts
Offer 2–3 short post concepts (the hook + the visual idea). Let the user pick one, or proceed with the strongest if they said "just do it."

## Step 3 — Generate the image
Follow **voya-image**: engineer the prompt from brand context, pick the model (`marketing_studio_image` default), preflight cost with `get_cost`, generate, capture the `job_id`. Show the image and confirm before animating.

## Step 4 — Generate the video
Follow **voya-video**: use the image `job_id` as `start_image`, resolve the Seedance 2.0 Fast model via `models_explore`, engineer the motion prompt, preflight cost, generate.

## Step 5 — Write the copy
Using the brand tone/voice, write per platform: a hook, caption, hashtags, and a posting note (best aspect ratio, suggested time, CTA).

## Step 6 — Assemble the package
Return one tidy package per platform:

```
Platform: <e.g. Instagram Reels>
Aspect: 9:16
Image: <job_id / link>
Video: <link>
Caption: <copy>
Hashtags: <tags>
Notes: <hook timing, CTA, posting tip>
```

Reuse the same image/video across platforms via `reframe` where aspect ratios differ, rather than regenerating.

## Cost discipline
Every generation step preflights with `get_cost: true` and waits for user confirmation before spending credits. Check `show_plans_and_credits` if the user asks about balance.
