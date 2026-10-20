# Dry Nights Ahead

*A Practical, Age-by-Age Guide to Understanding and Overcoming Bedwetting — From Toddlers to Young Adults (Ages 0–19)*

An e-book for sale. It has 12 chapters and printable appendices, and each age group has its own chapter that ends with a checklist of clear actions (Clear Action Plan):

| Chapter | Age group |
|---|---|
| 4 | 0–2: Laying the Foundations |
| 5 | 3–5: The Journey to Dry Nights |
| 6 | 6–8: Building Skills and Confidence |
| 7 | 9–12: Taking Action Before the Teen Years |
| 8 | 13–16: Supporting Teens with Privacy and Respect |
| 9 | 16–19: Moving Toward Independence |

## Layout

- `manuscript/` holds the source text in Markdown, which is the file to edit.
- `dist/` holds the ready-to-sell files: `.epub` (Kindle/KDP, Apple Books, Kobo), `.pdf` (6×9 in), `.docx`, and `.html`.
- `build/` holds the build scripts, the cover (`cover.png`, 1600×2560, made from `cover.html`), and the styling.

## Rebuild

Requires pandoc and Node with Playwright.

```sh
build/build.sh
```

## Before publishing

- Replace `[Author Name]` in `manuscript/00-front-matter.md`, `build/title-page.html` and `build/cover.html`, then re-render the cover with `node build/cover.js`.
- Write the "About the Author" section in `manuscript/05-appendices.md`.
- Get the book medically reviewed by a qualified clinician, such as a pediatrician or continence nurse, before sale.
