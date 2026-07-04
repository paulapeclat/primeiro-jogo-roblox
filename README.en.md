[🇧🇷 Português](README.md) · **🇺🇸 English**

# 🧱 Workshop: My First Game in Roblox Studio

> A complete workshop script for children to create their first *obby* (obstacle course) in Roblox Studio — from the first platform to their first Luau script.

**Author:** [Paula Peclat](https://github.com/paulapeclat) · [APedê Digital](https://paulapeclat.com.br)
**Ages:** 9 to 13 · **Duration:** 2h30 (or three 1h sessions) · **Tool:** [Roblox Studio](https://create.roblox.com) (free, Windows and Mac)

---

## Why this workshop exists

Roblox is where millions of children **already are** — playing, chatting and spending. From a media literacy perspective, that is exactly the reason to bring it into the classroom: when a child crosses the counter and becomes a **creator**, they discover that every obby, every game-pass shop and every "just one more stage" was **decided by someone**. And they start looking at the experiences they consume with new eyes.

This material follows the **concrete-to-abstract** progression: first we build with blocks and properties (drag, color, anchor), and only when the world already exists does **Luau code** appear — as the tool that gives the world its rules.

## Learning goals

By the end, each child will have:

- [ ] Built a working *obby* with a start, obstacles and a finish
- [ ] Manipulated object **properties** (position, color, material, anchor)
- [ ] Pasted, read and **modified** their first **Luau** scripts
- [ ] Understood the **event → check → action** pattern (`Touched` → `if` → consequence)
- [ ] Used a real **variable** (the coin leaderboard)
- [ ] Made at least **3 design decisions of their own** and justified them
- [ ] Reflected on **who decides** — and who profits — in the games they play

**Curriculum alignment:** in Brazil, this maps to BNCC General Competency 5 (digital culture). It translates naturally to media literacy and computing standards elsewhere.

## Before the workshop (logistics is half the battle)

Roblox Studio requires installation and an account — solve this **before** the day:

1. **Install Roblox Studio** on every machine ([create.roblox.com](https://create.roblox.com))
2. **Accounts created together with guardians**: Roblox Terms require guardian involvement for under-13s; use the moment to configure **privacy and parental controls** together
3. Test the login on each machine — a forgotten password on workshop day eats 15 minutes you don't have
4. A projector for demonstrations

## Safety first 🔒

Agree with the group right at the start (and send it to guardians in writing):

- **Passwords are secret** — not even for your best friend
- **Chat**: in this workshop we play each other's creations locally; if an experience gets published, talk first about chatting with strangers and how to **report and block**
- **Robux**: no activity in this workshop uses or needs Robux — if someone asks for Robux to "unlock" something, it's a scam
- Account settings: age-based privacy restrictions are your allies

## Script

### Step 0 — Opening conversation (10 min)

Ask: *"Which Roblox game do you play the most? Who DECIDED its rules? And when someone buys a game pass... where does the money go?"*
Write the hypotheses on the board — we will come back to them at closing time.

### Step 1 — Getting to know the Studio workshop (20 min)

1. Open Roblox Studio → **Baseplate** template
2. Explore together the three windows that matter today: the **3D scene** (the world), the **Explorer** (the list of everything that exists in the world) and **Properties** (the characteristics of whatever is selected)
3. Insert a **Part** and practice: **move**, **rotate**, **scale**
4. The most important property of the day: **Anchored** ✅ — without it, platforms fall! Let them fall once on purpose: a mistake that becomes learning
5. Each child picks the **color and material** of their platforms (Neon? Wood? Lava?) — **design decision #1**

### Step 2 — Building the course (25 min)

1. Duplicate platforms (`Ctrl+D`) and build a path in the sky: near, far, high, narrow…
2. Test your own course with **Play** (▶️) — and adjust. Trigger question: *"Is an impossible jump fun? What about ten easy jumps in a row?"*
3. Agree on the challenge format: start on the ground, finish visible in the distance

*Natural break here if the workshop runs as 1h sessions.*

### Step 3 — Lava: the first script (20 min)

The world exists, but it has no **rules** yet. Rules, in Roblox, are scripts written in **Luau**.

1. Create the lava platform (color: neon red, of course)
2. In the Explorer: right-click the Part → **Insert Object → Script**
3. Delete the `print("Hello world!")` and paste [`scripts/01-lava.luau`](scripts/01-lava.luau)
4. Read the script **out loud, line by line** — every line has a comment (in Portuguese; read it in your language as you go)
5. Test it: step on it, dance 🔥
6. **Design decision #2**: does the lava **kill** or just **hurt**? (the script shows how to do both)

### Step 4 — Checkpoint: nobody deserves to start over (15 min)

1. Insert a **SpawnLocation** halfway through the course (untick **Neutral** in Properties)
2. Paste [`scripts/02-checkpoint.luau`](scripts/02-checkpoint.luau) inside it
3. Talk about it: *"Why do games have checkpoints? What happens to your will to play when there isn't one?"* — game design is **emotion** design

### Step 5 — Coins and leaderboard (25 min)

Now the variable shows up with a real reason to exist: **keeping score**.

1. Paste [`scripts/03-placar-de-moedas.luau`](scripts/03-placar-de-moedas.luau) into **ServerScriptService** (the game's "control room" — scripts that apply to every player live there)
2. Create a coin: a small golden Part, **Anchored ✅**, **CanCollide ❌**
3. Paste [`scripts/04-moeda.luau`](scripts/04-moeda.luau) inside it and duplicate the coin along the course
4. **Design decision #3**: where does the hardest coin go? Is it worth the risk? (this is how designers steer your path…)

### Step 6 — Disappearing platform + victory portal (20 min)

1. Pick one platform and paste [`scripts/05-plataforma-que-some.luau`](scripts/05-plataforma-que-some.luau) — it warns, vanishes and comes back
2. Create the finish line: a portal with [`scripts/06-portal-de-vitoria.luau`](scripts/06-portal-de-vitoria.luau) — coin bonus and a particle party 🎉

### Step 7 — Obby festival + closing (15 min)

1. Rotation: each child plays another child's obby
2. Closing circle, returning to the Step 0 board:
   - *"What did you decide in your obby that turned out different from your classmate's?"*
   - *"Why do you think so many famous obbies have 999 stages? What does the creator gain when you stay longer?"*
   - *"If a game offers you a pass for 99 Robux… how much is that in REAL money? Who set that price?"*

That last question is the bridge from creation to **critical media reading** — do not skip the closing.

## How to use the [`scripts/`](scripts/) folder

Every `.luau` file starts with a header saying **where to paste it** and **what the child learns**. The path in Studio is always the same: select the object in the Explorer → right-click → **Insert Object → Script** → delete the contents → paste. All scripts are commented line by line in Portuguese, meant to be read together with the group — a script is not magic, it is text.

| Script | Where to paste | Core concept |
|---|---|---|
| [`01-lava.luau`](scripts/01-lava.luau) | inside the lava Part | `Touched` event + `if` |
| [`02-checkpoint.luau`](scripts/02-checkpoint.luau) | inside the SpawnLocation | services and the player |
| [`03-placar-de-moedas.luau`](scripts/03-placar-de-moedas.luau) | ServerScriptService | variables (`leaderstats`) |
| [`04-moeda.luau`](scripts/04-moeda.luau) | inside the coin Part | *debounce* + adding to a variable |
| [`05-plataforma-que-some.luau`](scripts/05-plataforma-que-some.luau) | inside the platform | time (`task.wait`) and states |
| [`06-portal-de-vitoria.luau`](scripts/06-portal-de-vitoria.luau) | inside the finish portal | tables and effects |

## Assessment

Process observation, not a test: did the child build and playtest? Did they read the script and point out "where the rule is"? Did they change at least one value and predict the effect? Did they make their own decisions and justify them? Did they take part in the final reflection? A per-student checklist does the job.

## Variations

- **Younger (7-9):** the educator projects and builds; children collectively decide each parameter (jump height, lava color, coin value) — design agency comes before the mouse
- **Older (13+):** platforms with [TweenService](https://create.roblox.com/docs/reference/engine/classes/TweenService), badges, or **publishing the experience** — publishing earns a whole second media literacy conversation: who can join? which chat is on? what does it mean to put something of yours into the world?
- **One machine only:** collective demo workshop on the projector, decisions by vote

## The full track

This workshop is the sibling of [**My First Game in GDevelop**](https://github.com/paulapeclat/primeiro-jogo-gdevelop) (visual blocks, ages 8-12). The order I use with my groups goes **from concrete to abstract**: Code.org → GDevelop → Roblox Studio. My students' Code.org projects live in [**projetos-code-org**](https://github.com/paulapeclat/projetos-code-org).

## License

[CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/) — use, adapt and redistribute, with attribution and the same license (scripts included). If you run it at your school, [tell me how it went](https://github.com/paulapeclat/primeiro-jogo-roblox/issues)! 💛
