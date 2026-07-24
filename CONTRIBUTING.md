# Contributing

Corrections and additions are welcome, particularly from neurodivergent people writing about their own experience.

## What's most useful

**Corrections.** If something here is wrong about your neurotype, that's a bug, and it's the highest-priority kind. Open an issue. You don't need to justify it with a citation — lived experience is evidence, and it will be taken seriously.

**Missing "audit tells".** The most useful part of each profile is the list of concrete patterns to look for. If you know a specific interface pattern that breaks things for you, that's exactly the contribution this needs.

**Better sources.** Particularly for the profiles built from thinner material: dementia, stress, mental health, trauma, teenagers.

**Translations.** The source posters are CC BY-NC-SA, so translations are permitted. Keep the licence and the attribution.

**Profiles not yet covered.** Dyspraxia, Tourette's, aphasia, acquired brain injury, chronic pain and fatigue, low vision, screen reader users, epilepsy and photosensitivity.

## What won't be merged

- Overlay and "accessibility widget" products. They don't work, and several are actively harmful.
- Claims that a specific font fixes dyslexia. The evidence isn't there.
- Deficit framing — "suffers from", "high/low functioning", "special needs".
- Advice to build a separate accessible version instead of fixing the product.
- Unsourced prevalence statistics.

## House style

- Plain language. The kit fails if its own guidance is hard to read.
- Concrete over abstract: `line-height: 1.5`, not "improve readability".
- Do/Don't tables, not paragraphs, in `profiles.md`.
- Every substantive claim gets a source in `sources.md`.
- Prevalence figures are labelled as estimates and attributed.
- Identity-first by default (*autistic person*, *dyslexic person*), and follow a person's stated preference when writing about them.
- Left-aligned, short sentences, one idea each.

## Making a change

1. Fork and branch.
2. Edit the Markdown. There's no build step for the content.
3. If you touched `SKILL.md` or anything in `references/`, run `./build.sh` to confirm the skill still packages.
4. Add your source to `sources.md`.
5. Add a line to `CHANGELOG.md`.
6. Open a pull request describing what changed and why. If it's from experience rather than a citation, say so — that's fine.

## Licence of contributions

By contributing you agree your contribution is licensed under **CC BY-NC-SA 4.0**, the same licence as the rest of the kit. This is inherited from the source posters and can't be changed. See [ATTRIBUTION.md](ATTRIBUTION.md).

## Code of conduct

Be decent. Assume good faith. Don't speculate about anyone's neurotype, diagnosed or otherwise, including in code review.

Discussion here will sometimes involve people describing genuinely difficult experiences — with services, with diagnosis, with work. Respond to that the way you'd want yours received.
