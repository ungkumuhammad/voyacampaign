# Voya Campaign — Session Memory
> Append-only. Newest session at top. Read this at the start of every session.
> Pattern: end of every session → user says "compress" → update this file → commit + push.

---

## SESSION 4 — 2026-06-20 (carousel development)

### What was done this session

1. **Confirmed Higgsfield MCP workspace** — selected workspace `c7941151-daa6-487a-9f57-b3c3d9b45110`, balance 939 credits (Plus plan).

2. **Chose image model** — ran `models_explore(recommend)`. Selected **Recraft 4.1** (`recraft-v4-1`, standard mode) over GPT Image 2 (not available via MCP this session). Cost: 8 credits/image vs expected 7.

3. **Generated all 4 carousel image slides (S02–S05)** in parallel — all completed at 1792×2304px (2K, 4:5):

| Slide | Description | Higgsfield Job ID | Status |
|---|---|---|---|
| S02 | Gold particle star (black bg) | `0e2dc55f-ae4d-4db6-adc8-134b54505cbd` | ✅ Completed |
| S03 | Geometric metallic star (indigo bg) | `5dddb706-599d-4db6-94f1-4252a6856309` | ✅ Completed |
| S04 | KL skyline + star constellation | `5307c69c-f655-4639-951d-128188aafff8` | ✅ Completed |
| S05 | Aerial ocean + lens flare | `13ad8155-ca30-478b-8b84-42b909a60656` | ✅ Completed |

4. **Created typography slides S01 and S06** as production SVGs (since Canva not available):
   - `assets/carousel/week-01/voya-w01-wed-carousel-s01.svg` — indigo gradient cover, gold star, "✦ Voya." in DM Serif Display italic
   - `assets/carousel/week-01/voya-w01-wed-carousel-s06.svg` — near-black end card, "Tidak lama lagi. / Soon."

5. **Created carousel manifest** — `assets/carousel/week-01/CAROUSEL-MANIFEST.md` with all job IDs, URLs, download instructions, caption, export steps, quality checklist.

6. **Credits spent this session:** 32 credits (4 × 8). Balance now **907**.

---

### Critical findings this session

| Item | Finding |
|---|---|
| GPT Image 2 via MCP | Not available in model list this session — used Recraft 4.1 instead |
| Recraft 4.1 cost | 8 credits/image (preflight confirmed), not 7 as budgeted — negligible difference |
| Recraft 4.1 quality | Supports 4:5, 2K resolution, color palette params — ideal for brand carousel work |
| CloudFront limitation | Still present — Higgsfield output URLs need browser session to download. Must use web UI |
| Typography slides | Created as SVGs in repo — export to PNG via Chrome headless or Inkscape |

---

### Next session actions (updated)

1. **Download slides S02–S05** from Higgsfield web UI (History tab) and rename: `voya-w01-wed-carousel-s02.png` through `s05.png`
2. **Export slides S01 & S06** from SVG to PNG (1080×1350px) using browser or Inkscape
3. **Upload all 6 slides** to Google Drive: `Week-01/Carousel` folder (`1EeIV5jgt3nUDyqHt1uC9Qvo2MEHg0WGk`)
4. **Schedule carousel post** in Buffer/Later: Wednesday 25 June, 6:00 PM MYT
5. **Generate 6 videos** in Higgsfield web UI (Enhanced Seedance 2.0 Fast Unlimited — 0 credits) per `Week-01-Higgsfield-Brief.md` priority order
6. **Build `Week-02-Higgsfield-Brief.md`** — plan next carousel and video content

---

## SESSION 3 — 2026-06-20 (tonight)

### What was done this session

1. **Confirmed Higgsfield MCP connected** — balance check returned 974 credits, Plus plan. Connection verified.

2. **Read Week-01-Higgsfield-Brief.md** — confirmed tonight's production queue and diamond budget (28–35 diamonds for images only).

