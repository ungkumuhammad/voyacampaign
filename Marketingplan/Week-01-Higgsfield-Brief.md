# Week 1 — Higgsfield Production Brief
> Ready-to-run overnight. June 23–28, 2026 (Phase A, "Whisper").
> This is the only file you need for tonight. Each section = one Higgsfield session / tool call.

---

## Before You Start

**Brand assets to have open:**
- `Voya/Business/Voya.png` — the four-pointed star wordmark (for compositing only — never regenerate)
- Hex codes: Indigo `#3C1DDE`, Gold `#EAA520`, Near-black `#0A0818`
- Fonts: DM Serif Display (italic), DM Sans, DM Mono

**Output folder:** `Voya Campaign Assets/Phase-A-Whisper/Week-01/`

**File naming:** `voya-w01-[day]-[pillar].[ext]` (see each section below)

**Virality check:** After generating each video, run `virality_predictor` on the output. If score is low on hook or retention, regenerate with the adjusted notes provided in each section.

---

## Asset 1 — Monday 23 June · The Star · VIDEO

**Higgsfield tool:** `generate_video`
**Output file:** `Videos/voya-w01-mon-star.mp4`
**Duration:** 10 seconds

**Prompt:**
```
Ultra-cinematic macro shot. A four-pointed star of light appears from total darkness and reflects on still water below. The reflection shimmers and slowly expands outward. Deep indigo water tones, warm gold shimmer. Camera very slowly pulls back, revealing more of the glassy dark surface. No movement other than gentle water ripples. Photorealistic, cinema grade 4K, no text, no people. End on a near-black fade. 10 seconds.
```

**Model recommendation:** Run `models_explore(action:'recommend')` — select the highest-quality cinematic model available.

**Post-generation:**
- Composite `Voya.png` (white, star only) + wordmark "Voya" centred over the near-black fade at 8–10s.
- Audio: Do NOT use generate_audio for this one. Source a royalty-free ambient pad (deep, slow, mysterious). If generate_audio is preferred: `generate_audio(style:'cinematic ambient', mood:'mysterious', bpm:60, duration:10)`

**Virality check hook note:** The hook (first 3s) must show DARKNESS → LIGHT. If the generated video opens with a bright frame, regenerate.

---

## Asset 2 — Tuesday 24 June · Wanderlust · VIDEO

**Higgsfield tool:** `generate_video`
**Output file:** `Videos/voya-w01-tue-wanderlust.mp4`
**Duration:** 12 seconds

**Prompt:**
```
Cinematic aerial drone shot over a turquoise tropical island, Malaysian style resembling Langkawi or Tioman. Golden hour. Camera drifts slowly forward over open water toward the island, which grows from a small silhouette to filling the frame. Deep indigo sky bleeds in at the upper corners. 4K cinema, dreamy, aspirational. No text, no people visible from this altitude. 12 seconds.
```

**Post-generation:**
- Composite small `Voya.png` star (white, 12% screen width) at bottom-right corner. Appears at 10s, stays to end.
- Audio: `generate_audio(style:'cinematic ambient', mood:'dreamy aspirational', bpm:70, duration:12)` — or ambient ocean waves.

---

## Asset 3 — Wednesday 25 June · Cryptic · VIDEO

**Higgsfield tool:** `generate_video`
**Output file:** `Videos/voya-w01-wed-cryptic.mp4`
**Duration:** 10 seconds

**Prompt:**
```
Macro cinematic shot. A hand slowly traces a four-pointed star on a fogged window glass. Outside the window, soft bokeh green tropical leaves. Warm interior lighting. The traced star stays visible, glowing slightly. Camera very slowly pulls back from the glass. Film grain aesthetic, intimate, warm. 10 seconds.
```

**Post-generation:**
- No logo overlay needed — the traced star IS the mark.
- Audio: `generate_audio(style:'ambient', mood:'intimate warm', bpm:55, duration:10)` — or gentle rain sound.

---

## Asset 4 — Wednesday 25 June · Carousel W1 · IMAGES (6 slides)

**Higgsfield tool:** `generate_image` × 5 (Slide 1 is typography — see note)
**Output folder:** `Carousel/`

### Slide 1 (Cover) — Typography — `voya-w01-wed-carousel-s01.jpg`
> Create manually in Canva/Figma: deep indigo gradient `#3C1DDE → #0A0818`, gold four-pointed star centred (use `Voya.png`), "✦ Voya." below in DM Serif Display italic, white. 1080×1350px.

### Slide 2 — `voya-w01-wed-carousel-s02.jpg`
**Prompt:**
```
Four-pointed star shape made entirely of floating gold light particles on a pure black background. The particles are dense at centre and trail outward. Macro depth of field. Abstract, beautiful, premium. Photorealistic. No text.
```

### Slide 3 — `voya-w01-wed-carousel-s03.jpg`
**Prompt:**
```
Ultra-close crop of a geometric four-pointed star mark, crisp gold edges on deep indigo background. Studio lighting precision, razor-sharp edges, metallic gold finish. Minimalist luxury product photography aesthetic. No text.
```

### Slide 4 — `voya-w01-wed-carousel-s04.jpg`
**Prompt:**
```
Night KL city skyline silhouette. Indigo sky. City lights below — one cluster of lights in the mid-frame naturally forms a loose four-pointed star pattern. Wide angle, cinematic. No text.
```

