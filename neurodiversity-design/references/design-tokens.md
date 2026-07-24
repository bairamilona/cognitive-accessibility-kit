# Implementation: tokens, CSS, and component rules

Copy-pasteable starting points. Adjust to the product, but these defaults are defensible.

## Tokens

```css
:root {
  /* Type */
  --font-body: system-ui, -apple-system, "Segoe UI", Roboto, Helvetica, Arial, sans-serif;
  --fs-body: 1rem;          /* 16px floor for body text */
  --fs-body-lg: 1.125rem;   /* preferred for reading-heavy products */
  --fs-small: 0.875rem;     /* metadata only — never instructions */
  --lh-body: 1.6;           /* ≥1.5 required */
  --lh-heading: 1.25;
  --ls-body: 0.01em;        /* never negative on body text */
  --measure: 65ch;          /* 45–75 characters */

  /* Spacing — paragraph gap ≥ 2× font size */
  --space-paragraph: 1.5em;
  --space-section: 3rem;

  /* Targets */
  --target-min: 44px;       /* WCAG 2.5.8 floor is 24px; 44px is the humane one */
  --target-gap: 8px;

  /* Motion */
  --duration-fast: 120ms;
  --duration-base: 200ms;   /* keep everything under 400ms */
  --easing: cubic-bezier(0.2, 0, 0.2, 1);

  /* Focus */
  --focus-width: 3px;
  --focus-offset: 2px;
}
```

## Base stylesheet

```css
body {
  font-family: var(--font-body);
  font-size: var(--fs-body);
  line-height: var(--lh-body);
  letter-spacing: var(--ls-body);
  text-align: left;          /* never justify */
  text-wrap: pretty;
  hyphens: none;             /* hyphenation hurts decoding */
}

p, li, h1, h2, h3, h4 { max-width: var(--measure); }
p + p { margin-top: var(--space-paragraph); }

/* Visible, never-obscured focus (WCAG 2.4.11 / 2.4.13) */
:focus-visible {
  outline: var(--focus-width) solid currentColor;
  outline-offset: var(--focus-offset);
  border-radius: 2px;
}

/* Respect the user's stated preference — no exceptions */
@media (prefers-reduced-motion: reduce) {
  *, *::before, *::after {
    animation-duration: 0.01ms !important;
    animation-iteration-count: 1 !important;
    transition-duration: 0.01ms !important;
    scroll-behavior: auto !important;
  }
}

/* Don't break when users override spacing (WCAG 1.4.12) */
/* Test with: line-height 1.5, letter-spacing .12em, word-spacing .16em, paragraph 2em */

button, [role="button"], a.button, input[type="submit"] {
  min-height: var(--target-min);
  min-width: var(--target-min);
  margin: var(--target-gap);
}
```

## Colour

- Contrast: **4.5:1** body text, **3:1** large text (≥24px, or ≥18.66px bold) and UI components/graphics.
- Prefer **muted, desaturated** brand colours for large areas. Save saturation for small accents.
- Avoid pure `#000` on pure `#FFF` — the halation is uncomfortable for many readers. Use `#1a1a1a` on `#fafafa` or similar.
- Never use colour as the only carrier of meaning. Every status gets colour + icon + word.
- Safe categorical pairs: blue/orange, blue/red, dark blue/light yellow. Avoid red/green, green/brown, blue/purple, green/grey adjacency.
- Support `prefers-color-scheme` and `prefers-contrast: more`.

**Test:** grayscale screenshot + deuteranopia/protanopia/tritanopia simulation. If any task fails, the palette fails.

## Motion

- Default to none. Motion is opt-in, not opt-out.
- Nothing autoplays: no video, no audio, no carousel, no marquee.
- Anything moving >5s needs pause/stop/hide.
- Transitions ≤ 200ms, ease-out, single property (opacity or small transform).
- No parallax, no scroll-jacking, no motion on scroll.
- No flashing above 3/second, ever.

## Forms

- One question per screen for high-stakes or long flows.
- Visible, persistent labels above fields. **Placeholder text is not a label.**
- Hint text above the input, not below, and not in the placeholder.
- Field width signals expected length (postcode field is short, address field is long).
- Autocomplete attributes set (`autocomplete="email"`, `"tel"`, `"name"`) — this is WCAG 1.3.5 and it removes recall load.
- Accept messy input: trim whitespace, strip spaces from card and reference numbers, case-insensitive, allow paste everywhere.
- Never disable paste. Never block password managers.
- Autosave on blur; show a quiet "Saved" indicator.
- Validate on blur or submit, not on keystroke.
- Error summary at top linking to each field + inline message next to each field.
- Review page before submit, with "Change" links per answer.
- Optional fields marked, or required marked — pick one and be consistent.

## Navigation

- Visible primary nav on desktop. Hamburger only where space genuinely forces it.
- Current location always indicated.
- Breadcrumbs on anything more than two levels deep.
- Step indicator with total on multi-step flows.
- Search that tolerates typos and returns something useful for zero results.
- Consistent placement across every page (WCAG 3.2.3).
- Skip link to main content.
- Help link in the same place on every page (WCAG 3.2.6).

## Data display

- Summary sentence above every table or chart saying what it shows and the headline finding.
- Direct labels on chart series; legends are a fallback, not a plan.
- Round numbers; keep decimals for money only.
- Sortable, filterable tables with visible current state.
- Sticky header row on long tables.
- Offer a simplified / summary view alongside the dense one.

## Settings to expose

Put these somewhere findable, and remember the choice:

- Text size and spacing
- Theme (light / dark / high contrast)
- Reduce motion
- Sound on / off
- Notification frequency (and a real "off")
- Density (comfortable / compact)
- Turn off streaks, badges, and engagement mechanics
- Simplified language version, if you have one

## Testing tools

- **Colour:** WebAIM Contrast Checker, Stark, Who Can Use, Coblis colour-blindness simulator
- **Cognitive load:** run the flow yourself at 2× speed while distracted; count the times you had to remember something
- **Readability:** Hemingway, `textstat`, Microsoft Editor readability score
- **Spacing/reflow:** browser bookmarklet applying WCAG 1.4.12 text-spacing overrides; resize to 320px
- **Automated:** axe DevTools, Lighthouse, WAVE — these catch <40% of issues and almost none of the cognitive ones. Never report an automated pass as an accessibility pass.
