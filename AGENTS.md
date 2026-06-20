# Agent Guide

How an agent should use the Voya skills together.

## The pipeline

```
voya-brand-context  →  voya-image  →  voya-video
        \___________________ voya-campaign ___________________/
                     (orchestrates all three)
```

## Rules of engagement

1. **Brand context first, always.** Before any generation, ensure `.agents/voya-brand-context.md` exists. If not, run `voya-brand-context`. Every prompt must reflect the palette, lighting, style, and per-platform aspect ratios saved there.
2. **Image before video.** Prefer image-to-video: generate the image with `voya-image`, then pass its `job_id` to `voya-video` as the `start_image`. This keeps the brand and subject consistent.
3. **Confirm cost before spending.** Every generation step preflights with `get_cost: true` and waits for the user to approve the credit spend.
4. **One source of truth for models.** Model-selection rules and conventions live in `tools/REGISTRY.md`. Don't hardcode model ids that may change — resolve the Seedance 2.0 Fast variant with `models_explore` at runtime.
5. **Reuse, don't regenerate.** When the same asset is needed at a different aspect ratio, use `reframe` (video) or `outpaint_image` (image) instead of a fresh generation.

## Entry points

- "Set up / update my brand" → `voya-brand-context`
- "Make an image / product shot / ad visual" → `voya-image`
- "Animate this / make a Reel / make a video" → `voya-video`
- "Make a post / campaign / launch X" → `voya-campaign` (runs the whole pipeline)

## Dependency

These skills require the **Higgsfield MCP** to be connected to the session. Without it they can still engineer prompts and brand context (advisory mode), but cannot generate images or video.
