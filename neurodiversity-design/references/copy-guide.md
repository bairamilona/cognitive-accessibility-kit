# Writing for cognitive accessibility

Copy is the cheapest accessibility fix available and the one most often skipped.

## The rules

1. **Answer first.** The first sentence says the thing. Context after.
2. **One idea per sentence.** Aim for 15–20 words; split anything over 25.
3. **Active voice, second person.** "You need to send your payslips" — not "Payslips must be submitted."
4. **Concrete words.** *Send*, not *facilitate transmission*. *Use*, not *utilise*. *Buy*, not *procure*.
5. **No idioms, metaphors, or sarcasm.** They cost autistic readers, non-native speakers, and anyone tired.
6. **Expand abbreviations on first use.** Then be consistent. Never invent internal shorthand for users.
7. **Same thing, same word, every time.** Synonyms are a readability problem, not style.
8. **Bullets for lists.** Parallel structure, one line each, no sub-bullets three levels deep.
9. **Sentence case** for headings, buttons, and labels. Not Title Case, not ALL CAPS.
10. **Say the consequence.** "This will delete your account and all your files. You can't undo this."
11. **Say the timeframe.** "You'll hear back within 5 working days" — not "soon", "shortly", "in due course".
12. **Never blame.** No "you failed to", "invalid", "illegal", or exclamation marks in errors.

## Buttons and links

| Bad | Good |
|---|---|
| Submit | Send application |
| Click here | Read the eligibility rules |
| Learn more | How we calculate your payment |
| OK | Yes, delete this file |
| Continue | Continue to payment |
| Go | Search jobs |

Rule: a link or button, read on its own with no surrounding text, must still make sense.

## Errors

Template: **what's wrong → which field → how to fix it.**

| Bad | Good |
|---|---|
| Invalid input | Enter your date of birth as DD MM YYYY, for example 31 03 1980 |
| Error: field required | Enter your email address so we can send your confirmation |
| Password does not meet requirements | Your password needs at least 8 characters. It can include spaces. |
| Something went wrong | We couldn't save your form. Your answers are still here — try again in a moment. |

Also: put an error summary at the top of the page with links to each field, keep the message next to the field, use text plus icon plus colour (never colour alone), and never clear what the user typed.

## Numbers in copy

- Round. `£1,247.63` → `about £1,250`. Keep exact figures only where they're legally or practically necessary, and label them as exact.
- Put the number in a sentence with meaning: *"You'll pay £42 a month. That's £6 more than last year."*
- Prefer plain fractions to percentages where possible: *"about 1 in 5"* alongside *"20%"*.
- Never make the reader calculate. If they need a total, show the total.
- Give date and time anchors: *"Friday 8 May, that's in 3 days"*.
- Write durations concretely: *"about 10 minutes"*, not *"a few moments"*.

## Instructions

- Numbered steps, one action per step.
- Say what you need **before** the flow starts: "You'll need your National Insurance number and last month's payslip."
- Say how long it takes: "This takes about 10 minutes."
- Say what happens at the end.
- Don't hide critical steps in a paragraph.

## Tone

Neutral, warm, direct. Not chirpy, not corporate, not apologetic.

Avoid: "Oops!", "Uh-oh!", exclamation marks in system messages, "simply", "just", "easy", "obviously" — they all imply the reader is failing at something easy.

Avoid urgency and shame entirely: no "Don't miss out", no "Only 2 left!", no "No thanks, I don't want to save money."

## Formatting

- Left-aligned. Never justified.
- Short paragraphs, 2–4 sentences.
- Line length capped (`max-width: 65ch`).
- **Bold** for emphasis, used rarely. No italics for emphasis in body text. Underline is for links only.
- Descriptive headings every few paragraphs so the page can be scanned.
- Tables introduced by a sentence saying what they show.
- Alt text describes what matters about the image, in context — not "image of".

## Quick self-check

Read the finished copy aloud. If you run out of breath, the sentence is too long. If you have to re-read a sentence to parse it, rewrite it. If a word wouldn't appear in a conversation, replace it.
