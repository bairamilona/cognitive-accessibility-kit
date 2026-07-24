# Standards mapping

Use this to convert a design argument into a compliance argument. Stakeholders who won't fund "it's kinder" will fund "it's a Level AA failure."

## WCAG success criteria that carry cognitive weight

| SC | Level | Name | Why it matters cognitively |
|---|---|---|---|
| 1.3.5 | AA | Identify Input Purpose | Autofill removes recall load |
| 1.4.1 | A | Use of Colour | Colour blindness; also anyone in sunlight |
| 1.4.3 | AA | Contrast (Minimum) | Reading effort, fatigue |
| 1.4.4 | AA | Resize Text | Personalisation |
| 1.4.8 | AAA | Visual Presentation | Line length, spacing, no justification, user-chosen colours — the single most cognitively relevant SC |
| 1.4.10 | AA | Reflow | Zoom without horizontal scroll |
| 1.4.11 | AA | Non-text Contrast | Perceiving controls and states |
| 1.4.12 | AA | Text Spacing | Users overriding spacing must not break the page |
| 2.2.1 | A | Timing Adjustable | Time pressure excludes ADHD, anxiety, dyscalculia, dementia |
| 2.2.2 | A | Pause, Stop, Hide | Focus |
| 2.2.6 | AAA | Timeouts | Warn about data loss |
| 2.3.1 | A | Three Flashes | Seizure and sensory safety |
| 2.3.3 | AAA | Animation from Interactions | Motion sensitivity |
| 2.4.5 | AA | Multiple Ways | Different people find things differently |
| 2.4.6 | AA | Headings and Labels | Scanning and orientation |
| 2.4.11 | AA | Focus Not Obscured | Keyboard orientation |
| 2.5.7 | AA | Dragging Movements | Motor and precision |
| 2.5.8 | AA | Target Size (Minimum) | Motor and precision |
| 3.1.5 | AAA | Reading Level | Plain language |
| 3.2.3 | AA | Consistent Navigation | Predictability |
| 3.2.4 | AA | Consistent Identification | Predictability |
| 3.2.6 | A | Consistent Help | Help findable in the same place |
| 3.3.1 | A | Error Identification | Recovery |
| 3.3.3 | AA | Error Suggestion | Recovery — tell them how to fix it |
| 3.3.4 | AA | Error Prevention (Legal, Financial, Data) | Reversible, checkable, confirmable |
| 3.3.7 | A | Redundant Entry | Never ask twice — WCAG 2.2, directly from COGA |
| 3.3.8 | AA | Accessible Authentication (Minimum) | No cognitive test to log in; paste must work |

**The gap to name out loud:** WCAG at AA does not make a product cognitively accessible. Several of the most important criteria (1.4.8, 3.1.5, 2.2.6) sit at AAA, which most organisations never target. That's why COGA exists as supplemental guidance — cite it alongside WCAG rather than instead of it.

## COGA — Making Content Usable, 8 objectives

1. Help users understand what things are and how to use them
2. Help users find what they need
3. Use clear and understandable content
4. Help users avoid mistakes and know how to correct them
5. Help users focus
6. Ensure processes do not rely on memory
7. Provide help and support
8. Support adaptation and personalization

Source: <https://www.w3.org/TR/coga-usable/>

## Legal and regulatory hooks

- **European Accessibility Act (EAA)** — applies from 28 June 2025 to consumer-facing products and services in the EU (e-commerce, banking, transport, e-books, comms). Harmonised standard **EN 301 549** points at WCAG 2.1 AA.
- **EN 301 549** — the EU procurement standard; the reference point for public-sector contracts.
- **US Section 508 / ADA** — DOJ rule (2024) sets WCAG 2.1 AA for state and local government web and apps.
- **UK Public Sector Bodies Accessibility Regulations 2018** — WCAG 2.2 AA for public sector.
- **UK Age Appropriate Design Code** and **COPPA / GDPR Art. 8** — children's data and design.
- **Equality Act 2010 (UK) / ADA (US)** — reasonable adjustments duty covers cognitive disability, not just physical.

Verify current status before quoting dates to a client — this area moves.

## How to phrase a finding for a stakeholder

> Session timeout with no warning fails **WCAG 2.2.1 (Level A)** and **3.3.4**, and blocks COGA Objective 6. In practice: anyone who steps away — ADHD, carers, people with dementia, parents — loses their application and often doesn't restart. Fix is a 2-minute warning, a one-click extension, and persisting the form data. Estimated: 2 days.

Structure: **standard → human consequence → fix → cost.** In that order.