3. **Smoke tested Monday Star video generation** — ran `seedance_2_0` with `mode: fast`. Video generated (job `62a84992-e2ab-4703-a5d2-41f3a7e4a0f7`, 10s, 720p, completed). **Cost: 35 credits** — wrong model path used. Balance now **939**.

4. **Investigated Enhanced Seedance 2.0 Fast Unlimited** — transaction history confirmed 19+ generations today at 0 credits under display name "Enhanced Seedance 2.0 Fast Unlimited". This model is **web UI only — not accessible via MCP API**. MCP's `seedance_2_0` + `mode: fast` routes to internal `seedance_2_0_fast` but still charges 35 credits. The MCP preflight also does not reflect unlimited plan promos.

5. **Created Google Drive folder structure** — built full path under Voya > Deliverables:

| Folder | Drive ID |
|---|---|
| `Voya Campaign Assets` | `1xNqaO7PUtNN3X53pYD4okvSuIm8F3PGw` |
| `Phase-A-Whisper` | `1kePpG79pda5xrRGOtngzcAymbCy-o5EG` |
| `Week-01` | `1_4mSVVF2x4o43fDOxLayeD1SE4fP2EAl` |
| `Week-01/Videos` | `1-sB0iBD_qaObEwkxNC_HZBP21naNY9vi` |
| `Week-01/Carousel` | `1EeIV5jgt3nUDyqHt1uC9Qvo2MEHg0WGk` |

6. **Discovered CloudFront download limitation** — Higgsfield output URLs (`d8j0ntlcm91z4.cloudfront.net`) and input media URLs (`d2ol7oe51mr4n9.cloudfront.net`) both return 403 from this server environment. They require browser-session signed cookies. MCP cannot push Higgsfield videos to Google Drive directly.

7. **Selected Higgsfield workspace** — `c7941151-daa6-487a-9f57-b3c3d9b45110` (private, Plus plan). Was `is_selected: false` at session start — explicitly selected via `select_workspace`. Should persist across sessions.

---

### Critical workflow decisions from this session

| Item | Finding | Action |
|---|---|---|
| Video generation | "Enhanced Seedance 2.0 Fast Unlimited" = **web UI only**, 0 credits | Generate all 6 videos in Higgsfield **browser app**, not via MCP |
| Image generation | GPT Image 2 via MCP = works, 7 credits each | Use MCP for carousel images |
| Virality check | `virality_predictor` via MCP = available | Run after each video via MCP if given video URL |
| Drive upload — videos | MCP cannot download Higgsfield output URLs | User downloads from Higgsfield UI → manually uploads to Drive |
| Drive upload — images | MCP can create files if bytes available | TBD — test in next image session |
| MCP preflight cost | Does NOT reflect unlimited promos | Never use preflight to decide if free — check transactions instead |

---

### Next session actions (updated)

1. **Generate all 6 videos in Higgsfield web UI** using "Enhanced Seedance 2.0 Fast Unlimited" — follow prompts in `Week-01-Higgsfield-Brief.md` in priority order (Asset 6 → 1 → 7 → 2 → 3 → 5)
2. **Download each video** from Higgsfield web UI and upload to `Week-01/Videos` folder in Drive (`1-sB0iBD_qaObEwkxNC_HZBP21naNY9vi`)
3. **Run virality_predictor** via MCP on each video URL after upload (pass Drive shared link or re-import URL)
4. **Generate carousel images (Slides 2–5)** via MCP using GPT Image 2 — batch 4 images
5. **Build Week-02-Higgsfield-Brief.md**

---

## SESSION 2 — 2026-06-20

### What was done this session
1. **Read the existing campaign plan** from `Marketingplan/Social-Media-Plan` — confirmed full teaser strategy (10 weeks, Phase A/B/C, TikTok + IG, mystery/anticipation arc, Sept reveal).

