# voyacampaign

AI content skills for **Voya** — turn one content idea into a finished, on-brand **image** and a short **video** (Seedance 2.0 Fast), per platform.

Modeled on the Claude Code skill format from [blacktwist/social-media-skills](https://github.com/blacktwist/social-media-skills), but all generation runs through the **Higgsfield MCP** — no ChatGPT, no API keys, no custom backend.

## The workflow

```
1. voya-brand-context   Define your brand & visual identity once  → .agents/voya-brand-context.md
2. voya-image           Idea → on-brand image (returns a job_id)
3. voya-video           Image job_id → Seedance 2.0 Fast video
   voya-campaign        Runs all of the above → per-platform post package (image + video + caption)
```

Just say *"make a launch post for product X"* and `voya-campaign` walks the whole pipeline.

## Skills

| Skill | What it does |
|-------|--------------|
| `voya-brand-context` | Captures brand, audience, **visual identity** (palette, lighting, style), and per-platform aspect ratios into one file every other skill reads. **Run this first.** |
| `voya-image` | Engineers an image prompt from brand context and generates it (`marketing_studio_image` by default). Returns a `job_id`. |
| `voya-video` | Animates an image (`job_id`) or text into a Seedance 2.0 Fast clip. |
| `voya-campaign` | Orchestrator: context → image → video → per-platform package. |

## Requirements

- **Higgsfield MCP** connected to your agent session (provides `generate_image`, `generate_video`, `models_explore`, etc.). Without it, skills run in advisory mode (prompts only, no generation).
- Higgsfield credits — every generation step previews its cost (`get_cost`) and asks before spending.

## Install

**As a Claude Code plugin** — point your client at this repo's `.claude-plugin/marketplace.json`.

**Clone and copy** — copy the skill folders into your skills directory:

```bash
git clone https://github.com/<you>/voyacampaign.git
cp -r voyacampaign/skills/* ~/.claude/skills/
```

## Validate

```bash
bash validate-skills.sh
```

Checks that every `skills/*/SKILL.md` has matching `name` and a non-empty `description` in its frontmatter.

## How it's wired

See [`tools/REGISTRY.md`](tools/REGISTRY.md) for the Higgsfield tools and model-selection rules, and [`AGENTS.md`](AGENTS.md) for how the skills hand off to each other.

## License

MIT — see [LICENSE](LICENSE).
