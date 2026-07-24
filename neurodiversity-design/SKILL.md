---
name: neurodiversity-design
description: Design, audit, and write digital products for neurodivergent and cognitively diverse people. Use whenever the user asks about neurodiversity, neurodivergence, cognitive accessibility, or designing for ADHD, autism, dyslexia, dyscalculia, dyspraxia, colour blindness, deafness / hard of hearing, dementia or Alzheimer's, anxiety, stress, trauma, mental health, low literacy or low numeracy, older adults, children, teenagers, left-handed users, or text legibility and readability. Also trigger on "inclusive design", "cognitive load", "plain language", "WCAG COGA", "Making Content Usable", "accessible copy", "a11y review", "sensory-friendly", "нейроотличия", "нейроразнообразие", "когнитивная доступность", "дислексия", "СДВГ", "аутизм", "инклюзивный дизайн" — and whenever Claude is asked to review a UI, form, error message, onboarding flow, dashboard, email, or slide deck for accessibility beyond screen readers and contrast.
license: CC BY-NC-SA 4.0 for adapted GOV.UK poster content; see references/sources.md
---

# Designing for Neurodiversity

Cognitive accessibility is the most-skipped part of accessibility work. Most "a11y reviews" check contrast, alt text, and keyboard focus, then stop — which leaves out the largest group of disabled users. This skill covers what happens after those checks.

## 1. The frame (do not skip this)

**Neurodivergence is a difference in cognition, not a deficit.** Write and design from that stance. It is also not an edge case: commonly cited estimates put 15–40% of people as having neurodivergent traits, depending where you draw the line. Traits are distributed, not binary — everyone is dyslexic at 3am, everyone has working-memory problems under stress. Traits can be innate (autism) or acquired (trauma, brain injury).

Four rules that override everything else in this skill:

1. **Never diagnose, label, or speculate about a real person's neurotype** — including the user. Talk about design and about needs, not about who someone "probably is."
2. **Use the words correctly.** *Neurodiversity* describes a population; *neurodivergent* describes a person. One person is not "neurodiverse." *Neurotypical* is the counterpart to neurodivergent.
3. **Identity-first vs person-first language is contested.** Default to *autistic person*, *dyslexic person*, *ADHDer*, and *person with dyscalculia / with dementia*. If the user states a preference, follow it exactly. Never use *suffers from*, *afflicted by*, *high/low functioning*, *special needs*, or *normal people*.
4. **The fix is almost never a "mode".** A "dyslexia mode" toggle buried in settings is a way of not fixing the product. Make the accessible version the default, then add user control on top.

And design **with** people, not for them: bring neurodivergent people in early, not at the compliance-review stage when every decision is already expensive to reverse.

## 2. Pick a mode

| The user wants | Do this |
|---|---|
| Review / audit an interface, screenshot, page, Figma, or code | § 3 → `references/audit-checklist.md` |
| Design something new (flow, form, dashboard, component) | § 4 → `references/design-tokens.md` + the relevant profile |
| Rewrite copy, errors, labels, instructions, emails | `references/copy-guide.md` |
| Understand one condition specifically | `references/profiles.md`, jump to that section |
| Map work to a standard, or justify it to a stakeholder | `references/wcag-map.md` |
| Research plan, usability testing with neurodivergent participants | `references/research-guide.md` |
| Reading list / where to learn more | `references/sources.md` |

Load only the files you need. `profiles.md` is long; read the sections that apply.

## 3. The eight objectives (the spine of any audit)

From W3C's *Making Content Usable for People with Cognitive and Learning Disabilities* (COGA). Every finding you report should map to one of these — it keeps an audit from becoming a list of personal preferences.

1. **Help users understand what things are and how to use them** — familiar patterns, real button labels, no mystery-meat icons.
2. **Help users find what they need** — findable, consistent navigation; the important thing is not hidden behind a hamburger.
3. **Use clear and understandable content** — plain language, short sentences, no idioms, no jargon without explanation.
4. **Help users avoid mistakes and know how to correct them** — forgiving inputs, undo, plain-language errors that say how to fix it.
5. **Help users focus** — no unrequested motion, no autoplay, no interruption, one primary action per screen.
6. **Ensure processes do not rely on memory** — never make people remember a code, a number, or a previous screen.
7. **Provide help and support** — human help is reachable; help is next to the thing it explains, not on a separate page.
8. **Support adaptation and personalization** — respect OS settings, allow zoom, reflow, text spacing, reduced motion, dark mode.

