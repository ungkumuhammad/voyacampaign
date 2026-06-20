# Voya Campaign — Session Memory
> Append-only. Newest session at top. Read this at the start of every session.
> Pattern: end of every session → user says "compress" → update this file → commit + push.

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
- [ ] **Higgsfield MCP** — added to config but needs new session + trust dialog approval before production run can begin
- [ ] **Google Drive folder** — create `Voya Campaign Assets/Phase-A-Whisper/Week-01/` before tonight's generation

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
| Higgsfield | **Added but needs new session** | `mcp__higgsfield__*` (expected) |

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
