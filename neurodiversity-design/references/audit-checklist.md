# Cognitive accessibility audit checklist

Work top to bottom. Skip nothing silently — if something can't be checked from what you were given (screenshot only, no code), say so rather than guessing.

Score each item: **Pass** · **Fail** · **N/A** · **Can't tell**.

---

## A. Before you start

- What is the primary task on this screen? If you can't state it in one sentence, that's finding #1.
- What must the user already know or have to hand?
- What happens if they get it wrong?
- Is this a high-stakes context (money, health, immigration, benefits, grief, safety)? If yes, apply `profiles.md` §15 Trauma throughout.

---

## B. Attention and focus — *COGA Obj. 5*

1. One clear primary action; everything else visually subordinate.
2. No autoplaying video, audio, carousel, or animation.
3. `prefers-reduced-motion` respected; parallax and scroll-jacking absent.
4. Anything moving/blinking/scrolling for >5s has pause, stop, or hide (WCAG 2.2.2).
5. No unsolicited modals, interstitials, or notification interruptions during a task.
6. No flashing above 3 flashes/second (WCAG 2.3.1).
7. Decoration doesn't compete with content — no busy backgrounds behind text.
8. Ads / promos separated from task content, clearly labelled.

## C. Memory — *COGA Obj. 6*

9. Nothing must be memorised across screens (codes, numbers, references, previous answers).
10. Values entered earlier are carried forward, not re-requested (WCAG 3.3.7 Redundant Entry).
11. Progress saves automatically; user can leave and return.
12. A review/summary step exists before final submit, with edit links.
13. Reference numbers are shown persistently, copyable, and emailed.
14. Authentication doesn't require a cognitive test — copy/paste and password managers work (WCAG 3.3.8).
15. Recognition over recall: options are shown, not remembered.

## D. Time and pressure — *COGA Obj. 5, WCAG 2.2.1 / 2.2.6*

16. No time limit; or it can be turned off, extended, or adjusted to 10×.
17. Warning before session expiry, with a one-click extend.
18. Data survives a timeout.
19. No countdowns, scarcity timers, or "3 people are viewing this" pressure.
20. Users can take as long as they like to enter anything.

## E. Language and content — *COGA Obj. 3*

21. Reading level ~9th grade or lower for general audiences.
22. No idioms, metaphors, sarcasm, or figures of speech.
23. Jargon and abbreviations expanded on first use.
24. Sentences short; one idea each; active voice.
25. Front-loaded — the point is in the first sentence.
26. Headings real, hierarchical, and descriptive.
27. Line length 45–75 characters; left-aligned; not justified.
28. Body text ≥16px; line-height ≥1.5; paragraph spacing ≥2× font size.
29. No ALL CAPS blocks, italic body text, or underline for non-links.
30. Content available in more than one format where it matters (text + audio/video/diagram).

## F. Numbers — *see profiles.md §4*

31. Numbers rounded; no decimals except money.
32. Each important number has a sentence explaining what it means.
33. Whitespace around numbers; tables introduced in words.
34. Number fields accept spaces, dashes, and pasted values.
35. Known values pre-filled; no re-typing of reference numbers.
36. No maths required to verify identity or proceed.

## G. Understanding and prediction — *COGA Obj. 1*

37. Button labels describe the outcome ("Send application", not "Submit"/"Go"/"Click here").
38. Icons have text labels, or accessible names at minimum.
39. Interactive things look interactive; non-interactive things don't.
40. What happens next is stated before the action and confirmed after.
41. Consistent naming, placement, and behaviour across the product (WCAG 3.2.3, 3.2.4).
42. No unexpected context changes on focus or input (WCAG 3.2.1, 3.2.2).
43. Cost, commitment, duration, and cancellation are visible before commitment.

## H. Navigation and orientation — *COGA Obj. 2*

44. Current location is clear (breadcrumb, step indicator, active state).
45. Primary navigation visible, not hidden behind a hamburger on desktop.
46. Search exists, tolerates misspelling, and returns useful results.
47. Back and browser-back both work and preserve state.
48. Steps numbered with total shown ("Step 3 of 5").
49. Fewer than ~7 top-level choices; grouped and labelled by user language, not org structure.

## I. Errors and recovery — *COGA Obj. 4*

50. Errors identify the field, the problem, and the fix, in plain language (WCAG 3.3.1, 3.3.3).
51. Errors are not signalled by colour alone; they're in text next to the field and summarised at top.
52. Tone is neutral — never "You failed to…", never exclamation marks.
53. Inputs are forgiving: formats normalised, whitespace trimmed, case-insensitive.
54. Destructive actions are reversible (undo), or confirmed with a plain description of consequences.
55. Nothing is lost on error — all entered data is preserved.
56. Validation happens at a helpful moment, not on every keystroke.

## J. Help and support — *COGA Obj. 7*

57. Help sits next to the thing it explains, not on a separate page.
58. A human route exists and is easy to find (WCAG 3.2.6 Consistent Help).
59. More than one contact channel — never phone-only.
60. Support is available without logging in.
61. Instructions do not assume prior knowledge of the system.

## K. Sensory and perception

62. Contrast: 4.5:1 body text, 3:1 large text and UI components (WCAG 1.4.3, 1.4.11).
63. Nothing depends on colour alone (WCAG 1.4.1). Grayscale test passes.
64. Palette checked against deuteranopia, protanopia, tritanopia.
65. Colours muted rather than high-saturation; no vibrating colour pairs.
66. Sound has a visual equivalent; audio never conveys information alone.
67. Video captioned; audio transcribed.
68. Text spacing overrides don't break layout (WCAG 1.4.12).
69. 400% zoom / 320px reflow works without horizontal scrolling (WCAG 1.4.10).

## L. Control and personalisation — *COGA Obj. 8*

70. Dark mode, or at minimum respects `prefers-color-scheme`.
71. Motion, sound, and notification settings are exposed and remembered.
72. Density / simplified view available where the UI is data-heavy.
73. OS preferences respected: font size, reduced motion, reduced transparency, contrast.
74. Settings persist across sessions and devices.

## M. Input and motor

75. Targets ≥24×24px minimum (WCAG 2.5.8); aim for 44×44px.
76. Targets spaced apart; no adjacent destructive/primary buttons.
77. Everything reachable by keyboard; focus visible and never obscured (WCAG 2.4.11).
78. No drag-only interactions (WCAG 2.5.7); no hover-only content.
79. Bottom-of-screen actions reachable by either thumb (see profiles.md §16).

## N. Ethics — automatic Blocker findings

80. No countdown-driven urgency or fake scarcity.
81. No confirmshaming ("No thanks, I like paying too much").
82. No pre-ticked consent, no bundled consent, no obstructed opt-out.
83. No engagement mechanics (streaks, FOMO, variable rewards) that can't be turned off.
84. No dark patterns aimed at children.
85. Cancelling is as easy as signing up.

---

## Reporting

Sort findings by severity, then by effort. Give the table from `SKILL.md` §6, then:

**Quick wins (this sprint):** items fixable in copy or CSS.
**Structural (next quarter):** items needing flow or architecture change.
**Needs research:** what you cannot decide without testing with neurodivergent users.

Close by naming what you couldn't assess and why.