2. **Built the full 10-week execution plan** — 5 files committed and pushed to branch `claude/voya-campaign-marketing-plan-58j0js` of `ungkumuhammad/voyacampaign`:
   - `Marketingplan/Campaign-Master-Calendar.md` — 10-week grid, asset counts, hashtag bank, brand quick-ref, Google Drive folder structure
   - `Marketingplan/Phase-A-Whisper.md` — Weeks 1–3 (Jun 23–Jul 13), full day-by-day detail with Higgsfield prompts, captions EN+BM, story frames, posting times
   - `Marketingplan/Phase-B-Curiosity.md` — Weeks 4–7 (Jul 14–Aug 10), engagement bait, clue-drops, waitlist CTA enters Week 6
   - `Marketingplan/Phase-C-Anticipation.md` — Weeks 8–10 (Aug 11–Aug 31), countdown, FOMO, Sept reveal build-up
   - `Marketingplan/Week-01-Higgsfield-Brief.md` — Overnight production queue with exact Higgsfield prompts, asset order, quality checklist

3. **Confirmed tool costs for Week 1 production:**
   - Videos: **Seedance Fast 2.0** (unlimited, 0 diamonds) — 6 videos
   - Images: **GPT Image 2** (7 diamonds each) — 4 carousel images
   - Audio: **Royalty-free only** (Pixabay) — 0 diamonds
   - **Estimate: 28 diamonds base, 28–35 realistic, 56 worst case**

4. **Attempted Higgsfield MCP connection** — not found in this session (MCP not connected). Checked via ToolSearch — only GitHub and Google Drive MCPs were active.

5. **Added Higgsfield MCP server** to `/root/.claude.json` via `claude mcp add`:
   - URL: `https://mcp.higgsfield.ai/mcp`
   - Type: `http`
   - Scope: project (`/home/user`)
   - **Requires new session to activate** + trust dialog approval on first start

6. **Created this MEMORY.md** — established end-of-session compression protocol.

---

### Decisions settled this session

| Decision | Choice | Reason |
|---|---|---|
| Video generation tool | Seedance Fast 2.0 | Currently unlimited — 0 diamond cost |
| Image generation tool | GPT Image 2 | 7 diamonds each, good quality |
| Audio | Royalty-free (Pixabay) | Skip `generate_audio` to save diamonds |
| Campaign start date | Monday 23 June 2026 | Clean week start, today is 20 June |
| Phase A duration | Weeks 1–3 (Jun 23–Jul 13) | Zero explanation, star + name only |
| Phase B duration | Weeks 4–7 (Jul 14–Aug 10) | Engagement bait + waitlist CTA in Week 6 |
| Phase C duration | Weeks 8–10 (Aug 11–Aug 31) | Countdown, FOMO, Sept reveal tease |
| Waitlist CTA first appearance | Monday 28 July (Week 6) | Must have landing page live before this date |
| Early access giveaway | Week 9, Tuesday 19 Aug + winner announced Fri 29 Aug | Drives engagement at peak |
| Merdeka Day (31 Aug) | Special stories finale — non-promotional, genuine | Perfect cultural moment before Sept reveal |
| Memory protocol | MEMORY.md in voyacampaign repo, updated each session | This file |

---

### Open prerequisites (blockers before first post)

- [ ] **Social handles secured** — `@voya` (or agreed handle) on TikTok, Instagram, Facebook — **BLOCKER for Jun 23**
- [ ] **Waitlist landing page** — simple email capture, no product detail — **BLOCKER for Week 6 (Jul 28)**
- [ ] **Brand asset kit** — `Voya.png` star mark, hex codes `#3C1DDE` / `#EAA520`, DM fonts — needed for Higgsfield overlays
- [x] **Higgsfield MCP** — confirmed connected in Session 3. Workspace `c7941151-daa6-487a-9f57-b3c3d9b45110` selected.
- [x] **Google Drive folder** — created `Voya Campaign Assets/Phase-A-Whisper/Week-01/Videos` + `Carousel` in Session 3

---

