# Changelog

All notable changes to this kit are documented here.

Format based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/).

## [1.0.0] — 2026-07-24

First public release.

### Added

- `SKILL.md` — framing and terminology rules, the 8 COGA objectives, a 12-rule universal baseline, a conflict-resolution table for competing needs, and audit reporting format.
- `references/profiles.md` — 16 profiles with Do/Don't tables and audit tells: ADHD, autism, dyslexia, dyscalculia and low numeracy, colour blindness, legibility and readability, D/deaf and hard of hearing, dementia and Alzheimer's, older adults, children, teenagers, anxiety, stress and situational load, mental health, trauma, left-handed users.
- `references/audit-checklist.md` — 85 checks across 14 categories, mapped to COGA objectives and WCAG success criteria, with a severity scheme and reporting template.
- `references/copy-guide.md` — plain-language rules, button and link labels, error message templates, numbers in copy, tone.
- `references/design-tokens.md` — CSS custom properties, base stylesheet, colour and motion rules, form/navigation/data-display patterns, testing tools.
- `references/wcag-map.md` — 28 WCAG 2.2 success criteria with cognitive relevance, COGA objectives, and legal hooks (EAA, EN 301 549, Section 508, PSBAR, AADC).
- `references/research-guide.md` — recruiting, session design, analysis, and ethics for testing with neurodivergent participants; plus notes on supporting neurodivergent colleagues.
- `references/sources.md` — annotated source list, resolved from the original shortened links, with prevalence citations.
- `build.sh` — packages the skill folder as `dist/neurodiversity-design.skill`.

### Notes

- Licensed CC BY-NC-SA 4.0, inherited from the UK Home Office and DWP/HMRC poster series. See `ATTRIBUTION.md`.
- Deliberately does not recommend "dyslexia fonts"; the evidence does not support them. `profiles.md` §3 explains what to do instead.
- Deliberately does not treat WCAG AA conformance as sufficient for cognitive accessibility. `wcag-map.md` names the gap.

## Unreleased

Candidates for the next version, contributions welcome:

- Profiles for dyspraxia, aphasia, acquired brain injury, epilepsy and photosensitivity, low vision, screen reader users.
- Worked before/after examples: a full form, a checkout, an error state.
- Translations.