### Slide 5 — `voya-w01-wed-carousel-s05.jpg`
**Prompt:**
```
Aerial ocean at dawn. Sun is just rising at horizon. A star-shaped lens flare catches on the camera from the sun. Turquoise water, golden light. Cinematic aerial perspective. No text.
```

### Slide 6 (End) — `voya-w01-wed-carousel-s06.jpg`
> Create manually: same dark indigo as Slide 1. Star mark (Voya.png, smaller), centred. Text: "Tidak lama lagi. / Soon." DM Serif Display italic, white. 1080×1350px.

---

## Asset 5 — Thursday 26 June · Wanderlust · VIDEO

**Higgsfield tool:** `generate_video`
**Output file:** `Videos/voya-w01-thu-wanderlust.mp4`
**Duration:** 12 seconds

**Prompt:**
```
Cinematic interior train shot, camera looking out the window. Dense Malaysian jungle rushing past, motion-blurred green. Morning mist between the trees. A shaft of sunlight breaks through and creates a four-pointed star-shaped lens flare on the window glass, holds for 2 seconds. Camera slowly focuses on the lens flare, then slowly refocuses back to the jungle. Muted green, gold tones. Documentary-cinematic. 12 seconds.
```

**Post-generation:**
- No logo overlay — lens flare is the mark.
- Audio: Train rhythm + ambient jungle birds. Use `generate_audio` or source royalty-free.

---

## Asset 6 — Friday 27 June · The Star · VIDEO

**Higgsfield tool:** `generate_video`
**Output file:** `Videos/voya-w01-fri-star.mp4`
**Duration:** 10 seconds

**Prompt:**
```
Abstract motion graphic. Black background. A single gold pixel appears at centre. It multiplies — light particles accumulate from nothing, slowly forming the shape of a four-pointed geometric star. The star solidifies over 7 seconds from a loose particle cloud to a crisp geometric mark. Once formed, it pulses with a soft gold glow once. Ends still. High-end motion graphics aesthetic. No text. 10 seconds.
```

**Post-generation:**
- The particle star forms at 7s. At 9s, add "Voya." in DM Serif Display italic, white, below the star via text overlay.
- Audio: Silence for 6s. At 7s: a single soft musical tone (C note, piano or bell) as the star completes.

**Virality check:** Hook must feel like magic assembling. If output looks clunky, regenerate with emphasis on "slow, deliberate, smooth particle accumulation."

---

## Asset 7 — Saturday 28 June · Wanderlust · VIDEO

**Higgsfield tool:** `generate_video`
**Output file:** `Videos/voya-w01-sat-wanderlust.mp4`
**Duration:** 15 seconds

**Prompt:**
```
Cinematic sunset beach shot. Camera positioned low, level with wet sand surface. Two very distant silhouetted figures walk toward the horizon — small, blurred, not the focus. Wet sand perfectly reflects the orange-gold-to-indigo sunset sky above. Camera slow-dolly forward, creeping toward the horizon. Warm gold and deep indigo tones. Meditative, aspirational, beautiful. 15 seconds.
```

**Post-generation:**
- At 12s, overlay "Voya." in DM Serif Display italic, white, bottom-centre. Fade in over 1 second.
- Audio: Soft ocean waves, gentle cinematic score. Use `generate_audio(style:'cinematic', mood:'meditative aspirational', bpm:65, duration:15)`.

---

## Story Templates — Week 1 (Batch Create)

Create 3 static story templates to reuse across the week in Canva/Figma:

**Template A — Brand Mark Story** (`voya-stories-template-mark.jpg`):
- 1080×1920px, background `#0A0818`, gold ✦ centred (50% screen height), no text. Used for pure brand reminder stories.

**Template B — Poll Background** (`voya-stories-template-poll.jpg`):
- 1080×1920px, indigo gradient `#3C1DDE → #0A0818`, small ✦ at top-centre. Poll sticker overlay in-app.

**Template C — Countdown Background** (`voya-stories-template-countdown.jpg`):
- 1080×1920px, near-black `#0A0818`, small "Voya." wordmark bottom-centre in white DM Sans. Countdown sticker overlay in-app.

---

## Generation Order (Most Efficient Overnight)

If running in parallel sessions, prioritise this order:

1. **Asset 6** (Friday Star) — most technically complex particle animation, give it the most rendering time.
2. **Asset 1** (Monday Star) — macro water, also complex.
3. **Asset 4** (Wednesday Carousel images, slides 2–5) — batch 4 image generations.
4. **Asset 7** (Saturday Wanderlust) — 15s, longest video.
5. **Asset 2** (Tuesday Wanderlust) — aerial drone.
6. **Asset 3** (Wednesday Cryptic) — hand on glass.
7. **Asset 5** (Thursday Wanderlust) — train journey.
8. **Story templates** — manual creation in Canva (last, as they're quick).

---

## Quality Check Before Scheduling

Before scheduling any asset to post, verify:
- [ ] Star mark or star-adjacent element appears in the video (not just in the overlay).
- [ ] Colour palette is correct: indigo or dark background, gold or white accents.
- [ ] No product features, no text explaining what Voya is.
- [ ] Logo overlay (where added) uses `Voya.png` — not a regenerated version.
- [ ] Video length is within TikTok/IG Reels spec (max 60s, our target 8–15s — no issue).
- [ ] Caption is loaded into scheduling tool (Buffer/Later) with correct hashtags.

---

*Next brief: `Week-02-Higgsfield-Brief.md` — to be created before Week 1 posting begins.*
