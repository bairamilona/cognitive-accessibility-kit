# Cognitive Accessibility Kit

A practical toolkit for designing, auditing, and writing digital products for neurodivergent and cognitively diverse people.

Most accessibility work checks contrast, alt text, and keyboard focus, then stops. That leaves out the largest group of disabled users. This kit covers what happens after those checks.

**Website:** https://bairamilona.github.io/cognitive-accessibility-kit/

It ships as a [Claude skill](#use-it-with-claude), but **every file is plain Markdown and works on its own** — read it, print it, paste it into your design system, hand it to your team.

---

## What's inside

| File | What it's for |
|---|---|
| [`SKILL.md`](neurodiversity-design/SKILL.md) | The core: framing, the 8 COGA objectives, a 12-rule universal baseline, and how to resolve conflicts between profiles |
| [`profiles.md`](neurodiversity-design/references/profiles.md) | 16 profiles with Do/Don't tables and "audit tells" — ADHD, autism, dyslexia, dyscalculia, colour blindness, legibility, D/deaf, dementia, older adults, children, teenagers, anxiety, stress, mental health, trauma, left-handed users |
| [`audit-checklist.md`](neurodiversity-design/references/audit-checklist.md) | 85 numbered checks across 14 categories, each mapped to a COGA objective or WCAG criterion |
| [`copy-guide.md`](neurodiversity-design/references/copy-guide.md) | Plain language, button labels, error messages, numbers in copy — with before/after tables |
| [`design-tokens.md`](neurodiversity-design/references/design-tokens.md) | Copy-pasteable CSS tokens and base stylesheet, plus form, navigation, and data-display rules |
| [`wcag-map.md`](neurodiversity-design/references/wcag-map.md) | The 28 WCAG success criteria with cognitive weight, plus EAA / Section 508 / EN 301 549 hooks for making the business case |
| [`research-guide.md`](neurodiversity-design/references/research-guide.md) | Recruiting and testing with neurodivergent participants without harming them |
| [`sources.md`](neurodiversity-design/references/sources.md) | Every source, annotated, with prevalence figures and citations |

## Start here

- **Reviewing an existing product?** → [`audit-checklist.md`](neurodiversity-design/references/audit-checklist.md)
- **Writing UI copy or error messages?** → [`copy-guide.md`](neurodiversity-design/references/copy-guide.md)
- **Building components or a design system?** → [`design-tokens.md`](neurodiversity-design/references/design-tokens.md)
- **Need to convince a stakeholder?** → [`wcag-map.md`](neurodiversity-design/references/wcag-map.md)
- **Just want the principles?** → [`SKILL.md`](neurodiversity-design/SKILL.md) §4, the universal baseline

## The twelve rules, if you only read one thing

1. One primary action per screen.
2. Plain language, ~9th-grade reading level or below.
3. Left-aligned body text. Never justify. Line length 45–75 characters.
4. Line height ≥ 1.5; paragraph spacing ≥ 2× the font size.
5. Never rely on colour alone. Colour + shape + text, always.
6. No unrequested motion. Honour `prefers-reduced-motion`.
7. Never require recall. Carry values forward; let people paste anything.
8. No time limits. If unavoidable: warn, allow extension, never wipe data.
9. Errors name the field, say what's wrong, and say how to fix it.
10. Say what happens next — before the action and after it.
11. Consistency beats cleverness.
12. Give control instead of choosing for them.

## Three things this kit insists on

**Neurodivergence is a difference in cognition, not a deficit.** Estimates put 15–40% of people as having neurodivergent traits, depending where you draw the line. Traits are distributed, not binary — everyone has working-memory problems under stress.

**The fix is almost never a "mode".** A "dyslexia mode" buried in settings is a way of not fixing the product. Make the accessible version the default, then add user control on top.

**Guidelines don't replace testing with neurodivergent people.** They reduce obvious harm. That's all. See [`research-guide.md`](neurodiversity-design/references/research-guide.md).

## Use it with Claude

The `neurodiversity-design/` folder is an installable skill for [Claude](https://claude.ai) — in Claude Code, Cowork, or anywhere skills are supported. Once installed, Claude reaches for it automatically when you ask for an accessibility review, UI copy, or design work involving any of the 16 profiles.

**Install:**

```bash
git clone https://github.com/bairamilona/cognitive-accessibility-kit.git
cd cognitive-accessibility-kit
./build.sh            # produces dist/neurodiversity-design.skill
```

Then open **Settings → Capabilities** in the Claude desktop app and add the `.skill` file. In Claude Code, copy the `neurodiversity-design/` folder into `~/.claude/skills/` instead.

A prebuilt `.skill` file is attached to each [release](../../releases).

**Try it with:**

- "Review this signup flow for cognitive accessibility"
- "Rewrite these error messages so they're actually usable"
- "Our checkout has a 10-minute timer — what's the case for removing it?"
- "Make this dashboard work for someone with dyscalculia"

## Sources

Built from primary sources, not summarised from blog posts:

- [Making Content Usable for People with Cognitive and Learning Disabilities](https://www.w3.org/TR/coga-usable/) — W3C COGA
- [Dos and don'ts on designing for accessibility](https://accessibility.blog.gov.uk/2016/09/02/dos-and-donts-on-designing-for-accessibility/) — Karwai Pun, UK Home Office
- [Designing for people with dyscalculia and low numeracy](https://designnotes.blog.gov.uk/2022/11/28/designing-for-people-with-dyscalculia-and-low-numeracy/) — DWP / HMRC
- [Neurodiversity and UX: Essential Resources](https://stephaniewalter.design/blog/neurodiversity-and-ux-essential-resources-for-cognitive-accessibility/) — Stéphanie Walter
- [Designing For Neurodiversity](https://www.smashingmagazine.com/2025/06/designing-for-neurodiversity/) — Vitaly Friedman, Smashing Magazine
- [Neurodiversity Design System](https://neurodiversity.design/) — Will Soward

Full annotated list, with prevalence figures and citations: [`sources.md`](neurodiversity-design/references/sources.md).

## Contributing

Corrections, missing profiles, and better sources are all welcome — especially from neurodivergent people. See [CONTRIBUTING.md](CONTRIBUTING.md).

If something here is wrong about your own neurotype, that's a bug. Please open an issue.

## Licence

**[CC BY-NC-SA 4.0](LICENSE)** — Attribution, NonCommercial, ShareAlike.

This is not a choice; it's inherited. The Do/Don't tables adapt the UK Home Office and DWP/HMRC accessibility posters, which are CC BY-NC-SA 4.0, so any derivative must carry the same licence. See [ATTRIBUTION.md](ATTRIBUTION.md).

You can use this inside your own organisation, including a commercial one, to make your products accessible. What you can't do is sell it, or republish it under a more permissive licence.
