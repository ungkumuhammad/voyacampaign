# Tool Registry

These skills drive the **Higgsfield MCP** server for all image and video generation. No API keys, no custom code — the MCP must be connected to your agent session. There is no separate "voyacampaign" backend; this repo is prompt-engineering + brand know-how on top of Higgsfield.

## Tools used

| Tool | Purpose | Used by |
|------|---------|---------|
| `generate_image` | Create an image | voya-image, voya-campaign |
| `generate_video` | Create a video (Seedance 2.0 Fast) | voya-video, voya-campaign |
| `models_explore` | Resolve/recommend model ids and constraints | all generation skills |
| `media_import_url` | Register a web media URL → returns `media_id` | image/video when given a URL |
| `media_upload_widget` | Upload a local file (Apps UI) | image/video with local refs |
| `upscale_image` / `upscale_video` | Enhance to 2K/4K for delivery | optional refinement |
| `reframe` | Re-aspect a video for another platform | voya-video, voya-campaign |
| `remove_background` / `outpaint_image` | Image cleanup / extend frame | optional refinement |
| `virality_predictor` | Hook strength / retention analysis | optional, pre-post |
| `show_plans_and_credits` | Check credit balance | cost checks |

## Model selection rules

**Image (`generate_image`)**
- `marketing_studio_image` — default for product, ads, commercial visuals (Voya primary).
- `soul_2` — recurring person/character that must stay consistent (portraits, UGC, fashion). Pass a trained `soul_id` if one exists.
- `nano_banana_pro` — 4K, crisp in-image text, or diagram-style layouts.
- When unsure: `models_explore(action:'recommend', query:<brief>, type:'image')`.

**Video (`generate_video`)**
- `seedance_2_0` — the Seedance 2.0 family (identity-consistent, native audio). Resolve the **Fast** variant id at runtime via `models_explore(action:'search', query:'seedance 2.0 fast', type:'video')`.
- Fall back to `kling3_0` / `kling3_0_turbo` only if Seedance doesn't fit the brief.

## Conventions every skill follows

1. **Preflight cost.** Call the generation tool once with `get_cost: true`, show the user the credit cost, and generate only on confirmation.
2. **Chain by `job_id`, not URL.** The `job_id` returned by `generate_image` is passed as the `start_image` media into `generate_video`. Never put an `https://` URL in `medias[].value` — register URLs with `media_import_url` first and pass the returned `media_id`.
3. **Aspect ratio comes from brand context.** Per-platform defaults live in `.agents/voya-brand-context.md`.
