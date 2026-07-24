# Profiles

Sixteen profiles. Each has: what it actually is, what breaks, Do / Don't, and the tell-tale patterns to look for in an audit.

Read only the sections you need. Prevalence figures are approximate and vary by country and diagnostic criteria — cite them as estimates, never as precision.

**Contents**

1. [ADHD](#1-adhd) · 2. [Autism](#2-autism) · 3. [Dyslexia](#3-dyslexia) · 4. [Dyscalculia and low numeracy](#4-dyscalculia-and-low-numeracy) · 5. [Colour blindness](#5-colour-blindness) · 6. [Legibility and readability](#6-legibility-and-readability) · 7. [D/deaf and hard of hearing](#7-ddeaf-and-hard-of-hearing) · 8. [Dementia and Alzheimer's](#8-dementia-and-alzheimers) · 9. [Older adults](#9-older-adults) · 10. [Children](#10-children-412) · 11. [Teenagers](#11-teenagers-1317) · 12. [Anxiety](#12-anxiety) · 13. [Stress and cognitive load](#13-stress-and-situational-cognitive-load) · 14. [Mental health](#14-mental-health-broadly) · 15. [Trauma](#15-trauma) · 16. [Left-handed users](#16-left-handed-users)

---

## 1. ADHD

**~5–7% of children, ~2.5–5% of adults.** Most adult women are diagnosed late or never.

Not "can't pay attention" — *can't regulate* attention. Attention goes where the dopamine is, which may be nowhere useful, or may be one thing for nine hours (hyperfocus). Comes with weak working memory, time blindness (an hour and five hours feel similar), task initiation difficulty, and rejection sensitivity.

**What breaks:** long forms, multi-step flows with no saved progress, anything that requires holding a number in your head, timeouts, notification storms, walls of undifferentiated text, "you'll need these 6 documents" told at step 5 instead of step 0.

| Do | Don't |
|---|---|
| Show progress: step 3 of 5, and what's left | Hide the length of a process |
| Save automatically and continuously; say "saved" | Lose work on timeout, refresh, or back button |
| Break tasks into short chunks with visible completion | Present one 40-field form |
| List everything needed **before** the flow starts | Spring a requirement mid-flow |
| Make the next action the loudest thing on screen | Give five equally-weighted CTAs |
| Let people jump straight to the task (deep links, search) | Force a linear tour or onboarding wall |
| Batch notifications; give a quiet default | Interrupt with badges, toasts, and modals |
| Use time *anchors* ("closes Friday 5pm, that's in 3 days") | Say "soon", "shortly", "expires in a while" |
| Offer undo | Rely on confirmation dialogs people click through |
| Reduce decisions: sensible defaults, fewer options | Present 12 plans with no recommendation |

**Audit tells:** countdown timers · no autosave · progress not shown · required info revealed late · infinite scroll with no position memory · autoplaying video on a task page · "Are you sure?" instead of undo.

---

## 2. Autism

**~1 in 31 US 8-year-olds (CDC, 2022 data, published 2025);** ~1 in 100 globally by WHO estimates. Adults are widely undiagnosed.

Differences in sensory processing, social communication, and need for predictability. Often literal, precise language processing. Sensory input that is mildly annoying to others can be genuinely painful. Change without warning is costly.

**What breaks:** idioms and figures of speech, sarcasm, vague labels, unpredictable interface changes, bright saturated colour, animation, sound, ambiguity about what a button will do, unannounced UI redesigns.

| Do | Don't |
|---|---|
| Use simple, muted colours | Use bright, high-saturation, clashing colour |
| Write in plain, literal English | Use idioms ("piece of cake", "hit the ground running") |
| Use simple sentences and bullets | Build a wall of text |
| Make buttons descriptive: "Attach files", "Delete draft" | Use vague buttons: "Click here", "Go", "Submit" |
| Build simple, consistent, predictable layouts | Rearrange the UI between visits or A/B test navigation |
| Say exactly what will happen and when | Leave outcomes and timelines implicit |
| Warn before change: "This will change on 4 March" | Ship a redesign overnight with no notice |
| Offer a text channel (chat, email, form) | Make a phone call the only way to get help |
| Let people turn off animation, sound, and autoplay | Assume motion is delightful |
| Give literal, complete instructions and checklists | Say "just fill in the usual details" |

**Audit tells:** idioms in microcopy · "Learn more" / "Click here" links · surprise modals · hover-only interactions · colour-saturated hero sections · required phone contact · unlabelled icon buttons.

---

## 3. Dyslexia

**~1 in 10 people.** A difficulty with phonological processing and decoding text — unrelated to intelligence. Frequently co-occurs with dyscalculia and ADHD.

Text can appear to blur, swim, or crowd. Reading is slower and more effortful, which drains working memory before comprehension even starts.

| Do | Don't |
|---|---|
| Use images and diagrams to support text | Present large blocks of heavy text |
| Left-align text; keep a consistent layout | Justify text, centre body copy, or use varied layouts |
| Offer other formats: audio, video, transcript | Make reading the only route to the information |
| Keep content short, clear, simple | Put too much information in one place |
| Let users change contrast, spacing, font, background | Lock the presentation |
| Use sentence case | Write in ALL CAPS, *italics*, or <u>underline</u> for emphasis (underline = link) |
| Use **bold** for emphasis, sparingly | Emphasise whole paragraphs |
| Give reminders and carry information forward | Force users to remember things from previous pages |
| Autocorrect, suggest, and accept near-misses in search | Rely on accurate spelling |
| Use generous line height (1.5+) and word spacing | Cram lines together |

**On fonts:** there is no strong evidence that "dyslexia fonts" (OpenDyslexic and similar) improve reading speed or comprehension. Do not sell them as a fix. What does help: adequate size (16px+ body), generous spacing, clearly distinguishable characters (`I l 1`, `O 0`, `rn`/`m`), non-condensed, non-decorative. Familiar system fonts often win on "likability" even when technically less legible. Best answer: a good default plus the ability to change it.

**Audit tells:** justified text · centred paragraphs · long line lengths (>90 chars) · text-only instructions · exact-match-only search · no autocomplete · italic body text · capitalised headings · PDFs instead of pages.

---

## 4. Dyscalculia and low numeracy

**~1 in 20 people have dyscalculia; about half of working-age UK adults have low numeracy.** Most are undiagnosed — many just know they "aren't a numbers person".

Difficulty reading, understanding, and working with numbers: money, change, time, duration, percentages, number facts. Affects working memory — remembering a PIN, a reference number, a phone number. Numbers can look wavy or seem to move on the page. Often develops into genuine maths anxiety.

Real consequences: missed trains, wrong amounts withdrawn, locked-out accounts, contracts signed without understanding.

| Do | Don't |
|---|---|
| Round to whole numbers | Use decimals unless it's money |
| Leave space around numbers | Crowd numbers with other content |
| Fill in numbers you already have | Expect users to remember or re-type numbers |
| Put numbers in sentences that give context | Show tables or grids with no explanation |
| Let people include spaces when entering numbers | Reject "4321 5678" for a card number |
| Give a recognisable format hint and allow paste | Rush entry or set time limits |
| Offer a non-numeric route to verify identity | Force a sum or a calculation to prove you're human |
| Say what the number *means*: "£40 less than last month" | Show "-12.4%" and leave it there |
| Do research with people who struggle with numbers | Assume your team's numeracy is typical |

**Worked example.** Instead of a table cell reading `0.1275`, write: *"Your interest rate is about 13%. On a £1,000 balance that's roughly £130 a year, or £11 a month."*

**Audit tells:** input masks that block spaces · "no paste" fields · reference numbers shown once · maths CAPTCHAs · percentages with no plain-language equivalent · decimals on non-money values · dense financial tables with no summary sentence.

---

## 5. Colour blindness

**~8% of men and ~0.5% of women** with Northern European ancestry, mostly red–green (deuteranopia, protanopia); tritanopia (blue–yellow) and full achromatopsia are rare.

| Do | Don't |
|---|---|
| Pair colour with shape, icon, pattern, or text label | Encode meaning in colour alone |
| Use ✓/✗ icons and words on status, not just red/green | Use red = error, green = success with no other cue |
| Label chart series directly on the line or segment | Rely on a colour-swatch legend |
| Vary lightness, not just hue, between categories | Use palettes distinguished by hue only |
| Test with a simulator (deuter-, prot-, tritanopia, grayscale) | Ship untested "brand" palettes |
| Meet contrast: 4.5:1 body text, 3:1 large text and UI components | Treat contrast as a designer's judgement call |
| Use safe pairings: blue/orange, blue/red, dark/light | Use red/green, green/brown, blue/purple, green/grey adjacently |
| Give charts patterns, dashes, or markers as a backup | Ship a 7-colour pie chart |

**Grayscale test:** print or screenshot the screen in grayscale. If you can still complete every task and read every status, it passes.

---

## 6. Legibility and readability

Legibility = can you distinguish the characters. Readability = can you get through the text and understand it. They're different problems.

**Type**
- Body text ≥ 16px (1rem); never below 14px for anything anyone must read.
- Line height ≥ 1.5 for body, ~1.2–1.3 for headings.
- Line length 45–75 characters (~65 optimal). Enforce with `max-width: 65ch`.
- Left-aligned, ragged right. No justification. No centred paragraphs.
- Paragraph spacing ≥ 2× the font size.
- Avoid: light/thin weights, condensed faces, all-caps for more than 2–3 words, letter-spacing below default on body text, low-contrast grey-on-grey.
- Choose faces with distinguishable `I`/`l`/`1`, `O`/`0`, `rn`/`m`. Test the string `Illegible 0O l1 rn/m`.
- Don't disable text resize; support 200% zoom and text-spacing overrides (WCAG 1.4.4, 1.4.12) without clipping or overlap.

**Structure**
- Real headings, in order, describing content. One idea per section.
- Front-load: conclusion first, detail after.
- Short paragraphs (2–4 sentences). Bullets for lists, not for everything.
- Bold key terms sparingly; if everything is bold, nothing is.
- Break long content with sub-headings, images, and summaries.
- Target ~9th-grade reading level; test with a readability score, but never at the cost of accuracy.

---

## 7. D/deaf and hard of hearing

Ranges from mild hearing loss to profound deafness. For many Deaf people a sign language is their first language and written English is a second language — so plain language matters as much as captions.

| Do | Don't |
|---|---|
| Write in plain language | Use complicated words or figures of speech |
| Caption every video; provide transcripts for audio | Put content in audio or video only |
| Use a linear, logical layout | Build complex layouts and nested menus |
| Break content with sub-headings, images, video | Make users read long blocks of content |
| Offer text chat, email, and a written form | Make telephone the only route to support |
| Let people state their preferred communication support when booking | Assume everyone can take a call |
| Caption meaningful sound effects and speaker changes | Auto-generate captions and never check them |
| Add sign language interpretation for critical content where feasible | Treat captions as sufficient for everything |

**Audit tells:** phone-only support · uncaptioned videos · audio alerts with no visual equivalent · auto-captions with obvious errors · "listen to this article" as the only alternative format.

---

## 8. Dementia and Alzheimer's

Alzheimer's is the most common cause of dementia. Progressive changes to memory, language, attention, visual perception, and executive function. Design should support *dignity and independence*, not simplify people out of agency.

| Do | Don't |
|---|---|
| Keep navigation identical every visit | Move, rename, or redesign things |
| Show where the user is and how they got there | Rely on invisible state or memory of prior screens |
| Use strong, bold, distinctive, familiar visual cues | Use subtle, abstract, or novel icons |
| Break content into small, single-topic chunks | Present long continuous pages |
| Use concrete, everyday words | Use jargon, abbreviations, or metaphor |
| Support a carer / trusted person with delegated access | Design as if the user is always alone and always the same |
| Allow generous or no time limits | Time anything out |
| Confirm important actions with a clear plain-language summary | Rely on the user recalling what they entered |
| Keep high contrast and large, simple type | Use low-contrast greys or decorative fonts |
| Co-design and test with people living with dementia | Design from assumptions about them |

**Note:** a person's ability may vary day to day. Interfaces should be robust to that, not tuned to a best day.

---

## 9. Older adults

Not a cognitive disability — but ageing brings changes in vision (contrast sensitivity, focus), motor precision, and working memory, and it's the group most often designed against.

| Do | Don't |
|---|---|
| Larger default text (17–18px+) and generous targets (≥44×44px) | Small type, small tap targets, tight spacing |
| High contrast; avoid grey-on-white | Use light grey placeholder text as a label |
| Use conventional patterns and visible affordances | Use hidden gestures, swipe-only actions, flat non-buttons |
| Label icons with text | Ship icon-only navigation |
| Keep help visible and human-reachable | Bury support behind a chatbot with no escape |
| Confirm and explain destructive actions clearly | Rely on subtle undo toasts that disappear in 4s |
| Give clear feedback that something happened | Use silent state changes |
| Avoid hover-only reveals | Hide content behind hover |

---

## 10. Children (4–12)

Developing literacy, motor control, and abstract reasoning. Also: cannot meaningfully consent, and are highly susceptible to persuasive design.

| Do | Don't |
|---|---|
| Very plain language, short sentences, concrete nouns | Use abstraction, metaphor, or irony |
| Large targets, forgiving hit areas | Demand precision |
| Icons **plus** words; imagery and audio support | Text-only instruction |
| Immediate, clear, positive feedback | Ambiguous or delayed feedback |
| Let them explore safely; make mistakes reversible | Punish errors or use scary error states |
| Read-aloud option | Assume fluent reading |
| Strong privacy defaults; minimal data collection | Collect data or profile children |
| Age-appropriate design codes (UK AADC, COPPA, GDPR-K) | Use streaks, loot boxes, FOMO, or social pressure on children |

**Hard line:** no dark patterns aimed at children — no engagement-maximising streaks, no artificial scarcity, no nagging, no "your friend is waiting" pressure.

---

## 11. Teenagers (13–17)

Often assumed to be effortlessly digital. They aren't — they're fast at familiar patterns and no better than adults at unfamiliar ones, with lower tolerance for anything that feels patronising or slow.

| Do | Don't |
|---|---|
| Respect their competence; direct, unpatronising tone | Use cartoon framing or "hey kiddo" copy |
| Be honest about what data is used and why | Rely on them not reading the terms |
| Fast, mobile-first, low-friction | Force desktop flows or long form-filling |
| Give privacy control and easy delete | Default to public sharing |
| Support the many who are undiagnosed neurodivergent | Assume typical reading and attention |
| Provide a route to support that isn't a phone call | Require a parent for everything |
| Design for interruption — save state constantly | Assume uninterrupted sessions |

---

## 12. Anxiety

Anxiety is situational as well as clinical. The design response is the same: reduce uncertainty and restore control.

| Do | Don't |
|---|---|
| Give people enough time to complete an action | Rush users or set impractical time limits |
| Explain what happens after they finish | Leave them confused about next steps or timeframes |
| Make important information clear and prominent | Leave them uncertain about consequences |
| Give the support they need to complete the task | Make help hard to access |
| Let people check answers before submitting | Make it hard to change answers or preferences |
| Confirm receipt: "We got it. You'll hear back by 12 May." | End with a silent redirect |
| Say what a button will do before it's pressed | Use irreversible actions with vague labels |
| Show cost, commitment, and cancellation terms up front | Reveal price or lock-in at the last step |

---

## 13. Stress and situational cognitive load

Everyone becomes temporarily cognitively impaired: sleep-deprived, grieving, ill, in a second language, on a bad connection, holding a baby, in a loud room. This is why cognitive accessibility is not a minority concern.

Design assumption to adopt: **the user is tired, distracted, and reading on a phone with 8% battery.**

- Put the answer first; never make people read to find out if the page is relevant.
- Reduce choices; give a clear recommended option.
- Make the path resumable — save state, allow return by link.
- Never punish a wrong turn.
- Assume interruption between any two steps.
- Prefer recognition over recall everywhere.

---

## 14. Mental health (broadly)

Depression, bipolar disorder, OCD, PTSD, psychosis and others affect energy, concentration, decision-making, and self-perception — often fluctuating.

| Do | Don't |
|---|---|
| Make tasks resumable across days | Expire drafts, applications, or carts quickly |
| Allow pausing, snoozing, and account deactivation | Force all-or-nothing account deletion |
| Keep tone neutral and non-judgemental | Guilt-trip ("Are you sure you want to miss out?") |
| Let people turn off streaks, reminders, and social counts | Make engagement mechanics mandatory |
| Handle sensitive content with warnings and opt-in | Autoplay distressing content |
| Offer a low-stimulation / quiet mode | Assume everyone wants an energetic UI |
| Provide a route to a human | Trap people in automated support loops |
| Be careful with money, health, and grief flows | Use urgency, scarcity, or shame anywhere |

---

## 15. Trauma

Trauma-informed design assumes some users are carrying trauma related to the very thing your service handles — benefits, immigration, healthcare, domestic abuse, bereavement, debt.

Five principles: **safety · trustworthiness and transparency · choice and control · collaboration · empowerment.**

| Do | Don't |
|---|---|
| Say why each piece of information is needed | Ask for sensitive detail with no explanation |
| Ask the minimum, once | Make people re-tell a traumatic story repeatedly |
| Let people skip, pause, save, and come back | Force a linear, one-sitting disclosure |
| Warn before distressing content or questions | Surprise people with triggering material |
| Be explicit about who sees the data and what happens next | Leave data handling ambiguous |
| Provide a quick exit / hide-this-page for at-risk contexts | Leave a visible trail on a shared device |
| Use neutral, non-blaming language | Use accusatory framings ("You failed to…") |
| Show a human route and realistic timescales | Leave people waiting with no information |
| Let people control pace and disclosure | Use progress pressure or countdowns |

---

## 16. Left-handed users

**~10% of people.** Rarely considered, cheap to fix, and it mostly affects one-handed mobile use.

| Do | Don't |
|---|---|
| Keep primary actions reachable in the bottom centre/bottom bar | Fix primary actions to the bottom-right only |
| Support both-handed reach: test the thumb zone mirrored | Design only for a right thumb arc |
| Mirror or make configurable: drawers, FABs, action sheets | Hard-code right-side-only controls |
| Avoid content occluded by the hand during input | Put tooltips, date pickers, and previews where a left hand covers them |
| Support swipe in both directions for the same action | Assign different meaning to left- and right-swipe with no alternative |
| Respect OS handedness / reachability settings | Override system layout preferences |
| Provide keyboard and non-gesture alternatives | Make a directional gesture the only way |

**Also applies to:** anyone using a phone one-handed, people with a temporary injury, people carrying something.