### Next session actions (priority order)

1. **Confirm Higgsfield MCP is connected** — run ToolSearch for "higgsfield" to verify, then test with a simple tool call
2. **Confirm Google Drive MCP is connected** — it was available this session (`mcp__3e1b5ace-c559-48a8-97f1-164239b204bb__*`)
3. **Create Google Drive folder structure** for Week 1 assets
4. **Run Week 1 Higgsfield production** — follow `Marketingplan/Week-01-Higgsfield-Brief.md` in generation order:
   - Asset 6 (Fri Star — particle animation) → Asset 1 (Mon Star — macro water) → Assets 4 carousel images → Asset 7 (Sat beach 15s) → Asset 2 (Tue aerial) → Asset 3 (Wed hand/glass) → Asset 5 (Thu train)
5. **Save outputs to Google Drive** using the MCP
6. **Build Week-02-Higgsfield-Brief.md** for the following night

---

### Repository & branch reference

| Repo | Branch | Purpose |
|---|---|---|
| `ungkumuhammad/voyacampaign` | `claude/voya-campaign-marketing-plan-58j0js` | Campaign execution — ALL campaign files live here |
| `ungkumuhammad/voya` | `claude/voya-campaign-marketing-plan-58j0js` | Strategy & brand reference — read-only for campaign work |

**Key files in voyacampaign:**
- `Marketingplan/Social-Media-Plan` — original strategy (no extension, plain text)
- `Marketingplan/Campaign-Master-Calendar.md` — 10-week overview
- `Marketingplan/Phase-A-Whisper.md` — Weeks 1–3 full detail
- `Marketingplan/Phase-B-Curiosity.md` — Weeks 4–7 full detail
- `Marketingplan/Phase-C-Anticipation.md` — Weeks 8–10 full detail
- `Marketingplan/Week-01-Higgsfield-Brief.md` — tonight's production queue
- `MEMORY.md` — this file

**Key files in Voya:**
- `CLAUDE.md` — master agent instructions (read first)
- `Decisions.md` — strategy decisions log
- `Voya_Company_Brief.md` — what Voya is
- `Branding/voya_strategy_c.md` — brand colours, fonts, logo rules
- `Business/Voya.png` — the four-pointed star wordmark logo

---

### Brand quick-ref (for Higgsfield without opening other files)

| Element | Value |
|---|---|
| Primary colour | Indigo `#3C1DDE` |
| Accent colour | Gold `#EAA520` |
| Background | Near-black `#0A0818` |
| Logo | `Voya/Business/Voya.png` — four-pointed star wordmark. Never regenerate, always composite. |
| Heading font | DM Serif Display (italic for taglines) |
| Body font | DM Sans |
| Label font | DM Mono |
| Teaser rule | Show name + star + travel feeling ONLY. Never reveal Trust / Float & Match / Smart Search. |

---

### MCP servers in this environment

| Server | Status | Tools prefix |
|---|---|---|
| GitHub | Connected | `mcp__github__*` |
| Google Drive | Connected | `mcp__3e1b5ace-c559-48a8-97f1-164239b204bb__*` |
| Higgsfield | **Connected** | `mcp__Higgsfield__*` |

---

## SESSION 1 — 2026-06-20 (earlier)

### What was done
- Reviewed `voyacampaign` repo structure — confirmed `Marketingplan/Social-Media-Plan` exists and is readable from local clone at `/home/user/voyacampaign/`
- Confirmed that the marketing plan can be read automatically from the local clone without needing README pointers
- User decided: Voya repo is reference only; voyacampaign is the execution repo
- Established that campaign needs to be executed post-by-post with full asset briefs

### Key context established
- Today is 20 June 2026 (Friday)
- User is solo founder using Higgsfield AI for asset generation
- Campaign starts Monday 23 June
- User will signal at night for overnight generation runs
- Language: Bilingual EN + BM (Bahasa Malaysia), KL/Selangor traveller voice