## 4. The universal baseline

These serve every profile at once. If a project can only do ten things, do these.

1. **One primary action per screen.** Everything else is visually secondary.
2. **Plain language at ~9th-grade reading level or below.** Short sentences, active voice, one idea per sentence, front-load the point.
3. **Left-aligned body text, ragged right.** Never justify — rivers of white space are a known reading obstacle. Line length 45–75 characters.
4. **Line height ≥ 1.5×, paragraph spacing ≥ 2× the font size**, and don't break when the user overrides text spacing (WCAG 1.4.12).
5. **Never rely on colour alone.** Colour + shape + text label, always. Check every state in a colour-blind simulator.
6. **No unrequested motion.** No autoplay, no carousels that move by themselves, no parallax. Honour `prefers-reduced-motion`. Anything that moves for >5s needs a pause control.
7. **Never require recall.** Carry values forward, pre-fill what you know, let people paste anything, show a summary before submit, let them go back and edit without losing data.
8. **No time limits** unless legally unavoidable — and then warn, allow extension, and never wipe entered data.
9. **Errors name the field, say what's wrong, and say how to fix it.** Never red-only, never "invalid input", never blame the user.
10. **Say what happens next.** Before an action: what will this do. After it: what happens now, how long, what you'll get.
11. **Consistency beats cleverness.** Same thing = same name, same place, same look, every time.
12. **Give control instead of choosing for them.** Density, motion, sound, theme, notification volume — expose them, remember the choice.

## 5. Handling conflicts between profiles

Needs genuinely collide. Do not pretend otherwise — name the conflict, then resolve it with *sensible default + user control*.

| Conflict | Resolution |
|---|---|
| ADHD wants salience and stimulation; autistic users want low arousal and predictability | Calm, low-stimulation default. Achieve salience through **hierarchy, size, and position** rather than colour intensity, animation, or sound. |
| Dyslexic users benefit from imagery; screen-reader users need text | Both: meaningful images *and* real text. Images support the text, never replace it. |
| Dyscalculia wants fewer numbers; data-dense tools need many | Round aggressively, put the number in a sentence, give plain-language interpretation next to the figure, and let power users opt into raw precision. |
| Anxiety wants time to think; ADHD wants friction removed | Remove friction from the *path*, not from the *decision*. Fast flows, no countdowns. |
| Memory support wants persistent context; focus wants a clean screen | Persistent, quiet context (breadcrumb, step indicator, saved-progress line) is not clutter. Decoration is. |

## 6. Output format

**For an audit**, produce a table, ordered by severity — not a wall of prose:

| # | Issue | Who it affects | COGA objective / WCAG SC | Severity | Fix |
|---|---|---|---|---|---|
| 1 | Session times out after 15 min with no warning | ADHD, anxiety, dyscalculia, dementia | Obj. 6 / 2.2.1, 2.2.6 | Blocker | Warn at 2 min, offer extension, persist entered data |

Severity: **Blocker** (people cannot complete the task) → **Major** (people complete it with distress or high error rate) → **Minor** (friction).

Then a short "quick wins" list: what can ship this week.

**For a design**, give the actual thing — copy, component spec, tokens, HTML/CSS — plus one line per decision explaining which need it serves. Do not deliver principles when the user asked for a screen.

**Always close with the honest caveat:** guidelines reduce obvious harm; they do not replace testing with neurodivergent people. If the team hasn't done that, say so once, plainly, and point to `references/research-guide.md`.

## 7. Verify before you ship the answer

- Every claim about a condition is in `profiles.md` or a cited source — not invented.
- Every recommendation is concrete enough to act on today ("line-height: 1.5", not "improve readability").
- No condition mentioned in the request went unaddressed.
- The output itself follows the rules it preaches: plain language, short sentences, left-aligned, no jargon walls, no colour-only meaning.
- Match the user's language (Russian in, Russian out) — but keep standard technical terms (WCAG, COGA, `prefers-reduced-motion`) in their canonical form.
